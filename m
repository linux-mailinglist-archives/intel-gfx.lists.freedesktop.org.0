Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49D520D4B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 07:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A1E10F10A;
	Tue, 10 May 2022 05:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E36D10F10A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 05:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652161697; x=1683697697;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cYcx5IM4c+zwMUqYWqKl8zJCPpmWktfb6ZFe1WaUis4=;
 b=aLHcw+lqE8uvl3YPA1yVCwsgkjiuUD1iZCy39PP7EByuZADtYjWGCIfs
 eqwqXWIeI9SNlDW4QL4BYiKjICC3Tg/SCjxljJsCszsT4u6uLvxr11Jgy
 HI17gIX896R214prNcyxGCh5GlPGogwMs2I2eFWNm+JKhLdvQpL5tV9h0
 4OOIclz/STbVmEu/nMFDnMmM2vnMPmt8FoUXm2FY+79PvaCOJBB+Xn94b
 r9esTZ6uPTtf1otytPcExnJyzxyiHYOYiTQH8XM96Ew1QiUettTshx0Fb
 waUKJ99dsK967YEtIP3EBCD3jikKQbItSzeOZ7Us7E2TKnkFflBmrPTii Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="269406991"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="269406991"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 22:48:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="593306058"
Received: from nreina-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 22:48:00 -0700
Date: Tue, 10 May 2022 07:47:57 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <Ynn8jWcli0jOoIWV@intel.intel>
References: <20220427203833.44449-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427203833.44449-1-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On Wed, Apr 27, 2022 at 01:38:33PM -0700, Ashutosh Dixit wrote:
> All kmalloc'd kobjects need a kobject_put() to free memory. For example in
> previous code, kobj_gt_release() never gets called. The requirement of
> kobject_put() now results in a slightly different code organization.
> 
> v2: s/gtn/gt/ (Andi)
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

I'm still not convinced this patch is 100% correct, but I think
it's better thank what it was and it's not addressing Andrzej's
comment.

As of now, though, I'm not able to think of a better way of doing
it and if Andrzej doesn't have a better solution I would just
tag it:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

As soon as I will have some time I will test it to proof
Andrzej's concern.

Thanks for taking care of this,
Andi
