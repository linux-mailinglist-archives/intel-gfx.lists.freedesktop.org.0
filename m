Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C28F642AA1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 15:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6129810E0F8;
	Mon,  5 Dec 2022 14:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5693410E0EE
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 14:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670251673; x=1701787673;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R5c0tGpQMiu208wj2bbiVyuBP6Qx8PApB6egbBiskJ0=;
 b=WhoWAG78hG8JDkWa2/coDkqC4mwhqF3ACjZYqOyLwmtEAxQLf1r6qrxI
 w7AOkc0T11yGjdez5FC3aOp5U5apcShgGFIL9UnLutHMgBC8MtHZKu6lk
 6XlW1Ln9dbpEfeuYg3Qu98pRoZb53bK+1j7EtARqiGcUG386TtKylgnYN
 lwJt4/1Tqq1btpIiDAUn7ogNREwoOvyZ8TZSksfLceSu33rsZ8xQiLFo1
 ZzPdoBnowhZsiCTs4PJV064yz8CboarcP59vCmQ62v/EwjZPK8ID3urIC
 B2HsQjIZ9rABMQ2bsjg0zXJutXJ1rWqVQfu/So+cFDipFnckfzSWRjijp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296722704"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="296722704"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:47:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="974704639"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="974704639"
Received: from dorianfr-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.37.181])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:47:51 -0800
Date: Mon, 5 Dec 2022 15:47:48 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y44ElG6eTECm674/@ashyti-mobl2.lan>
References: <20221130235805.221010-1-andi.shyti@linux.intel.com>
 <167003446422.8387.11571860635909304020@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <167003446422.8387.11571860635909304020@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgYWRk?=
 =?utf-8?q?_guard_padding_around_i915=5Fvma_=28rev7=29?=
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

On Sat, Dec 03, 2022 at 02:27:44AM -0000, Patchwork wrote:
> Patch Details
> 
> Series:  add guard padding around i915_vma (rev7)
> URL:     https://patchwork.freedesktop.org/series/110720/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v7/index.html
> 
> CI Bug Log - changes from CI_DRM_12462_full -> Patchwork_110720v7_full
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_110720v7_full absolutely need to
> be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110720v7_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (13 -> 11)
> 
> Missing (2): shard-tglu shard-tglu-10
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_110720v7_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@1x-outputs:
>       □ shard-tglb: PASS -> INCOMPLETE

This looks unrelated
