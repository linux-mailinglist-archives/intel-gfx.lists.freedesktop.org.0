Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLLKMyRDc2mWtwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 10:45:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F22A7396B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 10:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1BD10EA84;
	Fri, 23 Jan 2026 09:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NWSqjSC/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E7C10EA84;
 Fri, 23 Jan 2026 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769161505; x=1800697505;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=3358mfMQQ3L4x5UeL6cI36QsgfGXhfdntN5rcZAt9XM=;
 b=NWSqjSC/66U7OrMsX0X7SleyNRygd3hmYRZa+TDcfITfgjk0uMs0WL0a
 8xO8DhS9aEBVOEm4+1hPMW24kk9A3zguWU5u1Y/bwwVNN9Bj6gd7vvexp
 bkvBUa0y8hK7IDmt7/0ZSraZofkWqpJYwftvXDmfZrB3/tMkmrj0FTaXJ
 QldhaolDuEGSWXihdO53vwREEeqrR4D+As70hxQPgkcOYb6OwOxZ52PJx
 b4adm4nLgCb/atHZ+Y2ye2TX5YGPL9MRp4g6YzIC8ivLNB4IV8SmNfSnM
 gaXuvM7hlslPffUsxLmPLYq4kug/9RrP1DPfxL7d9LDcrDaPYLH8Cf6vw g==;
X-CSE-ConnectionGUID: l4oQjjHDTtKZIRU+TYlIdw==
X-CSE-MsgGUID: 8ijjU0YYTHmcgsRNS01ZxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="80720409"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="80720409"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 01:44:17 -0800
X-CSE-ConnectionGUID: bqdNhbeqSlWAYyhvSmIr6Q==
X-CSE-MsgGUID: TnrPQn+NSauquddZPwO70g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211855516"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.2])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 01:44:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: move GEN7_ERR_INT snapshot to display irq code
In-Reply-To: <CY5PR11MB6344156110390114E8974C33F494A@CY5PR11MB6344.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260122123759.1701492-1-jani.nikula@intel.com>
 <CY5PR11MB6344156110390114E8974C33F494A@CY5PR11MB6344.namprd11.prod.outlook.com>
Date: Fri, 23 Jan 2026 11:44:13 +0200
Message-ID: <9c2bee04bf61874849aa53af3baae3f878dcbf19@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 1F22A7396B
X-Rspamd-Action: no action

On Fri, 23 Jan 2026, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, January 22, 2026 6:08 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH] drm/i915: move GEN7_ERR_INT snapshot to display irq code
>> 
>> The error interrupt register GEN7_ERR_INT is a display irq register. Move its
>> GPU error capture to display irq snapshot.
>
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_irq.c | 5 +++++
>>  drivers/gpu/drm/i915/i915_gpu_error.c            | 6 ------
>>  drivers/gpu/drm/i915/i915_gpu_error.h            | 1 -
>>  3 files changed, 5 insertions(+), 7 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index 9adeebb376b1..0a71840041de 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -2472,6 +2472,7 @@ void intel_display_irq_init(struct intel_display *display)
>> 
>>  struct intel_display_irq_snapshot {
>>  	u32 derrmr;
>> +	u32 err_int;
>>  };
>> 
>>  struct intel_display_irq_snapshot *
>> @@ -2486,6 +2487,9 @@ intel_display_irq_snapshot_capture(struct intel_display
>> *display)
>>  	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20 &&
>> !HAS_GMCH(display))
>>  		snapshot->derrmr = intel_de_read(display, DERRMR);
>> 
>> +	if (DISPLAY_VER(display) == 7)
>> +		snapshot->err_int = intel_de_read(display, GEN7_ERR_INT);
>> +
>>  	return snapshot;
>>  }
>> 
>> @@ -2496,4 +2500,5 @@ void intel_display_irq_snapshot_print(const struct
>> intel_display_irq_snapshot *s
>>  		return;
>> 
>>  	drm_printf(p, "DERRMR: 0x%08x\n", snapshot->derrmr);
>> +	drm_printf(p, "ERR_INT: 0x%08x\n", snapshot->err_int);
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c
>> b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 303d8d9b7775..31c5341fb9cf 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -824,9 +824,6 @@ static void err_print_gt_global(struct
>> drm_i915_error_state_buf *m,
>>  		err_printf(m, "FAULT_TLB_DATA: 0x%08x 0x%08x\n",
>>  			   gt->fault_data1, gt->fault_data0);
>> 
>> -	if (GRAPHICS_VER(m->i915) == 7)
>> -		err_printf(m, "ERR_INT: 0x%08x\n", gt->err_int);
>> -
>>  	if (IS_GRAPHICS_VER(m->i915, 8, 11))
>>  		err_printf(m, "GTT_CACHE_EN: 0x%08x\n", gt->gtt_cache);
>> 
>> @@ -1929,9 +1926,6 @@ static void gt_record_global_regs(struct
>> intel_gt_coredump *gt)
>>  	if (IS_VALLEYVIEW(i915))
>>  		gt->forcewake = intel_uncore_read_fw(uncore,
>> FORCEWAKE_VLV);
>> 
>> -	if (GRAPHICS_VER(i915) == 7)
>> -		gt->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
>> -
>>  	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
>>  		gt->fault_data0 = intel_gt_mcr_read_any((struct intel_gt *)gt->_gt,
>> 
>> 	XEHP_FAULT_TLB_DATA0);
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h
>> b/drivers/gpu/drm/i915/i915_gpu_error.h
>> index 91b3df621a49..26970c5e291e 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>> @@ -149,7 +149,6 @@ struct intel_gt_coredump {
>>  	u32 gtier[6], ngtier;
>>  	u32 forcewake;
>>  	u32 error; /* gen6+ */
>> -	u32 err_int; /* gen7 */
>>  	u32 fault_data0; /* gen8, gen9 */
>>  	u32 fault_data1; /* gen8, gen9 */
>>  	u32 done_reg;
>> --
>> 2.47.3
>

-- 
Jani Nikula, Intel
