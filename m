Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F06E5215B19
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 17:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DCA89E5A;
	Mon,  6 Jul 2020 15:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE84E89FEA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 15:47:05 +0000 (UTC)
IronPort-SDR: 1AKQWS5lK/rn9/+/mL1fG8LxEGd4gkoTC3IPrqepaq5GdeAfGKt47Nm+F+FMI3JYt/bNQyPHqW
 Fh+JO1ebUEsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="135687828"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="135687828"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 08:47:04 -0700
IronPort-SDR: JmdWsvuMPQ1H3etJ3G50VbHD07jYnF9uBwOxMBO9x5LTKUBthe8EHX6gg0C8xVbkCzZVtPVS2s
 2TU6FjtxBvKw==
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="456775566"
Received: from rrodrig1-mobl.ger.corp.intel.com (HELO [10.249.45.109])
 ([10.249.45.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 08:47:03 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-7-maarten.lankhorst@linux.intel.com>
 <77d31489-33f1-c025-aa3c-bfe3d70a0e54@linux.intel.com>
 <756b6b1a-97f5-4676-65f3-4e1430945ccf@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fdfa5721-b917-532a-0bfd-d8b3cc46f1aa@linux.intel.com>
Date: Mon, 6 Jul 2020 16:47:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <756b6b1a-97f5-4676-65f3-4e1430945ccf@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915: Parse command buffer
 earlier in eb_relocate(slow)
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


On 06/07/2020 13:53, Maarten Lankhorst wrote:
> Op 03-07-2020 om 15:49 schreef Tvrtko Ursulin:
>>
>> On 03/07/2020 13:22, Maarten Lankhorst wrote:
>>> We want to introduce backoff logic, but we need to lock the
>>> pool object as well for command parsing. Because of this, we
>>> will need backoff logic for the engine pool obj, move the batch
>>> validation up slightly to eb_lookup_vmas, and the actual command
>>> parsing in a separate function which can get called from execbuf
>>> relocation fast and slowpath.
>>
>> On this one I also had some feedback in the previous round which you maybe missed.
>>
>> Regards,
> Compile tested this one now, so should work. :)

Cool.

And what about the other comments I had? More splitting of logical steps 
(lookup/validate/parse/whatever)? Working on removing the reverts and 
making eb_relocate_parse_slow have less than 11 gotos and 4-5 labels (by 
the end of the series) is out the question? Removing the "dirty hack" as 
well later in the series?

It would be really nice if you could also scan through Chris' idea. I 
particularly like how he manages to do it without needing to touch 
execlists and context handling (less invasiness should help us). But I 
haven't studied his series fully yet, to understand all the details. So 
it would be good to join forces there as well.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
