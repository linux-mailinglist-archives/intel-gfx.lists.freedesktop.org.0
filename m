Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FK2D+AL82mSwwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:59:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A270F49EFD2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1DFC10F277;
	Thu, 30 Apr 2026 07:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvIL7dFk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4FE10F272;
 Thu, 30 Apr 2026 07:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777535964; x=1809071964;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EP8rFOG2mkffcOzfkCDhns2Q7uOgDqbJulOU//Y9pXc=;
 b=MvIL7dFkqvuR0ncU54L/RcLzDDf4Ego0VzMBvJ0+FSn4BBWnrZc349CV
 y5o4/G9eTHVsKaQCjeN1yaZ9mtD5rHtVArLytp2rJEbXCnNIU8zgOguiI
 yNOKrjS9ompQoXYUKRKeNH+uJXzgwR8k4LSPrQaPxK4v0b+V4tq7Iq8q/
 c3J5WxOllUTmdnfQ7u0yERu5PDp1vUbR8l2BrfYWq7/hP0VNFhMiUtK3U
 iEp1ADKPrh0ZsXcXvla6upqjegejVsu5FZHJiGBqduEvB8QxrrIqGIkqB
 TqVKldtdgKzvZDBkLayFLKKBI96l9dg4/5A6H5UyQ18fAB3I+Wv6E52p7 g==;
X-CSE-ConnectionGUID: WSuxBgPQRym0MPYbmlFbrA==
X-CSE-MsgGUID: c9BmK2j1TXaq3JG9dYtW+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78401163"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="78401163"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:59:15 -0700
X-CSE-ConnectionGUID: aFc9KPdwTweD/igalxOIfw==
X-CSE-MsgGUID: tsO8ZVtESBiM0BANd0YoHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="264881115"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:59:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/irq: add intel_display_irq_handler() to
 irq funcs
In-Reply-To: <afHx7st1NYZulnQM@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1777458161.git.jani.nikula@intel.com>
 <4c2be8d52d11977f67d3d52ebf6414d4c0a341ef.1777458161.git.jani.nikula@intel.com>
 <afHx7st1NYZulnQM@intel.com>
Date: Thu, 30 Apr 2026 10:59:11 +0300
Message-ID: <0edc69cd1ad8c7b510622ffb8b51f436992395dc@intel.com>
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
X-Rspamd-Queue-Id: A270F49EFD2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Wed, 29 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Apr 29, 2026 at 01:24:55PM +0300, Jani Nikula wrote:
>> @@ -2088,6 +2123,28 @@ static void vlv_display_irq_ack(struct intel_disp=
lay *display,
>>  	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
>>  }
>>=20=20
>> +static bool vlv_display_irq_handler(struct intel_display *display,
>> +				    const struct intel_display_irq_state *state)
>> +{
>> +	u32 lpe_mask =3D I915_LPE_PIPE_A_INTERRUPT | I915_LPE_PIPE_B_INTERRUPT;
>> +
>> +	if (display->platform.cherryview)
>> +		lpe_mask |=3D I915_LPE_PIPE_C_INTERRUPT;
>
> I would prefer a function rather than the extra variable. The other
> option is to just use the CHV mask always. There is nothing on the
> extra bit on VLV so we never unmask it.

Hmm. reset and postinstall also have slight variations for VLV vs. CHV,
but only very slight. I think they're overall close enough that
splitting out a funcs struct and separate funcs for CHV is more
distracting and duplication than helpful.

Or would something like this be satisfactory? Just a couple of small
wrapper functions around intel_lpe_audio_irq_handler() here that the
compiler would just inline:

	if (display->platform.cherryview)
		chv_lpe_audio_irq_handler(display, state->iir);=09=09
	else
		vlv_lpe_audio_irq_handler(display, state->iir);=09=09

Of course this would need to move to the ack part per your other review
comment.


>> @@ -51,14 +51,12 @@ void bdw_disable_vblank(struct drm_crtc *crtc);
>>=20=20
>>  void ilk_display_irq_master_disable(struct intel_display *display, u32 =
*de_ier, u32 *sde_ier);
>>  void ilk_display_irq_master_enable(struct intel_display *display, u32 d=
e_ier, u32 sde_ier);
>> -bool ilk_display_irq_handler(struct intel_display *display);
>> -void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
>> -void gen11_display_irq_handler(struct intel_display *display);
>>=20=20
>>  u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 mast=
er_ctl);
>>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32=
 iir);
>>=20=20
>>  struct intel_display_irq_state {
>> +	u32 master_ctl;
>
> Ideally I'd like a separate structs for different platforms,
> but until I resurrect my old ack vs. handle split for all
> platforms I guess we don't need anything else here for
> ilk+. So good enough for now I suppose.

You mean per-platform substructs/unions within struct
intel_display_irq_state? I can do that.

BR,
Jani.



--=20
Jani Nikula, Intel
