Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UU24CBxkRmoeSgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:14:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06656F830F
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:14:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FYT5a2rV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FEDD10F38C;
	Thu,  2 Jul 2026 13:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DDF10F391
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2026 13:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782998041; x=1814534041;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=90lQ2MBVsMpKJYFY0PEU5v+tNk0FuQgzDlunNUjmdv4=;
 b=FYT5a2rV80IrAvZ9cT7wqIMJth2Gw0+SDa11V3DqDX7DGX5qpSMe+wJT
 vAuUMB4ZUqo0Kznt8mQGNsGItOmZiwIKueCoTrPUtrNjE5xgAfRjXJ9SQ
 CX9tJvkHV+j+27+5cbuDLC2SaD1ZLkcugrmDIpdqh0yxs+0DuDSBvgtXx
 2oRXP2kmZZkNdwwQoWKBVUz2oCurL91n710JBLYmao/fspGZFDLefpovo
 h6PhheIj/Mdcof9886JgLyCGY7gMw4J5Qb8qfplEAXRDG8LevcQvJn5Mp
 gTMHEqm3cfTMz6L14b/zuVBV4LwUj8g+8EQEMygukl3r3Zh207EzS5aGV g==;
X-CSE-ConnectionGUID: vGX9HdIOQiSBK9n+MVKPLg==
X-CSE-MsgGUID: yXHQFV4DRH6V9okqSAJ+vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83620446"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83620446"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:14:00 -0700
X-CSE-ConnectionGUID: IKcxJwdbRG+ELtjNbt2woQ==
X-CSE-MsgGUID: dIWeZcsMTN2Ms/jqg0O4gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="276068076"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:13:59 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <178289643537.135894.12489915975826580075@6beec6c84f66>
References: <20260701075555.52142-1-joonas.lahtinen@linux.intel.com>
 <178289643537.135894.12489915975826580075@6beec6c84f66>
Subject: Re: =?utf-8?b?4pyT?= i915.CI.BAT: success for drm/i915/gem: Fix NULL
 deref in I915_CONTEXT_PARAM_SSEU
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jul 2026 16:13:56 +0300
Message-ID: <178299803636.71123.14429119270656669282@jlahtine-mobl>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A06656F830F

Quoting Patchwork (2026-07-01 12:00:35)
> Patch Details
>=20
> Series:  drm/i915/gem: Fix NULL deref in I915_CONTEXT_PARAM_SSEU
> URL:     https://patchwork.freedesktop.org/series/169561/
> State:   success
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169561v1/inde=
x.html
>=20
> CI Bug Log - changes from CI_DRM_18737 -> Patchwork_169561v1
>=20
> Summary
>=20
> SUCCESS
>=20
> No regressions found.

Pushed, thanks for the reviews.

Regards, Joonas
