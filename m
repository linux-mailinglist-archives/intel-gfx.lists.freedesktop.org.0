Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6F628F9E7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 22:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEB56E147;
	Thu, 15 Oct 2020 20:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A4D6E147
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 20:09:35 +0000 (UTC)
IronPort-SDR: wZXtDGi+RQOv00c8twDfC1onw8n/iYhJDwIb1OaGYRcST3yEf+NM7O7j/ROm3qkiX7BnytCnw+
 RDjTZ4TvKJFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="145751945"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="145751945"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 13:09:33 -0700
IronPort-SDR: +SRAkdRHcxBDgtM1bNiXqp3Rob5cwSkO3P9OTkAEWaGHgvC/PmqvzK4cyzzsWS0LXnDBP8BWh+
 Q5LEDz4XSAGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="421258446"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2020 13:09:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 15 Oct 2020 13:09:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 15 Oct 2020 13:09:32 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Thu, 15 Oct 2020 13:09:32 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
Thread-Index: AQHWoUw7vknVeKpXoUG0dRnaVPrLvamVsYWggAB79wD//4wCsIAAbQPggAMV3QD//91WoA==
Date: Thu, 15 Oct 2020 20:09:32 +0000
Message-ID: <8440cc7f281a49509efc25987b349438@intel.com>
References: <20201013103256.31446-1-chris@chris-wilson.co.uk>
 <8c41461201764a0d8a05caba47d1589a@intel.com>
 <160260628825.2946.16678261690978530238@build.alporthouse.com>
 <daa1a1f388a94b07ad95ce5d12132925@intel.com>
 <917a40e55bb64ff1a9692563eb459611@intel.com>
 <160277441055.32312.12137014703246379267@build.alporthouse.com>
In-Reply-To: <160277441055.32312.12137014703246379267@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
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



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Thursday, October 15, 2020 8:07 AM
> To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
> high priority
> 
> Quoting Tang, CQ (2020-10-14 00:29:13)
> > i915_gem_free_object() is called by multiple threads/processes, they all
> add objects onto the same free_list. The free_list processing worker thread
> becomes bottle-neck. I see that the worker is mostly a single thread (with
> particular thread ID), but sometimes multiple threads are launched to
> process the 'free_list' work concurrently. But the processing speed is still
> slower than the multiple process's feeding speed, and 'free_list' is holding
> more and more memory.
> 
> We can also prune the free_list immediately, if we know we are outside of
> any critical section. (We do this before create ioctls, and I thought upon
> close(device), but I see that's just contexts.)
> 
> > The worker launching time is delayed a lot, we call queue_work() when we
> add the first object onto the empty 'free_list', but when the worker is
> launched, the 'free_list' has sometimes accumulated 1M objects. Maybe it is
> because of waiting currently running worker to finish?
> 
> 1M is a lot more than is comfortable, and that's even with a high-priority
> worker.  The problem with objects being freed from any context is that we
> can't simply put a flush_work around there. (Not without ridding ourselves of
> a few mutexes at least.) We could try more than worker, but it's no more
> more effort to starve 2 cpus than it is to starve 1.
> 
> No, with that much pressure the only option is to apply the backpressure at
> the point of allocation ala create_ioctl. i.e. find the hog, and look to see if
> there's a convenient spot before/after to call
> i915_gem_flush_free_objects(). Since you highlight the vma-stash as the
> likely culprit, and the free_pt_stash is unlikely to be inside any critical section,
> might as well try flushing from there for starters.

I have not yet tested, but I guess calling i915_gem_flush_free_objects() inside free_pt_stash() will solve the problem that gem_exec_gttfill has, because it will give some back pressure on the system traffic.

But this is only for the page table 4K lmem objects allocated/freed by vma-stash. We might encounter the same situation with user space allocated objects.

--CQ

> 
> Hmm, actually we are tantalizing close to having dropped all mutexes (and
> similar global lock-like effects) from free_objects. That would be a nice
> victory.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
