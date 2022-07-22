Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC01F57E987
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jul 2022 00:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A11A12AA28;
	Fri, 22 Jul 2022 22:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BFCB12A67B
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 22:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1658527895;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WTAu9Ie82eyCEnPfOUrQ1UYOeYONO590WPWh6n6IMVk=;
 b=TCJcS5xT1Wn7LVaL2IeSESWcGOAzR4LRxycXtJP3Y5Xbn/nSFE+PZj/zMW3NgqXMsvu3zs
 67FXHWxbDULs6+7qqfoFJF3IeBmN373FM9etujnqfta2L4jfHCEtLNrpi52o5RAj95EgTn
 naUqBqqQllhgupp5eutygBzuN01HB20=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-213-i8P0vUzAMTun2MbuJV6Fig-1; Fri, 22 Jul 2022 18:11:32 -0400
X-MC-Unique: i8P0vUzAMTun2MbuJV6Fig-1
Received: by mail-il1-f198.google.com with SMTP id
 z2-20020a056e02088200b002dc4022c15fso3420701ils.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 15:11:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=WTAu9Ie82eyCEnPfOUrQ1UYOeYONO590WPWh6n6IMVk=;
 b=q7z2pPhkaNQJQXp4XpcsGJojMinBnXn1j91MU1m8d8eMhYHSE34aONt4xjwdwta/xS
 BgezSyXN1XU6rSzI3C2hJRV+J7eDmWiG4jr4ewsGTNhWF+V/M+PxeAM7690x6IpLobhV
 0xAvBhanEFEB5QPtSWrEDXwulceIhsxABg49g7+KZmA4xZ11ckbPSE4GWgjYXW4eR5IQ
 9aUvEJ518QxOSWrKmFUgLUrkozhEbRm3QUQTs6hKY2iNQ4pV8TaJko1Rq4ST41L1JrYu
 NjPyeqpCWozYaIezjVguwn2mZKblF/vihWgDWVWpWVkXy+gPYUqjqXdqANVk9A/4Ev3L
 Piag==
X-Gm-Message-State: AJIora8eqUWVJsh2M23tOin4ZYT4kRYRztNM6oJ5rAZKUwbr4UKMXDHT
 RZhNS2p13Dl6/HXhiRd7AGV4uxHH7RPoeu6V7u0ZMpMvLUWwY01B4Z6CrH80OS5M+XaXx7Z/Gas
 +tji2xV8dPw/lmQnefcjpaEakmpWW
X-Received: by 2002:a05:6e02:180d:b0:2dc:2561:4b81 with SMTP id
 a13-20020a056e02180d00b002dc25614b81mr808836ilv.149.1658527892258; 
 Fri, 22 Jul 2022 15:11:32 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tQfszjfffkbsvzx/Y2n9I9Nnb9tw/K3y9spbP6QR/C0TjwJrze6wv6O0NmOZWFKAIyPdjySw==
X-Received: by 2002:a05:6e02:180d:b0:2dc:2561:4b81 with SMTP id
 a13-20020a056e02180d00b002dc25614b81mr808821ilv.149.1658527891986; 
 Fri, 22 Jul 2022 15:11:31 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 o22-20020a02c6b6000000b003415de88347sm2486092jan.123.2022.07.22.15.11.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jul 2022 15:11:31 -0700 (PDT)
Date: Fri, 22 Jul 2022 16:11:29 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <20220722161129.21059262.alex.williamson@redhat.com>
In-Reply-To: <20220708224427.1245-1-nicolinc@nvidia.com>
References: <20220708224427.1245-1-nicolinc@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 00/10] Update vfio_pin/unpin_pages API
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
Cc: mjrosato@linux.ibm.com, linux-doc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kwankhede@nvidia.com, terrence.xu@intel.com, vneethv@linux.ibm.com,
 agordeev@linux.ibm.com, hch@infradead.org, kvm@vger.kernel.org, corbet@lwn.net,
 pasic@linux.ibm.com, jgg@nvidia.com, borntraeger@linux.ibm.com,
 intel-gfx@lists.freedesktop.org, jjherne@linux.ibm.com, farman@linux.ibm.com,
 jchrist@linux.ibm.com, gor@linux.ibm.com, linux-s390@vger.kernel.org,
 hca@linux.ibm.com, freude@linux.ibm.com, rodrigo.vivi@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com, cohuck@redhat.com,
 oberpar@linux.ibm.com, svens@linux.ibm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 8 Jul 2022 15:44:18 -0700
