Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OK6WAOLhFWpYdwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 20:09:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 639375DB34D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 20:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0EA10E1DB;
	Tue, 26 May 2026 18:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NGBsag/4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E132610E1D8;
 Tue, 26 May 2026 18:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779818974; x=1811354974;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ktg6wNQ9u66U/KG+FoAVb036fBTIaUcXkgKHBG5IoS8=;
 b=NGBsag/4cWfJI/Or891g0F8xNIFdaw1IBhMM1WhRyzNz4hLVNjBmQiPX
 NXbzQzOUkeXoUVNzlL44yyzuf5EBzZ+qBPNVLBh886yIhniumGsphHflE
 WMXk8CZY21czmbXpuf45keZGgqklI09rSqoAwBmFVaZYjQudlGfFXtdA4
 rXm9aZt0RAHIET0ieBcUmMa7O0V8p1xRV9go3Am0vrrdP3lRD1w1nLGzC
 xhPuiblRC5q/yPEBNS20zAPaX1yUzjwBkVttEj75UBVMcjlMsUfqZVSvT
 gxlrOgbVm0IW5vUDtQ9bd67NE5NzDEPZhWDGYrfGommt4i52RPdxz50g4 A==;
X-CSE-ConnectionGUID: MHninxhLRkuLeRdh/AVWMg==
X-CSE-MsgGUID: moxadv95QZSDLYFGbHTkTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="79788632"
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="79788632"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 11:09:32 -0700
X-CSE-ConnectionGUID: QE9MO54UQBaPKV7Ib4gZvg==
X-CSE-MsgGUID: Y0qCZZGQTkKoAolgtt0pUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="239386173"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 11:09:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/{i915,xe}: move xe_display_flush_cleanup_work()
 to i915 display
In-Reply-To: <ahXaTZD-L-koRduP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <7aecde385b66dbf7d0e61759528c6cd643581a3d.1778659089.git.jani.nikula@intel.com>
 <20260525110553.651208-1-jani.nikula@intel.com>
 <ahXaTZD-L-koRduP@intel.com>
Date: Tue, 26 May 2026 21:09:28 +0300
Message-ID: <75b8149df41c3d4f0665eec68d42829e44279230@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 639375DB34D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 26 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 25, 2026 at 02:05:53PM +0300, Jani Nikula wrote:
>> xe_display_flush_cleanup_work() is a bit of an oddball function in xe
>> display code. There shouldn't be anything this specific or xe
>> specific. While I'm not sure what the correct refactor for the function
>> should be, move it to shared display code for starters, next to the
>> eerily similar but slightly different intel_has_pending_fb_unpin() that
>> is only called from i915 core.
>>=20
>> The main goal here is to unblock some refactors on
>> for_each_intel_crtc().
>>=20
>> v2: Add FIXME comment (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>>  drivers/gpu/drm/xe/display/xe_display.c      | 27 +++-----------------
>>  3 files changed, 26 insertions(+), 24 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 6c8935f69db1..a6cee0f81358 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -737,6 +737,28 @@ bool intel_has_pending_fb_unpin(struct intel_displa=
y *display)
>>  	return false;
>>  }
>>=20=20
>> +/* FIXME: All callers need to be audited and unified between i915 and x=
e */
>
> That makes me think we want to keep this. I was more thinking of
> something like
> /* FIXME remove this and just flush the cleanup wq where appropriate */

Fair enough. Can I push with that?

>
>> +void intel_display_flush_cleanup_work(struct intel_display *display)
>> +{
>> +	struct intel_crtc *crtc;
>> +
>> +	for_each_intel_crtc(display->drm, crtc) {
>> +		struct drm_crtc_commit *commit;
>> +
>> +		spin_lock(&crtc->base.commit_lock);
>> +		commit =3D list_first_entry_or_null(&crtc->base.commit_list,
>> +						  struct drm_crtc_commit, commit_entry);
>> +		if (commit)
>> +			drm_crtc_commit_get(commit);
>> +		spin_unlock(&crtc->base.commit_lock);
>> +
>> +		if (commit) {
>> +			wait_for_completion(&commit->cleanup_done);
>> +			drm_crtc_commit_put(commit);
>> +		}
>> +	}
>> +}
>> +
>>  /*
>>   * Finds the encoder associated with the given CRTC. This can only be
>>   * used when we know that the CRTC isn't feeding multiple encoders!
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/=
drm/i915/display/intel_display.h
>> index 45a90d2fe6ec..72f33113a5a3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -402,6 +402,7 @@ void intel_disable_transcoder(const struct intel_crt=
c_state *old_crtc_state);
>>  void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
>>  void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
>>  bool intel_has_pending_fb_unpin(struct intel_display *display);
>> +void intel_display_flush_cleanup_work(struct intel_display *display);
>>  void intel_encoder_destroy(struct drm_encoder *encoder);
>>  struct drm_display_mode *
>>  intel_encoder_current_mode(struct intel_encoder *encoder);
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/x=
e/display/xe_display.c
>> index 8d08da60336d..a5066de3d789 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -244,27 +244,6 @@ static bool suspend_to_idle(void)
>>  	return false;
>>  }
>>=20=20
>> -static void xe_display_flush_cleanup_work(struct xe_device *xe)
>> -{
>> -	struct intel_crtc *crtc;
>> -
>> -	for_each_intel_crtc(&xe->drm, crtc) {
>> -		struct drm_crtc_commit *commit;
>> -
>> -		spin_lock(&crtc->base.commit_lock);
>> -		commit =3D list_first_entry_or_null(&crtc->base.commit_list,
>> -						  struct drm_crtc_commit, commit_entry);
>> -		if (commit)
>> -			drm_crtc_commit_get(commit);
>> -		spin_unlock(&crtc->base.commit_lock);
>> -
>> -		if (commit) {
>> -			wait_for_completion(&commit->cleanup_done);
>> -			drm_crtc_commit_put(commit);
>> -		}
>> -	}
>> -}
>> -
>>  static void xe_display_enable_d3cold(struct xe_device *xe)
>>  {
>>  	struct intel_display *display =3D xe->display;
>> @@ -278,7 +257,7 @@ static void xe_display_enable_d3cold(struct xe_devic=
e *xe)
>>  	 */
>>  	intel_power_domains_disable(display);
>>=20=20
>> -	xe_display_flush_cleanup_work(xe);
>> +	intel_display_flush_cleanup_work(display);
>>=20=20
>>  	intel_opregion_suspend(display, PCI_D3cold);
>>=20=20
>> @@ -333,7 +312,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>>  		intel_display_driver_suspend(display);
>>  	}
>>=20=20
>> -	xe_display_flush_cleanup_work(xe);
>> +	intel_display_flush_cleanup_work(display);
>>=20=20
>>  	intel_encoder_block_all_hpds(display);
>>=20=20
>> @@ -365,7 +344,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>>  		intel_display_driver_suspend(display);
>>  	}
>>=20=20
>> -	xe_display_flush_cleanup_work(xe);
>> +	intel_display_flush_cleanup_work(display);
>>  	intel_dp_mst_suspend(display);
>>  	intel_encoder_block_all_hpds(display);
>>  	intel_hpd_cancel_work(display);
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
