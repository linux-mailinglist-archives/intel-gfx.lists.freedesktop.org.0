Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFBBKOuZFWqNWgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 15:02:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6375D5FC9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 15:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385CD10E638;
	Tue, 26 May 2026 13:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=mariushoch.de header.i=@mariushoch.de header.b="F3QtkMbl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B285810E07D;
 Fri, 22 May 2026 13:33:59 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gMR7m1Tk5z9vW6;
 Fri, 22 May 2026 15:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mariushoch.de;
 s=MBO0001; t=1779456836;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4BUXRuiqN1T0XX4kbeEy0p/e7jk2H+WrGjIQ1HSIWaY=;
 b=F3QtkMblDw/liKW6kKobiYY+kRckH6o2j8Nb4fOQbK9DqdfdkUV9PSkcmO2PapEtToPT1l
 4IAPVyF1C0V2AQDP8DNO6u9iZRGspuTMxXhz8RJMKm8ZHjcrLeLfeZk2vhMdff493SHbCX
 tYsvAmSmCsnU+ByXIYJdwB6DRjpclAnS62j7aOAsCfcjAOJoA1yqmgg/WYhg0MeaRKoywp
 j6QuliOAAYSSM1K82WPVYreEULUHRnSwaAZ/IMlkYeTxs/8l06Xi8my/kp++hhX1GuCCpy
 wLsSrYh8lWoRwsbjJmBiARqbav6jrJ6Aw//+482VlC09iYKVevTPFuzBZUJUZQ==
Message-ID: <6c580606-19dc-4b46-9cba-175ec32a5fac@mariushoch.de>
Date: Fri, 22 May 2026 15:33:50 +0200
MIME-Version: 1.0
Subject: Re: [PATCH] drm/i915: Don't set min_cdclk in the initial crtc_state
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Joe Perches <joe@perches.com>,
 Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260521180722.328317-2-mail@mariushoch.de>
 <ag91h3UbwPQ7cmXg@intel.com>
Content-Language: en-US
From: Marius Hoch <mail@mariushoch.de>
In-Reply-To: <ag91h3UbwPQ7cmXg@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 26 May 2026 13:02:27 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	DATE_IN_PAST(1.00)[95];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[mariushoch.de:s=MBO0001];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[mariushoch.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,perches.com,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mail@mariushoch.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mariushoch.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 1A6375D5FC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thanks for the quick reply!

On 21/05/2026 23:13, Ville Syrjälä wrote:
> On Thu, May 21, 2026 at 08:07:12PM +0200, Marius Hoch wrote:
>> Setting the min_cdclk this early means that intel_cdclk_atomic_check
>> (called via intel_atomic_check) will not pick up the initial min_cdclk, as
>> there is no change between the old and new atomic states.
> If there is no change then there is no need to change the CDCLK.
As far as I see, the problem is that the minimal CDCLK is reflected in 
the initial crtc_state, but there is no direct connection to the actual 
(hardware) CDCLK, which can be lower at this point. I'll add some more 
details below.
> It's hard to say what you're really trying to work around here.
>
> Please a file a new bug at
> https://gitlab.freedesktop.org/drm/intel/issues/new and
> attach the full dmesg from boot with 'log_buf_len=4M drm.debug=0xe'
> passed to he kernel cmdline.
Makes sense, I've filed 
https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16209 for that.

As far as I see, the CDCLK is updated based on / for an atomic change in 
the following way: intel_atomic_check calls intel_cdclk_atomic_check to 
update the CDCLK iff needed. In order to find out if a CDCLK calc is 
needed, intel_cdclk_atomic_check in turn (via intel_cdclk_atomic_check 
and intel_crtcs_calc_min_cdclk) calls intel_cdclk_update_crtc_min_cdclk. 
In intel_cdclk_update_crtc_min_cdclk, the old and the new min_cdclk get 
compared, and if there's a change, the CDCLK will be recalculated.

The issue here is that we start out with the min_cdclk set (to 158400 in 
the GLK case) in the initial / old atomic state (which is not reflected 
in the actual / hardware state). Thus intel_cdclk_update_crtc_min_cdclk 
won't be able to detect a change here (as both the old and the new 
atomic state have the same min_cdclk), and thus won't indicate that the 
CDCLK needs to be recalculated (even though the actual CDCLK might be 
lower as min_cdclk, as can be seen on the dmesg attached in the ticket).

If you want to see this addressed in another way, I'm happy to provide 
another patch. Also I'm happy to provide more details, if needed.

>
>> This is
>> problematic, especially on Gemini Lake, where the picture gets unstable if
>> the CDCLK is too low (see vlv_dsi_min_cdclk).
See beb29980026f / 
https://lore.kernel.org/all/20190430125119.7478-1-stanislav.lisovskiy@intel.com/ 
and the tickets linked from there for context here. See also 
cf696856bc54, which fixed a regression related to this Gemini Lake quirk 
before.
>>
>> This was introduced in 7a8d9cfa6db0, which states that the min_cdclk must
>> be set before calling intel_compute_global_watermarks. However, as the
>> only place that calls intel_compute_global_watermarks is
>> intel_atomic_check, right after setting the min_cdclk on new_crtc_state,
>> there is no need to set the min_cdclk initially.
>>
>> This surfaced as a bug on my IdeaPad Duet 3 after ba91b9eecb47, leading
>> to the screen output being completely garbled initially (when asking for
>> the dm-crypt passphrase). It recovers after the passphrase prompt, as this
>> only affects the initial state.
I've bisected this problem to ba91b9eecb47 initially, and naively adding 
the intel_modeset_calc_cdclk back after intel_modeset_checks in 
intel_atomic_check also fixes this issue 
(https://github.com/mariushoch/linux/commit/5d083fe47a9c0c10afcdf5b5cff5683cbfb3fe22).

>>
>> Tested on an IdeaPad Duet 3 10IGL5-LTE (with UHD Graphics 605).
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 7a8d9cfa6db0 ("drm/i915: Compute per-crtc min_cdclk earlier")
>> Signed-off-by: Marius Hoch <mail@mariushoch.de>
>> ---
>>   drivers/gpu/drm/i915/display/intel_modeset_setup.c | 5 -----
>>   1 file changed, 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> index 4086f16a12bf..9278856375e9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -865,11 +865,6 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
>>   				    crtc_state->plane_min_cdclk[plane->id]);
>>   		}
>>   
>> -		crtc_state->min_cdclk = intel_crtc_min_cdclk(crtc_state);
>> -
>> -		drm_dbg_kms(display->drm, "[CRTC:%d:%s] min_cdclk %d kHz\n",
>> -			    crtc->base.base.id, crtc->base.name, crtc_state->min_cdclk);
>> -
>>   		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
>>   						 crtc_state->port_clock);
>>   	}
>> -- 
>> 2.54.0

