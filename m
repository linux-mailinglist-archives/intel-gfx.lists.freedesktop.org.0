Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E59732F40EA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 02:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9838997A;
	Wed, 13 Jan 2021 01:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C428997A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 01:03:19 +0000 (UTC)
IronPort-SDR: 6Il27y02pIhQfS6pQRQQaOjy13T4WRyJ/u6Ty147fe2bDD9eUrHabb5l68gFC2f0UEC+I59K39
 XnNiskZYNivQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="239672841"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="239672841"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 17:03:19 -0800
IronPort-SDR: NudeHZs/uNw+K4cspbMZwVYDyrlWHan6Tk+wxib57akON2qr1DJgTJGb7BMD2XaO8GHjrnf4QW
 zRhFIfFSyezQ==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="353252717"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.14.118])
 ([10.212.14.118])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 17:03:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-3-daniele.ceraolospurio@intel.com>
 <160989470089.14894.2097316461568983303@build.alporthouse.com>
 <a38fc4e1-8847-2bc4-763f-673c2597a06f@intel.com>
 <160990175565.22606.17511156121476669794@build.alporthouse.com>
 <f2b54e5a-fc97-ef33-0c6c-6fe6833d3b73@intel.com>
 <160996218684.14894.17445852133665540846@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <362b4cbb-082c-91bd-dbaa-6e0f8547d71a@intel.com>
Date: Tue, 12 Jan 2021 17:03:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160996218684.14894.17445852133665540846@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/guc: do not dump execlists
 state with GuC submission
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/6/2021 11:43 AM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-06 17:21:16)
>>
>> On 1/5/2021 6:55 PM, Chris Wilson wrote:
>>> Quoting Daniele Ceraolo Spurio (2021-01-06 02:32:28)
>>>> On 1/5/2021 4:58 PM, Chris Wilson wrote:
>>>>> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:44)
>>>>>> GuC owns the execlists state and the context IDs used for submission, so
>>>>>> the status of the ports and the CSB entries are not something we control
>>>>>> or can decode from the i915 side, therefore we can avoid dumping it. A
>>>>>> follow-up patch will also stop setting the csb pointers when using GuC
>>>>>> submission.
>>>>>>
>>>>>> GuC dumps all the required events in the GuC logs when verbosity is set
>>>>>> high enough.
>>>>> Would not be worth including, or is it not very helpful for debugging
>>>>> curious engine stalls?
>>>> GuC is going to reset the engine if it stalls, so we should get the GuC
>>>> logs and the engine state included in the error state.
>>> Here we would be focusing on "why hasn't a request been submitted/executed".
>>> A bad request is usually self-evident, but a missing one is tricky.
>> Agreed, but I still don't think we could use the CSB info even if we
>> dumped it. We currently can't map CSB events in GuC submission mode to
>> specific contexts, because the ctx IDs used by the GuC do not map to the
>> ones used by i915. We've asked the GuC team to expose a way to do such a
>> mapping, but that's still under discussion. In the meantime we plan to
>> add a few traces to make sure the requests reach the GuC and use the GuC
>> logs for what goes on inside the FW (GuC logs include the context IDs it
>> uses for submission and all CSB events on high verbosity).
> I was more reflecting on what could be here instead. Details of the ctb?
> It would be great to have a snapshot of some relevant guc state, merely
> wonder if we could extract anything from the log automatically. As well
> as the usual what have we submitted to the guc.
> -Chris

Just realized I hadn't replied to this. We're still discussing with the 
GuC team about what type of GuC status we can extract and/or ask GuC to 
provide.
Request list aside, most of the i915-side of the GuC info is going to be 
global (single ctb channel, single submission queue into GuC), so it'll 
likely end up in a different printer function.

Daniele

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
