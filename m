Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61228B13A92
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 14:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED1F10E167;
	Mon, 28 Jul 2025 12:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFvQlO35";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F186F10E155;
 Mon, 28 Jul 2025 12:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753706113; x=1785242113;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jPMj3pq3ufbOfk1JQGmkbQCBCG2RylSbUJhTpiiCCQA=;
 b=TFvQlO35HC9L//UK4QD6tokHp8Wxy0xunYZMXD+lx7JQO6IPkvAAo4o3
 NzhAQPvww2LFR284x+7ZcH2rPOVM64lmfnlbxV0Zk3Lq7qSJQTK7Y48hw
 uNEROCTcmvwZSxhQm/tgqj8iGAqyDf5dPJUcQZYKtBgol9My8SJvMwFPp
 ZdixY4PPurP8CsiR3wKDna5tCl1Z6I06P8mEkAecdnpkNfxzMfYd1BxPV
 LbNO9LY0maYmDQPponCNUMPQmv6CoY/vzWo1soMgx+QWQpSKe6zm3I8gF
 ShbFRasqWvYFFiMykBYNWYG60wIXgLDhYZxyKTl0QL0DR7X2ZioquZo45 g==;
X-CSE-ConnectionGUID: /CYsZAxFRtS4AbEf+ilcjw==
X-CSE-MsgGUID: BHAk777cR9+I/PmmKJdexA==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="55159621"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55159621"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 05:35:12 -0700
X-CSE-ConnectionGUID: 8iXV9oR+TtizHyoh3OEf+A==
X-CSE-MsgGUID: HxdH0mStTPKtG4hsv/iLyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161691672"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 05:35:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 0/3] eDP Data Override
In-Reply-To: <20250725061548.2704697-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
Date: Mon, 28 Jul 2025 15:35:06 +0300
Message-ID: <a4eb268c7012b2f6ef9fec713550052399f19f97@intel.com>
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

On Fri, 25 Jul 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> When using link rates 2.43 and 6.75 causes a strong noise for WIFI
> bands. Its recommended we use 2.7 and 8.1 Gbps instead.
> The solution proposed was a static vbt field that provides us with a
> mask of rates which need to be skipped in favor of the next higher link
> rate.

We require patch series versions in the subject and changelogs in the
patches. There are at least three series with subject "eDP Data
Override".

Look, this is not new stuff. Get it right going forward. Please ask if
there's any confusion about this, or if you need help.


BR,
Jani.

>
> HSD:14022096069
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Suraj Kandpal (3):
>   drm/i915/vbt: Add eDP Data Overrride field in VBT
>   drm/i915/bios: Add function to check if edp data override is needed
>   drm/i915/edp: eDP Data Overrride
>
>  drivers/gpu/drm/i915/display/intel_bios.c     | 62 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 19 ++++++
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 +++++
>  4 files changed, 98 insertions(+), 1 deletion(-)

-- 
Jani Nikula, Intel
