Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7D8B0A661
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 16:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 762F510E9C8;
	Fri, 18 Jul 2025 14:32:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mre6AjoE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE0310E9C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 14:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752849147; x=1784385147;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IHit+rGUHSoBzT6N7jHPivolQjlu89b1wGHuo45Fi3k=;
 b=mre6AjoEGfCwGujmDEFv+Hj3PPWeQSsGBmE5f3mjVU7ENLBpX8erzCbe
 7PQmQymfLMzyKcVcYA4E2VQU0no3CpWnGavA3g9CsSghXFs9cd6d3shEp
 Pm4byF4L9s+F7BUyJ2ZCr+jUy9SA8Qi0Jf7jV5jvh0kPehI1V8J8IDOuM
 S5USGQY1LUpNQctMsafxgKBaluA43JP3Suo10LYvJyj/bwirSPTKo/uki
 sCNSR0gD/cMMGo5NmxOfnw+3exl/Zm/OnNJ9nMpdoXRdTmbfC1wcCsjz7
 eqh3Cyes3rtotR1nuBzVX9ah4TWR0ftlevqPAvkCOUUl2P0In3K9uXpW2 A==;
X-CSE-ConnectionGUID: J3amMaksTq2u/ZtsybjyiQ==
X-CSE-MsgGUID: q+UFZ6tyR+6xp9VlrzNNGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="66209186"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66209186"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 07:32:19 -0700
X-CSE-ConnectionGUID: O/oI9IYvSYuXs7OtXyxuKA==
X-CSE-MsgGUID: PMhviZJ0QdyD5jDDx1GKnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="163596225"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.245.84])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 07:32:16 -0700
Date: Fri, 18 Jul 2025 16:32:14 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 krzysztof.karas@intel.com, sebastian.brzezinka@intel.com
Subject: Re: [PATCH v3 2/4] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
Message-ID: <aHpa7q-BIOCt6g25@ashyti-mobl2.lan>
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
 <20250718102752.684975-3-sebastian.brzezinka@intel.com>
 <175283741896.466116.14256026238996065595@DEV-409>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <175283741896.466116.14256026238996065595@DEV-409>
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

On Fri, Jul 18, 2025 at 01:16:58PM +0200, Chris Wilson wrote:
> Quoting Sebastian Brzezinka (2025-07-18 12:28:11)
> > The value 4095 is intended to represent PAGE_SIZE - 1, as stated
> > in the commit that introduced this change:
> > commit 5f22cc0b134a ("drm/i915: Fix mismatch between misplaced
> >                       vma check and vma insert")
> 
> No, that is exactly the misconception I wanted to avoid.
> 
> The core kernel's system PAGE_SIZE is not necessarily the same as the
> paging boundary used by the GTT.

Too easy :-P Here is where I wanted to get. Page size might have
different meaning depending on the system.

A comment here to explain what the 4095 means would help to
better understand.

Andi
