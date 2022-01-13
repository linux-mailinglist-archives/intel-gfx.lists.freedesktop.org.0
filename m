Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA31F48D244
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 07:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC4211211A;
	Thu, 13 Jan 2022 06:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD64611211A;
 Thu, 13 Jan 2022 06:16:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7885A7DFB;
 Thu, 13 Jan 2022 06:16:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 13 Jan 2022 06:16:03 -0000
Message-ID: <164205456371.18999.12609778463075709672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220113055903.7607-1-matthew.brost@intel.com>
In-Reply-To: <20220113055903.7607-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Ensure_multi-lrc_fini_breadcrumb_math_is_co?=
 =?utf-8?q?rrect?=
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

Series: drm/i915/guc: Ensure multi-lrc fini breadcrumb math is correct
URL   : https://patchwork.freedesktop.org/series/98816/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cbc7f028c5ae drm/i915/guc: Ensure multi-lrc fini breadcrumb math is correct
-:109: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#109: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4578:
 }
+#undef NON_SKIP_LEN

total: 0 errors, 0 warnings, 1 checks, 91 lines checked


