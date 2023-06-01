Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAF87190F0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 05:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E351D10E20E;
	Thu,  1 Jun 2023 03:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56A8F10E1F3;
 Thu,  1 Jun 2023 03:06:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13120A0BA8;
 Thu,  1 Jun 2023 03:06:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Thu, 01 Jun 2023 03:06:38 -0000
Message-ID: <168558879804.16230.283823817843251880@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230531235415.1467475-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230531235415.1467475-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HuC_loading_and_authentication_for_MTL_=28rev7?=
 =?utf-8?q?=29?=
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

Series: drm/i915: HuC loading and authentication for MTL (rev7)
URL   : https://patchwork.freedesktop.org/series/117080/
State : warning

== Summary ==

Error: dim checkpatch failed
db328ae23aa3 drm/i915/uc: perma-pin firmwares
-:124: ERROR:SPACING: space prohibited before that close parenthesis ')'
#124: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:118:
+intel_uc_ops_function(resume_mappings, resume_mappings, void, );

total: 1 errors, 0 warnings, 0 checks, 244 lines checked
0facb2ac78bb drm/i915/huc: Parse the GSC-enabled HuC binary
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:34: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#34: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 410 lines checked
4b15fbcd4856 drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so
-:85: ERROR:SPACING: space required before the open brace '{'
#85: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:341:
+			if (!HAS_ENGINE(gt, GSC0)){

total: 1 errors, 0 warnings, 0 checks, 147 lines checked
8bd967e4a3ab drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow
-:88: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#88: FILE: drivers/gpu/drm/i915/gt/uc/intel_huc.c:136:
+	GEM_BUG_ON(intel_huc_is_authenticated(huc, INTEL_HUC_AUTH_BY_GSC));

total: 0 errors, 1 warnings, 0 checks, 293 lines checked
10430be06b53 drm/i915/mtl/huc: auth HuC via GSC
a886ce1f679a drm/i915/mtl/huc: Use the media gt for the HuC getparam
3661c121278b drm/i915/huc: define HuC FW version for MTL


