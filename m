Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0783A23B2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 07:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1C56E479;
	Thu, 10 Jun 2021 05:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30F3F6E45D;
 Thu, 10 Jun 2021 05:09:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 234C7A9932;
 Thu, 10 Jun 2021 05:09:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 10 Jun 2021 05:09:03 -0000
Message-ID: <162330174311.27732.11274341980822894559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210610043649.144416-1-matthew.brost@intel.com>
In-Reply-To: <20210610043649.144416-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_firmware_to_v62=2E0=2E0_=28rev2=29?=
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

Series: Update firmware to v62.0.0 (rev2)
URL   : https://patchwork.freedesktop.org/series/91106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e0320873b5c7 drm/i915/guc: Introduce unified HXG messages
06f199146a15 drm/i915/guc: Update MMIO based communication
cd00d5e55cf0 drm/i915/guc: Update CTB response status definition
a1cd56a2cdae drm/i915/guc: Support per context scheduling policies
9f605623e111 drm/i915/guc: Add flag for mark broken CTB
de1419119eea drm/i915/guc: New definition of the CTB descriptor
663d8a99de4c drm/i915/guc: New definition of the CTB registration action
-:83: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#83: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:60:
+#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR	GUC_HXG_REQUEST_MSG_n_DATAn

total: 0 errors, 0 warnings, 1 checks, 261 lines checked
53ca4a74a19f drm/i915/guc: New CTB based communication
166540a8dca3 drm/i915/doc: Include GuC ABI documentation
2dfe2edc4785 drm/i915/guc: Kill guc_clients.ct_pool
da1704b929c9 drm/i915/guc: Kill ads.client_info
1da38370e4f7 drm/i915/guc: Unified GuC log
261607eceeef drm/i915/guc: Update firmware to v62.0.0
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 32 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
