Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21DB6F16DA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 13:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5FB410E11B;
	Fri, 28 Apr 2023 11:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDE310E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 11:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682681718; x=1714217718;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=SyqBF1wuHeMEmc4+oscukp8iRk3ac8QUI3nKBf9MKVc=;
 b=SCWlarO4B5anzkYY70u5CuD8mi5Pf5K24DN0XblxzVDjtHc3v8138uAp
 eUchUmuIMD6dsmy2knX4a/1ErMSD8OVD77TA/7KKcO/PRCP04Ymy7GAkE
 k9btGMD6Rzti5OzTSJovr8dDKHklP7IkjFSKb4kuPKtBidFAM6p8tMqbQ
 ffrTPcY4OAbI6C+gtOUFyNep7wlW72m68+Alw7YMfFqP6AJ0JxfNhwZ+C
 gkTjTpQQr/WcaoMc1qLzWz69dVy4u6bepPrypaY0vcQw1Q8W4+hFv/lDH
 XvgflPSEIz/S2PxwNCrDB2QFMjzh10AU5jOmo0NtlFByRPW4TIqM9z47J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="346489243"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="346489243"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="1024572331"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="1024572331"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.173])
 ([10.213.9.173])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:35:15 -0700
Message-ID: <3e4b6143-d8f0-e182-1824-85fe92bd66e7@intel.com>
Date: Fri, 28 Apr 2023 13:35:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230425-hugepage-migrate-v8-0-7868d54eaa27@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230425-hugepage-migrate-v8-0-7868d54eaa27@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v8 0/2] drm/i915: Hugepage manager and test
 for MTL
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

On 26.04.2023 23:28, Andrzej Hajda wrote:
> This patchset patches sent by Jonathan and Andi, with
> addressed CI failures:
> 1. Fixed checking alignment of 64K pages on both Pre-Gen12 and Gen12.
> 2. Fixed start alignment of 2M pages.
> 
> Regards
> Andrzej
> 
> Jonathan Cavitt (2):
>    drm/i915: Migrate platform-dependent mock hugepage selftests to live
>    drm/i915: Use correct huge page manager for MTL
> 
> .../gpu/drm/i915/gem/selftests/huge_pages.c   | 88 +++++++++++++++----
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  3 +-
>   2 files changed, 71 insertions(+), 20 deletions(-)
> 
> Cc: intel-gfx@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>

Thx for comments, pushed.

Regards
Andrzej

