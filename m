Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1E2606214
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 15:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10A110E792;
	Thu, 20 Oct 2022 13:46:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0FD10E8BC
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666273554; x=1697809554;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sOvhO47D7FTpxIF0a2DwvTy4GmSSGRqIP8YnoXp6ofQ=;
 b=J+Q+KUAzMdcggX4c4NZsSX0cUELMEizjvtCEIX4CHDHpqOMeErZFAmS2
 O/fPeul5D5+xYaUBsb1e9azwv/DJb9UxVBKl510YfrTjMGMNWBdWGS3QK
 JbVEahQHr2Oh8y1d4JyviHONZD7wMhrB2nDJs0l4IssslEJjF07ehhV1y
 5UiCea2okb7mxI2r+rcJJHTFdJJf5Tft4uEhbZtXMS2tUK1mL+UOpb5jQ
 ke+qyDECm3dZg6d0OER3VRoermTGhCSWPv0nqeZjfqRz+tRgdDN4SE2ow
 JpL+E1BrCnmL5niNY8gTbfQNtnniV65otG3jkJpS2j4jeRxYhPRkG8CY7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="290016379"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="290016379"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 06:45:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="692990171"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="692990171"
Received: from aasthash-mobl.ger.corp.intel.com (HELO [10.213.232.117])
 ([10.213.232.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 06:45:51 -0700
Message-ID: <d47b30e9-5619-c631-aa92-f5d89e88a909@linux.intel.com>
Date: Thu, 20 Oct 2022 14:45:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
 <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
 <41455798-1dcb-135f-516d-25ab9a8082f5@linux.intel.com>
 <Y1A+9kN6bwfXeqVt@zx2c4.com>
 <8acc3e4a-abbc-32bc-626e-7a216f6755c3@linux.intel.com>
 <Y1Bby6FEEWiFIjjD@zx2c4.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y1Bby6FEEWiFIjjD@zx2c4.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] signal: break out of wait loops on kthread_stop()
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
Cc: sultan@kerneltoast.com,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/10/2022 21:19, Jason A. Donenfeld wrote:
> On Wed, Oct 19, 2022 at 09:09:28PM +0100, Tvrtko Ursulin wrote:
>> Hm why is kthread_stop() after kthread_run() abuse? I don't see it in
>> kerneldoc that it must not be used for stopping threads.
> 
> Because you don't want it to stop. You want to wait until it's done. If
> you call stop right after run, it will even stop it before it even
> begins to run. That's why you wind up sprinkling your msleeps
> everywhere, indicating that clearly this is not meant to work that way.
Not after kthread_run which wakes it up already. If the kerneldoc for 
kthread_stop() is correct at least... In which case I really do think 
that the yields are pointless/red herring. Perhaps they predate 
kthread_run and then they were even wrong.

>> Yep the yields and sleeps are horrible and will go. But they are also
>> not relevant for the topic at hand.
> 
> Except they very much are. The reason you need these is because you're
> using kthread_stop() for something it's not meant to do.

It is supposed to assert kthread_should_stop() which thread can look at 
as when to exit. Except that now it can fail to get to that controlled 
exit point. Granted that argument is moot since it implies incomplete 
error handling in the thread anyway.

Btw there are actually two use cases in our code base. One is thread 
controls the exit, second is caller controls the exit. Anyway...

>> Never mind, I was not looking for anything more than a suggestion on how
>> to maybe work around it in piece as someone is dealing with the affected
>> call sites.
> 
> Sultan's kthread_work idea is probably the right direction. This would
> seem to have what you need.

... yes, it can be converted. Even though for one of the two use cases 
we need explicit signalling. There now isn't anything which would assert 
kthread_should_stop() without also asserting the signal, right?. Neither 
I found that the thread work API can do it.

Fingers crossed we were the only "abusers" of the API. There's a quite a 
number of kthread_stop callers and it would be a large job to audit them 
all.

Regards,

Tvrtko
