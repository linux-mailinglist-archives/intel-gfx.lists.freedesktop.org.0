Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD60A1884AC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236BE89E2A;
	Tue, 17 Mar 2020 13:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C65289E2A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 13:01:47 +0000 (UTC)
IronPort-SDR: DtiBe+R6KGfBPnkXpBcHkDcUpzYR2k7TPGstUgMZ5mKyGmpANMmb2WSW/JElIKJixxia4M/Tbo
 doS45xtjlOiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:01:46 -0700
IronPort-SDR: UcZ8WKJT06JRdvCh7csfGT6oyAHcfFrCNBd6cr/7Nne7QfIvWPfLvKz8L8RCngD9SgZtGnBkzN
 ITV37ivh6HvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="233488785"
Received: from kdadon-mobl.ger.corp.intel.com (HELO [10.249.42.135])
 ([10.249.42.135])
 by orsmga007.jf.intel.com with ESMTP; 17 Mar 2020 06:01:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200317123546.925339-1-maarten.lankhorst@linux.intel.com>
 <158444872846.6873.14483170949940551980@build.alporthouse.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <9f1a061e-5816-516c-1431-f14dc1b2c698@linux.intel.com>
Date: Tue, 17 Mar 2020 14:01:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158444872846.6873.14483170949940551980@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/gem: Drop relocation
 slowpath"
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 17-03-2020 om 13:38 schreef Chris Wilson:
> Quoting Maarten Lankhorst (2020-03-17 12:35:46)
>> This reverts commit 7dc8f1143778 ("drm/i915/gem: Drop relocation
>> slowpath"). We need the slowpath relocation for taking ww-mutex
>> inside the page fault handler, and we will take this mutex when
>> pinning all objects.
> Don't hold an exclusive lock across the relocation path; it's not
> required.
> -Chris

Is -EAGAIN the only sign we need to drop locks for mmap or former slowpath

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
