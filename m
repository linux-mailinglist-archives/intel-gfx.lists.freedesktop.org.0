Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D7A97D189
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 09:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F230510E7B4;
	Fri, 20 Sep 2024 07:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2A010E7BC;
 Fri, 20 Sep 2024 07:12:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe/guc=3A_Improv?=
 =?utf-8?q?e_GuC_log_dumping_and_add_to_devcoredump?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2024 07:12:34 -0000
Message-ID: <172681635483.1049351.15928424977571581064@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240920032007.629624-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240920032007.629624-1-John.C.Harrison@Intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/xe/guc: Improve GuC log dumping and add to devcoredump
URL   : https://patchwork.freedesktop.org/series/138892/
State : warning

== Summary ==

Error: dim checkpatch failed
e7c29d0b7b85 drm/xe/guc: Remove spurious line feed in debug print
015c939c4cf6 drm/xe/devcoredump: Use drm_puts and already cached local variables
b78f311b341e drm/xe/devcoredump: Improve section headings and add tile info
d7d4531e8674 drm/xe/devcoredump: Add ASCII85 dump helper function
ce2a0e3bee53 drm/xe/guc: Copy GuC log prior to dumping
721ba70a76dd drm/xe/guc: Use a two stage dump for GuC logs and add more info
75df6173312e drm/print: Introduce drm_line_printer
519b06523ff7 drm/xe/guc: Dead CT helper
-:96: WARNING:MACRO_ARG_UNUSED: Argument 'ct' is not used in function-like macro
#96: FILE: drivers/gpu/drm/xe/xe_guc_ct.c:62:
+#define CT_DEAD(ct, ctb, reason)			\
+	do {						\
+		struct guc_ctb *_ctb = (ctb);		\
+		if (_ctb)				\
+			_ctb->info.broken = true;	\
+	} while (0)

-:96: WARNING:MACRO_ARG_UNUSED: Argument 'reason' is not used in function-like macro
#96: FILE: drivers/gpu/drm/xe/xe_guc_ct.c:62:
+#define CT_DEAD(ct, ctb, reason)			\
+	do {						\
+		struct guc_ctb *_ctb = (ctb);		\
+		if (_ctb)				\
+			_ctb->info.broken = true;	\
+	} while (0)

total: 0 errors, 2 warnings, 0 checks, 557 lines checked
6673afe9c211 drm/xe/guc: Dump entire CTB on errors
6a7038e98faa drm/xe/guc: Add GuC log to devcoredump captures
e1be53f89669 drm/xe/guc: Add a helper function for dumping GuC log to dmesg


