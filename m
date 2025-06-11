Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E750AD5233
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 12:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AB910E611;
	Wed, 11 Jun 2025 10:41:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MofbsLHs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DF110E029
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jun 2025 10:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749638477; x=1781174477;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=ZtymXBFvVFA7aDPTq+wL3/vVCc+Ltvn9CEPEKM+8DmU=;
 b=MofbsLHsoSyr+xDy1OiMt3g8y/OMVnQyMZXqf1skvuiKPXfuOyQY9u+l
 +KoDzWdBhVIPKvB9cLxf5s0nBUsnxf8hha8aHx8CpB7TLnsfCxoYFX+q4
 JsTmWTD6tdrHVGKt2ClaR4EqfZMOG6TGmoqyecdaxWhWDLEtmVecEKkxN
 EfNvQYwaiNOQHx1PgoJtB5wpyGCJCAnEj4ckhFmWzRG3OysKHBXGHLwjk
 lBjjya2ews/0Abv+1hEvjUx9bdo4QTD2UzzZteF5jGXx6XsQIW0JDuBBI
 CV7gwnlcDA3bP0rc6jjTmbAnyUpgTPvg2BiiacCQbDl5klZkIgkK621px w==;
X-CSE-ConnectionGUID: Q3hzTyynQ96HnmUMC5g6wQ==
X-CSE-MsgGUID: qvM60Hu0RQiK7n5NDQTmyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="62055461"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="62055461"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 03:41:17 -0700
X-CSE-ConnectionGUID: d/GmwdbbSpWP8I0LTtdCAw==
X-CSE-MsgGUID: w7RhEoW0RGeqXImw0jJYZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="147149540"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 03:41:14 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
References: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
Subject: Re: [PATCH] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jun 2025 12:40:48 +0200
Message-ID: <174963844834.1504254.16524085124436026668@DEV-409>
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

Quoting Krzysztof Karas (2025-06-10 12:21:24)
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test a mock file is opened in
> igt_mmap_offset(), which results in allocating some data in the
> GPU memory. Then, also in igt_mmap_offset(), the file is closed
> (fput) and the cleanup of that data is scheduled. Right after
> that, the test calls igt_fill_mappable() to fill all available
> GPU memory. At this point, three scenarios are possible
> (N =3D max size of GPU memory for this test in MiB):
>  1) the data cleanup does not fire until the whole test is over,
> so the memory is fully occupied by 1 MiB with that data and
> N - 1 MiB added by igt_fill_mappable(),
>  2) the data cleanup fires before igt_fill_mappable() completes,
> so the whole memory is populated with N MiB by
> igt_fill_mappable(),
>  3) the data cleanup is performed right after fill is done,
> so only N - 1 MiB are in the GPU memory, preventing the test
> from properly faulting - we'd expect no space left, but an
> object was able to fit in the remaining 1 MiB.
>=20
> Amend the problem by keeping the mock file open throughout the
> duration of this test and calling fput() from the test itself.

The file is owned by vma->vm_file for the duration of the mapping.
-Chris
