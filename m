Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE9F406C9B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 15:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7226A6E9F1;
	Fri, 10 Sep 2021 13:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A50A6E9EF;
 Fri, 10 Sep 2021 13:03:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="221124704"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="221124704"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 06:03:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="540594297"
Received: from cmmooney-mobl3.ger.corp.intel.com (HELO [10.213.215.191])
 ([10.213.215.191])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 06:03:45 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
References: <20210910053317.3379249-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8d211f7a-9dcb-dc5e-8703-5ffc33898ee7@linux.intel.com>
Date: Fri, 10 Sep 2021 14:03:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210910053317.3379249-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/6] i915: Simplify mmio handling & add new
 DG2 shadow table
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


On 10/09/2021 06:33, Matt Roper wrote:
> Our uncore MMIO functions for reading/writing registers have become very
> complicated over time.  There's significant macro magic used to generate
> several nearly-identical functions that only really differ in terms of
> which platform-specific shadow register table they should check on write
> operations.  We can significantly simplify our MMIO handlers by storing
> a reference to the current platform's shadow table within the 'struct
> intel_uncore' the same way we already do for forcewake; this allows us
> to consolidate the multiple variants of each 'write' function down to
> just a single 'fwtable' version that gets the shadow table out of the
> uncore struct rather than hardcoding the name of a specific platform's
> table.  We can do similar consolidation on the MMIO read side by
> creating a single-entry forcewake table to replace the open-coded range
> check they had been using previously.
> 
> The final patch of the series adds a new shadow table for DG2; this
> becomes quite clean and simple now, given the refactoring in the first
> five patches.

Tidy and it ends up saving kernel binary size.

However I am undecided yet, because one thing to note is that the trade 
off is source code and kernel text consolidation at the expense of more 
indirect calls at runtime and larger common read/write functions.

To expand, current code generates a bunch of per gen functions but in 
doing so it manages to inline a bunch of checks like NEEDS_FORCE_WAKE 
and BSEARCH (from find_fw_domain) so at runtime each platform mmio 
read/write does not have to do indirect calls to do lookups.

It may matter a lot in the grand scheme of things but this trade off is 
something to note in the cover letter I think.

Regards,

Tvrtko

> Matt Roper (6):
>    drm/i915/uncore: Convert gen6/gen7 read operations to fwtable
>    drm/i915/uncore: Associate shadow table with uncore
>    drm/i915/uncore: Replace gen8 write functions with general fwtable
>    drm/i915/uncore: Drop gen11/gen12 mmio write handlers
>    drm/i915/uncore: Drop gen11 mmio read handlers
>    drm/i915/dg2: Add DG2-specific shadow register table
> 
>   drivers/gpu/drm/i915/intel_uncore.c           | 190 ++++++++++--------
>   drivers/gpu/drm/i915/intel_uncore.h           |   7 +
>   drivers/gpu/drm/i915/selftests/intel_uncore.c |   1 +
>   3 files changed, 110 insertions(+), 88 deletions(-)
> 
