Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5247AF5BC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 23:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2C610E436;
	Tue, 26 Sep 2023 21:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9421810E436
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 21:35:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 9734AB81240;
 Tue, 26 Sep 2023 21:35:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B81C116A4;
 Tue, 26 Sep 2023 21:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695764117;
 bh=1oKjoq8wQQJ09zLjQeLGkDRn0Jb1RZ8ZkPY4otjKgo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AG6w7Q0sJgXe0toruyuuJp9z8kMHv5T5HD1ejDefGMgUFDnro4Nau6qIufLUIAoZE
 v0z9S/hx97iXnawgW8NrkaTsO8BGlsC1Fm7EEIMPz5GaM/3Q5knPTcEfN3c8l+4rRo
 9ZGGcAy/rfszR3576RFSgfdq7MtBsuNFiSq+rjURTn3uOEnWDWY7BudVj8r+oF6zSl
 lLZwEIOxg3Uhc0uLE56HJWsIGqgnhaWdA/2dRWA7FHKVmKcPa+4f8RsazKbJ9JoI8e
 yiSefafbdJZoW3qMTNFtRBIQDOJegyb/Nq/lQ+jLren3FlLR4HsCcFM6hSdxfwNmsT
 GqW3KHDFhsEkg==
Date: Tue, 26 Sep 2023 23:35:11 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <20230926213511.huaxprxvxupqb2da@zenone.zhora.eu>
References: <20230926083742.14740-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/7] Update GGTT with MI_UPDATE_GTT on MTL
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
Cc: matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Tue, Sep 26, 2023 at 10:37:35AM +0200, Nirmoy Das wrote:
> Implement a way to update GGTT using MI_UPDATE_GTT command
> when possible for MTL as a suggested work around for HW bugs,
> Wa_13010847436 and Wa_14019519902.
> 
> 1st patch improve pm wakeref handeling which needed as we
> do GGTT update with vm->mutext held and not allowed to alloc
> memory.
> 
> 2: Fix lockdep warning related to GT wakeref vs
>    blitter engine wakeref.
> 
> v3: Rearrange patches/diffs to fix code mixups(Andi)
> 
> v4: fix ce leak(Oak)
> 
> v5: rebase & resend with new "Test-with"
> 
> v6: move context ready status chnages to lower levels from
>     i915_driver.c. Add more docs and improve function names.

I think you can keep a single versioning for the patches... it
makes your life easier... with git format-patch -v X, instead of
versioning each patch one by one.

Andi

> Chris Wilson (1):
>   drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex
> 
> Nirmoy Das (6):
>   drm/i915: Create a kernel context for GGTT updates
>   drm/i915: Implement for_each_sgt_daddr_next
>   drm/i915: Parameterize binder context creation
>   drm/i915: Implement GGTT update method with MI_UPDATE_GTT
>   drm/i915: Toggle binder context ready status
>   drm/i915: Enable GGTT updates with binder in MTL
> 
>  drivers/gpu/drm/i915/gt/intel_engine.h       |   2 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  40 +++-
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_ggtt.c         | 235 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.c           |  49 ++++
>  drivers/gpu/drm/i915/gt/intel_gt.h           |   3 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c        |   4 +
>  drivers/gpu/drm/i915/gt/intel_gtt.c          |   5 +
>  drivers/gpu/drm/i915/gt/intel_gtt.h          |   5 +
>  drivers/gpu/drm/i915/i915_scatterlist.h      |  10 +
>  drivers/gpu/drm/i915/intel_wakeref.c         |  52 ++--
>  11 files changed, 380 insertions(+), 28 deletions(-)
> 
> -- 
> 2.41.0
> 
