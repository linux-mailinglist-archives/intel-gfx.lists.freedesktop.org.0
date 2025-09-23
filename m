Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDBAB9705D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F23310E688;
	Tue, 23 Sep 2025 17:28:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I8oD5OwE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE2810E686;
 Tue, 23 Sep 2025 17:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648480; x=1790184480;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DXaQhbaJmLgMrKGq9A7HtYzWXGBH48jMO4alznMPcOo=;
 b=I8oD5OwESvvQQKo8+fXDkcZneSvxPYavPMTqA0UZaR0i3TRSoF1wQCDO
 cbkJS5CdLLg21Fuzwn+CNGLfD5L3gXjHpEVLcs2muVRkWEKmDthJme5SD
 JpLwlvw715rMD4m7pUxd+JM1rh7oJ9a/WnDsFE1PV9eAacdbL/MzM74QX
 N5qvloL2y2uLJGEblq4EbKoOUyOTKeYI+AKge2utKcsK4k1tgsSv7BBF+
 Yxdv73VneC/br2b0DwDDVoeqICKE8HynGJG3iZjtHNyGVIa2zJMX+HGse
 rNy5D/Yfsf4Lsgq0Ddug9tvsyaQcH+j/O2QtEsXS+AvtnkljW35ctiv6F g==;
X-CSE-ConnectionGUID: AiF0eTGfQKiqOqkTyIA2XQ==
X-CSE-MsgGUID: S+pLD0BxQbWczwnFdT6eAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="72041756"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="72041756"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:27:59 -0700
X-CSE-ConnectionGUID: n8U41BYQRqq5aReEaZE8ZA==
X-CSE-MsgGUID: wSoInaKsRmGJUiVrsva5gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176767462"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:27:57 -0700
Date: Tue, 23 Sep 2025 20:27:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for
 FIELD_MAX()
Message-ID: <aNLYmszqVyjSId7O@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923131043.2628282-9-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Sep 23, 2025 at 06:40:42PM +0530, Ankit Nautiyal wrote:
> Introduce REG_FIELD_MAX macro as local wrapper around FIELD_MAX() to return
> the maximum value representable by a bit mask. The value is cast to u32
> for consistency with other REG_* macros and assumes the bitfield fits
> within 32 bits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg_defs.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index bfe98cb9a038..50967f887790 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -174,6 +174,16 @@
>   */
>  #define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
>  
> +/**
> + * REG_FIELD_MAX() - produce the maximum value representable by a field
> + * @_mask: shifted mask defining the field's length and position
> + *
> + * Local wrapper for FIELD_MAX() to return the maximum bit value that can
> + * be held in the field specified by @_mask, cast to u32 for consistency
> + * with other macros.
> + */
> +#define REG_FIELD_MAX(_mask)	((u32)FIELD_MAX(_mask))

We use a double underscore '__mask' everwhere else. Let's
try to be consistent.

with that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  typedef struct {
>  	u32 reg;
>  } i915_reg_t;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
