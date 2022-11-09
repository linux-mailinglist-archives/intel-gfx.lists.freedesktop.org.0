Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F7623201
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 19:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7DB10E02C;
	Wed,  9 Nov 2022 18:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF9010E02C;
 Wed,  9 Nov 2022 18:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668017030; x=1699553030;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=SUvudcxrhm3KLzEiMF05rDRSOBj7Q3TznyaidGF/79Q=;
 b=FYT23hvKJlRsrfbOy7sngJeKD5/Lr0Hrim7CN6skgkN3Ocf6p+ku00TC
 u2b6fcuJbHURVZlTybAnagjhNVDIYoewY2rMJElNmmcddRvBfZnCHrR35
 zwxGx3K+wdIVMgx7kMKxr6gQ349lmHrbqaIXlN0IaMmv1ZdV3db9ttvI2
 Nt0200GCHT12qwdukq/3JtUf0BdZnYzko+rRvAd1l50z7INpcuHZSzi/0
 PzQX91+cuJqotI4HMNlkC44KcTDd+ZALq2dhxD4dftDCmKFWKr8nKYc/y
 6vc2+nbq0hcbcyb7D9HwTtOvy6SvGg1l10pXNQa/RSjannwIvjWJF9DWJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309768585"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="309768585"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 10:03:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="779442018"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="779442018"
Received: from skallurr-mobl1.ger.corp.intel.com (HELO [10.249.254.213])
 ([10.249.254.213])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 10:03:15 -0800
Message-ID: <f1f4123c3705c6883acdff4770e404704d54dc6e.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,  dri-devel@lists.freedesktop.org
Date: Wed, 09 Nov 2022 19:03:03 +0100
In-Reply-To: <20221109174058.912720-1-andi.shyti@linux.intel.com>
References: <20221109174058.912720-1-andi.shyti@linux.intel.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/3] add guard padding around i915_vma
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Andi,

This has been on the list before (three times I think) and at that
point it (the guard pages) was NAK'd by Daniel as yet another
complication, and a VT-d
scanout workaround was implemented and pushed using a different
approach, initially outlined by Daniel.

Patch is 2ef6efa79fecd. Those suspend/resumes should now be fast.

I then also discussed patch 1 separately with Dave Airlie and Daniel
and since both me and Dave liked it, Daniel OK'd it, but it never made
it upstream.

Just a short heads up on the history.

/Thomas


On Wed, 2022-11-09 at 18:40 +0100, Andi Shyti wrote:
> Hi,
>=20
> This series adds guards around vma's but setting a pages at the
> beginning and at the end that work as padding.
>=20
> The first user of the vma guard are scanout objects which don't
> need anymore to add scratch to all the unused ggtt's and speeding
> up up considerably the boot and resume by several hundreds of
> milliseconds up to over a full second in slower machines.
>=20
> Andi
>=20
> Chris Wilson (3):
> =C2=A0 drm/i915: Wrap all access to i915_vma.node.start|size
> =C2=A0 drm/i915: Introduce guard pages to i915_vma
> =C2=A0 drm/i915: Refine VT-d scanout workaround
>=20
> =C2=A0drivers/gpu/drm/i915/display/intel_fbdev.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/gem/i915_gem_domain.c=C2=A0=C2=A0=C2=A0 | 13 +=
+++
> =C2=A0.../gpu/drm/i915/gem/i915_gem_execbuffer.c=C2=A0=C2=A0=C2=A0 | 33 +=
+++++-----
> =C2=A0drivers/gpu/drm/i915/gem/i915_gem_mman.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/gem/i915_gem_shrinker.c=C2=A0 |=C2=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/gem/i915_gem_tiling.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 4 +-
> =C2=A0.../gpu/drm/i915/gem/selftests/huge_pages.c=C2=A0=C2=A0 |=C2=A0 2 +=
-
> =C2=A0.../i915/gem/selftests/i915_gem_client_blt.c=C2=A0 | 23 ++++----
> =C2=A0.../drm/i915/gem/selftests/i915_gem_context.c | 15 +++--
> =C2=A0.../drm/i915/gem/selftests/i915_gem_mman.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 +-
> =C2=A0.../drm/i915/gem/selftests/igt_gem_utils.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 7 ++-
> =C2=A0drivers/gpu/drm/i915/gt/gen7_renderclear.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/gt/intel_ggtt.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 39 ++++--------
> =C2=A0drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c=C2=A0 |=C2=A0 3 +-
> =C2=A0drivers/gpu/drm/i915/gt/intel_renderstate.c=C2=A0=C2=A0 |=C2=A0 2 +=
-
> =C2=A0.../gpu/drm/i915/gt/intel_ring_submission.c=C2=A0=C2=A0 |=C2=A0 2 +=
-
> =C2=A0drivers/gpu/drm/i915/gt/selftest_engine_cs.c=C2=A0 |=C2=A0 8 +--
> =C2=A0drivers/gpu/drm/i915/gt/selftest_execlists.c=C2=A0 | 18 +++---
> =C2=A0drivers/gpu/drm/i915/gt/selftest_hangcheck.c=C2=A0 | 15 ++---
> =C2=A0drivers/gpu/drm/i915/gt/selftest_lrc.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 16 ++---
> =C2=A0.../drm/i915/gt/selftest_ring_submission.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/gt/selftest_rps.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 12 ++--
> =C2=A0.../gpu/drm/i915/gt/selftest_workarounds.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 8 +--
> =C2=A0drivers/gpu/drm/i915/i915_cmd_parser.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0 4 +-
> =C2=A0drivers/gpu/drm/i915/i915_debugfs.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/i915_gem_gtt.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 +-
> =C2=A0drivers/gpu/drm/i915/i915_perf.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> =C2=A0drivers/gpu/drm/i915/i915_vma.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 59 +++++++++++++----
> --
> =C2=A0drivers/gpu/drm/i915/i915_vma.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 52 +++++++++++++++-
> =C2=A0drivers/gpu/drm/i915/i915_vma_resource.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 4 +-
> =C2=A0drivers/gpu/drm/i915/i915_vma_resource.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | 17 ++++--
> =C2=A0drivers/gpu/drm/i915/i915_vma_types.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 3 +-
> =C2=A0drivers/gpu/drm/i915/selftests/i915_request.c | 20 +++----
> =C2=A0drivers/gpu/drm/i915/selftests/igt_spinner.c=C2=A0 |=C2=A0 8 +--
> =C2=A034 files changed, 246 insertions(+), 160 deletions(-)
>=20