Nicolin Chen <nicolinc@nvidia.com> wrote:

> This is a preparatory series for IOMMUFD v2 patches. It prepares for
> replacing vfio_iommu_type1 implementations of vfio_pin/unpin_pages()
> with IOMMUFD version.
> 
> There's a gap between these two versions: the vfio_iommu_type1 version
> inputs a non-contiguous PFN list and outputs another PFN list for the
> pinned physical page list, while the IOMMUFD version only supports a
> contiguous address input by accepting the starting IO virtual address
> of a set of pages to pin and by outputting to a physical page list.
> 
> The nature of existing callers mostly aligns with the IOMMUFD version,
> except s390's vfio_ccw_cp code where some additional change is needed
> along with this series. Overall, updating to "iova" and "phys_page"
> does improve the caller side to some extent.
> 
> Also fix a misuse of physical address and virtual address in the s390's
> crypto code. And update the input naming at the adjacent vfio_dma_rw().
> 
> This is on github:
> https://github.com/nicolinc/iommufd/commits/vfio_pin_pages
> 
> Terrence has tested this series on i915; Eric has tested on s390.
> 
> Thanks!
> 
> Changelog
> v3:
>  * Added a patch to replace roundup with DIV_ROUND_UP in i915 gvt
>  * Dropped the "driver->ops->unpin_pages" and NULL checks in PATCH-1
>  * Changed to use WARN_ON and separate into lines in PATCH-1
>  * Replaced "guest" words with "user" and fix typo in PATCH-5
>  * Updated commit log of PATCH-1, PATCH-6, and PATCH-10
>  * Added Reviewed/Acked-by from Christoph, Jason, Kirti, Kevin and Eric
>  * Added Tested-by from Terrence (i915) and Eric (s390)
> v2: https://lore.kernel.org/kvm/20220706062759.24946-1-nicolinc@nvidia.com/
>  * Added a patch to make vfio_unpin_pages return void
>  * Added two patches to remove PFN list from two s390 callers
>  * Renamed "phys_page" parameter to "pages" for vfio_pin_pages
>  * Updated commit log of kmap_local_page() patch
>  * Added Harald's "Reviewed-by" to pa_ind patch
>  * Rebased on top of Alex's extern removal path
> v1: https://lore.kernel.org/kvm/20220616235212.15185-1-nicolinc@nvidia.com/
> 
> Nicolin Chen (10):
>   vfio: Make vfio_unpin_pages() return void
>   drm/i915/gvt: Replace roundup with DIV_ROUND_UP
>   vfio/ap: Pass in physical address of ind to ap_aqic()
>   vfio/ccw: Only pass in contiguous pages
>   vfio: Pass in starting IOVA to vfio_pin/unpin_pages API
>   vfio/ap: Change saved_pfn to saved_iova
>   vfio/ccw: Change pa_pfn list to pa_iova list
>   vfio: Rename user_iova of vfio_dma_rw()
>   vfio/ccw: Add kmap_local_page() for memcpy
>   vfio: Replace phys_pfn with pages for vfio_pin_pages()
> 
>  .../driver-api/vfio-mediated-device.rst       |   6 +-
>  arch/s390/include/asm/ap.h                    |   6 +-
>  drivers/gpu/drm/i915/gvt/kvmgt.c              |  49 ++---
>  drivers/s390/cio/vfio_ccw_cp.c                | 195 +++++++++++-------
>  drivers/s390/crypto/ap_queue.c                |   2 +-
>  drivers/s390/crypto/vfio_ap_ops.c             |  54 +++--
>  drivers/s390/crypto/vfio_ap_private.h         |   4 +-
>  drivers/vfio/vfio.c                           |  54 ++---
>  drivers/vfio/vfio.h                           |   8 +-
>  drivers/vfio/vfio_iommu_type1.c               |  45 ++--
>  include/linux/vfio.h                          |   9 +-
>  11 files changed, 215 insertions(+), 217 deletions(-)
> 

GVT-g explodes for me with this series on my Broadwell test system,
continuously spewing the following:

