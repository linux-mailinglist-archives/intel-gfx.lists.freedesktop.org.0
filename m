Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D037DF3DA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B295410E8AC;
	Thu,  2 Nov 2023 13:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9A310E8AC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 13:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698931936; x=1730467936;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XecpMrPXwCbuBMcitMg2Qn4FWHe11/wOvX+GTiew9ZM=;
 b=af7A4+ocimMbsCJV712fm0bpKbY1uvVErxGMZSAqwDReXTBL2+jI+G8T
 DWxukBpdM/6aktDpyL1bANjKW2QvaZBLFIClYtv5Cpc+PCA6DFKzReYeP
 cK8JiROG3ndAHd/XBiPyxAx9+BVPcmyyfgvHR8sRDkelk2iHSE8n5Ngac
 Wrfy4hdFlhSksDDCvNhDIaE0KacNEWxhTPHlX+bnaN8B4LzLBhxrRWUJN
 0FUvd0MOkALFQg0YnYcjmgWq2MpJrpsAnXXZeMUQKq0aIMVHv2KjOmB7H
 vKUiivffAeMuLk4BshMyoLqoN11yd/M/VwXFTPeIeFMLApBrKIqJexBhy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453013488"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="453013488"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:32:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="9395194"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:32:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231101114212.9345-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
 <20231101114212.9345-5-ville.syrjala@linux.intel.com>
Date: Thu, 02 Nov 2023 15:32:09 +0200
Message-ID: <878r7g2sdi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/dsi: Remove dead GLK checks
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 01 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> GLK has its own glk_dsi_clear_device_ready() so remove
> the dead GLK checks from vlv_dsi_clear_device_ready().
> Sadly BXT still uses vlv_dsi_clear_device_ready() so the
> code still looks like a mess due to the difference in VLV/CHV
> vs. BXT port A/C shenanigans.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 55da627a8b8d..64023fb8dd74 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -570,7 +570,7 @@ static void vlv_dsi_clear_device_ready(struct intel_e=
ncoder *encoder)
>  	drm_dbg_kms(&dev_priv->drm, "\n");
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
> -		i915_reg_t port_ctrl =3D IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_pri=
v) ?
> +		i915_reg_t port_ctrl =3D IS_BROXTON(dev_priv) ?
>  			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
>=20=20
>  		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> @@ -589,7 +589,7 @@ static void vlv_dsi_clear_device_ready(struct intel_e=
ncoder *encoder)
>  		 * On VLV/CHV, wait till Clock lanes are in LP-00 state for MIPI
>  		 * Port A only. MIPI Port C has no similar bit for checking.
>  		 */
> -		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) || port =3D=3D PO=
RT_A) &&
> +		if ((IS_BROXTON(dev_priv) || port =3D=3D PORT_A) &&
>  		    intel_de_wait_for_clear(dev_priv, port_ctrl,
>  					    AFE_LATCHOUT, 30))
>  			drm_err(&dev_priv->drm, "DSI LP not going Low\n");

--=20
Jani Nikula, Intel
