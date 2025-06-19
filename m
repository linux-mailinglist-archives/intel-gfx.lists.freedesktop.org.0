Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F228FAE084F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 16:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D13710EA72;
	Thu, 19 Jun 2025 14:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHrY5IYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3244C10EA72
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jun 2025 14:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750342078; x=1781878078;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=jnzyGabI+V1WrTgJxP9k3Ggf7euJMx8abH0EW+s4FTc=;
 b=cHrY5IYw7+2zJMBya9KrlzJ6KwF+h6UM9nf3zDiz8Tc91uI/zKgf8I9S
 /fQl1R/jkDQp1sgaxPXNCawIO6FShvkAjhncBFAsEXEpb6DAoSBkY+6PZ
 q0WzYp1ACwaJP7xT/+qOBGbAuhz9COkTbXwoKVlgerGFaS1WV8MFsbwPm
 xnDavCby50LnOV4VQ77qoYjZp3jAC3kpQ+C8rQB56VjFNHoZ9Qjef0Ifb
 EwcWamP5LbyeBpojLxmfbdmOp122j60PJFJ7+mQ3FsisV9U5QkTZ/v07e
 t7U2A1QhVxVVMcQARbuAP6TX5hKospRfIthp/wFJoF1tkAPdKdI3avs81 g==;
X-CSE-ConnectionGUID: OQPetno9T+yP/V/FBqZwsQ==
X-CSE-MsgGUID: 7M4jQblSSZej76s/8nVUaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63635463"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="63635463"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 07:07:58 -0700
X-CSE-ConnectionGUID: UJ3fCTyoTdOKhEIzhhxWYw==
X-CSE-MsgGUID: 0+oG0yCCQOiuCovHbjzh8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="150785730"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 07:07:57 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
References: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
Subject: Re: [PATCH v3] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Jun 2025 16:07:28 +0200
Message-ID: <175034204806.2265741.12155401070258841657@DEV-409>
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

Quoting Krzysztof Karas (2025-06-17 15:19:07)
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test a mock file is opened in
> igt_mmap_offset(), which results in allocating some data in the
> GPU memory. Then, also in igt_mmap_offset(), the file is closed
> (fput) and the cleanup of that data is scheduled.

Incorrect; the refcount is not zero at this point as it is held by the
vma->vm_file which is still valid.

> Right after
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

That is not the problem; that is papering over whatever the problem
really is.
-Chris
