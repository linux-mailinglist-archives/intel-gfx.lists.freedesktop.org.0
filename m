Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5BB69894F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 01:34:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75C210E004;
	Thu, 16 Feb 2023 00:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCB3810E004;
 Thu, 16 Feb 2023 00:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C25A8AADD8;
 Thu, 16 Feb 2023 00:34:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 16 Feb 2023 00:34:37 -0000
Message-ID: <167650767776.17990.3516011579570318320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Use_encoder?=
 =?utf-8?q?-=3Edevdata_more_=28rev2=29?=
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

Series: series starting with [v2,1/3] drm/i915: Use encoder->devdata more (rev2)
URL   : https://patchwork.freedesktop.org/series/114029/
State : warning

== Summary ==

Error: dim checkpatch failed
6d862c28ab08 drm/i915: Use encoder->devdata more
c197ab2941f5 drm/i915: Sanitize child devices later
f80b5f236011 drm/i915: Try to initialize DDI ports for every VBT child device
-:29: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#29: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2614:
+intel_bios_for_each_child(struct drm_i915_private *i915,
+			  enum port port,
+			  bool (*func)(struct drm_i915_private *i915,
+				       struct intel_bios_encoder_data *devdata,
+				       enum port port))
+{

total: 1 errors, 0 warnings, 0 checks, 197 lines checked


