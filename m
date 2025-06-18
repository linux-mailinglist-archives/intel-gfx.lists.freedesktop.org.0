Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C742ADF73C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 21:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6F510E8EE;
	Wed, 18 Jun 2025 19:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fWvdLZ6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835A510E1DC;
 Wed, 18 Jun 2025 19:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750276281; x=1781812281;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UTLZOaZ2JeTEzlyrHZPOY39LJCB2vtCfCzaXCGwQODg=;
 b=fWvdLZ6jNDHJrPdIX/JYwi3nTeCY7GtjSBkgSM+HUnLPYm9dRVviAild
 1mEe31uQMCDfGV9VtYjyje883VzXT64y8YRoJF/dXxEHhk530oZ7IeC8y
 hoAic1SnboG4UFklHGJQFrt7lj4i7VHaGLyqpOh5uoZJEaA5VGK7C+lPH
 p98S2Cc3C+jPHzFZozDnbXBOWY+PsxRAe2TKC/ltsZKQZW221LZcrQLCX
 MNDgkVlyTRrRqMm75tCdF0xjI7QjCBRv8Qdi+P0X6s84Wkb4jIMDnnZ7o
 aNz2lr61t0NQUBsrNabQOj7bkfactcqg9fLZMF+Zz9WTmHhWdF4vb50Uq Q==;
X-CSE-ConnectionGUID: p7Bbg1ZmTYCAUGd7al+Rjg==
X-CSE-MsgGUID: 552OrqVpQiaxcMsMCcD/Cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="51744068"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="51744068"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 12:51:20 -0700
X-CSE-ConnectionGUID: 7/u56lu+QlK3H4t39ukVKg==
X-CSE-MsgGUID: pOMyiV4mQzC70tds7f35Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149720080"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.161])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 12:51:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 stable@vger.kernel.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 0/2] Fixes in snps-phy HDMI PLL algorithm
In-Reply-To: <20250618130951.1596587-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250618130951.1596587-1-ankit.k.nautiyal@intel.com>
Date: Wed, 18 Jun 2025 22:51:15 +0300
Message-ID: <2e0169d6e2d533e4b0175937961d91ae8da4799e@intel.com>
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

On Wed, 18 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Fixes/improvement in snps-phy HDMI PLL algorithm.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ankit Nautiyal (2):
>   drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by using
>     div64_u64
>   drm/i915/snps_hdmi_pll: Use clamp() instead of max(min())
>
>  drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel
