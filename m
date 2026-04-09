Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aE/XAnl+12m7OwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:24:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891173C922F
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E2110E780;
	Thu,  9 Apr 2026 10:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="klzChuTZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EEA10E77D;
 Thu,  9 Apr 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775730294; x=1807266294;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=A5ne7mfOtPom5trDXxrA2WkFZkJcl9vXjEhixiCVQFU=;
 b=klzChuTZivFyk0UnYF1SD6IHlwn2Sp6hf860/iQEtF1KZE693aKZ5MaD
 /Vj3uyJBkrU0BoGZM98P0oYpt5CLcIZsr0NBqiN4Pwg0yYTGkHCVPKvJO
 Rw+VPwKPQvSz+Dbl4iGTcxcl7kLbpVYO4R48TTZQNT4/d5c7MAACUQXVx
 abZ4p9g4oRHJjesIzwwNSxHRUQNiBEXvzHgwMv7fDg/bHvOsCYkcEGa+q
 BdgHG1w8rYvpVhCCAtQGnayo/Uq0q4XvcVukISOqHXjiElHLqdRk2hN8b
 GsUbcp52NiSa+QrT79bb7IldqsbkV3S1Nk1eAL5bk9HuFTzkQ4/smTVOB A==;
X-CSE-ConnectionGUID: jLlnX4VvTvuol+r9UshOMQ==
X-CSE-MsgGUID: PROF0j5VSJqZDVWJzK1H0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76449841"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76449841"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:24:53 -0700
X-CSE-ConnectionGUID: iSTR2pl8Quud9rGUwIiLUg==
X-CSE-MsgGUID: SIWOAyjKQka3Q8G6KmLLyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228661168"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.151])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:24:49 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <add6fPHRC7Bc8Uri@jlahtine-mobl>
References: <add6fPHRC7Bc8Uri@jlahtine-mobl>
Subject: Re: [PULL] drm-intel-fixes
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Date: Thu, 09 Apr 2026 13:24:46 +0300
Message-ID: <177573028627.53749.1013951458023110256@jlahtine-mobl>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 891173C922F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Joonas Lahtinen (2026-04-09 13:07:56)
> Hi Dave & Sima,
>=20
> Here's still a drm-intel-fixes PR towards 7.0. Took a few more hours
> as Linus seems to prefer the EXECBUF fix via -fixes rather than -next.
>=20
> One display fix for SU area WARN in PSR code, for GT refcount underflow
> fix in hangcheck and removal condition on execbuf BO processing which
> gives a false alert of a bug in mainline.

Also, if you haven't been following all the discussion, the execbuf
cleanup here removes the need for the fix that Linus applied himself to
v7.0-rc7. This just removes the condition check that is always true,
avoiding false alarm of a bug in current mainline.

Regards, Joonas
