Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIIzMEr/6WkHrAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:15:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939D451295
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647BA10E66E;
	Thu, 23 Apr 2026 11:15:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Sj14zMql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A6B10E308;
 Thu, 23 Apr 2026 11:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RySvajcwr4sJSFV5Rgh1Sg6tBmWqL21R7qDcKk8OLZM=; b=Sj14zMqlNQN6TjE049NCKIw2lU
 rnTADIeYc3tP+4CK9j1baUHC+NxALw1H3Ww+rAN7i4aQw2IMtzNYPuZC9s7RcIUPv6Qx7ByDhjp3l
 6bGfbMnfb7R7OJ5z53G6FzkUP5nhtmBXCV9e8vWp0T05e49jrcB3I9PKtAU61xah17dOCzXAVwVlC
 yjtMy3CmVIgV5v5RwEeJvbdvrjmS4RF8wBnClAWJHRMUJbJsbf+SeX1xeBIi9B2jvBWZlalH1P05s
 TJrnahS+iW16VwSzDWmLJFavpIRniyue/N6nutHPWexmjDGfylIGH/x9e2bbhJEjXWmdYEVy1OKgD
 HNQu/79Q==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wFs1b-0014qa-M5; Thu, 23 Apr 2026 13:15:14 +0200
Message-ID: <fc60cf57-0662-4c40-8d70-190910d780ad@igalia.com>
Date: Thu, 23 Apr 2026 12:15:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: enable ccs modifiers on dg2
To: Jani Nikula <jani.nikula@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20260423101739.2772745-1-juhapekka.heikkila@gmail.com>
 <efeef92c230d81764e1fada17c2a81012548cead@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <efeef92c230d81764e1fada17c2a81012548cead@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,igalia.com:mid]
X-Rspamd-Queue-Id: 4939D451295
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 23/04/2026 11:28, Jani Nikula wrote:
> On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
>> disabled on both Xe and i915 drivers. Here allow dg2 to use
>> ccs again for framebuffers.
>>
>> Fixes: 6a99e91 ("drm/i915/display: Detect AuxCCS support via display parent interface")
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/i915_driver.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index d31819758f3d..7a73461d398a 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -54,9 +54,11 @@
>>   #include "display/intel_bw.h"
>>   #include "display/intel_cdclk.h"
>>   #include "display/intel_crtc.h"
>> +#include "display/intel_display_core.h"
>>   #include "display/intel_display_device.h"
>>   #include "display/intel_display_driver.h"
>>   #include "display/intel_display_power.h"
>> +#include "display/intel_display_types.h"
>>   #include "display/intel_dmc.h"
>>   #include "display/intel_dp.h"
>>   #include "display/intel_dpt.h"
>> @@ -749,8 +751,9 @@ static void fence_priority_display(struct dma_fence *fence)
>>   static bool has_auxccs(struct drm_device *drm)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(drm);
>> +	struct intel_display *display = i915->display;
>>   
>> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
>> +	return IS_DISPLAY_VER(display, 9, 12) ||
> 
> Sorry, can't do this in i915 core.

Was DG2 never Gen12? I totally forgot.. my bad.. Adding IS_DG2 to the 
checks below should work, no?

Regards,

Tvrtko

> 
> BR,
> Jani.
> 
>>   	       IS_ALDERLAKE_P(i915) ||
>>   	       IS_METEORLAKE(i915);
>>   }
> 

