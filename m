Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGfJFhTR2GngiQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 12:29:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC83B3D5AEB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 12:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A62310E92B;
	Fri, 10 Apr 2026 10:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvamRQUM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5482E10E92B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 10:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775816977; x=1807352977;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=BVt079t1cXCDFe7vS4WuBH6TVo+Ry0YNi23SkItCo0o=;
 b=BvamRQUMcflYsnPrc0avmTYcyuVQwIkg2fXYkpdlHoJbq1vDpfRh8kWs
 7rtDkhU42tUEDHbMAlEiysrc9mY/VSexQAyVrpD/5Toxtf9OZr4oDE4fi
 R8NJKKcrimIKOuLXp4S/uNaTe4k3C0Wr5da1Fk84YJIkOy+Kc9/ppidrS
 OEIe0diL/FY+GYogGWrSkLdRHi5dPV6PdzNEkwOfjAYQHuTj6GmlNcS1E
 J+4E0XQxXG7mqgLS1hVF2lhNAP9TY1EaPCc5JJNifoTZU+ULZ03wDoTtd
 PZ1lefZYjIPESPk3BOelIMmDA0n8MFXIs94znfgtzb4xurm+dDSHvaA9i A==;
X-CSE-ConnectionGUID: w8f5dy1HTXmv+bsXJybQjg==
X-CSE-MsgGUID: jWhtUZYVQe+tmSrSkFfsfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="99468302"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="99468302"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 03:29:37 -0700
X-CSE-ConnectionGUID: TAiAYcSJQSy4uZsma2OORA==
X-CSE-MsgGUID: tqWwefWdQX+MEr8hAmS4wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224308592"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 03:29:34 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260408224905.5918-1-sosohero200@gmail.com>
References: <20260408224905.5918-1-sosohero200@gmail.com>
Subject: Re: [PATCH v4] drm/i915/gem: Fix relocation race and simplify VMA
 lookup
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: ville.syrjala@linux.intel.com, torvalds@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Yassine Mounir <sosohero200@gmail.com>
To: Yassine Mounir <sosohero200@gmail.com>
Date: Fri, 10 Apr 2026 13:29:31 +0300
Message-ID: <177581697158.42937.11297920384536730080@jlahtine-mobl>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:torvalds@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:sosohero200@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.984];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DC83B3D5AEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Yassine Mounir (2026-04-09 01:49:05)
> Pin the object lifetime in eb_relocate_vma() using i915_gem_object_get()
> and i915_gem_object_put() to prevent a Use-After-Free (UAF) if the
> handle is closed concurrently during relocation.

This has simply not been a bug that could have happened since drm-tip
2021. The vma refcount is taken in the eb_lookup_vma and it is very
thoroughly explained in [1] when the refcount could be missed
historically.

Either this is a pure AI hallucination or you've been running
some older downstream kernel with drm from 2020-2021 without the
proto-ctx changes.

Assessing that is impossible for now as you failed to supply any
relevant dmesg against drm-tip on real hardware or any other proof
about a claimed crash. Log of serial QEMU session where the relevant
driver is not even loaded is not helping.

If you want to continue the discussion here, provide a non AI
generated KASAN splat against drm-tip kernel which you promised multiple
messages ago.

To address a bug in downstream kernel, you should either update your
distro and/or ask the downstream kernel provider to supply a more
up-to-date kernel.

Regards, Joonas

[1] https://lore.kernel.org/intel-gfx/20260409053111.8914-1-joonas.lahtinen=
@linux.intel.com/
