Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD86520D7B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 08:03:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DF110E811;
	Tue, 10 May 2022 06:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37A510E56B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 06:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652162594; x=1683698594;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EmK7taGO/OtC4+J/66dgOEeXIWeThEh8rfpdgDNiFVM=;
 b=Gm92QjJAEVwOuyAAlkHjgxYAmvsSlbTR/QKSXA3zAXys7zvCN26LTk8b
 H14Yiz2WaRAa5kAQHmLM/ph4YmgvuYjjeVEbEjQ4PsrZLmBhfD60QSLS2
 3lnmy6WKOqx9DLHGlAWP8E10eu4NtlomnaUXOYCmvIgS1wOl+NNs/N8s/
 tbiQ9z7E5xOU52y8QUc3GWks6mn8wjOuUax5aW3g83DXrAVXkchpNcNPD
 okK0b2eUrCA39lTqcTJEUqW+BNcUDcL5hBlROYNesTaM3BkA2Cngw+vl+
 +Z8fqXKgQLxOCEzODe7l+YZd88BOYiusgc64+5f2pu1mjX7lgwExYF5c9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="294500285"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="294500285"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 23:02:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="593315457"
Received: from nreina-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 23:02:55 -0700
Date: Tue, 10 May 2022 08:02:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YnoADCJYTV2yAXYV@intel.intel>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Fix memory leaks in per-gt
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

On Fri, Apr 29, 2022 at 12:56:27PM -0700, Ashutosh Dixit wrote:
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

I tagget the wrong version (which is the same as this one):

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
