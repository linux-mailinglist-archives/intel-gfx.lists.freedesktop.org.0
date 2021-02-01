Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACF330A363
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:36:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970866E48F;
	Mon,  1 Feb 2021 08:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D16E6E48F;
 Mon,  1 Feb 2021 08:36:20 +0000 (UTC)
IronPort-SDR: nIFfK+CFIICXHhQJrhhrFsDNSY3h7v1iQ3O/m5ERyikRHmznTN6TS0GJagOvV9rJBBKBLblQId
 iz111gPpe8rQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="180797446"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="180797446"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 00:36:09 -0800
IronPort-SDR: bpnPlMWLhl+S4W8gJyIgTUCbJqAQIQ1kXxDQnL7f1wmpO2f/pskFJs7FYXkV8aMLIn0+TfKldK
 zj0iCrdce3ZA==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="369288921"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO [10.214.231.94])
 ([10.214.231.94])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 00:36:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
 <577e01ed-a463-301f-8fc8-c553c0b46ba7@linux.intel.com>
 <161216767124.30865.12019098192632057390@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <abe2678a-f798-d625-0f59-f6ebf1ef5e4f@linux.intel.com>
Date: Mon, 1 Feb 2021 08:36:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161216767124.30865.12019098192632057390@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Hide unused clients
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2021 08:21, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-01 08:14:45)
>>
>> On 31/01/2021 03:11, Chris Wilson wrote:
>>> Keep new clients hidden until they utilise the GPU.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> ---
>>>    tools/intel_gpu_top.c | 5 ++++-
>>>    1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>> index 60ff62d28..66a8effa6 100644
>>> --- a/tools/intel_gpu_top.c
>>> +++ b/tools/intel_gpu_top.c
>>> @@ -828,8 +828,11 @@ static void update_client(struct client *c, unsigned int pid, char *name)
>>>                c->last[i] = val[i];
>>>        }
>>>    
>>> -     c->samples++;
>>> +     if (!c->total_runtime)
>>> +             return;
>>> +
>>>        c->status = ALIVE;
>>> +     c->samples++;
>>>    }
>>>    
>>>    static void
>>>
>>
>> Not sure we need to do it at this level and not instead at presentation
>> time.
> 
> My goal was just presentation :(

Something like this would be presentation time:

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 60ff62d28e5d..f7c5cc3bf19f 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1942,6 +1942,9 @@ print_client(struct client *c, struct engines 
*engines, double t, int lines,
         unsigned int i;

         if (output_mode == INTERACTIVE) {
+               if (!c->total_runtime) /* make a key toggle? */
+                       return;
+
                 lines++;

                 printf("%6u %17s ", c->pid, c->print_name);

But it worries me a bit to do it by default.

> 
>> Plus, in default sort mode they would be at the end of the list,
>> so behind the more active clients. Or you go into sort by id and they
>> annoy you there?
> 
> No. I had a bunch of "Xorg" when launching steam which never became
> anything. So I guess just a bunch of dlopen("libgl") spawing a bunch of
> clients that we never used for anything more than gl[X]GetString, but
> leaked the fd.

But they were at the end, so potentially even cut of if enough 
interesting clients? Or you actually sorted by id? Or something else is 
broken?

> 
> [Why does steam need 10% of the gpu to update an icon on the toolbar
> which is hidden while minimised? Why do games sit in static menus at
> 100% gpu? Why?]

Yep, I have this issue with animated KDE tray icons. :I

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
