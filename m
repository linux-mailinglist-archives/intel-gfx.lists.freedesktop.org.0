Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6403CA89FBC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 15:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E30C10E795;
	Tue, 15 Apr 2025 13:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aosc.io header.i=@aosc.io header.b="E3GQRXB6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 371 seconds by postgrey-1.36 at gabe;
 Tue, 15 Apr 2025 13:40:35 UTC
Received: from relay-us1.mymailcheap.com (relay-us1.mymailcheap.com
 [51.81.35.219])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE66810E795
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 13:40:34 +0000 (UTC)
Received: from relay5.mymailcheap.com (relay5.mymailcheap.com [159.100.241.64])
 by relay-us1.mymailcheap.com (Postfix) with ESMTPS id 129602143F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 13:34:19 +0000 (UTC)
Received: from relay1.mymailcheap.com (relay1.mymailcheap.com
 [144.217.248.100])
 by relay5.mymailcheap.com (Postfix) with ESMTPS id 27ABA2005F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 13:34:13 +0000 (UTC)
Received: from nf1.mymailcheap.com (nf1.mymailcheap.com [51.75.14.91])
 by relay1.mymailcheap.com (Postfix) with ESMTPS id 681FB3E8C9;
 Tue, 15 Apr 2025 13:33:56 +0000 (UTC)
Received: from mail20.mymailcheap.com (mail20.mymailcheap.com [51.83.111.147])
 by nf1.mymailcheap.com (Postfix) with ESMTPSA id 083A540009;
 Tue, 15 Apr 2025 13:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
 t=1744724034; bh=D8QE8JgrUBczpSJWqnmRKCNqoinTq+e1JucXx1W1WZQ=;
 h=From:To:Cc:Subject:Date:From;
 b=E3GQRXB6izAkdBxeI74SACdHR7L6l2Yf8MEeWrrO94EtzA8nsTm+3ERCO3/TaMc71
 BKfcoZhtaFH5PXs1WtAva6yeWSMacyTmu/lUH4fx9e1vyCtqN/hFae4Euf6n1bfDre
 HP6xpZJ9CY41O3c5Cz2usbwyebRfejbuYqNyqsjA=
Received: from JellyZhongke.localdomain (unknown [203.175.14.48])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail20.mymailcheap.com (Postfix) with ESMTPSA id 5BBC74073B;
 Tue, 15 Apr 2025 13:33:49 +0000 (UTC)
From: Mingcong Bai <jeffbai@aosc.io>
To: Lu Baolu <baolu.lu@linux.intel.com>
Cc: Kexy Biscuit <kexybiscuit@aosc.io>, intel-gfx@lists.freedesktop.org,
 Mingcong Bai <jeffbai@aosc.io>, stable@vger.kernel.org,
 Wenhao Sun <weiguangtwk@outlook.com>,
 David Woodhouse <dwmw2@infradead.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Kevin Tian <kevin.tian@intel.com>, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH] iommu: intel: apply quirk_iommu_igfx for 8086:0044 (QM57/QS57)
