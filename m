Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFMfJcRue2mMEgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 15:29:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B910B0F36
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 15:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2B110E872;
	Thu, 29 Jan 2026 14:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqaOgpYp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9692210E877
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 14:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769696962; x=1801232962;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=bO+yjD6a2ZSMRvIgXiAEPSgOlFm0zWTN05XBiY53FfM=;
 b=PqaOgpYpAjzcX9fDA2+gDEIK6mWhdua8+6Jl7h2IccSV69bBo/64tDXN
 q9lcR5YEtOLE5lsj+BCqNZTRyNbEWwkLEax8uFRi8zCLto+ZW/+93dDLM
 /thM/T9Ag8gzAk5d4TFXl7FiWPKnTPEJvypo+4KnlQwp/ZZEZ2+RZHncu
 bEou31aji2CVyhxJ5HRFOu0phj6Fx76K0qWXoCF0upOGYFRs6GN6WtZxh
 SJ90Fvi2RKXyvP4j2IE2BQGDTXLjJYfuO9SumfR/K2BQHGYBL2U/fEBYx
 6wAzKSs6rZrmIYErO2I74XXTxSqMHx91q+BqTiNBfXdVUuLZiJ+YqXxN5 g==;
X-CSE-ConnectionGUID: QI9Gqd2uQnSeJdbU0cDAvA==
X-CSE-MsgGUID: JyAJLkxpQMyn2LDW9LRdgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="96400112"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="96400112"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 06:29:21 -0800
X-CSE-ConnectionGUID: HSGqkLl9RXOa9Szh15nX0w==
X-CSE-MsgGUID: xSWedFVzSIK9yoHCbgDJuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="207705598"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 06:29:18 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aXtinG2JIhLjNWK6@ashyti-mobl2.lan>
References: <20260120154824.1864085-1-krzysztof.karas@intel.com>
 <aXtFHm4Y94jf0YXd@ashyti-mobl2.lan>
 <52e0096c310d346b23fa65b56837b4e0ecc09d58@intel.com>
 <aXtinG2JIhLjNWK6@ashyti-mobl2.lan>
Subject: Re: [PATCH v6 0/2] Miscellaneous fixes in drm code
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, intel-gfx@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, maxime.ripard@kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Thu, 29 Jan 2026 16:29:15 +0200
Message-ID: <176969695526.66661.6414120924505935818@jlahtine-mobl>
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
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:maxime.ripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 6B910B0F36
X-Rspamd-Action: no action

Quoting Andi Shyti (2026-01-29 15:37:32)
> On Thu, Jan 29, 2026 at 03:10:44PM +0200, Jani Nikula wrote:
> > On Thu, 29 Jan 2026, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > Hi Krzysztof,
> > >
> > >> Krzysztof Karas (2):
> > >>   drm: Warn before division by 0 would occur
> > >>   drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
> > >>=20
> > >>  drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
> > >>  1 file changed, 5 insertions(+), 2 deletions(-)
> > >
> > > merged to drm-intel-gt-next.
> >=20
> > ...but neither commit belongs in drm-intel-gt-next, they belong in
> > drm-misc-next!
> >=20
> > Cc: drm-misc maintainers, how do you want to resolve this?
>=20
> Ah... sorry! I was taken by the habit!

Missed this mail but noticed the issue raised by Maarten in IRC so I
force-pushed drm-intel-gt-next without the 2 commits as they still were
the topmost commits.

Regards, Joonas

> Andi
