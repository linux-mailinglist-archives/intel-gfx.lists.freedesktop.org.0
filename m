Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F9BADC859
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 12:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79BD10E177;
	Tue, 17 Jun 2025 10:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NmrEkZ63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B7210E177
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 10:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750156400; x=1781692400;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Zn2TacU6UVNqCNeV3B0EXyrHPDXKd5MOwZRVE1Gwh9Q=;
 b=NmrEkZ63jcRpyGpR2RBBLMppl2zrQ84UCRVmrP9BxGr3odvhodeTz2Tz
 u/4YgtZH9LIzcL8vSoiPFnejJ4d/2TeBGG0BIJ36OALROIQSCx/oDtGzp
 GhrOwXTLcNZFE947Qmjfn10ii45IPrpcPqe5wkuOjjIDVX08EzbqjhRyg
 /JUHtf8PLDcNxuAMF/RUIl8KTpX6Xb/HLPveAvdH5FF23wD7z0dWRtzqY
 SbL8hqYfTQ0aO5m/nP2Mv7BwPaWWS6/dg5JKQxE8xp7VmiU9qsiP2PE4b
 KRS3BGzrJ/PnxiSU4bEFcB2IE1vaN0t0IEcKM1ONj8xrdq/kDO7naklh7 A==;
X-CSE-ConnectionGUID: gVZi2hVyROObQ2JyBzO9/Q==
X-CSE-MsgGUID: v8vymORCR/irAu+vDQ0ymg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="63681486"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="63681486"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 03:33:18 -0700
X-CSE-ConnectionGUID: HhE8r42OTjq16hAMe9DPfA==
X-CSE-MsgGUID: NHu4dK6qToyDh3rQ6/RooA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="153703458"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 03:33:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vas Novikov <vasya.novikov@gmail.com>, stable@vger.kernel.org
Cc: regressions@lists.linux.dev, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [REGRESSION][BISECTED] intel iGPU with HDMI PLL stopped working
 at 1080p@120Hz 1efd5384
In-Reply-To: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
Date: Tue, 17 Jun 2025 13:33:11 +0300
Message-ID: <afa8a7b2ced71e77655fb54f49b702c71506017d@intel.com>
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

On Tue, 17 Jun 2025, Vas Novikov <vasya.novikov@gmail.com> wrote:
> If any other information or anything is needed, please write.

Does [1] help?

If not, please file a bug as described at [2], in particular attach
dmesg with debugs enabled all the way from boot to reproducing the
problem.

Thanks,
Jani.


[1] https://lore.kernel.org/r/20250613061246.1118579-1-ankit.k.nautiyal@intel.com
[2] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


-- 
Jani Nikula, Intel
