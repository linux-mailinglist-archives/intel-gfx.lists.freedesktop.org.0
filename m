Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EAC53CD2A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 18:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A20C10FFCD;
	Fri,  3 Jun 2022 16:25:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D20910FACE;
 Fri,  3 Jun 2022 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654273553; x=1685809553;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PJ7LMIVxDFVuvPnbaG5kF0ak74QHrMknwkrULkzRfjs=;
 b=jgkSDNgEssJfr1oHqPh1VQd4CQbyp4OvT6K9yGJFZLLDpHDLEVWau90M
 xMS6sROK5gmKqBb6wS6+DEu8XYALmiybX7/L32fGX9vqXO3SM++M+TRTl
 J1qoW89TLn1NuIShavuo6TJYPZdP7p+HHt/SAOp/yjuZv7ROkRaCbVcmg
 lV52bFBPdwiARZZB/bdYllfQ0izJcMk4Y74VgXp60N9yvZv6al3zUeCU1
 JzcKBw78kjLfTtwPDWoDYR3TSeCmSW8cQKHO+fuCRpGwW7RMsAe25lWfd
 ZbGb7DfwrnnUC8pQHd1/JkvhsMWGXZK6tNCvUqGh1o5rS7KMuPZLEWxGE w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="273853170"
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="273853170"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 09:25:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="563850900"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2022 09:25:52 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri,  3 Jun 2022 09:25:49 -0700
Message-Id: <20220603162552.2254187-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 0/3] Update DRM UAPI and add test for
 new hw info query
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. A new interface has been added to the KMD to return
this information. So, add a test for the new interface.

Also, update to the latest DRM UAPI header file that contains the new
query enums.

Lastly, none of the query tests had description entries. So made some
up.

v2: Rebased to newer baseline.
v3: Update UAPI header file.
v4: Use correct method for updating header file.
v5: Add descriptions to all the query tests.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  include/drm-uapi: Update to latest i915_drm.h
  tests/i915/query: Add descriptions to existing tests

Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h | 398 ++++++++++++++++++++++++++++--------
 lib/intel_hwconfig_types.h  | 118 +++++++++++
 tests/i915/i915_query.c     | 192 +++++++++++++++++
 3 files changed, 622 insertions(+), 86 deletions(-)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.36.0

