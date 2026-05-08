Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wA+OKbLb/Wn0jwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:48:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB114F68D5
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7539210E2FA;
	Fri,  8 May 2026 12:48:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k0J4yQ+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7FA210E2FA;
 Fri,  8 May 2026 12:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778244527; x=1809780527;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8uE1bX+/si5ONI6qelMd/a+WKovBaFkRPdQteJ+1Rdk=;
 b=k0J4yQ+3pd3lcQaIRjPAuxlj+49U/MG+NMKtYI+3G1r6yJmEl7YJjNCZ
 7PNeTFsspovXvbYXoNlUvu2mUZM6P/EYTWbfftdS9rP0NaU0C4b4Q1s34
 WYlVW0BacpE4gKEt5GUWA26y3MlKf+JvHcfNJ205EttB3Gd75vjEVcsUT
 GIIV4B2NrQwkT/zkhBALqChzUe24QTakzzO+vLvMi2q8zVOn5WultPAKB
 Wk1+5+zFimcmBlutLI+Bys7HzjDjvDKhUJps+VdyBm/LFyvqSb7gGtZbl
 zyMa6kzF0oVVTkk23QcT8kRKMgZCR1c7kPuxk29DWKg6HacMxPlSd4CPo g==;
X-CSE-ConnectionGUID: vML99QBmT/eIAEU9e9THPA==
X-CSE-MsgGUID: 2Z0EothwTqSvaeXQ6GEq8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="78354275"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78354275"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:48:46 -0700
X-CSE-ConnectionGUID: x9nYFHbyTJeAOhHTIL16ag==
X-CSE-MsgGUID: xLsmo4kBTm+bEBlKhVgU9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="234099887"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:48:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, James Xiong
 <james.xiong@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: jani.saarinen@intel.com, James Xiong <james.xiong@intel.com>
Subject: Re: [PATCH v2] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <87v7cy6pyq.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260507164605.608368-1-james.xiong@intel.com>
 <b02ec283a5d2137f48859884805d9c55f216cf58@intel.com>
 <87v7cy6pyq.fsf@intel.com>
Date: Fri, 08 May 2026 15:48:41 +0300
Message-ID: <c071d6473256af2a2c281a4d148630269106a51a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 0EB114F68D5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Fri, 08 May 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Jani Nikula <jani.nikula@linux.intel.com> writes:
>
>> On Thu, 07 May 2026, James Xiong <james.xiong@intel.com> wrote:
>>> During driver probe, DMC firmware is loaded asynchronously via a
>>> workqueue. There is a race between parse_dmc_fw() setting the payload
>>> pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
>>> writing the firmware to hardware registers. If the probe thread calls
>>> intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
>>> intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
>>> registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>>
>> I wonder if intel_dmc_enable_pipe() should call intel_dmc_wait_fw_load()
>> itself?
>
> I also though about that, but, if you need to call
> intel_dmc_wait_fw_load() in a regular modeset flow, wouldn't that be a
> symptom of a bug?

Perhaps you could theoretically end up in that situation if you have no
pipes enabled at probe, and the first modeset comes before the firmware
has finished loading?

Similarly, why should we unconditionally wait for DMC firmware load here
if there are no pipes enabled at probe and we could just plunge on?

But primarily I'm thinking about the maintenance of all the dependencies
here. We have so many of these subtle ordering dependencies, especially
at probe. Can we not add more?

I'm not adamant about either approach, just expressing my gut feelings.


BR,
Jani.



>
> --
> Gustavo Sousa
>
>>
>>>
>>> v2: Fix by calling intel_dmc_wait_fw_load() in
>>>     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>>>     Sousa).
>>>
>>> Signed-off-by: James Xiong <james.xiong@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> index e88082c8caac..277e56848470 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> @@ -961,6 +961,8 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
>>>  	 * intel_sanitize_plane_mapping() may need to do vblank
>>>  	 * waits, so we need vblank interrupts restored beforehand.
>>>  	 */
>>> +	intel_dmc_wait_fw_load(display);
>>> +
>>
>> No matter what, the comment above now appears to refer to this
>> intel_dmc_wait_fw_load() call, which makes no sense at all.
>>
>> BR,
>> Jani.
>>
>>>  	for_each_intel_crtc(display->drm, crtc) {
>>>  		struct intel_crtc_state *crtc_state =
>>>  			to_intel_crtc_state(crtc->base.state);
>>
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
