Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 909AE30FB4D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:28:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9EC26EE2C;
	Thu,  4 Feb 2021 18:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EFBC6EE2C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:28:14 +0000 (UTC)
IronPort-SDR: /QBzri+nnczj+mOP0eZ3v5xNbpAafXspwdGMC7q0qlHxL6n6MGcnDusSNRghyl0PIv1o56PGW2
 wxlmhTgvYEsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="160463335"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="160463335"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:28:13 -0800
IronPort-SDR: fMY1nSof9xnTTEUUyMBXPCZsxsi0AWOLpKlH1ZTjiqLH95hDLkrd1ctmmNy0l2KY250I0HU1md
 pAh8Q7Ej9gcQ==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="372911987"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:28:12 -0800
Date: Thu, 4 Feb 2021 20:28:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20210204182809.GC750296@ideak-desk.fi.intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129080043.24614-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
 check
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 29, 2021 at 01:30:43PM +0530, Anshuman Gupta wrote:
> DP-MST connector encoder initializes at modeset
> Adding a connector->encoder NULL check in order to
> avoid any NULL pointer dereference.
> intel_hdcp_enable() already handle this but debugfs
> can also invoke the intel_{hdcp,hdcp2_capable}.
> Handling it gracefully.
> 
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ae1371c36a32..58af323d189a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -135,11 +135,16 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
>  /* Is HDCP1.4 capable on Platform and Sink */
>  bool intel_hdcp_capable(struct intel_connector *connector)
>  {
> -	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct intel_digital_port *dig_port;
>  	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
>  	bool capable = false;
>  	u8 bksv[5];
>  
> +	if (!connector->encoder)
> +		return -ENODEV;

I assume this is needed when called from i915_hdcp_sink_capability
debugfs entry. That one is lacking the locking for the connector, but is
that entry really needed? We print the same info already from the
i915_display_info entry which has the proper locking and encoder check.

> +
> +	dig_port = intel_attached_dig_port(connector);
> +
>  	if (!shim)
>  		return capable;
>  
> @@ -156,11 +161,16 @@ bool intel_hdcp_capable(struct intel_connector *connector)
>  /* Is HDCP2.2 capable on Platform and Sink */
>  bool intel_hdcp2_capable(struct intel_connector *connector)
>  {
> -	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct intel_digital_port *dig_port;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	bool capable = false;
>  
> +	if (!connector->encoder)
> +		return -ENODEV;
> +
> +	dig_port = intel_attached_dig_port(connector);
> +
>  	/* I915 support for HDCP2.2 */
>  	if (!hdcp->hdcp2_supported)
>  		return false;
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
