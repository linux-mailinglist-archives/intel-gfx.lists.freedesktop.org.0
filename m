Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFF83165AB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 12:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228A76EC69;
	Wed, 10 Feb 2021 11:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2836EC69
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 11:52:09 +0000 (UTC)
IronPort-SDR: G1b8NA+JJdmtfWeocn64m9axjzG3Dk/i4ScrLPGcItbdIa2TFoEnUfufdZTFj2hpkIBnwNNAEj
 9tFW58xdJXbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="178548160"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="178548160"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 03:52:09 -0800
IronPort-SDR: SHPSj5NAw9KOIz5DBtGN2tDYuQJYkKUDaE3o2wp4P1C0Uvhi4zswSDXNhTQP/R4VcPjQV3RAga
 oVqz4+XySgJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="380073151"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 10 Feb 2021 03:52:08 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0962F5C1F81; Wed, 10 Feb 2021 13:51:57 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <161295538791.6673.11947302575703134520@build.alporthouse.com>
References: <20210210102238.28779-1-chris@chris-wilson.co.uk>
 <87eehorycs.fsf@gaia.fi.intel.com>
 <161295538791.6673.11947302575703134520@build.alporthouse.com>
Date: Wed, 10 Feb 2021 13:51:57 +0200
Message-ID: <87tuqkta1u.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check for scratch page
 scribbling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2021-02-10 10:49:55)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> > index d34770ae4c9a..5ac9eb4a3a92 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> > @@ -158,10 +158,49 @@ static void poison_scratch_page(struct drm_i915_gem_object *scratch)
>> >  
>> >               vaddr = kmap(page);
>> >               memset(vaddr, val, PAGE_SIZE);
>> > +             set_page_dirty(page); /* keep the poisoned contents */
>> 
>> Should we use locked version in here?
>
> We don't hold the page-lock here, so no. If this is not an anonymous
> page, something is very wrong :p

Cleared confusion in irc. We dont hold the lock and set_page_dirty dont
take it.

But this is anonymous page and we are sole user during poisoning.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
