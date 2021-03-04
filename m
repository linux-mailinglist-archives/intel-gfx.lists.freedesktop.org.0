Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C548232C39B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 01:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A686E444;
	Thu,  4 Mar 2021 00:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 661346E444
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 00:19:35 +0000 (UTC)
IronPort-SDR: Gcyyyka6AmBjfR4bgvRxlfSL+B13PQx/Z7W8ARy/1j2dAl11dsizixmnmCuzUjXRhYxw4n2nCn
 x/g3w3JNTl6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="251354038"
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; d="scan'208";a="251354038"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 16:19:34 -0800
IronPort-SDR: gSqPs7tLuFY3nzs3jvjdeg0wtAjxqAU9CvZp19KVRJXQ7TCgiDyOBjRlfwzN4EfAddBsKuy3VN
 5+DT1hMVDdBw==
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; d="scan'208";a="436148644"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.209.95.172])
 ([10.209.95.172])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 16:18:48 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-8-daniele.ceraolospurio@intel.com>
 <161480929311.25897.3336401858374622984@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <399f66ba-1ec6-19dc-5bbb-f91e4a59f007@intel.com>
Date: Wed, 3 Mar 2021 16:18:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <161480929311.25897.3336401858374622984@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 07/16] drm/i915/pxp: Create the arbitrary
 session after boot
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
Cc: Huang@freedesktop.org, "Huang, Sean Z" <sean.z.huang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/3/2021 2:08 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:51)
>> +static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
>> +{
>> +       return pxp->arb_is_in_play;
>> +}
>> +static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
>> +{
>> +       struct intel_gt *gt = pxp_to_gt(pxp);
>> +       intel_wakeref_t wakeref;
>> +       u32 sip = 0;
>> +
>> +       with_intel_runtime_pm(gt->uncore->rpm, wakeref)
>> +               sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
>> +
>> +       return sip & BIT(id);
>> +}
>> +
>> +bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp)
>> +{
>> +       return intel_pxp_session_is_in_play(pxp, ARB_SESSION);
>> +}
> So pxp->arb_is_in_play is not the same as intel_pxp_arb_session_is_in_play().
>
> That's confusing.

The HW is counfusing :)

The HW reporting that a session is in play does not mean that the 
session is actually valid. When a teardown occurs the session is still 
in play on the HW but the relevant keys are gone, so the session is not 
actually usable (and attempting to use it will likely cause hangs). 
intel_pxp_session_is_in_play() reflect the HW in_play state while 
pxp->arb_is_in_play reflect usability of the session. I'll rename the 
latter to pxp->arb_is_valid.

Daniele

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
