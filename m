Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D12389280D
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Mar 2024 01:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FCD1124AA;
	Sat, 30 Mar 2024 00:14:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gKnvTDvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89571124AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Mar 2024 00:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711757657; x=1743293657;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T6n5TMYwkmdm2j2BN3mZL7b/EJWy71RjpRNXPCsj0Yk=;
 b=gKnvTDvuBwOAtHRv0cyFt6eoCSW/X6RKs8bY0k3MT5NZGDQhrzEHlpRR
 1Vr4SnDfHGT2BzpehGh959seWE3YiQ09l/2dQ++z1GOaUbcz89MPvFpNJ
 451c57453J0agzyx95nuSximfBemOUIPLCX6COgp1bEcFb1wWRfy1uVs8
 XgY8NWxYyNywoCzjOgcHwuTuzH6cx6SKVJU743aS30HbhphhGGepNuCP+
 LjmGjW/cCSJIBRUB3ghmRf7E2eet7SSR+il1tdaGtjBzfofyqhDZBG8zz
 L2DIgzUnAD0wmtbGPL0wgcdPFx6LEykMft+udMgXUwqbjFMKyBpONs8Op A==;
X-CSE-ConnectionGUID: tJdV3MvCSBKp3KHA0G6T/A==
X-CSE-MsgGUID: 9nbr3NBlQiamyXxZoOgEug==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7174103"
X-IronPort-AV: E=Sophos;i="6.07,166,1708416000"; 
   d="scan'208";a="7174103"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 17:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,166,1708416000"; d="scan'208";a="54571575"
Received: from unknown (HELO intel.com) ([10.247.118.231])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 17:14:14 -0700
Date: Sat, 30 Mar 2024 01:14:07 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 Disable automatic load CCS load balancing (rev14)
Message-ID: <ZgdZTxvnc-VKBfpQ@ashyti-mobl2.lan>
References: <20240328073409.674098-1-andi.shyti@linux.intel.com>
 <171175698851.1081852.9746377278379424274@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171175698851.1081852.9746377278379424274@8e613ede5ea5>
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

Hi,

On Sat, Mar 30, 2024 at 12:03:08AM -0000, Patchwork wrote:
> Patch Details
> 
> Series:  Disable automatic load CCS load balancing (rev14)
> URL:     https://patchwork.freedesktop.org/series/129951/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v14/
>          index.html
> 
> CI Bug Log - changes from CI_DRM_14506_full -> Patchwork_129951v14_full
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_129951v14_full absolutely need to
> be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_129951v14_full, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (10 -> 9)
> 
> Missing (1): shard-snb-0
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_129951v14_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@sysfs_heartbeat_interval@nopreempt@vcs0:
>       □ shard-dg2: NOTRUN -> INCOMPLETE

This looks unrelated. I also see from the previous shards tests
that I get some random failures.

I'm going ahead and merge this series.

Andi
