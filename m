Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0A97B85F4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 18:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C3210E39F;
	Wed,  4 Oct 2023 16:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17C510E39A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 16:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696438724; x=1727974724;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ooLKPDJ2kiPLopo6posgjE9MJhSRjNFYYInLGeYQ/j4=;
 b=Iykmz2hJuOq3KbuwTR+jFo82M6kL3t/3RhhTVZTi2hxqhgJUzKJ48Uco
 EaR06PDl3xN9CDoTYkVspQAy91VuV6kvvG6PZ7BtDr4s7E2hIhcTyAnyY
 MFEQU7t/khRBL4l20OuEsJXqP9ngkPj0/CTytlUD0ErFSH1dyiejSL5zM
 gg2ISCTr7cYh2yu6A7D79FZq5QujNngXkmZndhQE5dbMRm3WPCnE5WIX0
 iS/W7HEpR4bPpi0pfKYH2DjxFWy2YqksTU3wwilNfFoQayXlXLaPQsLKT
 J19rwLNqiVhTNnA7V0HKSAddjfwk52w38pcYiMk4Z9kL+gQHqaU/x4K5y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="383136138"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="383136138"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 09:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="755022442"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="755022442"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 09:58:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
Date: Wed, 04 Oct 2023 19:58:26 +0300
Message-ID: <874jj6e34d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915: Display state checker
 cleanup
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

On Wed, 04 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The biggest thing here is changing the state checker to use
> a dedicated crtc state (instead of clobbering the old state),
> the rest is all polish.

A bikeshed on one commit, can be ignored, the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> Ville Syrj=C3=A4l=C3=A4 (12):
>   drm/i915/psr: Unify PSR pre/post plane update hooks
>   drm/i915: Stop clobbering old crtc state during state check
>   drm/i915: Constify the crtc states in the DPLL checker
>   drm/i915: Simplify DPLL state checker calling convention
>   drm/i915: Constify watermark state checker
>   drm/i915: Simplify watermark state checker calling convention
>   drm/i915: Constify the snps/c10x PLL state checkers
>   drm/i915: Simplify snps/c10x DPLL state checker calling convetion
>   drm/i915: Constify remainder of the state checker
>   drm/i915: Simplify the state checker calling convetions
>   drm/i915: s/pipe_config/crtc_state/ in the state checker
>   drm/i915: s/dev_priv/i915/ in the state checker
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   7 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  16 ++-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   7 +-
>  .../drm/i915/display/intel_modeset_verify.c   | 129 +++++++++---------
>  .../drm/i915/display/intel_modeset_verify.h   |  11 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  20 +--
>  drivers/gpu/drm/i915/display/intel_psr.h      |   3 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   7 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.h |   3 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   4 +-
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   3 +-
>  13 files changed, 106 insertions(+), 114 deletions(-)

--=20
Jani Nikula, Intel
