Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E533B140C2C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A0F6F591;
	Fri, 17 Jan 2020 14:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7EE6F58F;
 Fri, 17 Jan 2020 14:13:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:13:35 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="218918876"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:13:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@intel.com>
In-Reply-To: <20200117140552.GB3238@intel.intel>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200117073436.6507-1-zhangxiaoxu5@huawei.com>
 <20200117121550.GA3238@intel.intel> <87tv4ugr7y.fsf@intel.com>
 <20200117140552.GB3238@intel.intel>
Date: Fri, 17 Jan 2020 16:13:28 +0200
Message-ID: <87muamgohj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix i915_error_state_store error
 defination
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Jan 2020, Andi Shyti <andi.shyti@intel.com> wrote:
> Hi Jani,
>
>> >> Reported-by: Hulk Robot <hulkci@huawei.com>
>> >
>> > I've never been a fan of non human accounts, we had this discussion
>> > already in a different mailing list. Could you please find a
>> > different way of giving credit to your CI system?
>> 
>> I don't actually mind for Reported-by credits. The history is full of
>> things like:
>> 
>>     Reported-by: kbuild test robot <lkp@intel.com>
>>     Reported-by: syzbot+ec24e95ea483de0a24da@syzkaller.appspotmail.com
>
> That's just commit log unnecessary pollution, unwanted mail
> reference... no one will ever answer at lkp@intel.com, why
> reference it, then?

It's not about that, it's about giving credit to whom credit is due.

>> Care to reference the discussion?
>
> Here in the Samsung list we had a discussion with another Huawei
> developer about the Hulk Robot:
>
>   https://lkml.org/lkml/2019/9/4/635

Well, there's no consensus there either.

Again, if they want to use that Reported-by: line, I'm fine with it.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
