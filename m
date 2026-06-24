Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RuZfDGi+O2pvcAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 13:24:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4C36BDA0C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 13:24:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gZyexTA4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4B110EEDE;
	Wed, 24 Jun 2026 11:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9EFE10EEAD;
 Wed, 24 Jun 2026 11:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782300260; x=1813836260;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=TalfnsNbt1jhxort2tPb3QZJgJVQAgA6tD0VWQbAjVo=;
 b=gZyexTA4Id5I2kzitrUuSg0loeOogIl82PtwmMBRqt42LlSzdHz+2NXu
 IxRZH7vdCWs3mMPW3KpHT2VUdznr3+hWvEz1o4aiQKin7bwi5EIdEBa/m
 Bty3W95noQrX7GyW0gv0YX2u6A2YQ9/wMzYX5RBR6mSPJu4sg3c2DErEi
 dRdxkQ5GevoUwGu9rixh2uxkYfvQ+7FxsxHxcbVXNWbfB/Q7sjGm7hjQY
 H5g6uJBu0lMzyUSupQVCLWwHEE5V+9Rr8nhqzpPPIPt7F3/krzRnLkupK
 wL+0mVAxDqGdI9txbwyZku9m07CSD7hIE7vdoEkKQ1gteVwVDEeIleItG g==;
X-CSE-ConnectionGUID: tn/QNXzxQSGi2bcOqh9HzQ==
X-CSE-MsgGUID: Hr3mSCsWTESykZdCYp1Q+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93655997"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="93655997"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 04:24:19 -0700
X-CSE-ConnectionGUID: rITmof5rRlKZNTsZ0Gajdw==
X-CSE-MsgGUID: XlVL96aJTmm2MaJWxh3JWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="245472504"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.147])
 by fmviesa006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 04:24:17 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <178229737644.110764.15906928153437045418@6beec6c84f66>
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
 <178229737644.110764.15906928153437045418@6beec6c84f66>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915: Return NULL
 on error in active_instance
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org, i915-ci-infra@lists.freedesktop.org
Date: Wed, 24 Jun 2026 14:24:14 +0300
Message-ID: <178230025462.112641.8468504841466388199@jlahtine-mobl>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,jlahtine-mobl:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,linux.intel.com:from_mime,01.org:url,gitlab.freedesktop.org:url,patchwork.freedesktop.org:url];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C4C36BDA0C

(+ i915-ci-infra)

Below is most definitely unrelated error.

Quoting Patchwork (2026-06-24 13:36:16)
> Patch Details
>=20
> Series:  drm/i915: Return NULL on error in active_instance
> URL:     https://patchwork.freedesktop.org/series/169089/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169089v1/inde=
x.html
>=20
> CI Bug Log - changes from CI_DRM_18714 -> Patchwork_169089v1
>=20
> Summary
>=20
> FAILURE
>=20
> Serious unknown changes coming with Patchwork_169089v1 absolutely need to=
 be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_169089v1, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in C=
I.
>=20
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169089v1/
> index.html
>=20
> Participating hosts (42 -> 40)
>=20
> Missing (2): bat-dg2-13 fi-snb-2520m
>=20
> Possible new issues
>=20
> Here are the unknown changes that may have been introduced in
> Patchwork_169089v1:
>=20
> IGT changes
>=20
> Possible regressions
>=20
>   =E2=80=A2 igt@i915_selftest@live@late_gt_pm:
>       =E2=96=A1 fi-bsw-nick: PASS -> ABORT +1 other test abort
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_169089v1 that come from known iss=
ues:
>=20
> IGT changes
>=20
> Issues hit
>=20
>   =E2=80=A2 igt@kms_hdmi_inject@inject-audio:
>       =E2=96=A1 fi-tgl-1115g4: PASS -> FAIL (i915#16115)
>=20
> Build changes
>=20
>   =E2=80=A2 Linux: CI_DRM_18714 -> Patchwork_169089v1
>=20
> CI-20190529: 20190529
> CI_DRM_18714: b2817f6a1517bc9ecdef5229b84e8a44d983de82 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8982: 48befce9e6b0c0d371c4812bfff34a61319f68f1 @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_169089v1: b2817f6a1517bc9ecdef5229b84e8a44d983de82 @ git://
> anongit.freedesktop.org/gfx-ci/linux
>
