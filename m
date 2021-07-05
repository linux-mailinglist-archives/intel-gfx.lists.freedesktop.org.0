Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC86F3BBEBC
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 17:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539DF88FD2;
	Mon,  5 Jul 2021 15:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE37288FD2;
 Mon,  5 Jul 2021 15:15:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7DECA00E6;
 Mon,  5 Jul 2021 15:15:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 05 Jul 2021 15:15:53 -0000
Message-ID: <162549815373.22950.432998581909653653@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210705135310.1502437-1-matthew.auld@intel.com>
In-Reply-To: <20210705135310.1502437-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/5=5D_drm/i915=3A_use_consist?=
 =?utf-8?q?ent_CPU_mappings_for_pin=5Fmap_users?=
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

Series: series starting with [v3,1/5] drm/i915: use consistent CPU mappings for pin_map users
URL   : https://patchwork.freedesktop.org/series/92209/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a003ccd3dd56 drm/i915: use consistent CPU mappings for pin_map users
a6e0c6b9349a drm/i915/uapi: convert drm_i915_gem_caching to kernel doc
53317ac5ecc4 drm/i915/uapi: reject caching ioctls for discrete
ee22ceeab3ad drm/i915/uapi: convert drm_i915_gem_set_domain to kernel doc
-:30: CHECK:LINE_SPACING: Please don't use multiple blank lines
#30: FILE: include/uapi/drm/i915_drm.h:883:
 
+

total: 0 errors, 0 warnings, 1 checks, 45 lines checked
d507ae4d5737 drm/i915/uapi: reject set_domain for discrete


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
