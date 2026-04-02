Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCtmNGU6zmmAmAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 11:44:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9853871F0
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 11:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E32C10F10E;
	Thu,  2 Apr 2026 09:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNrpbuGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE3B10F10E;
 Thu,  2 Apr 2026 09:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775123042; x=1806659042;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=x7L4OC7DfS4VAVSHUg1UjuQFYNOjPu6RpUiqJc4z1+I=;
 b=PNrpbuGTr8eoT9HWbtvuf48w5IrPy+DNHUIHi/q1B+7JJXtgaqnPn1nv
 Xo10Q4s7cIs6f9irmFPwRKNOKx7Zsg6s/8nmG1y/Zzgj99X/m/xGz9s/Z
 4Kvi7DOGIp9VBmqrJvtytsdr5aCugiz6KEo1Iz5HWAMN8ChKYpC7NDeq2
 fLMVvqCuDiULAfyGoEApfMqBDrgK28l6J6OV79GPY+Vxqw7fr7NMlV/XG
 Ocm9tyZdm5pobMFSuoakan4Zjp79aetWSdbGkN13LwcMLSF6mg+foVMAF
 3cQ90ZfVubEjCJUPTkoHrY4OG2IVUeWT9GBEsyjP+o5mZGytS6XrL3I+V g==;
X-CSE-ConnectionGUID: SLj/8L6iSBWIz+ZVbZZGKA==
X-CSE-MsgGUID: G8gpHwZkTWGtBoeO1pft5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76066066"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="76066066"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 02:44:02 -0700
X-CSE-ConnectionGUID: wv+KBgejQKu8m8Jcysm6sQ==
X-CSE-MsgGUID: kMcddwutR5arKg/bKi7vGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="231342212"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 02:44:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI] drm/i915/display: change pipe allocation order for
 discrete platforms
In-Reply-To: <acqYWkrs5b3MOrnO@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260316121837.1264876-1-jani.nikula@intel.com>
 <2db8f3e8adde89b85da08477ed3f4bd6b7392b5c@intel.com>
 <acqYWkrs5b3MOrnO@intel.com>
Date: Thu, 02 Apr 2026 12:43:57 +0300
Message-ID: <c14a06980bbea7ab14b070b4840a92dc593a0fa7@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2B9853871F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 30 Mar 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Mar 30, 2026 at 02:37:47PM +0300, Jani Nikula wrote:
>> On Mon, 16 Mar 2026, Jani Nikula <jani.nikula@intel.com> wrote:
>> > When big joiner is enabled, it reserves the adjacent pipe as the
>> > secondary pipe. This happens without the user space knowing, and
>> > subsequent attempts at using the CRTC with that pipe will fail. If the
>> > user space does not have a coping mechanism, i.e. trying another CRTC,
>> > this leads to a black screen.
>> >
>> > Try to reduce the impact of the problem on discrete platforms by mappi=
ng
>> > the CRTCs to pipes in order A, C, B, and D. If the user space reserves
>> > CRTCs in order, this should trick it to using pipes that are more like=
ly
>> > to be available for and after joining.
>> >
>> > Limit this to discrete platforms, which have four pipes, and no eDP, a
>> > combination that should benefit the most with least drawbacks.
>>=20
>> Ville, I think it's time to review and, pretty soon, merge this.
>>=20
>> Our IGT changes to deconflate CRTCs and pipes have been merged, and
>> there's the removal of invalid igt_crtc_t at [1] left. The trybot CI
>> results on i915 for swapping pipes B and C on all platforms, not just
>> discrete like here, didn't break anything either anymore [2].
>>=20
>> I'm contemplating slapping Cc: stable on this too.
>>=20
>> There's the FIXME on the CRTC index warning.
>
> IIRC we already concluded that the WARN is unnecessary. I'd have to
> look through the previous mails to see what I actually said there.
>
>> With the A+C and B+D
>> pairing there's no issue, the CRTC indexes remain in that order. But can
>> we ever really end up with B+C pairing?
>
> It might be rare if userspace picks crtcs in order. But IIRC we had
> bugs where it was clear userspace was just picking random crtcs willy
> nilly. IIRC it was sway doing it, and I think I even proposed a
> uapi documentation update to suggest using crtcs in order. Can't=20
> remember that happened to that one.
>
> But I think we still want the "walk the crtcs in pipe order" change,
> mainly to keep the more optimal commit sequence. Also I'm not quite
> 100% convinced we don't have some subtle assumption somewhere about
> the order.

You mean convert all for_each_intel_crtc*() iterators to pipe order?

BR,
Jani.

>
> BTW I just realized that DG2 may also get a slight extra benefit from
> the reordering because A+C has twice the dbuf space compared to A+B.

--=20
Jani Nikula, Intel
