Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09D07B7911
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 09:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F0FE10E0DD;
	Wed,  4 Oct 2023 07:53:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60BF10E0DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 07:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696405995; x=1727941995;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=sgNlnzc9ikbcubONi4JVh9qAbn63GhMxpUQIQwQ+KQg=;
 b=js+E2lbyDESr7j2VX6LyVS9N1V39EC9uZnmFddeNGiR0kOKPnwSWTUhV
 65WJPGepXmtY3tsbhyWUoGNXSzH5mVIkW8ih5WOf6TvIp6WIXIW90VzC6
 WLlNKLsll+xsBi4vZS6QTGwpt+Avyp5pPZjBNiOClYrDKgrQlwsnYXDH0
 mfQGJy63Ls5Jz9dYJDtxYa4VpRhHvKP8meQcPAFLt/WgT1EcOYEKXnaCJ
 XEuHK4yBFjZ1AjNH3lKvNKWkfLExVbG8vPiLY8nCh4+VAaiVcdIzXErkQ
 PbiVf9wZoKlqfGrNWA6qiEjkaz5OSFAj0ndn0FQnz69+7eP76u+S9kgDb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="469360576"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="469360576"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 00:53:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="744847359"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="744847359"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 00:53:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
Date: Wed, 04 Oct 2023 10:53:08 +0300
Message-ID: <87jzs2g6xn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 0/4] drm/i915: Start cleaning up the DPLL
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

On Tue, 03 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

still holds on the series


>
> v2:
> - the trivial patches were already merged
> - introduce pll->index
> - add another patch for for_each_shared_dpll()
> - add another patch s/dev_priv/i915/
>
> v3:
> - deal with pll->index in debugfs code
> - rebase due to other changes
>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915: Stop requiring PLL index =3D=3D PLL ID
>   drm/i915: Decouple I915_NUM_PLLS from PLL IDs
>   drm/i915: Introduce for_each_shared_dpll()
>   drm/i915: s/dev_priv/i915/ in the shared_dpll code
>
>  .../drm/i915/display/intel_display_debugfs.c  |   9 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 965 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  26 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   7 +-
>  4 files changed, 522 insertions(+), 485 deletions(-)

--=20
Jani Nikula, Intel
