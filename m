Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE3594CF41
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 13:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D9210E8C3;
	Fri,  9 Aug 2024 11:15:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZ/1Al5l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A06510E8C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 11:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723202115; x=1754738115;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L1/UJZdPnQqhOKbxh5KH1u2HViPGTGvwy9H5p29iZ10=;
 b=iZ/1Al5ly2LDXtHG3PYwoxEsY4+EWgXMeX9E9poXVlrlgo/orYH++6dr
 c6VI1Vx7NpF/pri906MKNRJas3P8p1o7KkYVo3TUeyjIiZxIZ18HvqqLb
 06ENkwVEo8WHnqkn4gFFJXLOfgFbVOsxaP9eIKTH1NMM/582u3wrVlVxb
 jC9uTygjv69VuRebuYcP9/u7T4tvLS1Mw6n0UgDze0h/Yb5AVtiTllEOv
 GUz85GyqJc+C23OAB3OSp0uevZ+mZvVrP3EToFM1NSFuiMx0s7EZglleH
 SwSiPRj1ugXKchzItAKLgZR+sxm9IpFYjS9oFDRlkY0XgyrmlOO6MneLp g==;
X-CSE-ConnectionGUID: TM6UmgKLQiqmM13tNYXC3Q==
X-CSE-MsgGUID: DCnafqhLR7WX+i6Sm9uBCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="32519190"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32519190"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 04:15:15 -0700
X-CSE-ConnectionGUID: WFtjg7/qTXehwMV2YreESw==
X-CSE-MsgGUID: RwKH8TBBQYmp3+GIlwFdKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="88176074"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.169])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 04:15:13 -0700
Date: Fri, 9 Aug 2024 12:15:09 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Katarzyna Piecielska <katarzyna.piecielska@intel.com>,
 tejasreex.illipilli@intel.com
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=2Fgt?= =?utf-8?Q?=3A?= Mark the GT as dead when
 mmio is unreliable (rev5)
Message-ID: <ZrX6PRakcNhQBdWA@ashyti-mobl2.lan>
References: <20240807091014.469992-1-andi.shyti@linux.intel.com>
 <172318762646.551641.3518005948862009717@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <172318762646.551641.3518005948862009717@2413ebb6fbb6>
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

> Series:  drm/i915/gt: Mark the GT as dead when mmio is unreliable (rev5)
> URL:     https://patchwork.freedesktop.org/series/136975/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v5/index.html

...

> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_136975v5_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@gem_cs_tlb@engines@bcs0:
> 
>       □ shard-dg1: NOTRUN -> INCOMPLETE
>   • igt@i915_pm_rps@thresholds:

For an excess of zeal I kept testing this series because this
test was consistently failing but it's absolutely unrelated.

This deserves an igt fix.

Cc'eing Kasa to see whether there is any action that needs to be
taken and Tejas to set up CI filters.

I'm going ahead and merge the patch.

Thanks,
Andi
