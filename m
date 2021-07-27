Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CBB3D6B08
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 02:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6C16F903;
	Tue, 27 Jul 2021 00:28:15 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1A86F903;
 Tue, 27 Jul 2021 00:28:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234202260"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="234202260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 17:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="474183046"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2021 17:28:12 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 26 Jul 2021 17:28:11 -0700
Message-Id: <20210727002812.43469-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH i-g-t 0/1] Add tests for new hw info query
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. A new interface has been added to the KMD to return
this information. So, add a test for the new interfaces.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h |   1 +
 lib/intel_hwconfig_types.h  | 106 +++++++++++++++++++++++
 tests/i915/i915_query.c     | 168 ++++++++++++++++++++++++++++++++++++
 3 files changed, 275 insertions(+)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
