Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1xdWA/3/KGqgOgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 08:11:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A3366619A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 08:11:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Sjk0oTor;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1458010E71A;
	Wed, 10 Jun 2026 06:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2423710E71A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 06:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781071866; x=1812607866;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=T4PLCV/Au02rSPIrD7i86UW7KEfAeOZVAklV1H4aAPU=;
 b=Sjk0oTorO38FLtCbSRuawDHcjEwzTiqrfQUVmHI4MCzGbJK0wOWddM2t
 GXts3T8qC1x9xOvLD1xP0kIrfsWef5kUVWF6sjUf6AWcsK9jX7lYcKLFC
 qOOX8AOQAN7BvNcD2Na2QsrWwvnQQlJe4sGuK4c3huVVmV0RSzCkEyfuX
 sDCTNSebos2qeaOAyqdlgt9NUsIG4uYbW1KBt4QCO4ig9UoRtCBqhTOYV
 E/e6UEg9d2yC/d6Dr7VceyAqRJnzjXJHJlujnNrsGhHm5rvr9pgZEi0sY
 1hoPdes+t01O3/N0ApnUAr1ILLXJ5JBd/VZ4MG9GONWHUp/jxCt1WdZnN w==;
X-CSE-ConnectionGUID: Fh44BgPAQDmxf/Bb3PSdhQ==
X-CSE-MsgGUID: tXffx0LWRoSn/J+iwxLZPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92962646"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92962646"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 23:11:05 -0700
X-CSE-ConnectionGUID: j1Eh5tCDRrGC8NbEcy/+hw==
X-CSE-MsgGUID: U0DO/QqVQIKsdbxl8t6LLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="241941084"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.208])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 23:11:02 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260609183002.1051500-1-jia.yao@intel.com>
References: <20260609183002.1051500-1-jia.yao@intel.com>
Subject: Re: [PATCH v4] drm/i915/dg2: Add per-context control for
 Wa_22013059131
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jia Yao <jia.yao@intel.com>, stable@vger.kernel.org,
 Shuicheng Lin <shuicheng.lin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maciej Plewka <maciej.plewka@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
To: Jia Yao <jia.yao@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jun 2026 09:10:59 +0300
Message-ID: <178107185934.29382.9213110661861924376@jlahtine-mobl>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:matthew.d.roper@intel.com,m:rodrigo.vivi@intel.com,m:maciej.plewka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,jlahtine-mobl:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86A3366619A

Quoting Jia Yao (2026-06-09 21:30:02)
> Wa_22013059131 sets FORCE_1_SUB_MESSAGE_PER_FRAGMENT in LSC_CHICKEN_BIT_0
> at engine init, but this is known to cause GPU hangs in certain workloads.
> Add I915_CONTEXT_PARAM_WA_22013059131 so userspace that handles the
> workaround itself (e.g. by limiting SLM size) can set it to 1 to let the
> kernel know bit 15 programming is not needed for that context.
>=20
> LSC_CHICKEN_BIT_0 is not context-saved by hardware, so the kernel restores
> the correct value on every context switch via the indirect context
> batchbuffer to avoid leaking state between contexts. The old unconditional
> application of Wa22013059131 in intel_workarounds.c is removed.
>=20
> v4:
> - Add a link of the userspace using this API
>=20
> v3:
> - Kernel-internal context will not change workaround settings
>=20
> Bspec: 54833
> Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine workarounds=
")

This is not a fixup to be backported to older kernels, this is a new
feature, so please drop this. It'll cause unnecessary noise.

> Link: https://github.com/intel/compute-runtime/pull/919
> Cc: stable@vger.kernel.org

Definitely not for stable for above reasons.

Regards, Joonas
