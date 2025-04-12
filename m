Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDD5A86DDE
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Apr 2025 16:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C2910E14F;
	Sat, 12 Apr 2025 14:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXod7ZSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F397310E14F
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Apr 2025 14:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744469673; x=1776005673;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=ZkwWBw7pGcBWXxlfY+tu/bkDMWI/yq9zIJ0BeFauSPQ=;
 b=HXod7ZSzES7/nqM7X5OFpJUR9kF8LGiISOQA5iKrenm48YAcoNea+ZBp
 8mFD3p/KA23T+TcerHi5u6+fFJu9lzAMqIPH+pUlw+KHls6YOhKBYcbiS
 CQeG21wa53BHIoUcYqtwAAVcNy1bSBCtAB0IZ+lS0MTj5h2HExkWByyCC
 BPKtmsHpGbbIhWlbnMu9bq/fr8idTVqN9OqZVGnApzsfQfYMajf48WNvn
 pFAu7J2Oex5G6gf37RAzjT27AAiI1cWEKKpq8SDYF5+ghCww7vdaNSINt
 nnT5CC5kuW/r/icTdmIuvsGMaZvI6ZbTjqMJXM924TutvIfVekmnPjwE2 A==;
X-CSE-ConnectionGUID: uHzdOOIpQZyFU8Gtt5ctNw==
X-CSE-MsgGUID: atjvHjzeT7iIXw0GhYDTsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="49651866"
X-IronPort-AV: E=Sophos;i="6.15,208,1739865600"; d="scan'208";a="49651866"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2025 07:54:26 -0700
X-CSE-ConnectionGUID: 82+979a2S2CXjZGTSjHSAA==
X-CSE-MsgGUID: ryRHFeyiTKSuuZH0j9ROiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,208,1739865600"; d="scan'208";a="129437742"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2025 07:54:25 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
References: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
Subject: Re: [PATCH] drm/i915/selftest/mmap_migrate: wait for clear memory
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Sat, 12 Apr 2025 16:54:14 +0200
Message-ID: <174446965487.2426228.1861093609601132073@DEV-409>
User-Agent: alot/0.10
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

Quoting Mikolaj Wasiak (2025-04-11 12:48:16)
> Mmap_migrate test runs multiple times filling GPU memory
> with objects. Those objects are deleted after each run
> but cleaning pages takes some time after the objects are
> put. This patch lets tests to wait for cleanup after previous test
> if they need to allocate whole memory with new objects.

That's a fundamental bug if pages are available on the system but not
being allocated [just because they are currently being freed]. That
breaks the understanding that clients can allocate any and all local
memory.
-Chris
