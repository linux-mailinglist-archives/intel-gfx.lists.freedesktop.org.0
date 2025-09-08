Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0468DB488AF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A6D10E126;
	Mon,  8 Sep 2025 09:39:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vl2VTgYi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A775510E126
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757324365; x=1788860365;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AvpV847LfBa7BUPSr23YAKYDTgPnuPm0kDJhNCgK4Jg=;
 b=Vl2VTgYidfBrleitueqnSs2Eaev1ahq3SMNh5iTyUcZOrC9yGSpFTqMz
 u+z0AhgvHTWLqMXxi1x/WZvkyTo7x+g+TVUtdMEjIsmN0o40vqUJWmMf2
 /arDBfHxJ5hBO6clEMXi/s6V1cxvzBpQ3j7d6q6nrUJoeaVFH08rgqxsf
 m9wcfXZT/mbIFgHwH3I0Iw5uCB51ecwKuQLACOkTNE/fWRNnC1QsMcBL5
 61w6GJqCzU6/N+nX4Op3UJ6FMzk2AXXl77qMaQ7Fj12FHD9WLfW7HTcyY
 /GJi1GGHo44dXOKVVASyLqNug8A+bjwM5NSAnL59tJF3k0UvbwwR8FDB3 Q==;
X-CSE-ConnectionGUID: KfSP1df0TdSuOsiGDnqxcw==
X-CSE-MsgGUID: dw+x21KrQnmt3wguoyzuxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59505194"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59505194"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:39:25 -0700
X-CSE-ConnectionGUID: wC7cnJFOR2ClWlevpfGBFw==
X-CSE-MsgGUID: jT09i30oT0+T0yeT1C1ErA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177067612"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:39:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH 0/6] drm: Miscellaneous fixes in drm code
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Date: Mon, 08 Sep 2025 12:39:18 +0300
Message-ID: <5eecfcbf568390e9720636c53c4762a615e502b9@intel.com>
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

On Mon, 08 Sep 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> Krzysztof Karas (6):
>   drm/i915/gem: Avoid accessing uninitialized context in
>     emit_rpcs_query()
>   drm/i915: Add default case for the switch in igt_smoke_tiling()

i915 and drm changes should be sent separately when the changes have no
dependencies.

BR,
Jani.

>   drm: Remove drm_modeset_backoff() return code
>   drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
>   drm: Do not attempt to round_up() zeros in drm_suballoc_try_alloc()
>   drm: Avoid undefined behavior on u16 multiplication
>
>  drivers/gpu/drm/drm_fb_dma_helper.c                   | 7 +++++--
>  drivers/gpu/drm/drm_gem_vram_helper.c                 | 2 +-
>  drivers/gpu/drm/drm_mipi_dbi.c                        | 2 +-
>  drivers/gpu/drm/drm_mode_config.c                     | 2 +-
>  drivers/gpu/drm/drm_suballoc.c                        | 6 ++++--
>  drivers/gpu/drm/drm_vblank.c                          | 2 +-
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 3 ++-
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c    | 4 +++-
>  8 files changed, 18 insertions(+), 10 deletions(-)

-- 
Jani Nikula, Intel
