Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MuEKkk2zmmAmAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 11:26:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4B4386E38
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 11:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46FA10E2D9;
	Thu,  2 Apr 2026 09:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IkRh6CHw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8BB10E2D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2026 09:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775121990; x=1806657990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7BEI/ndrx10VSKp5tQ9KLWW/ppJeFqwcvJyGA28SOzo=;
 b=IkRh6CHwT0AN2XUO2PzpO9RbhF759wmj5jQSt4OwYpj0V6bXVEbK+qJj
 sk0sfYKraGg58swYfJQBPFcc97ooPo/Qg80OoLgsMdymScnSImkQReC7L
 gPidWhZTs3EQOACSJw7RWfMIpptCBA/RN6IEfEy3NfCHGs5s2nSjY5yZT
 ORu1dSRuKuGrWdw8xAgfTaR1pA9Xw40FVUTIOndbd1AY7c6j+aRRIpPaF
 jWg+VM6jUhT8DEaGNUxMgiB/1yVlb1j+kKlymGyI+yp7hiPZzQK3ojbjY
 /5ggDodaljXQmtSstcxFG/5P78CmbxTdqtNbpq0zbtLwGrHjnm0+mcN4q g==;
X-CSE-ConnectionGUID: UP01QSTHTD6u+jhA3oGQBg==
X-CSE-MsgGUID: PCrA2cQQRfONySI3ORzrcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76067600"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="76067600"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 02:26:29 -0700
X-CSE-ConnectionGUID: NvPlCPlcToe1lw7gdFy1Bg==
X-CSE-MsgGUID: BKhgeaD4Soyq8R2z5myQVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="231725118"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.189])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 02:26:28 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH topic/core-for-CI] iommu: Do not call drivers for empty gathers
Date: Thu,  2 Apr 2026 11:23:13 +0200
Message-ID: <20260402092506.2612595-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 2E4B4386E38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jason Gunthorpe <jgg@nvidia.com>

An empty gather is coded with start=U64_MAX, end=0 and several drivers go
on to convert that to a size with:

 end - start + 1

Which gives 2 for an empty gather. This then causes Weird Stuff to
happen (for example an UBSAN splat in VT-d) that is hopefully harmless,
but maybe not.

Prevent drivers from being called right in iommu_iotlb_sync().

Auditing shows that AMD, Intel, Mediatek and RSIC-V drivers all do things
on these empty gathers.

Further, there are several callers that can trigger empty gathers,
especially in unusual conditions. For example iommu_map_nosync() will call
a 0 size unmap on some error paths. Also in VFIO, iommupt and other
places.

Cc: stable@vger.kernel.org
Reported-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Closes: https://lore.kernel.org/r/11145826.aFP6jjVeTY@jkrzyszt-mobl2.ger.corp.intel.com
Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
Reviewed-by: Samiullah Khawaja <skhawaja@google.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Vasant Hegde <vasant.hegde@amd.com>
Signed-off-by: Joerg Roedel <joerg.roedel@amd.com>
(cherry picked from commit 90c5def10bea574b101b7a520c015ca81742183f)
Link: https://lore.kernel.org/all/1-v1-13a02eb0e031+a5-iommu_gather_jgg@nvidia.com
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15478
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 include/linux/iommu.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 54b8b48c762e8..555597b54083c 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -980,7 +980,8 @@ static inline void iommu_flush_iotlb_all(struct iommu_domain *domain)
 static inline void iommu_iotlb_sync(struct iommu_domain *domain,
 				  struct iommu_iotlb_gather *iotlb_gather)
 {
-	if (domain->ops->iotlb_sync)
+	if (domain->ops->iotlb_sync &&
+	    likely(iotlb_gather->start < iotlb_gather->end))
 		domain->ops->iotlb_sync(domain, iotlb_gather);
 
 	iommu_iotlb_gather_init(iotlb_gather);
-- 
2.53.0

