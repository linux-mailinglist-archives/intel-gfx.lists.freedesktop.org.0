Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE861299FA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 19:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091186E2E6;
	Mon, 23 Dec 2019 18:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D346E2E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 18:55:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 10:55:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="367133794"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 23 Dec 2019 10:55:13 -0800
To: Maximilian Luz <luzmaximilian@gmail.com>
References: <3d1744d1-5161-d377-7c3b-2e907060e3f8@gmail.com>
 <1b2ff00a-3387-c39f-49cc-64afbfd78d4c@intel.com>
 <bc4e8a25-05b5-72fb-8ddd-2275b739f0a5@gmail.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <bc31eaa3-c5ed-819f-a94a-1f7ca335ea86@intel.com>
Date: Mon, 23 Dec 2019 10:55:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bc4e8a25-05b5-72fb-8ddd-2275b739f0a5@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] Plans for i915 GuC Submission with regards to
 IPTS/ME
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
Cc: Dorian Stoll <dorian.stoll@tmsp.io>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/18/19 10:01 AM, Maximilian Luz wrote:
> Hi,
> 
> On 12/16/19 11:40 PM, Daniele Ceraolo Spurio wrote:
>> Hi,
>>
>> I can't comment on the ITPS side since I have never looked at that
>> side of things, but I can give you an overview of why we turned off
>> GuC submission and what are the short/medium term plans for it.
> 
> By any chance, do you have any idea if it's possible/who we could ask to
> get some more information or some sort of documentation about the
> IPTS/ME/touch-controller interfaces? This could maybe allow us to find
> some sort of work-around not involving GuC.
> 

Unfortunately I have no idea about the docs in this area since it is 
outside the graphics core.

>> TL;DR: The GuC submission interface is changed enough that the code
>> you have is no longer applicable. We're now focused on implementing
>> support for the new interface to re-enable guc submission (gen12+),
>> which is a prerequisite for what you need. IMO any ITPS support on the
>> current tree will have to be postponed until then.
>>
>> The disabling of GuC submission was done because recent binaries
>> (v30+) introduced significant non-backward compatible changes in the
>> interface; given that GuC submission was still not an "official"
>> feature and that even more intrusive interface changes are coming with
>> the upcoming GuC v40+, we decided to just disable the feature for now
>> and wait for all the changes to land on the GuC side before adding
>> support back in. The plan is to re-enable support from either gen11 or
>> gen12, so the gen9 platform will not have it, at least initially. It
>> shouldn't bee too hard to add it in though since the great majority of
>> the code is shared on both the GuC and the i915 side, so I wouldn't
>> exclude us adding it in if there is demand for it.
> 
> Thank you, this is quite helpful. As all devices that I know of using
> IPTS are gen9, GuC support for that generation would be great to have.
> In the mean-time however, I think we will have to try and figure out if
> we can find a work-around, maybe bypassing GuC somehow.

If you only care about gen9, a possible solution would be to 
forward-port just the old GuC submission (instead of the whole i915) 
from a know working kernel. It shouldn't be too bad since the GuC code 
is relatively self-contained, but given the speed at which our 
submission code evolves there might be issue in the interactions between 
the old GuC code and the other parts of the submission flow.

> 
> Just out of curiosity: Are the firmware-changes also done on Windows or
> is this purely Linux specific? Would be interesting to know if they have
> the same problem.
> 

No idea about the details of what goes on on Windows. The firmware is 
OS-agnostic, but they might be using a different version compared to us, 
especially on older platforms.

Daniele

>> The v40 firmware includes an almost complete rework of the submission
>> interface, which is why, in preparation, we removed support from the
>> driver for the legacy structures that are no longer used; we're also
>> not going to use HW doorbells anymore and that's why those have been
>> removed as well. I've had a look at the code in your github tree and
>> most of the things you use are either gone from the interface or have
>> been significantly updated, so I don't think there is an easy way to
>> just port the patch to the new blobs and a significant rewrite is
>> probably going to be required. Re-enabling GuC submission on the new
>> interface, which is our current focus on the i915/GuC integration
>> side, is a prerequisite for that, so IMO unfortunately you'll have to
>> wait until the new interface support lands before any ITPS changes can
>> be considered.
> 
> I suspected that we'll likely have to do a substantial re-write of the
> driver, but it's nice to have confirmation for that so we can at least
> plan a bit ahead.
> 
> Thank you again,
> Maximilian
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
