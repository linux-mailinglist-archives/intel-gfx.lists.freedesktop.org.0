Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5C20C077
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 11:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1A66E16B;
	Sat, 27 Jun 2020 09:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4051A6E16B;
 Sat, 27 Jun 2020 09:32:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A90DA3C0D;
 Sat, 27 Jun 2020 09:32:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 27 Jun 2020 09:32:45 -0000
Message-ID: <159325036521.5394.13328630417701316434@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
In-Reply-To: <20200626232641.4557-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/2=5D_drm/i915/dp=3A_Helper_f?=
 =?utf-8?q?or_checking_DDI=5FBUF=5FCTL_Idle_status?=
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

Series: series starting with [v4,1/2] drm/i915/dp: Helper for checking DDI_BUF_CTL Idle status
URL   : https://patchwork.freedesktop.org/series/78867/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e41b98b71f2b drm/i915/dp: Helper for checking DDI_BUF_CTL Idle status
-:38: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#38: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1188:
+		udelay(16);

total: 0 errors, 0 warnings, 1 checks, 24 lines checked
8d63e562ec8b drm/i915/dp: Helper to check for DDI BUF status to get active
-:36: ERROR:SPACING: space prohibited before that close parenthesis ')'
#36: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1201:
+	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv) ) {

total: 1 errors, 0 warnings, 0 checks, 28 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
