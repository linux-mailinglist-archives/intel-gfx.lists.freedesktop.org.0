Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC8A6CD2D2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 09:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E59E10E257;
	Wed, 29 Mar 2023 07:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425FF10E257
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 07:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680074335; x=1711610335;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=HytrNlUpcTXma0LA1JBLs3w+5i+5ZTS/IWYnuRMBFwY=;
 b=YL7IpkCBTQpUv5H83ypBKs0PWS4tvQVN18v7PcAE5Yvp1x17EDEX3zc/
 nb3Z2lD7tGxPhbhAkdd+K2aBtXtuRwf6MNVBf7NziycDPRa3C4ddkkkGk
 PWspsD7zlC0g5cIdxBG7ebICa/YY5Xj6MVgp+kEON+JPVtVs3/x2Jt2CH
 QyxdbAAUXbC0ngW/MaKZsz4uq2PqKcqxoeQOXtXchlsL+XMV4Q3d+pI/n
 ptUw/iNwZZFAlo+Z6u1BK+I+fvGoLrrmmYiHqQVWbaFDax8vDCY4bizIo
 dn3c5sq5PAR//pOLEmpfDFBgdXkIGNaCPS2TksSm1kilGmUFHNkgG+G+R A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="339528085"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="339528085"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 00:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677675685"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677675685"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.27.52])
 ([10.213.27.52])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 00:18:53 -0700
Message-ID: <5f845aa2-30ec-cf90-59e8-70664bd3d73b@intel.com>
Date: Wed, 29 Mar 2023 09:18:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230224-track_gt-v5-0-77be86f2c872@intel.com>
 <168004589720.29056.1047692060430299041@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <168004589720.29056.1047692060430299041@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs_=28r?=
 =?utf-8?q?ev6=29?=
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

On 29.03.2023 01:24, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: use ref_tracker library for tracking wakerefs (rev6)
> URL   : https://patchwork.freedesktop.org/series/100327/
> State : failure
> 
> == Summary ==
> 
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/100327/revisions/6/mbox/ not applied
> Applying: lib/ref_tracker: add unlocked leak print helper
> Applying: lib/ref_tracker: improve printing stats
> Applying: lib/ref_tracker: add printing to memory buffer
> Applying: lib/ref_tracker: remove warnings in case of allocation failure
> Applying: drm/i915: Correct type of wakeref variable
> Applying: drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
> Applying: drm/i915: track gt pm wakerefs
> error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Kconfig.debug).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0007 drm/i915: track gt pm wakerefs

I will rebase on the latest drm-tip.

Regards
Andrzej


> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced
> 
> 

