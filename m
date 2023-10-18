Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1A07CD2AA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 05:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6BC10E362;
	Wed, 18 Oct 2023 03:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BA510E362
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 03:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697599739; x=1729135739;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RN/BDbZzzONk9ia9CMOxFL7guJnqV8JUd6y+HuM/XAw=;
 b=E+gp02lm8cWw4RtccQ61/4YZQBndyAS31BAFEO+f2EUoDGk8FXEeJFn8
 cDt3xvlt+MV4+CrCGJP8FnEx+VtoxeeBYlRGb3t/YZCUiVmz6nY7BWiB5
 n6E6Ew86VNn/UbR5YPiDrSbML1L/6BpFT74vOJ3BhifEpNooq+SU0FPNQ
 toD05XzcaRUc33UcjcsYlF30NnTZfSEp2rW8WtgJXr4jC87c2DHXVRqrZ
 FW1rX+clOaj8PqhPQx3NpccWzvh3twef8s+b2aWCJkizPGknoasDOIbfC
 5ZbxiLrNUhThmzGcevzh7w3JbFFE9Dw1dGfhbHj29VsRQQJs0WAUavSdW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="388791688"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="388791688"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 20:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; 
   d="scan'208";a="4173797"
Received: from kchua1-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.248.174])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 20:27:48 -0700
Date: Wed, 18 Oct 2023 05:28:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZS9Q7hmOBGzz1le7@ashyti-mobl2.lan>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
 <169759684741.15109.1577462693795053429@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169759684741.15109.1577462693795053429@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_routines_?=
 =?utf-8?b?KHJldjMp?=
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

...

> Possible regressions
> 
>   • igt@gem_exec_parallel@fds@vcs0:
> 
>       □ shard-tglu: PASS -> INCOMPLETE
>   • igt@gem_exec_parallel@fds@vcs1:
> 
>       □ shard-dg2: PASS -> INCOMPLETE +1 other test incomplete
>   • igt@gem_mmap_offset@clear@lmem0:
> 
>       □ shard-dg1: PASS -> INCOMPLETE
>   • igt@kms_psr@psr2_suspend:
> 
>       □ shard-mtlp: NOTRUN -> FAIL

These failures don't look depending on this series.

The gem_exec_parallel test has been causing some troubles also
during the test of v16, but it already has some history that
needs to be looked after[*].

I don't want to start all the chain of tests I did yesterday, so
that I'm going ahead and merge the series.

Andi

[*] https://intel-gfx-ci.01.org/tree/drm-tip/shards-all.html?testfilter=gem_exec_parallel
