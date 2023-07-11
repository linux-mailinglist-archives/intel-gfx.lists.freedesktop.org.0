Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1AB74F398
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 17:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA7D10E3C4;
	Tue, 11 Jul 2023 15:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C73010E3C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 15:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689089747; x=1720625747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UY+3arGpaisuLn278haSQSD0Y2+GpxJJ04BlHEU3MlU=;
 b=MhwGZ+lxSvqa7HoLWkL0Ml5fDEyAHwTxMQsWCX04s4fldR7R5zfUVa5G
 3Xks0fiN9zH3ETerOGbl7gkGF/1mAtECSWH5xoVrAhAnChANHeIaaayeA
 iDUMkb3FPxoTzqONeS8XLcjyeDOf9nBSRHRuOnA+qxxrFh+g/MjyGyzk4
 r0hAC4vlQO1u6DzOT3Wwa69I4Zmo/GVvR7lOTeiRgiyTVCwQsqGHCdD8m
 jQWbmbc/nuTSTRtummWce7C1o8qxmCSS/sKXIQ6+cbb1BjvhfNELH4zDG
 Khe4W36a0xV7RrIqQjwG0ccdjrOuNMvUE8trr1/lEqYBXoQC6CSvpWHUC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344249879"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344249879"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 08:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="895223161"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="895223161"
Received: from tpichler-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.137])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 08:35:43 -0700
Date: Tue, 11 Jul 2023 17:35:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZK12x8Rfo01WvxIU@ashyti-mobl2.lan>
References: <20230711153410.1224997-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711153410.1224997-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: add sentinel to
 xehp_oa_b_counters
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Jul 11, 2023 at 05:34:10PM +0200, Andrzej Hajda wrote:
> Arrays passed to reg_in_range_table should end with empty record.
> 
> The patch solves KASAN detected bug with signature:
> BUG: KASAN: global-out-of-bounds in xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
> Read of size 4 at addr ffffffffa1555d90 by task perf/1518
> 
> CPU: 4 PID: 1518 Comm: perf Tainted: G U 6.4.0-kasan_438-g3303d06107f3+ #1
> Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3223.D80.2305311348 05/31/2023
> Call Trace:
> <TASK>
> ...
> xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
> 
> Fixes: 0fa9349dda030f ("drm/i915/perf: complete programming whitelisting for XEHPSDV")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
