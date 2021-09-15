Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E4540CCE3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9166E9DF;
	Wed, 15 Sep 2021 19:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4976E9DE;
 Wed, 15 Sep 2021 19:00:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286094772"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="286094772"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:00:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="553460942"
Received: from rdignam-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.110])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:00:19 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 15 Sep 2021 19:59:45 +0100
Message-Id: <20210915185954.3114858-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210915185954.3114858-1-matthew.auld@intel.com>
References: <20210915185954.3114858-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/12] drm/ttm: remove TTM_PAGE_FLAG_NO_RETRY
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

No longer used it seems.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Christian König <christian.koenig@amd.com>
---
 include/drm/ttm/ttm_tt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/drm/ttm/ttm_tt.h b/include/drm/ttm/ttm_tt.h
index 89b15d673b22..842ce756213c 100644
--- a/include/drm/ttm/ttm_tt.h
+++ b/include/drm/ttm/ttm_tt.h
@@ -41,7 +41,6 @@ struct ttm_operation_ctx;
 #define TTM_PAGE_FLAG_SWAPPED         (1 << 4)
 #define TTM_PAGE_FLAG_ZERO_ALLOC      (1 << 6)
 #define TTM_PAGE_FLAG_SG              (1 << 8)
-#define TTM_PAGE_FLAG_NO_RETRY	      (1 << 9)
 
 #define TTM_PAGE_FLAG_PRIV_POPULATED  (1 << 31)
 
-- 
2.26.3

