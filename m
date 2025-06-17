Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F326AADCE2E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 15:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0DE10E6F9;
	Tue, 17 Jun 2025 13:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d5z3hu0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BD810E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 13:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750168263; x=1781704263;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oblIbLPaqrXVUT3EQc2wh4ZJeO7Rv/Ddz0Kv3NAxSpI=;
 b=d5z3hu0T4+AzzSxgIjvjynu5j3ULkOWkJVddFOLSttJclVwGVEBqmOnj
 ZzB1RwS3mD9/2UyDdDRJEn2WASN+VOZEVPNEW4aYeObShfmmowkdKmz/r
 CLlTmfzaNXSoK/i39bYThWAeqnsRekpgX7aKdhxI+jAj8AGhcOO3Y/IwH
 818Mudnl9cwCoi8jatuyMQZaHM4W08uUALsjSRcgqLPp5+gs2pkWqqlDz
 3MT1ir434cWzDnjn3xsU0YT5GxMfgvCAcKofet+2XUo9ELXqnqkgXcG9J
 QDPBtHeV6dq4Ta6+jlznoAtHvrlRD6aTEPNl2s9jMcD/c9/Q7rpg+FB2x A==;
X-CSE-ConnectionGUID: 2d0QnUw8RsW5b/ZPzz9dww==
X-CSE-MsgGUID: 3aue9h9OTmGh4wjZGcV8zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="39952667"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="39952667"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:51:03 -0700
X-CSE-ConnectionGUID: vlPePXCbSMeJKDhDTdmHVQ==
X-CSE-MsgGUID: UMuJwXBfQzu4kKORQebYCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="149267460"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:51:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vas Novikov <vasya.novikov@gmail.com>, stable@vger.kernel.org
Cc: regressions@lists.linux.dev, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>,
 Khaled Almahallawy <khaled.almahallawy@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org, Christian
 Heusel <christian@heusel.eu>
Subject: Re: [REGRESSION][BISECTED] intel iGPU with HDMI PLL stopped working
 at 1080p@120Hz 1efd5384
In-Reply-To: <33046593-17e3-4bdc-9d4a-94dc94ef5e81@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
 <afa8a7b2ced71e77655fb54f49b702c71506017d@intel.com>
 <33046593-17e3-4bdc-9d4a-94dc94ef5e81@gmail.com>
Date: Tue, 17 Jun 2025 16:50:57 +0300
Message-ID: <72c9ef36e81ddce8a9e91c5f3652489f5fa2d78d@intel.com>
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
> Hi Jani and everyone,
>
> On 17/06/2025 12.33, Jani Nikula wrote:
>> Does [1] help?
>
> The patch works. (Applied on top of 6.16.0-rc2-1.1-mainline, built by 
> Christian @gromit who helped again.)
>
> The patch (or the new kernel) also have a side effect of xrandr allowing 
> a completely new refresh rate, ~144Hz. This new refresh also seems to 
> work (I cannot easily disambiguate 144 versus 120, but I can tell it's 
> not 60Hz). So as far as my hardware is concerned, this patch leaves the 
> whole system working in all scenarios that I've tested.

Thanks a lot for testing! Ankit will send a v2 of it, and I think we'll
have it in mainline and backported to stable in a few weeks.

There's no need to file that bug report, this will suffice.


BR,
Jani.


-- 
Jani Nikula, Intel
