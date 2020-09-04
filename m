Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DE225D937
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 15:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739636EA2A;
	Fri,  4 Sep 2020 13:03:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E49C06EA28
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 13:03:40 +0000 (UTC)
IronPort-SDR: janM+yK9Zk9gbw02bx7VGc80gTW+ZEy/jwywZduMhP7qKVviXfyIIg0OO88X8acfXN0xQkZRs8
 wPB6Cntw4FUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="155235217"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="155235217"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 06:03:21 -0700
IronPort-SDR: tY0vkI/xVRhtwFcqHBFAb+NnFTSVHTCEpxx4WLMrpE5Cqzc62ST9x5XAWJnArsiX56QgmUOn8s
 h47Gd4LN6O1w==
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="478480940"
Received: from arielsig-mobl1.ger.corp.intel.com (HELO [10.251.165.178])
 ([10.251.165.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 06:03:20 -0700
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
 <20200415101138.26126-2-tvrtko.ursulin@linux.intel.com>
 <CAKi4VAJi_4OcRjXMBQHcC3XBJjg3A+7VnwwRCG69v0Ee3=FZdg@mail.gmail.com>
 <2ca3277f-6186-0dc6-a3ba-c39161fa007a@linux.intel.com>
 <33a07251-32d3-24cb-a39e-441b9260e470@linux.intel.com>
 <CAKi4VAKaLPMh4ZnPxBb5O13rnbZo24XZtMa5OSAsweYtoE4kxw@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bf83b9af-a086-e4be-7c29-9244da3fecd4@linux.intel.com>
Date: Fri, 4 Sep 2020 14:03:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKi4VAKaLPMh4ZnPxBb5O13rnbZo24XZtMa5OSAsweYtoE4kxw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Expose list of clients in
 sysfs
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
Cc: Intel Graphics <Intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/09/2020 07:26, Lucas De Marchi wrote:
> On Tue, Sep 1, 2020 at 8:25 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>>
>> On 01/09/2020 16:09, Tvrtko Ursulin wrote:
>>>
>>> Hi,
>>>
>>> On 26/08/2020 02:11, Lucas De Marchi wrote:
>>>> Hi,
>>>>
>>>> Any update on this? It now conflicts in a few places so it needs a
>>>> rebase.
>>>
>>> I don't see any previous email on the topic - what kind of update, where
>>> and how, are you looking for? Rebase against drm-tip so you pull it in?
>>> Rebase against some internal in progress branch?
>>
>> Clearly you were after an update against drm-tip.. :) Problem here was
>> no userspace but I can try to respin it.
> 
> Yes, against drm-tip. I rebased it, but I think there is something
> wrong with it.
> If you can share your version I can do some tests.

I've sent a series out just now. Tested it lightly (proper IGTs are 
still in progress) and it seems to work.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
