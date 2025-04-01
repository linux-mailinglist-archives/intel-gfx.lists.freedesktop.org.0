Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A616AA776FA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 10:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D1D10E533;
	Tue,  1 Apr 2025 08:56:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1chuqa2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67ECE10E525;
 Tue,  1 Apr 2025 08:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743497792; x=1775033792;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hXC+wqQB4Tjkka1nGzgSbhvGGl2YitLZG06Vbu6loZg=;
 b=S1chuqa2nbzpwCADhj7HQb3nihbvoWJVTHZ+Af4VuXbiYMsp4MNK6xoZ
 cxRaTf2K1ZXoQGSQ4F4AT5V5X+iocBf1ClRCjUA/wXoZ0pJdqvXYZwIC1
 clR6LdLBGnLus2OpFNAz6hW6gm1CNX9m+dJ/xsanMzxF7p1wYR/9lTIkx
 OP74HAfAmmBM4C/GNVnCQN7nWjJug1iYCas8iMwb+R557Y7zqxRNit+GX
 lJaJuPitjlx0QckSo40APDwTU3w5SnHKlhU+tDX7sK7Oz2Kqbpv8zCy3m
 WhZnQRr0GFuKKhEkX6M81Wzblfa4MlB1TSRTvbyZAsMcV9vs3nm3esNpH g==;
X-CSE-ConnectionGUID: Jz/NoI67QxaB8Ls4isdcJQ==
X-CSE-MsgGUID: jLuLvyivS/qOtzwsBPjoNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="56181063"
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="56181063"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 01:56:32 -0700
X-CSE-ConnectionGUID: RqFsnUwVSfGho9IRjP070Q==
X-CSE-MsgGUID: YbzSEvfSSPGyz3G8keboGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="131459006"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 01:56:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: reduce intel_wakeref.h dependencies
In-Reply-To: <Z-bFEou3Q7xsksi_@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326115452.2090275-1-jani.nikula@intel.com>
 <Z-bFEou3Q7xsksi_@intel.com>
Date: Tue, 01 Apr 2025 11:56:27 +0300
Message-ID: <875xjo45vo.fsf@intel.com>
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

On Fri, 28 Mar 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Mar 26, 2025 at 01:54:52PM +0200, Jani Nikula wrote:
>> Forward declare struct drm_printer instead of including drm/drm_print.h,
>> as we only need the pointer. Turns out quite a few places depend on this
>> include implicitly. Make them explicit.
>> 
>> Some of the includes are just stale and unnecessary. Group the forward
>> declarations together while at it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

-- 
Jani Nikula, Intel
