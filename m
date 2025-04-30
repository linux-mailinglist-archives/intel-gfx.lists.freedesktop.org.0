Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB20FAA7296
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 14:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F47210E8FA;
	Fri,  2 May 2025 12:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Vjd0LIB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85EC010E0EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Apr 2025 13:24:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EA17F5C4910;
 Wed, 30 Apr 2025 13:21:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D40C4CEE9;
 Wed, 30 Apr 2025 13:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1746019446;
 bh=4Nc6GDztxDnf1w4KqVdi+LzpveRRgp4sfrwZ+0SHHS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vjd0LIB0sgnkdhpcz4kpRBtnO+wtfuCiN5i4BEnIynkhHoW8goJk9P83j2stkksMJ
 g3zYhaQhOeihgkEd6GcpZOV0jW/TB9ubFWPBi4caCRtCQpzXA2ONW9/it5zJkamFH3
 phDIOZOi6HIXsOWDQa6wYWAAhd9z3A7+iUVgbNF7NDNyKOi/CQFWcjhg7TWDeuZeK3
 rqfxQpJIZYfRYLcGYKbYDhlSPjfgvG6+LyZVfNIWKSvpMhFUbzPdP9N8UYqq51IKaM
 ZT+rLuVYi2BZHHU2K19J5ywKPO9w7pZxLKtvTGTqplHPDevcjuqhSmtlp9fmxM4TPJ
 Ux5DDc86qPSJg==
Date: Wed, 30 Apr 2025 15:24:03 +0200
From: Daniel Gomez <da.gomez@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Baolin Wang <baolin.wang@linux.alibaba.com>, akpm@linux-foundation.org, 
 hughd@google.com, willy@infradead.org, david@redhat.com, 
 wangkefeng.wang@huawei.com, 21cnbao@gmail.com, ryan.roberts@arm.com,
 ioworker0@gmail.com, 
 da.gomez@samsung.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
 regressions@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
 Eero Tamminen <eero.t.tamminen@intel.com>
Subject: Re: [REGRESSION] Re: [PATCH v3 3/6] mm: shmem: add large folio
 support for tmpfs
Message-ID: <cxwpgygobg6wleoeezbowjhmid4mdhptzheqask44ew37h2q24@kryzkecuobbp>
References: <cover.1732779148.git.baolin.wang@linux.alibaba.com>
 <035bf55fbdebeff65f5cb2cdb9907b7d632c3228.1732779148.git.baolin.wang@linux.alibaba.com>
 <aBEP-6iFhIC87zmb@intel.com>
 <ac8cbd8d-44e9-4a88-b88b-e29e9f30a2fd@linux.alibaba.com>
 <aBIHYqzar5J8uxGO@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aBIHYqzar5J8uxGO@intel.com>
X-Mailman-Approved-At: Fri, 02 May 2025 12:52:18 +0000
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

On Wed, Apr 30, 2025 at 02:20:02PM +0100, Ville Syrjälä wrote:
> On Wed, Apr 30, 2025 at 02:32:39PM +0800, Baolin Wang wrote:
> > On 2025/4/30 01:44, Ville Syrjälä wrote:
> > > On Thu, Nov 28, 2024 at 03:40:41PM +0800, Baolin Wang wrote:
> > > Hi,
> > > 
> > > This causes a huge regression in Intel iGPU texturing performance.
> > 
> > Unfortunately, I don't have such platform to test it.
> > 
> > > 
> > > I haven't had time to look at this in detail, but presumably the
> > > problem is that we're no longer getting huge pages from our
> > > private tmpfs mount (done in i915_gemfs_init()).
> > 
> > IIUC, the i915 driver still limits the maximum write size to PAGE_SIZE 
> > in the shmem_pwrite(),
> 
> pwrite is just one random way to write to objects, and probably
> not something that's even used by current Mesa.
> 
> > which prevents tmpfs from allocating large 
> > folios. As mentioned in the comments below, tmpfs like other file 
> > systems that support large folios, will allow getting a highest order 
> > hint based on the size of the write and fallocate paths, and then will 
> > attempt each allowable huge order.
> > 
> > Therefore, I think the shmem_pwrite() function should be changed to 
> > remove the limitation that the write size cannot exceed PAGE_SIZE.

To enable mTHP on tmpfs, the necessary knobs must first be enabled in sysfs
as they are not enabled by default IIRC (only THP, PMD level). Ville, I
see i915_gemfs the huge=within_size mount option is passed. Can you confirm
if /sys/kernel/mm/transparent_hugepage/hugepages-*/enabled are also marked as
'always' when the regression is found?

Even if these are enabled, the possible difference may be that before, i915 was
using PMD pages (THP) always and now mTHP will be used, unless the file size is
as big as the PMD page. I think the always mount option would also try to infer
the size to actually give a proper order folio according to that size. Baolin,
is that correct?

And Ville, can you confirm if what i915 needs is to enable PMD-size allocations
always?
