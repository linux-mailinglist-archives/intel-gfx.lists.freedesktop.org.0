Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8941703B6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:04:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5D46EA8F;
	Wed, 26 Feb 2020 16:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F31B6EA8F;
 Wed, 26 Feb 2020 16:04:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4764CA3C0D;
 Wed, 26 Feb 2020 16:04:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 26 Feb 2020 16:04:03 -0000
Message-ID: <158273304326.21011.12465865324450708889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_i915_based_i915=5FMISSING=5FCASE_macr?=
 =?utf-8?q?o_and_us_it_in_i915?=
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

Series: drm/i915: Introduce i915 based i915_MISSING_CASE macro and us it in i915
URL   : https://patchwork.freedesktop.org/series/73908/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f04e32590e91 drm/i915: Add i915 device based MISSING_CASE macro
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/i915_utils.h:55:
+#define i915_MISSING_CASE(i915, x) drm_WARN(&(i915)->drm, 1, \
+					    "Missing case (%s == %ld)\n", \
+					    __stringify(x), (long)(x))

total: 0 errors, 0 warnings, 1 checks, 10 lines checked
cc9141f3850c drm/i915/display/cdclk: Make MISSING_CASE backtrace i915 specific
ec2632eb9e18 drm/i915/display/ddi: Make MISSING_CASE backtrace i915 specific
f8315a3a078d drm/i915/display/display: Make MISSING_CASE backtrace i915 specific
fa563d2d4620 drm/i915/dp: Make MISSING_CASE backtrace i915 specific
f634ed71f53a drm/i915/display/hdmi: Make MISSING_CASE backtrace i915 specific
8de10f450920 drm/i915/display: Make MISSING_CASE backtrace i915 specific
a04daf106db7 drm/i915/gem: Make MISSING_CASE backtrace i915 specific
cda06a3fe764 drm/i915/gt: Make MISSING_CASE backtrace i915 specific
4908d4bfc3d8 drm/i915: Make MISSING_CASE backtrace i915 specific

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
