Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB489164508
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 14:09:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8A66E5AB;
	Wed, 19 Feb 2020 13:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3E26E5AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 13:09:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:09:09 -0800
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="229105882"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:09:08 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 19 Feb 2020 14:08:57 +0100
Message-ID: <2228783.0nXs3CUM0P@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158211463293.8112.7903202756518800530@skylake-alporthouse-com>
References: <20200219120944.21200-1-janusz.krzysztofik@linux.intel.com>
 <158211463293.8112.7903202756518800530@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/userptr: Don't activate MMU
 notifier if no pages can be acquired
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Wednesday, February 19, 2020 1:17:12 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-02-19 12:09:44)
> > The purpose of userptr MMU notifier is to invalidate object pages as
> > soon as someone unpins them from memory.  While doing that,
> > obj->mm.lock is acquired.  If the notifier was called with obj->mm.lock
> > already held, a lockdep loop would be triggered.  That scenario is
> > believed to be possible in several cases, one of which is when the
> > userptr object is created from an mmap-offset mapping of another i915
> > GEM object.  This patch tries to address this case.
> > 
> > Even if creating a userptr object on an mmap-offset mapping succeeds,
> > trying to pin pages of the mapping in memory always fails because of
> > them having a VM_PFNMAP flag set.  However, the notifier can be
> > activated for a userptr object even before required pages are found
> > already pinned in memory, as soon as a worker expected to get missing
> > pages is scheduled successfully.  If the worker then fails to collect
> > the pages, it deactivates the notifier.  However, a time window exists
> > when the notifier can be called for an object even with no pages set
> > yet.
> 
> You mean something like
> https://patchwork.freedesktop.org/patch/275514/?series=54869&rev=2
> to avoid lockdep cross-contamination.

Yes, the purpose of both seems the same.  How could I help to get your 
preferred one merged?

Thanks,
Janusz


> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
