Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CB8417E64
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Sep 2021 01:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5DFB6EE9F;
	Fri, 24 Sep 2021 23:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F756EE9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 23:45:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10117"; a="211269954"
X-IronPort-AV: E=Sophos;i="5.85,321,1624345200"; d="scan'208";a="211269954"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 16:45:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,321,1624345200"; d="scan'208";a="485542782"
Received: from jlee24-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.77.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 16:45:42 -0700
Date: Fri, 24 Sep 2021 16:45:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <20210924234531.qqke6j6taghm7kwt@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <20201027044618.719064-3-lucas.demarchi@intel.com>
 <160448371454.8986.12904696092648361290@jlahtine-mobl.ger.corp.intel.com>
 <20201105010422.l2mum5gep7dxva5f@ldmartin-desk1.jf.intel.com>
 <160456334665.5393.4671076622521791518@jlahtine-mobl.ger.corp.intel.com>
 <20210706234430.nm64jerbt3kkoeue@ldmartin-desk2>
 <YU4yGOCG92pgn754@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <YU4yGOCG92pgn754@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only
 registers from MCHBAR
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

On Fri, Sep 24, 2021 at 04:16:24PM -0400, Rodrigo Vivi wrote:
>On Tue, Jul 06, 2021 at 04:44:30PM -0700, Lucas De Marchi wrote:
>> On Thu, Nov 05, 2020 at 10:02:27AM +0200, Joonas Lahtinen wrote:
>> > Quoting Lucas De Marchi (2020-11-05 03:04:22)
>> > > On Wed, Nov 04, 2020 at 11:55:15AM +0200, Joonas Lahtinen wrote:
>> > > >Quoting Lucas De Marchi (2020-10-27 06:46:18)
>> > > >> GT_PERF_STATUS and RP_STATE_LIMITS were added a long time ago in
>> > > >> commit 3b8d8d91d51c ("drm/i915: dynamic render p-state support for Sandy
>> > > >> Bridge").  Other than printing their values in debugfs we don't do
>> > > >> anything with them.  There's not much useful information in them. These
>> > > >> registers may change location in future platforms, but instead of adding
>> > > >> new locations, it's simpler to just remove them.
>> > > >
>> > > >This code seems to have been updated for Gen9LP, so that would indicate
>> > > >the debugging information is useful, right? The value is even decoded, not
>> > > >simply dumped as most registers. So I would be hesitant to drop it for
>> > > >not being useful.
>> > >
>> > > but just updating the register in itself for a new gen doesn't mean it's
>> > > actually useful... the commit message where this happened is pretty
>> > > vague: 350405623ff3 ("drm/i915: Update rps frequencies for BXT")
>> > >
>> > > My first reaction would be to do the same if the register had moved or
>> > > if it ceased to exist in a new platform. Talking with Matt Roper some
>> > > time ago we arrived to the conclusion that just printing these values is
>> > > not giving us much benefit and it could very well be accomplished by
>> > > intel_reg.
>> > >
>> > > So answering the question:  is it really useful as is? IMO, no.
>> >
>> > A quick discussion on #intel-gfx seems to indicate it was used for
>> > bug triaging in the past year. So that would indicate it is still
>> > useful to include.
>>
>> getting back to this as we are trying to upstream XeHP-SDV that doesn't
>> have access to the MCHBAR. So do you think we should just make it
>> conditional instead of removing?
>
>Yes, please let's make this conditional.
>
>>
>> I'm still on the side that this additional code doesn't bring much value
>> and could be replaced by intel-reg.
>
>In general I'd agree. However:
>
>1. Sometimes it is very hard to find out what registers and bits have
>some useful information.
>2. If it is hard to remove sometimes it is harder to add some information
>like this.
>3. I was not part of the IRC chat that Joonas mentioned, but apparently
>this data was useful in the past for some cases.

I will disagree and commit since 2 maintainers are against the
removal. I will send a new updated patch. Just to make my point clear:

1) This doesn't expose anything more than what is available with
intel_reg

2) we are already printing the wrong value for "recent" platforms:
one of the register wasn't updated for anything after gen9. The other
register doesn't actually seem to exist anymore after gen9.

3) It adds to the maintenance, particularly because this is an mchbar
register which is not available in bspec

4) It's still not clear how exactly this was useful

Lucas De Marchi
