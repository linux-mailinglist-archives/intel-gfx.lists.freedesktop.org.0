Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C076B616F23
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 21:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8570710E635;
	Wed,  2 Nov 2022 20:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D2210E635
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 20:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667422307; x=1698958307;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8lSLo6unKBIVu/Pe4mXrssODSBsaBtahdn8WEaLm5ks=;
 b=e56ars5aRj6TUX3sBO2wDszlnXg01HrqZla8+jG35WqF4rHJrzAA6ucw
 UlSsafb8YeJUG3DrxtaSmKpA3DgqQ9joDuM2+FCIyDSeRHMSc8fTZ3ETB
 XY9n68rIsdnnGUT4AyX2RpsUFU3Fj4dMdYY5Vz+a1O8hiH1Vo16oXb/fL
 eN5K5DRNDxIvpPWAyZlunb+xhv76RT9Ju8D3TXoaI+d6OXaKJ/nNZe74V
 3jnAu0ZBWP0UPwgLMw5SE31lPMwLTKpZ0HBAkG6CX2lwYtKr79z9oQknF
 QGFhmnG9A8mO6U+WkZ11ZFawtKeQtE30XT33b2gGztBIIB7fieX/F4McR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308235810"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="308235810"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 13:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="667721074"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="667721074"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 02 Nov 2022 13:51:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Nov 2022 22:51:41 +0200
Date: Wed, 2 Nov 2022 22:51:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Naoya Horiguchi <naoya.horiguchi@linux.dev>
Message-ID: <Y2LYXItKQyaJTv8j@intel.com>
References: <20220714042420.1847125-1-naoya.horiguchi@linux.dev>
 <20220714042420.1847125-3-naoya.horiguchi@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220714042420.1847125-3-naoya.horiguchi@linux.dev>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [mm-unstable PATCH v7 2/8] mm/hugetlb: make
 pud_huge() and follow_huge_pud() aware of non-present pud entry
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
Cc: Miaohe Lin <linmiaohe@huawei.com>, regressions@lists.linux.dev,
 David Hildenbrand <david@redhat.com>, Yang Shi <shy828301@gmail.com>,
 Naoya Horiguchi <naoya.horiguchi@nec.com>, linux-kernel@vger.kernel.org,
 Liu Shixin <liushixin2@huawei.com>, linux-mm@kvack.org,
 Muchun Song <songmuchun@bytedance.com>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>,
 intel-gfx@lists.freedesktop.org, Mike Kravetz <mike.kravetz@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 14, 2022 at 01:24:14PM +0900, Naoya Horiguchi wrote:
> +/*
> + * pud_huge() returns 1 if @pud is hugetlb related entry, that is normal
> + * hugetlb entry or non-present (migration or hwpoisoned) hugetlb entry.
> + * Otherwise, returns 0.
> + */
>  int pud_huge(pud_t pud)
>  {
> -	return !!(pud_val(pud) & _PAGE_PSE);
> +	return !pud_none(pud) &&
> +		(pud_val(pud) & (_PAGE_PRESENT|_PAGE_PSE)) != _PAGE_PRESENT;
>  }

Hi,

This causes i915 to trip a BUG_ON() on x86-32 when I start X.

