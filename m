Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0608D37E4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 15:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA2210E1FB;
	Wed, 29 May 2024 13:38:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NDBxfSt0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD57910E1FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716989914; x=1748525914;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=P23idWgkxJraf51efToRRZdlS2wIrjnk/7hEAgngl9k=;
 b=NDBxfSt0ldsf+PwNg1p1rZAIGlb5sKoH980gze56zVjyBxrdPns7OpDz
 EZ2FiiVybPJO2RGExRaBuIjW3bG7dA9KDhlriq1Ac9uKXJvzyD80qccsa
 1egWLT4Kszj98+YR3PCWxmm08Ze7acSwIKzCNTB9mycmC/I4nq/VxMDbc
 Iep8X3EAswlDJVTEBfgfS2rJx9Kjt9Xv3PVgkR8I+k0w9zDecFonjdAi2
 LNcZKuhdEt9VwBlxF2Ie9m/Dajg7KF1ACZjxRu/5RDYjilJWM+jX+SQ9E
 5Z01Vw28Pi/1zIIceEfGIDpp5Up7eIvuDD26lfarMMzUGoqAeujfZLNIa Q==;
X-CSE-ConnectionGUID: +qjXXWjUShiZOov7nWGs4Q==
X-CSE-MsgGUID: ryWzGsWQTB2TPeU4GZBqdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="17223840"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17223840"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 06:38:34 -0700
X-CSE-ConnectionGUID: eXtc0OGzSr2UQNCioARIyw==
X-CSE-MsgGUID: ic6lBZBzQsuwxGAI+g7dpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="66302958"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 06:38:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v2 0/2] drm/i915/display: Add comparison for pipe config
 for MTL+ >
In-Reply-To: <20240523134649.31452-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240523134649.31452-1-mika.kahola@intel.com>
Date: Wed, 29 May 2024 16:38:40 +0300
Message-ID: <8734q0kaan.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 23 May 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> Currently, we may bump into pll mismatch errors during the
> state verification stage. This happens when we try to use
> fastset instead of full modeset. Hence, we would need to add
> a check for pipe configuration to ensure that the sw and the
> hw configuration will match. In case of hw and sw mismatch,
> we would need to disable fastset and use full modeset instead.
>
> However, first we need to revert the patch that disables fastset
> for C10.

I think the patch order should be reversed. Each commit should work. Can
be applied in a different order without resending.

There's maybe a bit too much happening in patch 2 for my liking, but
*shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> v2: Fix C10 error on PLL comparison (BAT)
>     Use memcmp instead of fixed loops for pll config
>     comparison (Jani)
>     Clean up and use intel_cx0pll_dump_hw_state() to dump
>     pll information (Jani)
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>
> Mika Kahola (2):
>   drm/i915/display: Revert "drm/i915/display: Skip C10 state
>     verification in case of fastset"
>   drm/i915/display: Add compare config for MTL+ platforms
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 80 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  8 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 33 ++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  4 files changed, 109 insertions(+), 13 deletions(-)

-- 
Jani Nikula, Intel
