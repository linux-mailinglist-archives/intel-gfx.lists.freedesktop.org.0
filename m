Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Eyl1KbTzImqrfgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 18:05:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226D4649954
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 18:05:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nVwNfu7R;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7398E10E50A;
	Fri,  5 Jun 2026 16:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB1B10E4EB;
 Fri,  5 Jun 2026 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780675505; x=1812211505;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=m3voobAaC5n9+Z2JCtCRfwosd/DZu7VLKsQL0zlwQjQ=;
 b=nVwNfu7RFNFTZGOB55YHHh0KUtMRx8Sxv6JyGt0/H+8XCxmkyvFW6FFn
 fKUeoHOnJ6KnSmIz2+G5YwO7LK9BOy6kr/HuqBDPzTEtIL+AR6aFzTxnJ
 GVUwhDaddv7f1iS1Ki9clDESiOesxyIkrMH7tYJkZePZRAQLRDIDKz6FK
 qsBkbdBZT5+HwlBj0fxrlH8Mr00RsdAH5IDkGCjvCZwWTtidQepAW1xXo
 Q5llssJ7+Z/nX9gq7nha8BlgC2ZnwPzxSwSU14cb7hH7LIUXLlBTPNsUZ
 rxAsxGXShSrHCDpuG9tTEpaX3DwDkArqQxglmNxfmADLU5VYMyKsc/xB2 g==;
X-CSE-ConnectionGUID: Lwe26f2nSS++/unJEmGGmg==
X-CSE-MsgGUID: sGg94z/vTVKvOLqbgAwOFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81257805"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="81257805"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 09:05:04 -0700
X-CSE-ConnectionGUID: OVTmc8/OSuWMY/6eYCLkKw==
X-CSE-MsgGUID: 0BxzIjqnQuihRqOwnk3KNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="244043635"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.214])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 09:05:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 24/24] drm/xe/display: unify runtime suspend/resume with
 i915 for non-d3cold
In-Reply-To: <ahnlL1v-W68om8cc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1780051905.git.jani.nikula@intel.com>
 <2b7015d5f0c2c6d7b91fd020cba25deda91c0baa.1780051905.git.jani.nikula@intel.com>
 <ahnlL1v-W68om8cc@intel.com>
Date: Fri, 05 Jun 2026 19:04:59 +0300
Message-ID: <4e06d22ae910b81852f246e063cd04971de3c0b9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 226D4649954

On Fri, 29 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, May 29, 2026 at 02:04:08PM +0300, Jani Nikula wrote:
>> With the special d3cold handling in xe runtime suspend/resume separated,
>> unify the non-d3cold paths with i915. There are multiple changes here at
>> once that probably wouldn't make much sense to split out further.
>>=20
>> Add the call to intel_display_driver_pm_runtime_suspend(), which in turn
>> starts calling intel_display_power_runtime_suspend(). Deep down, this
>> should take care of intel_dmc_wl_flush_release_work(), allowing us to
>> drop the extra call in xe_display_pm_runtime_suspend_late().
>>=20
>> Add the call to intel_display_driver_pm_runtime_suspend_late(), which
>> starts calling intel_opregion_notify_adapter(). The
>> intel_hpd_poll_enable() call is also done here, postponed from the
>> previous location in xe_display_pm_runtime_suspend().
>>=20
>> Add the call to intel_display_driver_pm_runtime_resume_early(), which
>> contains the intel_display_power_runtime_resume() and
>> intel_opregion_notify_adapter() counterparts found in
>> intel_display_power_runtime_suspend() and
>> intel_display_power_runtime_suspend_late(). (They are not symmetric.)
>>=20
>> Finally, intel_display_driver_pm_runtime_resume() replaces the direct
>> calls to intel_hpd_init(), intel_hpd_poll_disable(), and
>> skl_watermark_ipc_update().
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/xe/display/xe_display.c | 14 ++++----------
>>  1 file changed, 4 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/x=
e/display/xe_display.c
>> index 0fadc62e1cdd..cd7264d7dfe2 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -363,7 +363,7 @@ void xe_display_pm_runtime_suspend(struct xe_device =
*xe)
>>  		return;
>>  	}
>>=20=20
>> -	intel_hpd_poll_enable(display);
>> +	intel_display_driver_pm_runtime_suspend(display);
>>  }
>>=20=20
>>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>> @@ -379,12 +379,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_d=
evice *xe)
>>  		return;
>>  	}
>>=20=20
>> -	/*
>> -	 * If xe_display_pm_suspend_late() is not called, it is likely
>> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
>> -	 * need to flush the release work in that case.
>> -	 */
>
> The entire comment seems wonky. I don't think we have any platforms
> with wakelock+!DC9. Ah, it was added exactly because the D3cold path
> is broken and doesn't go into DC9. Would have been better to fix the
> actual problem instead. I guess you should move the comment to the
> D3cold path in the previous patch to keep it where it actually makes
> some sense.

Huh, but the comment says, "If xe_display_pm_suspend_late() is not
called", and the d3cold path above calls that. It's the non-d3cold path
that does not call the function.

Yeah, I don't know what to do with this.

Commit 731c74e988ff ("drm/xe/display: Flush DMC wakelock release work on
runtime suspend") says, "We currently are not calling display runtime
suspend functions when D3cold is not allowed." But that's not the whole
truth, we're not calling the runtime suspend/resume functions *at all*
on any xe path. (Which is what the patch at hand is trying to fix for
non-d3cold.)

Why is the fix in the above commit just adding the single DMC wakelock
call, instead of doing the proper runtime suspend/resume for non-d3cold?

I don't get it.

Cc: Gustavo, Rodrigo


BR,
Jani.


>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> -	intel_dmc_wl_flush_release_work(display);
>> +	intel_display_driver_pm_runtime_suspend_late(display);
>>  }
>>=20=20
>>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>> @@ -399,9 +394,8 @@ void xe_display_pm_runtime_resume(struct xe_device *=
xe)
>>  		return;
>>  	}
>>=20=20
>> -	intel_hpd_init(display);
>> -	intel_hpd_poll_disable(display);
>> -	skl_watermark_ipc_update(display);
>> +	intel_display_driver_pm_runtime_resume_early(display);
>> +	intel_display_driver_pm_runtime_resume(display);
>>  }
>>=20=20
>>=20=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
