Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124345F3FE5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 11:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1900A10E2B3;
	Tue,  4 Oct 2022 09:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A7210E2B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 09:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664876278; x=1696412278;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=l6RktQizIzI+xgEK5ykulK5X1EFBdGXr+wlvXW0GClM=;
 b=Sxk5Z7UO/rrxeFpSKoM7VRcGNWo2tP/e76J0Sg4nyzmZ/o8Lp0o4vKzA
 UoctjHtfD1JeZuXVKAaSVrCrer2K84t64I7GVb4YIBCZh7i0IwrF4/GPM
 XOaEyNKPWaMTNzA4ZrsJP+eFA2vaEv71GG9vlLCWd8o1DGUQeE9PlzIOn
 BgDF16trBcOBPGgJoPAbGnxAAjXZjpeT17/FwfVZNCbM28gn1xS3LSkHm
 6mfltbmdivyQejsIx6tRdCyQmftHIweTpXReY+e3hk7uMq2hQFPgaA7tu
 wrwLGRSvFmbQHDhbBBIiJ8d4TApgau5y9ksqzJvU+g7fRyc36py7kPZiy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="303827520"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="303827520"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:37:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686483598"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="686483598"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 02:37:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 12:37:53 +0300
Message-ID: <87tu4kszda.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915: Start cleaning up the DPLL
 ID mess
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

On Mon, 26 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Start to clean up the mess around DPLL IDs a bit by removing
> the nasty assumption that the index of the DPLL in the
> arrays matches its ID. Fortunately we did have a WARN
> i nthere to cathc mistakes, but better to not has such
> silly assumptions i nthe first place.
>
> There's still a lot of mess left since the DPLL IDs in
> the hardware are a mess as well. Eg. the index of the
> register instance often differs from the index used
> to select the DPLL in clock routing thing. So we could
> probably clean up more of that, perhaps by declaring
> separate IDs for each PLL for each use case...

A couple of comments inline, but the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I think the debugfs DPLL number is benign enough that can be fixed
afterwards too.



>
> v2:
> - the trivial patches were already merged
> - introduce pll->index
> - add another patch for for_each_shared_dpll()
> - add another patch s/dev_priv/i915/
>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915: Stop requiring PLL index =3D=3D PLL ID
>   drm/i915: Decouple I915_NUM_PLLS from PLL IDs
>   drm/i915: Introduce for_each_shared_dpll()
>   drm/i915: s/dev_priv/i915/ in the shared_dpll code
>
>  .../drm/i915/display/intel_display_debugfs.c  |    5 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1011 +++++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   26 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |    7 +-
>  4 files changed, 543 insertions(+), 506 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
