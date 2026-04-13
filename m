Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIiUO5pz3Gn1RAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:39:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F12D3E7509
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89E810E300;
	Mon, 13 Apr 2026 04:39:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/vQ9s30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A8510E300
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 04:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776055190; x=1807591190;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=4mfv+YJHm8QJAqClzxhpolQW6MniSIVtDS7Vhb/vXVY=;
 b=i/vQ9s30j8N/3BqSK3DbdYn6idLaU0cO+MrjIH5hUfv9f70IeohpSB2r
 SBsDSG+aejxFfefRelJUyJWIehA7uH1beb6wEVFIKBji7b8TsUGhfS2QU
 G3HAhgxZgUBArEykysnPwn4wiB9jzuVbYtLPyX/508QHyc+B+XF3KqwZ0
 Y3DstI3YcJRXKz8v0zUkEKSA72AbUrH70BsczIYlG9PBV8QQf+IN29ZF5
 uGSpfaYYdxuIxH8Nd0FiPc+92FV0ccuG1gwoERCNYr4GS6CqqRE99v911
 gJ7z5Zk8ycfyMiqenxl8cfnkwg1DthYkF0j/I39nhMHFkVAlQ4zk8jHUw g==;
X-CSE-ConnectionGUID: waot9vnPS8ylk6NzQUQPqA==
X-CSE-MsgGUID: BugKHAG7RvaZA3RT0ho1iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77097567"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="77097567"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:39:49 -0700
X-CSE-ConnectionGUID: a64snc6EQCWnStRTjQxHQQ==
X-CSE-MsgGUID: U+5/jgrzTRmxpJsGHsRBvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229586454"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.245])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:39:46 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHk-=whfUM8y3PoFfT21+guKWK-mJmAE=8uLzOT+7HGv5NtqSw@mail.gmail.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
 <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
 <177564692857.84154.3119637094332266143@jlahtine-mobl>
 <CAHk-=wgbhJ6TzSwswdM5hKAS_RKF1SLXp2u6JAS35P3i2mW2OQ@mail.gmail.com>
 <177566544117.120471.8020434521083493183@jlahtine-mobl>
 <CAHk-=whfUM8y3PoFfT21+guKWK-mJmAE=8uLzOT+7HGv5NtqSw@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Dave Airlie <airlied@gmail.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, security@kernel.org,
 Simona Vetter <simona.vetter@ffwll.ch>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Mon, 13 Apr 2026 07:39:43 +0300
Message-ID: <177605518306.10866.17910229610103068841@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,m:simona.vetter@ffwll.ch,m:torvalds@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org,ffwll.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6F12D3E7509
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Linus Torvalds (2026-04-09 18:45:23)
> On Wed, 8 Apr 2026 at 09:24, Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com> wrote:
> >
> > Yes, there was clearly a bug introduced at the time of adding the
> > vma->vm =3D=3D vm check where zeroing vma was missed if only that part =
of
> > check failed. However the vma->vm =3D=3D vm part can't have failed since
> > d4433c7600f7.
>=20
> Yes, I'm perfectly fine with the change to just remove that chgeck
> entirely (and then obviously the "set vma to NULL' addition goes
> away).

Do you prefer for me to include a revert for the vma =3D NULL change in
the -next PR?

Including it in the simplification patch would have caused conflits
galore because the original change didn't come from our development
tree and didn't want to backmerge -rc7 there.

Regards, Joonas
