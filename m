Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AwnNHb7EPGqfrggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 08:03:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D97966C2DFF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 08:03:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JAoszi7l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D911910E178;
	Thu, 25 Jun 2026 06:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7413910E178
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 06:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782367419; x=1813903419;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=q/YwrEFIdj69fHdgVP44qW151yn/KW8ps9+eXO3UHFo=;
 b=JAoszi7luhOdjpO4+AqlXIQ7wyh3nJMMIfa69hbxEuad9HQGdXdkvdJE
 YBPwSD1DCx4ScT2PeUDntmLDgm+K1a7y2MSUtfaVYI+QrSPneR+RTBvj8
 HzFp1avDQDAAdUy6r00g4Vq9iVi8jq8vHVOoMtbB7whbfcV1d83jy16/j
 DvoeWITGCP73vIG9apkBXPFGs/MNSvn0RjbH+YseQ9g1xMpLDGVGh1SWc
 gsW9zGIOQCC8QDdWo6E6I91OycI8nUlPCMZtnWv8+HB/c4tUEMSGsT6JS
 PoCqKaSbtLIRTfAYAX0WFMEWHR6Yd1QmWiu0cLv1ZniUTLcMg6dIbPAFC g==;
X-CSE-ConnectionGUID: wNlR0c4vQPu5MxF0VMBo3A==
X-CSE-MsgGUID: Y1rT384rT2ShW7OqsJ2sgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83190192"
X-IronPort-AV: E=Sophos;i="6.24,223,1774335600"; d="scan'208";a="83190192"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 23:03:38 -0700
X-CSE-ConnectionGUID: vq5Cf/qQR4G4HhsQIQKN4g==
X-CSE-MsgGUID: vBKTnjf3Ti6bg1qjUqLxJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,223,1774335600"; d="scan'208";a="288475638"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.75])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 23:03:36 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ajvTjodx7LLj_BPO@zenone.zhora.eu>
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
 <178230031953.112641.4817434529385736057@jlahtine-mobl>
 <ajvTjodx7LLj_BPO@zenone.zhora.eu>
Subject: Re: [PATCH] drm/i915: Return NULL on error in active_instance
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, Martin Hodo <martin.hodo@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Simona Vetter <simona.vetter@ffwll.ch>, stable@vger.kernel.org
To: Andi Shyti <andi.shyti@kernel.org>
Date: Thu, 25 Jun 2026 09:03:32 +0300
Message-ID: <178236741262.19845.6184407491878204182@jlahtine-mobl>
User-Agent: alot/0.13.dev2+g40c57d620
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,jlahtine-mobl:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D97966C2DFF

Quoting Andi Shyti (2026-06-24 15:59:30)
> Hi Joonas,
>=20
> On Wed, Jun 24, 2026 at 02:25:19PM +0300, Joonas Lahtinen wrote:
> > Pushed to drm-intel-gt-next, thanks for the reviews.
>=20
> please, next time:
>=20
> - Give people more time to review the patch. Only two hours
>   passed between posting it and pushing it

And why exactly is that a problem? I got the review from the original
patch author and a yet another person on top while it's a very
uncontroversial and trivial patch. Two reviewers per patch is already
quite a high bar to clear if you look at git history.

> (during lunch time, BTW).

Sorry, I did not know there is a universally agreed 2 hour lunch window
in UTC timezone that I should follow. I've missed that memo.

> - There were BAT failures. They were unrelated, but so far we
>   have generally held back patches until BAT was green, even for
>   the most obvious changes.

Strong disagree here. That'd have caused the patch to miss -next-fixes
PR just due to random noise of CI.

If there was a reasonable doubt about the impact of the patch on the
failure, that'd of course be different, but here there was absolutely
none in this case.

As per patchwork automated mail reply:

> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_169089v1, please notify your bug team

That's exactly what was done here. That's a fair ask, but asking for
maintainers not to merge any code because of false positives is simply
not.

Regards, Joonas

>=20
> Thanks,
> Andi
