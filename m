Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAtNCJcJ82l0wwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:49:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7720F49EDE6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:49:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0754510E407;
	Thu, 30 Apr 2026 07:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBC7l73h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7EF10E0EF;
 Thu, 30 Apr 2026 07:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777535380; x=1809071380;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qTte08grx60SdaNzyyv7+OYuQfHRqcdU1k5Ct/clW0w=;
 b=SBC7l73hdf2SuqADi0U6pynOE/MswJ4LZldakjmyA1oDUYyl1tfIChIA
 1TnSCxs+lrfh4iM5vsUP3KDDNJRKyZE6uk3w5zvuIZSzZmWUJ1LQI6h97
 QmcSIOB5OBNCDVr3f2ylAvEzORGm8B052sukQyGctANIL3BUsE4FQywnR
 yvUxSBGBXiTPlgCr7o61p2CAWcDv94yRQ6S7Y4lFbCH1DXIR1by+MQbs1
 z4lrCOO6ve0fMVhkWghAUupuSAQtngQNW5WrgL12y4XKOXVfGua9n0y+s
 jMbqid8S+LSCZ3YusK5hK/HSLq/sACAbvmP5KPQwRTVgMaKr8VZU9aUD8 g==;
X-CSE-ConnectionGUID: h3Ef1Ib4SmuzPABmrUygig==
X-CSE-MsgGUID: xfPt4kbARvqjqs86L2Ry5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89853923"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="89853923"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:49:40 -0700
X-CSE-ConnectionGUID: 4ENdrdqsTXGNYr1Z90WKng==
X-CSE-MsgGUID: BX49trsKQmCZy0kQ2I7dHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="234780735"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:49:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/15] drm/i915/irq: move VLV/CHV LPE irq handler call
 after irq acks
In-Reply-To: <afHnqlNsDmPZtf6d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1777458161.git.jani.nikula@intel.com>
 <8932c31b9fec5c50f64dbb5d9f2e682b1e6d3d5c.1777458161.git.jani.nikula@intel.com>
 <afHnqlNsDmPZtf6d@intel.com>
Date: Thu, 30 Apr 2026 10:49:35 +0300
Message-ID: <96908a73031b91dc40d65dc11bda0c3a05dc0ee0@intel.com>
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
X-Rspamd-Queue-Id: 7720F49EDE6
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Wed, 29 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Apr 29, 2026 at 01:24:50PM +0300, Jani Nikula wrote:
>> The location of the intel_lpe_audio_irq_handler() call seems too
>> early. Group the handler calls together slightly later.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_irq.c | 18 +++++++++---------
>>  1 file changed, 9 insertions(+), 9 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
>> index ef9eadf38a53..1c87f56d668d 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -282,10 +282,6 @@ static irqreturn_t valleyview_irq_handler(int irq, =
void *arg)
>>  		 * signalled in IIR */
>>  		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>>=20=20
>> -		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>> -			   I915_LPE_PIPE_B_INTERRUPT))
>> -			intel_lpe_audio_irq_handler(display);
>
> This thing acks the irq too, so I believe it needs to stay here.

That was lost on me with the rabbit hole the lpe irq handler is.

I think I can put this in the intel_display_irq_ack() part, although the
name becomes misleading as it also handles some parts. Oh well.

BR,
Jani.


>
>> -
>>  		/*
>>  		 * VLV_IIR is single buffered, and reflects the level
>>  		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
>> @@ -301,6 +297,10 @@ static irqreturn_t valleyview_irq_handler(int irq, =
void *arg)
>>  		if (pm_iir)
>>  			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
>>=20=20
>> +		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>> +			   I915_LPE_PIPE_B_INTERRUPT))
>> +			intel_lpe_audio_irq_handler(display);
>> +
>>  		if (hotplug_status)
>>  			i9xx_hpd_irq_handler(display, hotplug_status);
>>=20=20
>> @@ -372,11 +372,6 @@ static irqreturn_t cherryview_irq_handler(int irq, =
void *arg)
>>  		 * signalled in IIR */
>>  		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>>=20=20
>> -		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>> -			   I915_LPE_PIPE_B_INTERRUPT |
>> -			   I915_LPE_PIPE_C_INTERRUPT))
>> -			intel_lpe_audio_irq_handler(display);
>> -
>>  		/*
>>  		 * VLV_IIR is single buffered, and reflects the level
>>  		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
>> @@ -387,6 +382,11 @@ static irqreturn_t cherryview_irq_handler(int irq, =
void *arg)
>>  		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
>>  		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IR=
Q_CONTROL);
>>=20=20
>> +		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>> +			   I915_LPE_PIPE_B_INTERRUPT |
>> +			   I915_LPE_PIPE_C_INTERRUPT))
>> +			intel_lpe_audio_irq_handler(display);
>> +
>>  		if (hotplug_status)
>>  			i9xx_hpd_irq_handler(display, hotplug_status);
>>=20=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