[  225.777375] kernel BUG at mm/memory.c:2664!
[  225.777391] invalid opcode: 0000 [#1] PREEMPT SMP
[  225.777405] CPU: 0 PID: 2402 Comm: Xorg Not tainted 6.1.0-rc3-bdg+ #86
[  225.777415] Hardware name:  /8I865G775-G, BIOS F1 08/29/2006
[  225.777421] EIP: __apply_to_page_range+0x24d/0x31c
[  225.777437] Code: ff ff 8b 55 e8 8b 45 cc e8 0a 11 ec ff 89 d8 83 c4 28 5b 5e 5f 5d c3 81 7d e0 a0 ef 96 c1 74 ad 8b 45 d0 e8 2d 83 49 00 eb a3 <0f> 0b 25 00 f0 ff ff 81 eb 00 00 00 40 01 c3 8b 45 ec 8b 00 e8 76
[  225.777446] EAX: 00000001 EBX: c53a3b58 ECX: b5c00000 EDX: c258aa00
[  225.777454] ESI: b5c00000 EDI: b5900000 EBP: c4b0fdb4 ESP: c4b0fd80
[  225.777462] DS: 007b ES: 007b FS: 00d8 GS: 0033 SS: 0068 EFLAGS: 00010202
[  225.777470] CR0: 80050033 CR2: b5900000 CR3: 053a3000 CR4: 000006d0
[  225.777479] Call Trace:
[  225.777486]  ? i915_memcpy_init_early+0x63/0x63 [i915]
[  225.777684]  apply_to_page_range+0x21/0x27
[  225.777694]  ? i915_memcpy_init_early+0x63/0x63 [i915]
[  225.777870]  remap_io_mapping+0x49/0x75 [i915]
[  225.778046]  ? i915_memcpy_init_early+0x63/0x63 [i915]
[  225.778220]  ? mutex_unlock+0xb/0xd
[  225.778231]  ? i915_vma_pin_fence+0x6d/0xf7 [i915]
[  225.778420]  vm_fault_gtt+0x2a9/0x8f1 [i915]
[  225.778644]  ? lock_is_held_type+0x56/0xe7
[  225.778655]  ? lock_is_held_type+0x7a/0xe7
[  225.778663]  ? 0xc1000000
[  225.778670]  __do_fault+0x21/0x6a
[  225.778679]  handle_mm_fault+0x708/0xb21
[  225.778686]  ? mt_find+0x21e/0x5ae
[  225.778696]  exc_page_fault+0x185/0x705
[  225.778704]  ? doublefault_shim+0x127/0x127
[  225.778715]  handle_exception+0x130/0x130
[  225.778723] EIP: 0xb700468a
[  225.778730] Code: 44 24 40 8b 7c 24 1c 89 47 54 8b 44 24 5c 65 2b 05 14 00 00 00 0f 85 8a 01 00 00 83 c4 6c 5b 5e 5f 5d c3 8b 44 24 1c 8b 40 28 <c7> 00 00 00 00 00 8b 44 24 20 8d 90 20 1b 00 00 8b 02 83 e8 01 89
[  225.778738] EAX: b5900000 EBX: b7148000 ECX: 00000000 EDX: 00000000
[  225.778745] ESI: 0103eb60 EDI: b7148000 EBP: b6cf7000 ESP: bfd76650
[  225.778752] DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007b EFLAGS: 00010246
[  225.778761]  ? doublefault_shim+0x127/0x127
[  225.778769] Modules linked in: i915 prime_numbers i2c_algo_bit iosf_mbi drm_buddy video wmi drm_display_helper drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops ttm drm drm_panel_orientation_quirks backlight cfg80211 rfkill sch_fq_codel xt_tcpudp xt_multiport xt_state iptable_filter iptable_nat nf_nat nf_conntrack nf_defrag_ipv4 ip_tables x_tables binfmt_misc i2c_dev iTCO_wdt snd_intel8x0 snd_ac97_codec ac97_bus snd_pcm snd_timer psmouse i2c_i801 snd i2c_smbus uhci_hcd i2c_core pcspkr soundcore lpc_ich mfd_core ehci_pci ehci_hcd skge intel_agp intel_gtt usbcore agpgart usb_common rng_core parport_pc parport evdev
[  225.778899] ---[ end trace 0000000000000000 ]---
[  225.778906] EIP: __apply_to_page_range+0x24d/0x31c
[  225.778916] Code: ff ff 8b 55 e8 8b 45 cc e8 0a 11 ec ff 89 d8 83 c4 28 5b 5e 5f 5d c3 81 7d e0 a0 ef 96 c1 74 ad 8b 45 d0 e8 2d 83 49 00 eb a3 <0f> 0b 25 00 f0 ff ff 81 eb 00 00 00 40 01 c3 8b 45 ec 8b 00 e8 76
[  225.778924] EAX: 00000001 EBX: c53a3b58 ECX: b5c00000 EDX: c258aa00
[  225.778931] ESI: b5c00000 EDI: b5900000 EBP: c4b0fdb4 ESP: c4b0fd80
[  225.778938] DS: 007b ES: 007b FS: 00d8 GS: 0033 SS: 0068 EFLAGS: 00010202
[  225.778946] CR0: 80050033 CR2: b5900000 CR3: 053a3000 CR4: 000006d0

-- 
Ville Syrjälä
Intel