[   47.344126] ------------[ cut here ]------------
[   47.348778] WARNING: CPU: 3 PID: 501 at drivers/vfio/vfio_iommu_type1.c:978 vfio_iommu_type1_unpin_pages+0x7b/0x100 [vfio_iommu_type1]
[   47.360871] Modules linked in: xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink tun bridge stp llc rfkill sunrpc vfat fat intel_rapl_msr intel_rapl_common x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel iTCO_wdt at24 mei_wdt mei_hdcp intel_pmc_bxt mei_pxp rapl iTCO_vendor_support intel_cstate pcspkr e1000e mei_me intel_uncore i2c_i801 mei lpc_ich i2c_smbus acpi_pad fuse zram ip_tables kvmgt mdev vfio_iommu_type1 vfio kvm irqbypass i915 crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel pinctrl_lynxpoint i2c_algo_bit drm_buddy video drm_display_helper drm_kms_helper cec ttm drm
[   47.423398] CPU: 3 PID: 501 Comm: gvt:rcs0 Tainted: G        W         5.19.0-rc4+ #3
[   47.431228] Hardware name:  /NUC5i5MYBE, BIOS MYBDWi5v.86A.0054.2019.0520.1531 05/20/2019
[   47.439408] RIP: 0010:vfio_iommu_type1_unpin_pages+0x7b/0x100 [vfio_iommu_type1]
[   47.446818] Code: 10 00 00 45 31 ed 48 8b 7b 40 48 85 ff 74 12 48 8b 47 18 49 39 c6 77 23 48 8b 7f 10 48 85 ff 75 ee 48 8b 3c 24 e8 45 57 92 e4 <0f> 0b 48 83 c4 08 5b 5d 41 5c 41 5d 41 5e 41 5f c3 48 03 47 28 49
[   47.465573] RSP: 0018:ffff9ac5806cfbe0 EFLAGS: 00010246
[   47.470807] RAX: ffff8cb42f4c5180 RBX: ffff8cb4145c03c0 RCX: 0000000000000000
[   47.477948] RDX: 0000000000000000 RSI: 0000163802000000 RDI: ffff8cb4145c03e0
[   47.485088] RBP: 0000000000000001 R08: 0000000000000000 R09: ffff9ac581aed000
[   47.492230] R10: ffff9ac5806cfc58 R11: 00000001b2202000 R12: 0000000000000001
[   47.499370] R13: 0000000000000000 R14: 0000163802001000 R15: 0000163802000000
[   47.506513] FS:  0000000000000000(0000) GS:ffff8cb776d80000(0000) knlGS:0000000000000000
[   47.514608] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   47.520361] CR2: ffffdc0933f76192 CR3: 0000000118118003 CR4: 00000000003726e0
[   47.527510] Call Trace:
[   47.529976]  <TASK>
[   47.532091]  intel_gvt_dma_unmap_guest_page+0xd5/0x110 [kvmgt]
[   47.537948]  ppgtt_invalidate_spt+0x323/0x340 [kvmgt]
[   47.543017]  ppgtt_invalidate_spt+0x173/0x340 [kvmgt]
[   47.548088]  ppgtt_invalidate_spt+0x173/0x340 [kvmgt]
[   47.553159]  ppgtt_invalidate_spt+0x173/0x340 [kvmgt]
[   47.558228]  invalidate_ppgtt_mm+0x5f/0x110 [kvmgt]
[   47.563124]  _intel_vgpu_mm_release+0xd6/0xe0 [kvmgt]
[   47.568193]  intel_vgpu_destroy_workload+0x1b7/0x1e0 [kvmgt]
[   47.573872]  workload_thread+0xa4c/0x19a0 [kvmgt]
[   47.578613]  ? _raw_spin_rq_lock_irqsave+0x20/0x20
[   47.583422]  ? dequeue_task_stop+0x70/0x70
[   47.587530]  ? _raw_spin_lock_irqsave+0x24/0x50
[   47.592072]  ? intel_vgpu_reset_submission+0x40/0x40 [kvmgt]
[   47.597746]  kthread+0xe7/0x110
[   47.600902]  ? kthread_complete_and_exit+0x20/0x20
[   47.605702]  ret_from_fork+0x22/0x30
[   47.609293]  </TASK>
[   47.611503] ---[ end trace 0000000000000000 ]---

Line 978 is the WARN_ON(i != npage) line.  For the cases where we don't
find a matching vfio_dma, I'm seeing addresses that look maybe like
we're shifting  a value that's already an iova by PAGE_SHIFT somewhere.
Thanks,

Alex

