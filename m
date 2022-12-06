Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07C1643FAA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 10:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E3F10E02A;
	Tue,  6 Dec 2022 09:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0C0810E304
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 09:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670318290; x=1701854290;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yfPAqrDWZZCgB1eizROIWW/nWhXr/GEaimFx/LJsQ+I=;
 b=MdvKuhKUcAf31eSXrEMPwMXE+dIUyBSyUb11TmROyiSvXTJ8izWLywge
 6fg7jbwM0tl7qRZiqmi924XUz+Bl2UBVmv10JpWtVcRxcvcme0GnwfrL5
 W4QMjGCJswEWJuA5ZT+knWpG9qQEy2aV6f6e5+L2bg6xoL/8S32sjwO1G
 l7+r1hWmDKbCZMFWlgR4VgXMZBCWjiw+iqKgEtPLhoZQH8LJ1uzlv7RXS
 2LPyOrnGthcI7hsKxR8zBy0IXjQqN59l9/LJuANeEhf2ctFwaLo6tb5Qu
 7yg6lcOl73L3U7H89Fj6CNrOmNyOnYJ/gHwWeSgyZp36PoiVvd6JDGvA+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318438112"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318438112"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623833214"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623833214"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 01:18:10 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 01:20:57 -0800
Message-Id: <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc memcpy
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
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index c5a7aecd08ac..2fa952916120 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -459,13 +459,16 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 
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
2.34.1

