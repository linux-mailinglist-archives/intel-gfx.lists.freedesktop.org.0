Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F23A92F76BE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 11:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5515589939;
	Fri, 15 Jan 2021 10:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D844F89939
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 10:35:12 +0000 (UTC)
IronPort-SDR: wxcBbCo6Pv7j9CZzXrZBvM9Qx6hg5+StRYtfX0oBEAS2Ba60IyFk96agHj5/BmSIJIOXvAPfXY
 9zpowaUFb4yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="263324460"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="263324460"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:35:11 -0800
IronPort-SDR: ay8p4aezAdmuwfSHy/RsLlP3Fx5ZsAQ3QQBBbfdk9NXag0IhRiJRyG+9g5h8a8PYbn4C5fqhoE
 kC0G3hT/MEWA==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="354262667"
Received: from bmkierna-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.221.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:35:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210115092034.8804-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210115092034.8804-1-chris@chris-wilson.co.uk>
Date: Fri, 15 Jan 2021 12:35:05 +0200
Message-ID: <87bldqpjxi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Set error value before
 returning in intel_hdcp*_disable()
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
Cc: Sean Paul <seanpaul@chromium.org>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 15 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> drivers/gpu/drm/i915/display/intel_hdcp.c:886 _intel_hdcp_disable() error: uninitialized symbol 'ret'.
> drivers/gpu/drm/i915/display/intel_hdcp.c:1951 _intel_hdcp2_disable() error: uninitialized symbol 'ret'.
>
> Given the comment that this error reflects the status of all connectors
> within this MST topology, I opted to use -EBUSY to indicate not all were
> ready.
>
> Fixes: 2a743b7b8a8b ("drm/i915/hdcp: Configure HDCP1.4 MST steram encryption status")
> Fixes: 899c8762f981 ("drm/i915/hdcp: Configure HDCP2.2 MST steram encryption status")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index db8dff2eeb0a..2be4822b91a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -883,7 +883,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
>  	 * until it disabled HDCP encryption for all connectors in MST topology.
>  	 */
>  	if (dig_port->num_hdcp_streams > 0)
> -		return ret;
> +		return -EBUSY;
>  
>  	hdcp->hdcp_encrypted = false;
>  	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
> @@ -1948,7 +1948,7 @@ static int _intel_hdcp2_disable(struct intel_connector *connector)
>  	}
>  
>  	if (dig_port->num_hdcp_streams > 0)
> -		return ret;
> +		return -EBUSY;
>  
>  	ret = hdcp2_disable_encryption(connector);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
