Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B19763A8D57
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 02:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3FD6E442;
	Wed, 16 Jun 2021 00:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96E896E442;
 Wed, 16 Jun 2021 00:20:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DF99A008A;
 Wed, 16 Jun 2021 00:20:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Wed, 16 Jun 2021 00:20:44 -0000
Message-ID: <162380284455.8274.2636720405967078816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616001302.84233-1-matthew.brost@intel.com>
In-Reply-To: <20210616001302.84233-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_firmware_to_v62=2E0=2E0_=28rev4=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Update firmware to v62.0.0 (rev4)
URL   : https://patchwork.freedesktop.org/series/91106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
20bd5d817f52 drm/i915/guc: Introduce unified HXG messages
899d9ce395b2 drm/i915/guc: Update firmware to v62.0.0
-:78: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#78: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:60:
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR	GUC_HXG_REQUEST_MSG_n_DATAn

total: 0 errors, 0 warnings, 1 checks, 1394 lines checked
386ac142a390 drm/i915/doc: Include GuC ABI documentation


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
