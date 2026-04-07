Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oN9qLu9T1Wkf4wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:58:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485B93B31CC
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5727710E4A2;
	Tue,  7 Apr 2026 18:58:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAyrEU0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE2810E499;
 Tue,  7 Apr 2026 18:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775588331; x=1807124331;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8/Y5ZxWoxYtQbSMHzSw37iQSX2HmqRYhk5P634e5nT0=;
 b=NAyrEU0FZsp0QEYO+ozKg9Hhl1s6AQsqedMnoPGbkO/1kH9XTmOAcbcl
 MDlopXfpP8hMTTIjMdNWRxaoQCKt2b2i2st5q2r+MKcLp4MZExgv0sblL
 r1hV6oRVGumR2z+OAdosj/Smo72FKgvryc6VmsDi/5kAKSETVhRBwZzzt
 zViE6xuyAZLrjDSxhyTusSNDP7U+oIPgdwkJ9sSOTLcAdxR8Wz4PgwXKM
 duXf6XuT0CMGfLiv+thAmdjQs8PAVLcquN54jCfbq0VjwvYHD68klSPYo
 zTeK/+R3y1DTCs/35uTRz7GzKgJ9/AeOSEXAu3wqPw6CTwsSSCx5L6wx7 w==;
X-CSE-ConnectionGUID: gaHP15vlT2mrm4zAcO1GHg==
X-CSE-MsgGUID: NSZxdvP6TDaqutB1kTml5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="79151424"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="79151424"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:58:51 -0700
X-CSE-ConnectionGUID: LHDpz7ykRlWphy20c+2wxA==
X-CSE-MsgGUID: zAfUVQQSQj6gnTViHGWRiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="232639072"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:58:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/3] drm/i915/pin: refactor to i915 core
In-Reply-To: <adTcMdEqCRyjTPzK@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1775556190.git.jani.nikula@intel.com>
 <adTcMdEqCRyjTPzK@intel.com>
Date: Tue, 07 Apr 2026 21:58:46 +0300
Message-ID: <c6374e5cd248c0ebf1f020a374ec32580880f8c7@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 485B93B31CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Apr 07, 2026 at 01:04:34PM +0300, Jani Nikula wrote:
>> Something I started last week before Ville said he'd look into the whole
>> pin stuff. If this is helpful, let's merge, but if it's in the way, it
>> was pretty quick and can be thrown away.
>
> Looks all right to me. I have the same file rename somewhere in my
> current branch, and I think eg. the runtime pm thing I still have
> mixed in with some other changes. So I can rebase easily on top of
> these and shrink my branch a little bit.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

> And speaking of my branch, I think it should be fairly close to
> being done. I still need to think what to do about
> restore.pending_fb_pin, and some commits may still need further
> splitting. And proper commit messages need to be written of
> course.

\o/

>
> That said, the whole thing is rather big and I've not smoke tested
> it even once, so I might still need to fix a boatload of bugs...
>
>>=20
>> BR,
>> Jani.
>>=20
>> Jani Nikula (3):
>>   drm/i915: move intel_fb_pin.c to i915_fb_pin.c
>>   drm/i915/pin: s/dev_priv/i915/ and drop struct drm_device usage
>>   drm/i915/pin: switch to i915 core runtime pm
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |  2 +-
>>  .../{display/intel_fb_pin.c =3D> i915_fb_pin.c} | 44 +++++++++----------
>>  2 files changed, 22 insertions(+), 24 deletions(-)
>>  rename drivers/gpu/drm/i915/{display/intel_fb_pin.c =3D> i915_fb_pin.c}=
 (90%)
>>=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
