Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DB9520650
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E35AD10F1E6;
	Mon,  9 May 2022 21:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC4110F1EF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130106; x=1683666106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dYnUTteFcMP5sRyGAIb7K2FM5v4FyAFpRxWKAHfDUuo=;
 b=D/QUxOa+OuTUUjejzTd15QY+dypiHIFjWTlA0xVgI2KjpRXJemlV3IYl
 fRxu1f1oQU4gM8Dfz178JOhf65eAp8Dzl1SD/KpM9wlp2f+Q9uGCUSyNs
 qq7UgGv5ESDt7YDTtZj7guOgPdhU9abqhknLz8GvxCPukpngb5GBuj8xT
 fw8Tcj+yM/kbPSHNTt5tJwJiNcAOiB648XsXWlU52PaOw8jrgTO7OFpLp
 /znKuvOBfzQV8gN3vnGe59/VzgrSkVHNsRwiSGyHK3UFoTQ8A8IBXy8H5
 Ji0T8h/jBuJmX16O2vQW/IMKa44ZNtiWjN3u2/ukbLSV+xjDAw58Esauc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703593"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703593"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410906"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:45 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:47 -0700
Message-Id: <20220509210151.1843173-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 2/6] drm/i915/guc: Add unaligned wc memcpy
 for copying GuC Log
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

Add usage of unaligned wc mempy in read_update_log_buffer
as newer formats of GuC debug-log-events are no longer
guaranteed to be exactly 4-dwords long per event.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 09f4d5fbca82..d902b40ded0e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -301,13 +301,16 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 
 		/* Just copy the newly written data */
 		if (read_offset > write_offset) {
-			i915_memcpy_from_wc(dst_data, src_data, write_offset);
+			if (!i915_memcpy_from_wc(dst_data, src_data, write_offset))
+				i915_unaligned_memcpy_from_wc(dst_data, src_data, write_offset);
 			bytes_to_copy = buffer_size - read_offset;
 		} else {
 			bytes_to_copy = write_offset - read_offset;
 		}
-		i915_memcpy_from_wc(dst_data + read_offset,
-				    src_data + read_offset, bytes_to_copy);
+		if (!i915_memcpy_from_wc(dst_data + read_offset,
+					 src_data + read_offset, bytes_to_copy))
+			i915_unaligned_memcpy_from_wc(dst_data + read_offset,
+						      src_data + read_offset, bytes_to_copy);
 
 		src_data += buffer_size;
 		dst_data += buffer_size;
-- 
2.25.1

