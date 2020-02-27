Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DFF1723B6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 17:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE1F89354;
	Thu, 27 Feb 2020 16:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F3C89354
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 16:42:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 08:42:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="230827057"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 27 Feb 2020 08:42:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 18:42:02 +0200
Date: Thu, 27 Feb 2020 18:42:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200227164202.GV13686@intel.com>
References: <20200227145359.17543-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227145359.17543-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dram: hide the dram structs better
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 04:53:59PM +0200, Jani Nikula wrote:
> Finish the job started in d28ae3b28187 ("drm/i915: split out
> intel_dram.[ch] from i915_drv.c") by moving struct dram_dimm_info and
> dram_channel_info inside intel_dram.c, the only user of the structs.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h   | 10 ----------
>  drivers/gpu/drm/i915/intel_dram.c | 10 ++++++++++
>  2 files changed, 10 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index ea13fc0b409b..c5a06f864123 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1274,16 +1274,6 @@ struct drm_i915_private {
>  	 */
>  };
>  =

> -struct dram_dimm_info {
> -	u8 size, width, ranks;
> -};
> -
> -struct dram_channel_info {
> -	struct dram_dimm_info dimm_l, dimm_s;
> -	u8 ranks;
> -	bool is_16gb_dimm;
> -};
> -
>  static inline struct drm_i915_private *to_i915(const struct drm_device *=
dev)
>  {
>  	return container_of(dev, struct drm_i915_private, drm);
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/int=
el_dram.c
> index 9bb9dd724d3f..6b922efb1d7c 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -6,6 +6,16 @@
>  #include "i915_drv.h"
>  #include "intel_dram.h"
>  =

> +struct dram_dimm_info {
> +	u8 size, width, ranks;
> +};
> +
> +struct dram_channel_info {
> +	struct dram_dimm_info dimm_l, dimm_s;
> +	u8 ranks;
> +	bool is_16gb_dimm;
> +};
> +
>  #define DRAM_TYPE_STR(type) [INTEL_DRAM_ ## type] =3D #type
>  =

>  static const char *intel_dram_type_str(enum intel_dram_type type)
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
