Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF64B40848
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 17:00:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB91710E78D;
	Tue,  2 Sep 2025 15:00:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ypv/g74W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67E310E78C;
 Tue,  2 Sep 2025 15:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756825221; x=1788361221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wSBwJZzg6OnYGL0CmxNNRxnEDXRrMlb8XG0h9F3PQnw=;
 b=Ypv/g74WBxRALIjxuY4JBypZNVHAi3TtFtvVHq+N6my0m1Cy4eKu6tTr
 e9zO9/0DlWTSaDAhmQOQF3B2mwODaTCntufkW4RJ82rIBj7Zw9M6s1lzE
 PSSeIbRv5mXpXUMYY+IobSZOU9aVDc22NcswhJ/LPhkQ2RRiY+pbly5YO
 q5deDm/8BYLDorqpriBCGEToT6AxinPrSwP3eeYQN2i+2mUSSuwW700wi
 LoLADK/iXJnH6LwvnepUGuZor0vJ3h69x79S2YYl361tTI9zAbiabdnA5
 M3mXonqfHE/UwBrHhNW8ACngtraeZTR98TCOBn9AwuKAgQNtIC1G4j5sc Q==;
X-CSE-ConnectionGUID: DGGkonc3RoOzfavaO1lrsg==
X-CSE-MsgGUID: LKOFfxlMTcO+7EpxhOBS8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="70532746"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70532746"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 08:00:21 -0700
X-CSE-ConnectionGUID: Bt2Spi1vQ5GtQJhrKOGFQg==
X-CSE-MsgGUID: xCXrs+0gQ7SI0iZu470P5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="170856819"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa009.jf.intel.com with ESMTP; 02 Sep 2025 08:00:19 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: mika.kahola@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: Re: [RESEND 00/12] drm/i915: vlv clock cleanups
Date: Tue,  2 Sep 2025 17:01:24 +0200
Message-ID: <20250902150124.2155586-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Hi Jani,

> Rebase and resend of [1].
> 
> [1] https://lore.kernel.org/r/cover.1754385408.git.jani.nikula@intel.com
> 
> Jani Nikula (12):
>   drm/i915: add vlv_clock_get_gpll()
>   drm/i915: add vlv_clock_get_czclk()
>   drm/i915: add vlv_clock_get_hrawclk()
>   drm/i915: make vlv_get_cck_clock_hpll() static
>   drm/i915: add vlv_clock_get_cdclk()
>   drm/i915: make vlv_get_cck_clock() static
>   drm/i915: rename vlv_get_hpll_vco() to vlv_clock_get_hpll_vco()
>   drm/i915: cache the results in vlv_clock_get_hpll_vco() and use it
>     more
>   drm/i915: remove intel_update_czclk() as unnecessary
>   drm/i915: log HPLL frequency similar to CZCLK
>   drm/i915: move hpll and czclk caching under display
>   drm/i915: split out vlv_clock.[ch]
> 
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++----
>  drivers/gpu/drm/i915/display/intel_display.c  | 61 -------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  6 --
>  .../gpu/drm/i915/display/intel_display_core.h |  5 ++
>  .../drm/i915/display/intel_display_driver.c   |  1 -
>  drivers/gpu/drm/i915/display/vlv_clock.c      | 89 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/vlv_clock.h      | 38 ++++++++
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 11 ++-
>  drivers/gpu/drm/i915/i915_drv.h               |  3 -
>  drivers/gpu/drm/xe/xe_device_types.h          |  6 --
>  12 files changed, 148 insertions(+), 105 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
>  create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h
> 
> -- 
> 2.47.2
> 
> 

Entire series looks good to me.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

Best regards,
Michał
