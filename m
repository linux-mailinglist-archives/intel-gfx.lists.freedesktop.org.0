Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F91219CAB
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 11:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB9B6E02B;
	Thu,  9 Jul 2020 09:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFFD6E02B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 09:57:30 +0000 (UTC)
IronPort-SDR: dRo+/Iq3FvQTD5SepA46FnzMOYkHsD3e8l7vO6zteGI/LKyYwVt092Uj3WBjPV+szWEGqASJbv
 RhhNxABZIxag==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="135422342"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="135422342"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 02:57:30 -0700
IronPort-SDR: tSaBF+2cKcRj4V3Wtxs+CCEMjN60CnQVQvi5zAIjdgqb1sDd0XiVMF4is6f8GqlIGQ6e9a6LVk
 Tky7WLRnF0fw==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="457848293"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 02:57:29 -0700
Date: Thu, 9 Jul 2020 12:57:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200709095725.GA16776@ideak-desk.fi.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108181242.13650-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/sdvo: Fix SDVO colorimetry bit
 defines
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 08, 2020 at 08:12:37PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Fix up the SDVO colorimetry bits to match the spec.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo_regs.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h b/drivers/gpu=
/drm/i915/display/intel_sdvo_regs.h
> index 13b9a8e257bb..74dc6c042b6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
> @@ -705,10 +705,10 @@ struct intel_sdvo_enhancements_arg {
>  #define SDVO_CMD_GET_PIXEL_REPLI	0x8c
>  #define SDVO_CMD_GET_COLORIMETRY_CAP	0x8d
>  #define SDVO_CMD_SET_COLORIMETRY	0x8e
> -  #define SDVO_COLORIMETRY_RGB256   0x0
> -  #define SDVO_COLORIMETRY_RGB220   0x1
> -  #define SDVO_COLORIMETRY_YCrCb422 0x3
> -  #define SDVO_COLORIMETRY_YCrCb444 0x4
> +  #define SDVO_COLORIMETRY_RGB256	(1 << 0)
> +  #define SDVO_COLORIMETRY_RGB220	(1 << 1)
> +  #define SDVO_COLORIMETRY_YCrCb422	(1 << 2)
> +  #define SDVO_COLORIMETRY_YCrCb444	(1 << 3)
>  #define SDVO_CMD_GET_COLORIMETRY	0x8f
>  #define SDVO_CMD_GET_AUDIO_ENCRYPT_PREFER 0x90
>  #define SDVO_CMD_SET_AUDIO_STAT		0x91
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
