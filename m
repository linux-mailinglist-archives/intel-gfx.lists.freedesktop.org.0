Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972F687B68E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 03:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E007F10F638;
	Thu, 14 Mar 2024 02:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9E510F638;
 Thu, 14 Mar 2024 02:55:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Disable_automatic_lo?=
 =?utf-8?q?ad_CCS_load_balancing_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 02:55:33 -0000
Message-ID: <171038493325.750251.3600624993591339872@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240313201955.95716-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240313201955.95716-1-andi.shyti@linux.intel.com>
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

Series: Disable automatic load CCS load balancing (rev9)
URL   : https://patchwork.freedesktop.org/series/129951/
State : warning

== Summary ==

Error: dim checkpatch failed
06497016416d drm/i915/gt: Disable HW load balancing for CCS
c3197ab37c84 drm/i915/gt: Do not generate the command streamer for all the CCS
897e3b8ec2cb drm/i915/gt: Enable only one CCS for compute workload
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:109: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'cslice' may be better as '(cslice)' to avoid precedence issues
#109: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1486:
+#define   XEHP_CCS_MODE_CSLICE(cslice, ccs)	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))

-:109: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ccs' may be better as '(ccs)' to avoid precedence issues
#109: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1486:
+#define   XEHP_CCS_MODE_CSLICE(cslice, ccs)	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))

total: 0 errors, 1 warnings, 2 checks, 89 lines checked


