Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3054B874E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 13:04:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D1B10E3E8;
	Wed, 16 Feb 2022 12:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DC710E3E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 12:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645013045; x=1676549045;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nl8GK8mOI649s6l53KlxFSU4dpekbJIMHhJ7EE7RAqU=;
 b=iaePu6cYJHcX2S91vJUbmD7QtC676SxV2hRpyp57HAVL0PyqYuQNX8I0
 WYpEcBmZrw4sVo/NFYORTVkP9SDAPG9hRnQrhK98WgAE2Eyx3O5I1N+p2
 j5BRMvFFmOE+Rp3UjEKgD/I1XH/CHyJr9QzlrTJlM37YOaAN06IpHpgIh
 JwThthHXSIQDRKYEigXoVZQx4IrXRwSqim3hJ7ZBK3v1myvjvkI6wejj1
 BjBqqWhu9BUH70f301Ub2k3u0m+L7rFBwQj7B8Z1G5RZ2lknUvrMkVp1w
 F9eFV49ic1q/SrbgQMM7HCctlG+6CMymPz2k3Q2Y6KV8gbxBhO2e66Xqd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250531906"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="250531906"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:04:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="502995160"
Received: from sphadnis-mobl1.amr.corp.intel.com (HELO [10.212.82.113])
 ([10.212.82.113])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:04:01 -0800
Message-ID: <7ed77377-1e6e-4329-1fda-87854f9bb938@linux.intel.com>
Date: Wed, 16 Feb 2022 12:03:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20220213103215.2440248-1-alexander.usyskin@intel.com>
 <20220213103215.2440248-2-alexander.usyskin@intel.com>
 <f88b7780-cf4f-d2f5-f2ba-cd3d7bf2a0d4@linux.intel.com>
 <MW3PR11MB465112EBAFF7BC9681EF2D03ED349@MW3PR11MB4651.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <MW3PR11MB465112EBAFF7BC9681EF2D03ED349@MW3PR11MB4651.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 1/5] drm/i915/gsc: add gsc as a mei
 auxiliary device
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 15/02/2022 15:22, Usyskin, Alexander wrote:

>>> +{
>>> +	irq_set_chip_and_handler_name(irq, &gsc_irq_chip,
>>> +				      handle_simple_irq, "gsc_irq_handler");
>>> +
>>> +	return irq_set_chip_data(irq, dev_priv);
>>
>> I am not familiar with this interrupt scheme - does dev_priv get used at
>> all by handle_simple_irq, or anyone, after being set here?

What about this? Is dev_priv required or you could pass in NULL just as 
well?

>>
>>> +}
>>> +
>>> +struct intel_gsc_def {
>>> +	const char *name;
>>> +	const unsigned long bar;
>>
>> Unusual, why const out of curiosity? And is it "bar" or "base" would be
>> more accurate?
>>
> Some leftover, thanks for spotting this!
> It is a base of bar. I prefer bar name here. But not really matter.

Is it?

+	adev->bar.start = def->bar + pdev->resource[0].start;

Looks like offset on top of BAR, no?

>>> +{
>>> +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>>> +	struct mei_aux_device *adev;
>>> +	struct auxiliary_device *aux_dev;
>>> +	const struct intel_gsc_def *def;
>>> +	int ret;
>>> +
>>> +	intf->irq = -1;
>>> +	intf->id = intf_id;
>>> +
>>> +	if (intf_id == 0 && !HAS_HECI_PXP(dev_priv))
>>> +		return;
>>
>> Isn't inf_id == 0 always a bug with this patch, regardless of
>> HAS_HECI_PXP, since the support is incomplete in this patch? If so I'd
>> be more comfortable with a plain drm_WARN_ON_ONCE(intf_id == 0).
>>
> There will be patches for other cards that have pxp as soon as this is reviewed.
> It is better to have infra prepared for two heads.

My point is things are half-prepared since you don't have the id 0 in 
the array, regardless of the HAS_HECI_PXP. Yes it can't be true now, but 
if you add a patch which enables it to be true, you have to modify the 
array at the same time or risk a broken patch in the middle.

I don't see the point of the condition making it sound like there are 
two criteria to enter below, while in fact there is only one in current 
code, and that it that it must not be entered because array is incomplete!

>>> +
>>> +	if (!HAS_HECI_GSC(gt->i915))
>>> +		return;
>>
>> Likewise?
>>
>>> +
>>> +	if (gt->gsc.intf[intf_id].irq <= 0) {
>>> +		DRM_ERROR_RATELIMITED("error handling GSC irq: irq not
>> set");
>>
>> Like this, but use logging functions which say which device please.
>>
> drm_err_ratelimited fits here?

AFAICT it would be a programming bug and not something that can happen 
at runtime hence drm_warn_on_once sounds correct for both.

>>>    }
>>> @@ -182,6 +185,8 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>>>    	/* Disable RCS, BCS, VCS and VECS class engines. */
>>>    	intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE,
>> 0);
>>>    	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE,	  0);
>>> +	if (HAS_HECI_GSC(gt->i915))
>>> +		intel_uncore_write(uncore,
>> GEN11_GUNIT_CSME_INTR_ENABLE, 0);
>>>
>>>    	/* Restore masks irqs on RCS, BCS, VCS and VECS engines. */
>>>    	intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK,	~0);
>>> @@ -195,6 +200,8 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>>>    	intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK,
>> 	~0);
>>>    	if (HAS_ENGINE(gt, VECS2) || HAS_ENGINE(gt, VECS3))
>>>    		intel_uncore_write(uncore,
>> GEN12_VECS2_VECS3_INTR_MASK, ~0);
>>> +	if (HAS_HECI_GSC(gt->i915))
>>> +		intel_uncore_write(uncore,
>> GEN11_GUNIT_CSME_INTR_MASK, ~0);
>>>
>>>    	intel_uncore_write(uncore,
>> GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
>>>    	intel_uncore_write(uncore,
>> GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
>>> @@ -209,6 +216,7 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
>>>    {
>>>    	struct intel_uncore *uncore = gt->uncore;
>>>    	u32 irqs = GT_RENDER_USER_INTERRUPT;
>>> +	const u32 gsc_mask = GSC_IRQ_INTF(0) | GSC_IRQ_INTF(1);
>>
>> Why enable the one which is not supported by the patch? No harm doing it?
>>
> No harm and the next patch will be soon, this patch unfortunately is long overdue.

Just feels a bit lazy. You are adding two feature test macros to 
prepare, so why not use them.

Regards,

Tvrtko
