Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B58F69B559
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 23:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BC910E1F8;
	Fri, 17 Feb 2023 22:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7936210E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 22:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676672146; x=1708208146;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=up4EWvZA64RKVdfXFomeLJsTsW39SwJTmY9eEQY/Omo=;
 b=Endw+UkWcU/Oxhb4knNEBqUK9l8smwSBVsZi/OdnGGRk8ioe1CEPnz5A
 h+dKEOmCVXK9Ni4HfGs2XMXOpo5HEss5BBQa3gvbTVnjOu2FPGWn8zS2d
 sjymiIbWTIlXBiIFHS1YcbzIUj8ecl64nSeZGfG052q3aaki9OpHM5wDV
 JLAJVSxX0hxm4L264qkpyzhqQpbDZ1HOFmvRTyUZagWBoKFn0Zkh971dy
 EMJR6PRYYYl0xPu1JM8s0FZPa4zqkw6b1twatjGVuLErlZ9ECWiZgs3Ml
 KLOxCL9VEgOlzeF5/wyESXdD5bM2pOsjOqZCNtuoNpQJAHyCd39t2UtWk g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="312469555"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="312469555"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 14:15:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="734456986"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="734456986"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.8])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 14:15:43 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230217172019.1101331-1-jonathan.cavitt@intel.com>
References: <20230217172019.1101331-1-jonathan.cavitt@intel.com>
From: Chris Wilson <chris.p.wilson@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 17 Feb 2023 22:15:40 +0000
Message-ID: <167667214059.1881502.1875323565049457552@build.alporthouse.com>
User-Agent: alot/0.10
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Drop igt_cs_tlb
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
Cc: lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com,
 jonathan.cavitt@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jonathan Cavitt (2023-02-17 17:20:19)
> The gt_tlb live selftest has the same code coverage as the
> igt_cs_tlb subtest of gtt.

True, the intent of the code is the same, but gt_tlb has had a much high
success rate at hitting TLB bugs, so is my preferred test.

> However, igt_cs_tlb is hitting
> an issue in that we are updating PTE in gt0->vm but
> executing on the media tile without updating gt1->vm.

I'm no longer convinced this a good explanation of the issue, as unlike
the i915_requests selftest this is using a GEM context and not the local
kernel contexts. The GEM context->vm should work equally on the mtl
render and media tiles, afaict.

The failure is very early in running on media tile (after running on the
render tile) so I think it should be easy enough to reproduce in a
simpler test to narrow down the cause.

> This issue is corrected in gt_tlb, and thus igt_cs_tlb
> is obsolete and should be removed.

gt_tlb supersedes igt_cs_tlb, that I can agree on,
Acked-by: Chris Wilson <chris.p.wilson@linux.intel.com>
-Chris
