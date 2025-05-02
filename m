Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1879AA72EC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 15:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D09210E929;
	Fri,  2 May 2025 13:10:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="LQoZ5ISV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA3110E929
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 13:10:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BA0F460007;
 Fri,  2 May 2025 13:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6A0C4CEE4;
 Fri,  2 May 2025 13:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1746191404;
 bh=kELBzKdw0K3iVq9hQpcya/QBSYuiSk6p2J8adsr5ebY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LQoZ5ISVeAs4AbTlVVfvO2T392qjC8q/xmycLZHfgbRVJYYgaOO4sK9udVkpmjTd/
 YRdP6dkDAyZ2jq8JgBo02uztmIVBd+oO50fDBYv3I8tu1g83MRFlFbX+aiDSbY2RW2
 VRjXe6h0hmsqaiJbs2zHHcfEOQ/iBBJf1KYnyHqO/TNjcEiiInFaVJxdWr7bDVINyl
 G4pEaPWmF68XlxVdo1zdrXnbQ2Iv/VAU047ncNyBOKZF2oD451TTzn2sZsXO41ErNP
 pXWYCp9yad/xhJyEel25GNXQykgdh70EWOMNgO1GHDSWaxBUvh7fUP72jgfFgVpXdz
 AlVly+PUwRyTw==
Date: Fri, 2 May 2025 15:10:01 +0200
From: Daniel Gomez <da.gomez@kernel.org>
To: David Hildenbrand <david@redhat.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 akpm@linux-foundation.org, hughd@google.com, willy@infradead.org, 
 wangkefeng.wang@huawei.com, 21cnbao@gmail.com, ryan.roberts@arm.com,
 ioworker0@gmail.com, 
 da.gomez@samsung.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
 regressions@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
 Eero Tamminen <eero.t.tamminen@intel.com>
Subject: Re: [REGRESSION] Re: [PATCH v3 3/6] mm: shmem: add large folio
 support for tmpfs
Message-ID: <exl3dpqh7oqhdd3afo3gvainumqw6j4ebfifkyeqkqvf36yxlh@pcuhdqanuy32>
References: <cover.1732779148.git.baolin.wang@linux.alibaba.com>
 <035bf55fbdebeff65f5cb2cdb9907b7d632c3228.1732779148.git.baolin.wang@linux.alibaba.com>
 <aBEP-6iFhIC87zmb@intel.com>
 <ac8cbd8d-44e9-4a88-b88b-e29e9f30a2fd@linux.alibaba.com>
 <aBIHYqzar5J8uxGO@intel.com>
 <cxwpgygobg6wleoeezbowjhmid4mdhptzheqask44ew37h2q24@kryzkecuobbp>
 <57dc4929-268b-4f3f-a0f8-43d6ec85974f@linux.alibaba.com>
 <72978e3a-ee67-47d4-b06d-e911bc5d57ff@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <72978e3a-ee67-47d4-b06d-e911bc5d57ff@redhat.com>
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

On Fri, May 02, 2025 at 09:18:41AM +0100, David Hildenbrand wrote:
> On 02.05.25 03:02, Baolin Wang wrote:
> > 
> > 
> > On 2025/4/30 21:24, Daniel Gomez wrote:
> > > On Wed, Apr 30, 2025 at 02:20:02PM +0100, Ville Syrjälä wrote:
> > > > On Wed, Apr 30, 2025 at 02:32:39PM +0800, Baolin Wang wrote:
> > > > > On 2025/4/30 01:44, Ville Syrjälä wrote:
> > > > > > On Thu, Nov 28, 2024 at 03:40:41PM +0800, Baolin Wang wrote:
> > > > > > Hi,
> > > > > > 
> > > > > > This causes a huge regression in Intel iGPU texturing performance.
> > > > > 
> > > > > Unfortunately, I don't have such platform to test it.
> > > > > 
> > > > > > 
> > > > > > I haven't had time to look at this in detail, but presumably the
> > > > > > problem is that we're no longer getting huge pages from our
> > > > > > private tmpfs mount (done in i915_gemfs_init()).
> > > > > 
> > > > > IIUC, the i915 driver still limits the maximum write size to PAGE_SIZE
> > > > > in the shmem_pwrite(),
> > > > 
> > > > pwrite is just one random way to write to objects, and probably
> > > > not something that's even used by current Mesa.
> > > > 
> > > > > which prevents tmpfs from allocating large
> > > > > folios. As mentioned in the comments below, tmpfs like other file
> > > > > systems that support large folios, will allow getting a highest order
> > > > > hint based on the size of the write and fallocate paths, and then will
> > > > > attempt each allowable huge order.
> > > > > 
> > > > > Therefore, I think the shmem_pwrite() function should be changed to
> > > > > remove the limitation that the write size cannot exceed PAGE_SIZE.
> > > 
> > > To enable mTHP on tmpfs, the necessary knobs must first be enabled in sysfs
> > > as they are not enabled by default IIRC (only THP, PMD level). Ville, I
> > > see i915_gemfs the huge=within_size mount option is passed. Can you confirm
> > > if /sys/kernel/mm/transparent_hugepage/hugepages-*/enabled are also marked as
> > > 'always' when the regression is found?
> > 
> > The tmpfs mount will not be controlled by
> > '/sys/kernel/mm/transparent_hugepage/hugepages-*Kb/enabled' (except for
> > the debugging options 'deny' and 'force').
> 
> Right, IIRC as requested by Willy, it should behave like other FSes where
> there is no control over the folio size to be used.

Thanks for reminding me. I forgot we finally changed it.

Could the performance drop be due to the driver no longer using PMD-level pages?

I also recall a performance drop when using order-8 and order-9 folios in tmpfs
with the initial per-block implementation. Baolin, did you experience anything
similar in the final implementation?

These were my numbers:

| Block Size (bs) | Linux Kernel v6.9 (GiB/s) | tmpfs with Large Folios v6.9 (GiB/s) |
| 4k   | 20.4 | 20.5 |
| 8k   | 34.3 | 34.3 |
| 16k  | 52.9 | 52.2 |
| 32k  | 70.2 | 76.9 |
| 64k  | 73.9 | 92.5 |
| 128k | 76.7 | 101  |
| 256k | 80.5 | 114  |
| 512k | 80.3 | 132  |
| 1M   | 78.5 | 75.2 |
| 2M   | 65.7 | 47.1 |

> 
> -- 
> Cheers,
> 
> David / dhildenb
> 
