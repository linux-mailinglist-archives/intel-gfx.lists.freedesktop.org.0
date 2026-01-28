Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CmJBKVJemkp5AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 18:38:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67956A7048
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 18:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3EC10E74E;
	Wed, 28 Jan 2026 17:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJXubz1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F7910E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 17:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769621922; x=1801157922;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lkS5u0gqerDP+FydGlW3SdeNEaJGk3OC14e3BL422Yk=;
 b=BJXubz1LyCn6XCU4K/46jblgLZ8W9jfVI1X8PWP2d7W6UvsoQPv+yqTR
 TZnwTsWLAzOaNaGdIMQkioN5JF7N+/BZdDQnqR417LnBYy2VIfDHk4eaW
 r1veV+tDIxn3WZ8Up+O1f8INSDKf3d7bclp01vbFytuS/3r53Bmbn/9wF
 sDiI8JmFgcnItaY9LBjMGH8Ahc7qKK+0l3K3FI4DU31Nu7T/XDs9JXZE7
 M4sl6Dlk5Pel3Ezn73nFZeD6er57SWb7SeHAC0y/AGQMXl+KZqfICeLEg
 IKD3/5lhI54NW1RudMFqU8pXzKmEUZy7cYgHrAdeq2CrOmFdPBLb318Kt A==;
X-CSE-ConnectionGUID: njzSe/XYQoi21LF+9bdbcA==
X-CSE-MsgGUID: JW+zi1+YTni5i8kY4yVv0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74467120"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74467120"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:38:42 -0800
X-CSE-ConnectionGUID: 2BY+3NwpTe28nVVsWJk+Ag==
X-CSE-MsgGUID: 9T0Ok01pR3iC95gM7qeYcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212424241"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:38:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>
Subject: Re: [PATCH] drm/i915: Add vgpu.entry list initialization
In-Reply-To: <aXo_t0nqu-TMow4-@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
 <aXo_t0nqu-TMow4-@ashyti-mobl2.lan>
Date: Wed, 28 Jan 2026 19:38:35 +0200
Message-ID: <3f47d40ba15db7ace414d68934b84b9da8bd69c3@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,m:michal.grzelak@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 67956A7048
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Krzysztof,
>
> nice catch, but the fix looks a bit messy to me.
>
> ...
>
>> diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i91=
5_vgpu.c
>> index d29a06ea51a5..362282b20f7b 100644
>> --- a/drivers/gpu/drm/i915/i915_vgpu.c
>> +++ b/drivers/gpu/drm/i915/i915_vgpu.c
>> @@ -67,6 +67,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_pr=
iv)
>>  	u64 magic;
>>  	u16 version_major;
>>  	void __iomem *shared_area;
>> +	INIT_LIST_HEAD(&dev_priv->vgpu.entry);
>
> Despite what Sebastian is suggesting, I think the place is right
> (or almost right).
>
> But I wouldn't fix it this way. Initializing virtual GPUs is not
> mandatory, indeed it fails only during delete that is the only
> function that doesn't check whether the list is initialized.
>
> I would rather check whether the list is initialized before
> trying to delete it, with a nice comment saying that the list
> might not have been initialized and we want to avoid accessing an
> invalid list.

Nope, none of this.

The problem is intel_gvt_init() and intel_gvt_driver_remove() happening
at different abstraction levels in i915_driver.c, with the calls also
happening at different abstraction levels in the error path.

Basically when i915_driver_hw_probe() returns with an error, the caller
has no way of knowing whether intel_gvt_init() succeeded or not, and any
call to intel_gvt_driver_remove() is bound to be wrong.

The fix is not to make intel_gvt_driver_remove() "gracefully" handle
broken probe/cleanup calls, but to fix the probe/cleanup calls.

Micha=C5=82 is actually looking into this, Cc'd.


BR,
Jani.


>
> Andi
>
>>  	BUILD_BUG_ON(sizeof(struct vgt_if) !=3D VGT_PVINFO_SIZE);
>>=20=20
>> --=20
>> 2.43.0
>>=20
>>=20
>> --=20
>> Best Regards,
>> Krzysztof

--=20
Jani Nikula, Intel
