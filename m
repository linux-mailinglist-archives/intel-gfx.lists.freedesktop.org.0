Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3EA6C3E74
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 00:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BF410E0A7;
	Tue, 21 Mar 2023 23:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8523510E0A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 23:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679441116; x=1710977116;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KYvwSRaWESBRJgiudTQfdImcCPse4PwwLVsVfP5olCk=;
 b=NP+i0krnQKpyTbSs1ZG08k/r9ZtjOCXbT2hSl1xmsaMhyMOdwEcnJyIO
 DTouh5HahCM1GRSuyliqbPO19eFS9LkiATqMdYkh6KxltMUtqsYcVzkdo
 +8nu0AOPEvx46Nvwg11NCN+u/R0LgEaEQ7ccDr1NgaWDaQU9hqJ93qePD
 +xr3tW62NA0cOR3P8gNBwiEdqNKUxr/z9pjfYEmR+ng0kk/VZMbvINyNT
 9o1wnhXdQqNBt9C90QFNPwHuVOYKQQJQL7J6SqyHj6185KJHfsuwjesQ2
 qTLJcc3pLISFzTbHmdelw9KdVOX4Z5i6VoxRz4u4uALcRxizSlQzcjTmF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="322923873"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="322923873"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="770838182"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="770838182"
Received: from rbirkl-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.222.70])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:25:14 -0700
Date: Wed, 22 Mar 2023 00:24:51 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZBo8wz7upfeYky9S@ashyti-mobl2.lan>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
 <167940669606.18680.12249285464884109493@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167940669606.18680.12249285464884109493@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Consider_multi-gt_at_all_places_=28rev2=29?=
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

Hi Tejas,

On Tue, Mar 21, 2023 at 01:51:36PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Consider multi-gt at all places (rev2)
> URL   : https://patchwork.freedesktop.org/series/115302/
> State : failure
> 
> == Summary ==
> 
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/115302/revisions/2/mbox/ not applied
> Applying: drm/i915/gt: Consider multi-gt at all places
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0001 drm/i915/gt: Consider multi-gt at all places
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced

I think you need a rebase here.

Andi
