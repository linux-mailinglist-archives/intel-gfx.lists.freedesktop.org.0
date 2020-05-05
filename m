Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E6D1C4FFF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 10:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5765E89FBC;
	Tue,  5 May 2020 08:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E90E89F4A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 08:14:44 +0000 (UTC)
IronPort-SDR: Y7CG12cO0bST9wL7s1r4ANb9BVHN7bDrQ2gJ+Q/4kjEdABuk7iYfEg4hDcdxpY8SD73suebJIc
 LlLsPvXfVQ8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 01:14:43 -0700
IronPort-SDR: E6Zn6oEPNRswAM2iN9GQ5hT/ogtc2OjGsR1tFBMbsLoeamv1K5URuxo/J7fVEWLPlqPaY8xH3Q
 Y232y3ETT8rg==
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="434398031"
Received: from mfaerber-mobl.ger.corp.intel.com (HELO [10.252.56.92])
 ([10.252.56.92])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 01:14:41 -0700
To: Matt Roper <matthew.d.roper@intel.com>
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
 <20200502045744.407060-3-matthew.d.roper@intel.com>
 <d6817bc7-4c66-a715-a0d4-0600c0099a0f@linux.intel.com>
 <20200504233421.GM188376@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <63f50b94-afae-9804-d9e9-b8ef18dceb2f@linux.intel.com>
Date: Tue, 5 May 2020 09:14:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504233421.GM188376@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Setup MCR steering for RCS
 engine workarounds
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/05/2020 00:34, Matt Roper wrote:
> On Mon, May 04, 2020 at 12:43:54PM +0100, Tvrtko Ursulin wrote:
>> On 02/05/2020 05:57, Matt Roper wrote:
>>> Reads of multicast registers give the value associated with
>>> slice/subslice 0 by default unless we manually steer the reads to a
>>> different slice/subslice.  If slice/subslice 0 are fused off in hardware,
>>> performing unsteered reads of multicast registers will return a value of
>>> 0 rather than the value we wrote into the multicast register.
>>>
>>> To ensure we can properly readback and verify workarounds that touch
>>> registers in a multicast range, we currently setup MCR steering to a
>>> known-valid slice/subslice as the very first item in the GT workaround
>>> list for gen10+.  That steering will then be in place as we verify the
>>> rest of the registers that show up in the GT workaround list, and at
>>> initialization the steering will also still be in effect when we move on
>>> to applying and verifying the workarounds in the RCS engine's workaround
>>> list (which is where most of the multicast registers actually show up).
>>>
>>> However we seem run into problems during resets where RCS engine
>>> workarounds are applied without being preceded by application of the GT
>>> workaround list and the steering isn't in place.  Let's add the same MCR
>>> steering to the beginning of the RCS engine's workaround list to ensure
>>> that it's always in place and we don't get erroneous messages about RCS
>>> engine workarounds failing to apply.
>>>
>>> References: https://gitlab.freedesktop.org/drm/intel/issues/1222
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Cc: chris@chris-wilson.co.uk
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>>>    1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index 4a255de13394..b11b83546696 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -1345,6 +1345,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>>    {
>>>    	struct drm_i915_private *i915 = engine->i915;
>>> +	if (INTEL_GEN(i915) >= 10)
>>> +		wa_init_mcr(i915, wal);
>>> +
>>>    	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>>>    		/*
>>>    		 * Wa_1607138336:tgl
>>>
>>
>> No complaints, only a question - is live_engine_reset_workarounds able to
>> catch this, presumably sporadic, 0xfdc loss after engine reset?
> 
>>From what I can see, it looks like that selftests uses a separate
> ring-based approach to handling the workarounds rather than using the
> CPU.  It looks like that selftest just skips all MCR registers since we
> can't steer ring accesses the way we can with the CPU.

But 0xfdc is verified after engine reset with a mmio read. Because it is 
in the GT list. Strange.. Ack on the series anyway.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
