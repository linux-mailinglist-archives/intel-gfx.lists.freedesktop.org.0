Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIyqCcLT1Gm1xwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:52:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF683AC578
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE7F10E0B5;
	Tue,  7 Apr 2026 09:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lyamP5NL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6333410E0B5;
 Tue,  7 Apr 2026 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775555519; x=1807091519;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lOG7BPuQjzvEpVicTfUFClsioCY6tBwoZOWiP8wfb6Q=;
 b=lyamP5NLUiTuyVqY5KYeHsHhHXmyJY9Usb+fHP76x/Bf755iV/ujir0P
 pI+Qcr6YGCN+o2o82VMlBG7JXEU4y/FClulaPh7z0JfF/ceJDROXNhdlO
 P/5SI0MpG0RLxoP/n1aJ8vWv4EgrlmR1uK5qmgbKm9v9rWg3Ye07eMd5z
 4VT/ACoxqJjqy3x9BtYgF8x7lFo4N81ifujdb6J+Vh2/WxzKvSFz4Q/Kv
 dFn2Rd/PXVCwBu4yR/w04KEADDu9Y+xt9GGJia+Cx2k0MVXlpFTn/Z2JZ
 NqIrJcuKtLadLT0MohD27WozBrSdzRkJjKVPvMGIYPEvr1PfD3GgVMeNH Q==;
X-CSE-ConnectionGUID: SmNc0CD6TZeW5+duoZBBoA==
X-CSE-MsgGUID: +95fEOBkSIe1Sw6Cf/tcWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76411106"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76411106"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:51:59 -0700
X-CSE-ConnectionGUID: Mup3Spx0SteIDlHQ0hTOXQ==
X-CSE-MsgGUID: DZLl3KHhSa2OPM4OnRqbhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="232528217"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:51:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/8] drm/i915: move SKL clock gating init to display
In-Reply-To: <adTSrRSRQvJqOvmR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
 <20260331121608.1016333-2-luciano.coelho@intel.com>
 <DM3PPF208195D8D6D18797DF43D23B2AB3DE35AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <4c2ab7b05e665b3cca5a809917faf3b64d1ce7f5@intel.com>
 <adTSrRSRQvJqOvmR@intel.com>
Date: Tue, 07 Apr 2026 12:51:53 +0300
Message-ID: <8c13a079a352f7b7ef789e53825f88c2a6b379fc@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: ADF683AC578
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Apr 07, 2026 at 10:58:13AM +0300, Jani Nikula wrote:
>> On Tue, 07 Apr 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> >> +void intel_display_skl_init_clock_gating(struct intel_display *displ=
ay)
>> >> +{
>> >> +	/*
>> >> +	 * WaFbcTurnOffFbcWatermark:skl
>> >> +	 * Display WA #0562: skl
>> >> +	 */
>> >> +	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS); }
>> >
>> > Not sure about this being moved here but I feel like this belong in
>> > intel_display_wa.c see that it is a WA
>>=20
>> A lot of intel_clock_gating.c is about workarounds, and I don't really
>> care a whole lot about moving these to intel_display_wa.c at this
>> point. It's much more important to move the display related things from
>> i915 core to display.
>
> I still think it would have been much easier to move the gt stuff out
> from init_clock_gating to the proper place in the gt code. And then we
> could have just moved the remaining things into the display code as is.
> But people seem to prefer the hard way for some reason :)

Whatever gets us there. I'm just saying nitpicking between different
places within display/ isn't helping us.

BR,
Jani.


--=20
Jani Nikula, Intel
