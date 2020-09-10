Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E7426485B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 16:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DEF6E947;
	Thu, 10 Sep 2020 14:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A2C66E947;
 Thu, 10 Sep 2020 14:51:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74BD4A47DB;
 Thu, 10 Sep 2020 14:51:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Sep 2020 14:51:48 -0000
Message-ID: <159974950847.26638.6790804237555185182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200910095227.9466-1-jani.nikula@intel.com>
In-Reply-To: <20200910095227.9466-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_disable_all_disp?=
 =?utf-8?q?lay_features_when_no_display_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: disable all display features when no display (rev2)
URL   : https://patchwork.freedesktop.org/series/81541/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
744b4488a267 drm/i915: disable all display features when no display
c82e72fb6cfc drm/i915: move gen4 GCDGMBUS save/restore to display save/restore
-:35: CHECK:CAMELCASE: Avoid CamelCase: <saveGCDGMBUS>
#35: FILE: drivers/gpu/drm/i915/i915_suspend.c:49:
+				     &dev_priv->regfile.saveGCDGMBUS);

total: 0 errors, 0 warnings, 1 checks, 55 lines checked
14c7ebe95647 drm/i915: move gmbus restore to i915_restore_display


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
