Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59520ADF14E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 17:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD2310E02D;
	Wed, 18 Jun 2025 15:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WBYOw64c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A910310E884
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 15:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750260260; x=1781796260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xxJd/oZcgqrEi77YHQyt46Htn2cdJLqSFrzE63jCrkg=;
 b=WBYOw64c0hKzwRQq0u9fTgY8o1FeNXnp4+MZURMgc+cdXxlRsylr0WQG
 GRLwdg8G9WfblQACxmNHl6Pr/2GdN9Gif6didPpINrF+8duQM4kiTJQhJ
 B2hE2R5e5SA4a9niWA/HMxHGynB/STRUM2LOEmCQ0CrZ5IPGZICA9Zcwz
 GsdO8NttlA0EaiyWIl+kvrMRUmjfVGH+0xInE/2+3gdKspG7aVMA2qLyy
 TgNiZ0nkAO/OcuFMgOpLX3eF7itY7pvmrxxkLbkdO/NLrhATDPHLbnGxr
 uXz/05d/kTpENoTCEQJK+DAflmO6CwdPlicihhI2BDtVlPSZF7fXwSQIj Q==;
X-CSE-ConnectionGUID: NzlXii3uRqaLZuvMsR14ig==
X-CSE-MsgGUID: bqvnh6+jQt+Cs6tOa3/nVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52354791"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52354791"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 08:24:20 -0700
X-CSE-ConnectionGUID: 0WPvvByuQmO1nBq5epzeYQ==
X-CSE-MsgGUID: 4J/2yDiMSm+lBH3zSYrq2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="180831093"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.161])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 08:24:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH 0/2] drm/i915: Miscellaneous clean up changes around
 i915_drv.h
In-Reply-To: <cover.1750251040.git.krzysztof.karas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1750251040.git.krzysztof.karas@intel.com>
Date: Wed, 18 Jun 2025 18:24:14 +0300
Message-ID: <e467c056bed716fefb8d11b7b983c99b76334536@intel.com>
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

On Wed, 18 Jun 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> Krzysztof Karas (2):
>   drm/i915: Move out engine related macros from i915_drv.h
>   drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to i915_gem.h

Maybe get an ack from the gem folks, but LGTM.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
>  drivers/gpu/drm/i915/gt/intel_engine.h | 31 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h        | 33 --------------------------
>  drivers/gpu/drm/i915/i915_gem.h        |  2 ++
>  3 files changed, 33 insertions(+), 33 deletions(-)

-- 
Jani Nikula, Intel