Date: Tue, 15 Apr 2025 21:33:29 +0800
Message-ID: <20250415133330.12528-1-jeffbai@aosc.io>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 083A540009
X-Rspamd-Server: nf1.mymailcheap.com
X-Spamd-Result: default: False [3.19 / 10.00]; BAYES_SPAM(1.79)[85.81%];
 MID_CONTAINS_FROM(1.00)[]; R_MISSING_CHARSET(0.50)[];
 MIME_GOOD(-0.10)[text/plain]; ARC_NA(0.00)[];
 ASN(0.00)[asn:16276, ipnet:51.83.0.0/16, country:FR];
 RCVD_COUNT_ONE(0.00)[1]; RCPT_COUNT_TWELVE(0.00)[13];
 MIME_TRACE(0.00)[0:+]; TO_DN_SOME(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 FUZZY_RATELIMITED(0.00)[rspamd.com];
 FREEMAIL_CC(0.00)[aosc.io,lists.freedesktop.org,vger.kernel.org,outlook.com,infradead.org,8bytes.org,kernel.org,arm.com,intel.com,lists.linux.dev];
 FROM_HAS_DN(0.00)[];
 SPFBL_URIBL_EMAIL_FAIL(0.00)[jeffbai.aosc.io:server
 fail,weiguangtwk.outlook.com:server fail,stable.vger.kernel.org:server fail]; 
 FROM_EQ_ENVFROM(0.00)[]; TO_MATCH_ENVRCPT_SOME(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[outlook.com]; RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
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

On the Lenovo ThinkPad X201, when Intel VT-d is enabled in the BIOS, the
kernel boots with errors related to DMAR, the graphical interface appeared
quite choppy, and the system resets erratically within a minute after it
booted:

DMAR: DRHD: handling fault status reg 3
DMAR: [DMA Write NO_PASID] Request device [00:02.0] fault addr 0xb97ff000
[fault reason 0x05] PTE Write access is not set

Upon comparing boot logs with VT-d on/off, I found that the Intel Calpella
quirk (`quirk_calpella_no_shadow_gtt()') correctly applied the igfx IOMMU
disable/quirk correctly:

pci 0000:00:00.0: DMAR: BIOS has allocated no shadow GTT; disabling IOMMU
for graphics

Whereas with VT-d on, it went into the "else" branch, which then
triggered the DMAR handling fault above:

... else if (!disable_igfx_iommu) {
	/* we have to ensure the gfx device is idle before we flush */
	pci_info(dev, "Disabling batched IOTLB flush on Ironlake\n");
	iommu_set_dma_strict();
}

Now, this is not exactly scientific, but moving 0x0044 to quirk_iommu_igfx
seems to have fixed the aforementioned issue. Running a few `git blame'
runs on the function, I have found that the quirk was originally
introduced as a fix specific to ThinkPad X201:

commit 9eecabcb9a92 ("intel-iommu: Abort IOMMU setup for igfx if BIOS gave
no shadow GTT space")

Which was later revised twice to the "else" branch we saw above:

- 2011: commit 6fbcfb3e467a ("intel-iommu: Workaround IOTLB hang on
  Ironlake GPU")
- 2024: commit ba00196ca41c ("iommu/vt-d: Decouple igfx_off from graphic
  identity mapping")

I'm uncertain whether further testings on this particular laptops were
done in 2011 and (honestly I'm not sure) 2024, but I would be happy to do
some distro-specific testing if that's what would be required to verify
this patch.

P.S., I also see IDs 0x0040, 0x0062, and 0x006a listed under the same
`quirk_calpella_no_shadow_gtt()' quirk, but I'm not sure how similar these
chipsets are (if they share the same issue with VT-d or even, indeed, if
this issue is specific to a bug in the Lenovo BIOS). With regards to
0x0062, it seems to be a Centrino wireless card, but not a chipset?

I have also listed a couple (distro and kernel) bug reports below as
references (some of them are from 7-8 years ago!), as they seem to be
similar issue found on different Westmere/Ironlake, Haswell, and Broadwell
hardware setups.

Cc: stable@vger.kernel.org
Fixes: 6fbcfb3e467a ("intel-iommu: Workaround IOTLB hang on Ironlake GPU")
Fixes: ba00196ca41c ("iommu/vt-d: Decouple igfx_off from graphic identity mapping")
Link: https://bugzilla.kernel.org/show_bug.cgi?id=197029
Link: https://groups.google.com/g/qubes-users/c/4NP4goUds2c?pli=1
Link: https://bugs.archlinux.org/task/65362
Link: https://bbs.archlinux.org/viewtopic.php?id=230323
Reported-by: Wenhao Sun <weiguangtwk@outlook.com>
Signed-off-by: Mingcong Bai <jeffbai@aosc.io>
---
 drivers/iommu/intel/iommu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index b29da2d96d0b..64935e14b9ec 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -4432,6 +4432,9 @@ DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x2e30, quirk_iommu_igfx);
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x2e40, quirk_iommu_igfx);
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x2e90, quirk_iommu_igfx);
 
+/* QM57/QS57 integrated gfx malfunctions with dmar */
+DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x0044, quirk_iommu_igfx);
+
 /* Broadwell igfx malfunctions with dmar */
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x1606, quirk_iommu_igfx);
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x160B, quirk_iommu_igfx);
@@ -4509,7 +4512,6 @@ static void quirk_calpella_no_shadow_gtt(struct pci_dev *dev)
 	}
 }
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x0040, quirk_calpella_no_shadow_gtt);
-DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x0044, quirk_calpella_no_shadow_gtt);
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x0062, quirk_calpella_no_shadow_gtt);
 DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x006a, quirk_calpella_no_shadow_gtt);
 
-- 
2.49.0

