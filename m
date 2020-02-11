Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70321158F5C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 14:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E8D6EA5A;
	Tue, 11 Feb 2020 13:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64F46EA5A;
 Tue, 11 Feb 2020 13:00:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:00:24 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226496534"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Feb 2020 05:00:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Andi Shyti <andi@etezian.org>
References: <20200211003742.863630-1-chris@chris-wilson.co.uk>
 <20200211004255.GA2535@jack.zhora.eu>
 <158141747934.5235.15646593670790864278@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <52e2f277-e709-05b2-d66a-833fe8b234f1@linux.intel.com>
Date: Tue, 11 Feb 2020 13:00:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158141747934.5235.15646593670790864278@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_nop: Keep a
 copy of the names
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/02/2020 10:37, Chris Wilson wrote:
> Quoting Andi Shyti (2020-02-11 00:42:55)
>> Hi Chris,
>>
>> On Tue, Feb 11, 2020 at 12:37:42AM +0000, Chris Wilson wrote:
>>> The engine names are now stored inside the iterator and not as static
>>> strings. If we wish to use them later, we need to make a copy.
>>
>> But we are not using them later. Your patch just copies and frees
>> an array.
> 
> They are used inside an igt_info() in the child processes. Output at the
> moment is quite strange.

I also don't get this - child has a copy of everything how can it not work?

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
