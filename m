Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6672151DE37
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 19:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B33A10EF4C;
	Fri,  6 May 2022 17:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1DFE10EF4C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 17:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651857228; x=1683393228;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7hLdC6OEGKpT6JVphEGZFHNC/4pheoAWAlnhnpJq/FE=;
 b=A2pjM5aRZLXQpxwiPKuFXThm8r6fy934R0UpoQuODPhQRUyJdGqfcR48
 HF7khJ6TlkwSbfHsqA/EIq/tlWcsgmz8qk2i/KW74OmkmM5lqsT1yoffG
 +btaN8Zm7rrp9/sKgOMSOn5g2Jp+j/KzJ5EQPny7EEKFXlu5kbxyyoGrQ
 B2gipUleVZYYTXefBZ2GDw9YHxDbjK+BYNXqIUgT4oogs3qzuY8m3srrq
 ByGXlj4jvdE5SzTP95gka9856NPPGpBzxNvHM/mWmBWOsWN2kTnUubAj8
 seLC4u5iTIVszn8tCjZPdOpwHor9ytQ0C2exAIQdAqFQLih8u90S8g4rk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="267362811"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="267362811"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 10:13:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="518127627"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 10:13:33 -0700
Date: Fri, 6 May 2022 10:13:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220506171328.GA14121@unerlige-ril-10.165.21.154>
References: <20220502221805.4000039-1-umesh.nerlige.ramappa@intel.com>
 <4482e31b-ff27-e318-0ae6-39d6d5ea8040@linux.intel.com>
 <20220503194952.GC28869@unerlige-ril-10.165.21.154>
 <3b559971-feff-f4be-df94-1fcb8c70266c@linux.intel.com>
 <20220504173557.GD28869@unerlige-ril-10.165.21.154>
 <4a972ba2-c05b-8229-5495-721f320f8d43@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <4a972ba2-c05b-8229-5495-721f320f8d43@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/reset: Add Wa_22011802037 for
 gen11 and execlist backend
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 04, 2022 at 07:09:09PM +0100, Tvrtko Ursulin wrote:
>
>On 04/05/2022 18:35, Umesh Nerlige Ramappa wrote:
>>On Wed, May 04, 2022 at 09:10:42AM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 03/05/2022 20:49, Umesh Nerlige Ramappa wrote:
>>>>On Tue, May 03, 2022 at 09:42:52AM +0100, Tvrtko Ursulin wrote:
>>>>>
>>>>>On 02/05/2022 23:18, Umesh Nerlige Ramappa wrote:
>>>>>>Current implementation of Wa_22011802037 is limited to the GuC backend
>>>>>>and gen12. Add support for execlist backend and gen11 as well.
>>>>>
>>>>>Is the implication f6aa0d713c88 ("drm/i915: Add Wa_22011802037 
>>>>>force cs halt") does not work on Tigerlake? Fixes: tag 
>>>>>probably required in that case since I have sold that fix as 
>>>>>a, well, fix.
>>>>
>>>>After the fix was made, the WA has evolved and added some more 
>>>>steps for handling pending MI_FORCE_WAKEs. This patch is the 
>>>>additional set of steps needed for the WA. As you mentioned 
>>>>offline, I should correct the commit message to indicate that 
>>>>the WA does exist for execlists, but needs additional steps. 
>>>>Will add Fixes: tag.
>>>
>>>Ok, that would be good then since it does sound they need to be 
>>>tied together (as in cherry picked for fixes).
>>>
>>>Will it be followed up with preempt-to-idle implementation to 
>>>avoid the, as I understand it, potential for activity on one CCS 
>>>engine defeating the WA on another by timing out the wait for 
>>>idle?
>>
>>fwiu, for the case where we want to limit the reset to a single 
>>engine, the preempt-to-idle implementation may be required - 
>>https://patchwork.freedesktop.org/series/101432/. If preempt-to-idle 
>>fails, the hangcheck should kick in and then do a gt-reset. If that 
>>happens, then the WA flow in the patch should be applied.
>
>Okay I read that as yes. That is fine by me since this patch alone is 
>better than without it.
>

I have a general doubt for engines that do NOT share a reset domain, 
specifically for execlist backend.
 
What is the expectation/behavior with the hangcheck initiated reset. It 
says resetting chip for the engine that it decides is hung. In that path 
it calls gt_reset which loops through engines (reset_prepare, rewind, 
etc.).  Are all running contexts victimized? OR is there an attempt to 
preempt-to-idle contexts on other (innocent) engines and then resubmit 
them if successfully preempted?

Thanks,
Umesh
