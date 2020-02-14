Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FFD15D8A9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8976E7F1;
	Fri, 14 Feb 2020 13:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2014F6E7F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:41:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 05:41:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="223019356"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Feb 2020 05:41:35 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Andi Shyti
 <andi.shyti@intel.com>, Intel GFX <intel-gfx@lists.freedesktop.org>
References: <20200214110308.2268-1-andi.shyti@intel.com>
 <aa7b70a5-149d-5c6b-756c-823c03a0df2b@linux.intel.com>
 <158168632802.10420.7548890837084892851@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea4e2120-ec6b-382b-90b1-e9b32da4c803@linux.intel.com>
Date: Fri, 14 Feb 2020 13:41:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158168632802.10420.7548890837084892851@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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


On 14/02/2020 13:18, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-02-14 12:54:35)
>>
>> On 14/02/2020 11:03, Andi Shyti wrote:
>>> +struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev)
>>> +{
>>> +     struct kobject *kobj = &dev->kobj;
>>> +     /*
>>> +      * We are interested at knowing from where the interface
>>> +      * has been called, whether it's called from gt/ or from
>>> +      * the parent directory.
>>> +      * From the interface position it depends also the value of
>>> +      * the private data.
>>> +      * If the interface is called from gt/ then private data is
>>> +      * of the "struct intel_gt *" type, otherwise it's * a
>>> +      * "struct drm_i915_private *" type.
>>> +      */
>>> +     if (strcmp(dev->kobj.name, "gt")) {
>>> +             struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
>>> +
>>> +             drm_warn(&i915->drm, "the interface is obsolete, use gt/\n");
>>
>> Can you log current->name & pid?
>>
>> I am also thinking is a level down from warn would be better. Notice
>> sounds intuitively correct to me.
> 
> git grep -e 'pr.*obsolete' | grep warn | wc -l
> 21
> git grep -e 'pr.*obsolete' | grep notice | wc -l
> 1
> git grep -e 'pr.*obsolete' | grep info | wc -l
> 4
> 
> Looks like warn's back on the menu, boys.

Majority is just wrong. :P

>> I am also tempted by the _once alternative, but then it makes less sense
>> to include name & pid.
> 
> I'm more afraid that there are users out there that frequently poke
> these files.

Agreed, I think best option is to go with ratelimited and name & pid 
logged. And more verbosity about what has been access and what should be 
accessed instead.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
