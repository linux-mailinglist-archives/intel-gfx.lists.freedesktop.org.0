Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B4948D01E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 02:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17FB10E3DB;
	Thu, 13 Jan 2022 01:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F402510E3DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 01:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642037310; x=1673573310;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1GQhvpc9h2q+oWT0Bwc9I8ajOa4+I4trncxc6miRVHI=;
 b=bLJ9y3+8tKZBNLE6f+a3me25SI1BliSgC6rQ8lXk3bjrvClr5KAT5tBz
 wUKKMYKib3p2jwQ/F6/GDDWOQqmjhk2tbzOYoSyROAcPmGI7Snofvb74U
 WjlsCQzIS2WWcpsnY0ppT/0BHRQ0vresLd1vkF3MQmZvRkISNzRLvdd+V
 9EEvJ5FCuaSjzSmtxqktxDU4XoRROwnVK2UiMfdSXQzmdgifWbPzPNl3t
 jlsnnu+Kq4BfesSIcbGLpJHr9NiuY+PvzMYcgp9ZlW0wIfQ9OlyGqPgJa
 aRBFD+q9SHgYU/InXLQLj9cVqy/yEhYWk6jmvv9jTijPvUwBuY92ZXdEm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="223884791"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="223884791"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 17:28:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="765397423"
Received: from jsinnott-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.139.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 17:28:29 -0800
Date: Wed, 12 Jan 2022 17:28:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20220113012829.pquif5ujboyohzld@ldmartin-desk2>
References: <20220113002128.7wcji4n5rlpchlyt@ldmartin-desk2>
 <20220113010645.GA301048@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220113010645.GA301048@bhelgaas>
Subject: Re: [Intel-gfx] [PATCH v4] x86/quirks: Replace QFLAG_APPLY_ONCE
 with static locals
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
Cc: x86@kernel.org, linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 12, 2022 at 07:06:45PM -0600, Bjorn Helgaas wrote:
>On Wed, Jan 12, 2022 at 04:21:28PM -0800, Lucas De Marchi wrote:
>> On Wed, Jan 12, 2022 at 06:08:05PM -0600, Bjorn Helgaas wrote:
>> > On Wed, Jan 12, 2022 at 03:30:43PM -0800, Lucas De Marchi wrote:
>> > > The flags are only used to mark a quirk to be called once and nothing
>> > > else. Also, that logic may not be appropriate if the quirk wants to
>> > > do additional filtering and set quirk as applied by itself.
>> > >
>> > > So replace the uses of QFLAG_APPLY_ONCE with static local variables in
>> > > the few quirks that use this logic and remove all the flags logic.
>> > >
>> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> > > Reviewed-by: Bjorn Helgaas <bhelgaas@google.com>
>> >
>> > Only occurred to me now, but another, less intrusive approach would be
>> > to just remove QFLAG_APPLY_ONCE from intel_graphics_quirks() and do
>> > its bookkeeping internally, e.g.,
>>
>> that is actually what I suggested after your comment in v2: this would
>> be the first patch with "minimal fix". But then to keep it consistent
>> with the other calls to follow up with additional patches on top
>> converting them as well.  Maybe what I wrote wasn't clear in the
>> direction? Copying it here:
>>
>> 	1) add the static local only to intel graphics quirk  and remove the
>> 	flag from this item
>> 	2 and 3) add the static local to other functions and remove the flag
>> 	from those items
>> 	4) remove the flag from the table, the defines and its usage.
>> 	5) fix the coding style (to be clear, it's already wrong, not
>> 	something wrong introduced here... maybe could be squashed in (4)?)
>
>Oh, sorry, I guess I just skimmed over that without really
>comprehending it.
>
>Although the patch below is basically just 1 from above and doesn't
>require any changes to the other functions or the flags themselves
>(2-4 above).

Yes, but I would do the rest of the conversion anyway. It would be odd
to be inconsistent with just a few functions. So in the end I think we
would achieve the same goal.

I would really prefer this approach, having the bug fix first, if I was
concerned about having to backport this to linux-stable beyond 5.10.y
(we have a trivial conflict on 5.10).

However given this situation is new (Intel GPU + Intel Discrete GPU)
rare (it also needs a PCI topology in a certain way to reproduce it),
I'm not too concerned. Not even sure if it's worth submitting to
linux-stable.

I'll wait others to chime in on one way vs the other.

thanks
Lucas De Marchi
