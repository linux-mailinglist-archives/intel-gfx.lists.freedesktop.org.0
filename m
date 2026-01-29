Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KZ0BYsee2msBQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 09:47:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F79DADB0E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 09:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3700710E33C;
	Thu, 29 Jan 2026 08:47:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOB3YNS9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBDB10E310;
 Thu, 29 Jan 2026 08:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769676422; x=1801212422;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=L71OzREL+PGCfbfmVUpeYOzvz8avBY+zXPIJIRs7G1c=;
 b=MOB3YNS9bobHGuTMP88u3QGG7OWflKSynpSJrgLQM7SvMSioqsHbQNgs
 OoQa1thvCuTaVYcDWN86YhEqePGmPsSwSd02oP2T3kyOBYjzei6NdD8ka
 VwfE7WCShNBQjw0wjVx9ul/IY9ASZLsPMCXwctk5H8K8YIENfYAJeao22
 bTVHfMkHnD89i/gcrrbW/2whduXJaqSWovalQMaWdLzC3wdHEVP87AWX/
 mLL7ApYzUORZQCs1LR9nmn40vvRiaQZUjGLC/LtTqLGLxByJn9wcskIRD
 kAsj7iBxKhh79yEVz8ekSqLtYc3KnNL8iyIVIcoRc0Y38BrSxMJ9Au/eW w==;
X-CSE-ConnectionGUID: 1+JO1XowRZGuuJHikrYlqQ==
X-CSE-MsgGUID: rHeCa+3pRxmUI+fdehH4AQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74766439"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="74766439"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 00:46:50 -0800
X-CSE-ConnectionGUID: w+xFLbRuQJaSkxn+dK40ng==
X-CSE-MsgGUID: zDXS3mN4S7Wz0gryRkGE+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208117659"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 00:46:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/gvt: drop dependency on intel_display_types.h
In-Reply-To: <8132cd5e-9592-418b-b065-4146ba2e80da@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1769612208.git.jani.nikula@intel.com>
 <2fa5677f5ff3dbeaa75a7984d74fb9855a4ba3d2.1769612208.git.jani.nikula@intel.com>
 <8132cd5e-9592-418b-b065-4146ba2e80da@intel.com>
Date: Thu, 29 Jan 2026 10:46:46 +0200
Message-ID: <daa9d9232b56524810d484c30db3d2cc18d0fef3@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
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
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3F79DADB0E
X-Rspamd-Action: no action

On Thu, 29 Jan 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 1/28/2026 8:29 PM, Jani Nikula wrote:
>> Avoid even accidental use of display details by dropping the include of
>> intel_display_types.h. We'll still have to include intel_dpll_mgt.h for
>
>
> s/intel_dpll_mgt.h/intel_dpll_mgr.h

Thanks, fixed while applying. And pushed the lot to din.

BR,
Jani.

>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
>
>> the DPLL IDs, but at least the surface is smaller.
>>
>> Add duplicate defines of pipe_name() and port_name() to avoid depending
>> on display. They're trivial enough to be acceptable.
>>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gvt/handlers.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
>> index 383b04160559..6f860c320afc 100644
>> --- a/drivers/gpu/drm/i915/gvt/handlers.c
>> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
>> @@ -46,10 +46,10 @@
>>   #include "display/intel_crt_regs.h"
>>   #include "display/intel_cursor_regs.h"
>>   #include "display/intel_display_regs.h"
>> -#include "display/intel_display_types.h"
>>   #include "display/intel_dmc_regs.h"
>>   #include "display/intel_dp_aux_regs.h"
>>   #include "display/intel_dpio_phy.h"
>> +#include "display/intel_dpll_mgr.h"
>>   #include "display/intel_fbc.h"
>>   #include "display/intel_fdi_regs.h"
>>   #include "display/intel_pps_regs.h"
>> @@ -79,6 +79,9 @@
>>   #define PCH_PP_OFF_DELAYS _MMIO(0xc720c)
>>   #define PCH_PP_DIVISOR _MMIO(0xc7210)
>>   
>> +#define pipe_name(p) ((p) + 'A')
>> +#define port_name(p) ((p) + 'A')
>> +
>>   unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt)
>>   {
>>   	struct drm_i915_private *i915 = gvt->gt->i915;

-- 
Jani Nikula, Intel
