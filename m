Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3BD7418D5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 21:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1262810E389;
	Wed, 28 Jun 2023 19:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF33810E0BF;
 Wed, 28 Jun 2023 19:23:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32943AADEB;
 Wed, 28 Jun 2023 19:23:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 28 Jun 2023 19:23:34 -0000
Message-ID: <168798021417.32038.11201701709151083666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230628173708.3239698-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230628173708.3239698-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gsc=3A_define_gsc_fw_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gsc: define gsc fw (rev2)
URL   : https://patchwork.freedesktop.org/series/119310/
State : warning

== Summary ==

Error: dim checkpatch failed
d3a4ff1373d5 drm/i915/gsc: define gsc fw
-:23: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#23: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/8705

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'major_' - possible side-effects?
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:242:
+#define GSC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
+		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'minor_' - possible side-effects?
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:242:
+#define GSC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
+		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))

total: 0 errors, 1 warnings, 2 checks, 71 lines checked


