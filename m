Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39821868170
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 20:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8209B10E23B;
	Mon, 26 Feb 2024 19:49:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mO++1Dv7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 581A610E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 19:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708976978; x=1740512978;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=p0AoTubVelP5q6mNmYo4mS4EM0C63UjavMIQkgo5mzI=;
 b=mO++1Dv71OCRgS8kN6rFTWG3xBmvPngNwpRuXIi01haacgshUbGbw6Mr
 dwaWIOl5IpXUxpc5wRgPHKYTj/bdGZCPHSrBQE1b+fAwNL8G/ZCk5LLMQ
 IfldZFEdayhzXbSsiky2kj8QJmVQbop3okMJrN2ajJyJvpgKRp+y/S2Dr
 0BJIrREcjb5fTl2QAKaqYSjiUD9I/369tkV/qT6QlPMYt+WC9IU0UWq78
 T1LuDz6JGybenwtYmk0i9NYKXoTbb9cCQS6b6e/bkwzg4gMKNaO7/qiL6
 jrM81xCs2fE/GSS6Wty0KOBun5mrTLqeiXClyH9Y+lt8QZP9tB2xylBGA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3415078"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3415078"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:49:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="6919064"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:49:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/dsi: Don't use SET_CONTEXT_LATENCY with
 DSI transcoders
In-Reply-To: <20240226193251.29619-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240226193251.29619-1-ville.syrjala@linux.intel.com>
 <20240226193251.29619-2-ville.syrjala@linux.intel.com>
Date: Mon, 26 Feb 2024 21:49:38 +0200
Message-ID: <87sf1fknu5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 26 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> ADL DSI transcoders do not have the new SET_CONTEXT_LATENCY
> register. Instead they supposedly use the older TGL VBLANK_START
> based method of defining the vblank delay.
>
> Completely untested due to lack of suitable hardware.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 00ac65a14029..e9c7e9b8957a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2617,7 +2617,7 @@ static void intel_set_transcoder_timings(const stru=
ct intel_crtc_state *crtc_sta
>  	 * VBLANK_START no longer works on ADL+, instead we must use
>  	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +	if (DISPLAY_VER(dev_priv) >=3D 13 && !transcoder_is_dsi(cpu_transcoder)=
) {
>  		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
>  			       crtc_vblank_start - crtc_vdisplay);

--=20
Jani Nikula, Intel
