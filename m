Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2901930D1D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 06:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4BA10E133;
	Mon, 15 Jul 2024 04:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Br2X91iA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A357910E133
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2024 04:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721016123; x=1752552123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xsYt+sEueAHzGe+jLy5U4MCFsUZJVrAUtIEkam/7yEI=;
 b=Br2X91iADYfm1+jgig3lzqXyBC9bzbDHb+sFiSnDkjisUyh4dJbX7fkp
 COJauY/RchDFOUauB1gYBq+dBxf5Wuxtl+DHGUoqYGPA2yufG+4vtWVTh
 bpume9d2kdr8LyPmFHMmh4cu5u04tkjyi8iH7JI2TPMIUZP04X8+XY1D6
 IlipD4D4LEzmDApHqjNJgBXg6RaF/yAJGD7wM3B9X9PK0QqI408/FHqe7
 /3gv9rrHc9u5JhkQbflta6qMqmcVUnG257G7xzbWQR16Au6+Om0DsVQcs
 BurJqDFEUasFTS/n7I/Fl3CZHQGLOomczjH/UuRqyrsgy3Tr0PkFok90o w==;
X-CSE-ConnectionGUID: fGN54ClNTcyIUMmtbK2v3Q==
X-CSE-MsgGUID: toQyul3TRzOrZBv1QnGXFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="12547709"
X-IronPort-AV: E=Sophos;i="6.09,209,1716274800"; d="scan'208";a="12547709"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2024 21:02:02 -0700
X-CSE-ConnectionGUID: yckqSuLzRHi6veC/WRttsQ==
X-CSE-MsgGUID: 6Bl45IOiS1CAnuL2upyx8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,209,1716274800"; d="scan'208";a="86999451"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 14 Jul 2024 21:02:00 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, sfr@canb.auug.org.au, jani.nikula@intel.com
Subject: [PATCH v3] drm/dp: Describe target_rr_divider in struct drm_dp_as_sdp
Date: Mon, 15 Jul 2024 09:32:34 +0530
Message-ID: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Describe newly added parameter target_rr_divider in struct
drm_dp_as_sdp.

-v2:
Remove extra line from commit message.(Lucas)

-v3:
Rebase.

Fixes: a20c6d954d75 ("drm/dp: Add refresh rate divider to struct representing AS SDP")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp_helper.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index bbb1cdc4fc68..279624833ea9 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -112,6 +112,7 @@ struct drm_dp_vsc_sdp {
  * @target_rr: Target Refresh
  * @duration_incr_ms: Successive frame duration increase
  * @duration_decr_ms: Successive frame duration decrease
+ * @target_rr_divider: Target refresh rate divider
  * @mode: Adaptive Sync Operation Mode
  */
 struct drm_dp_as_sdp {
-- 
2.45.2

