Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5056C02C1
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Mar 2023 16:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E0110E046;
	Sun, 19 Mar 2023 15:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E98B10E046;
 Sun, 19 Mar 2023 15:25:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EA7CA3ECB;
 Sun, 19 Mar 2023 15:25:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Sun, 19 Mar 2023 15:25:13 -0000
Message-ID: <167923951308.1814.8699392061028503888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230319140300.2892032-1-ashutosh.dixit@intel.com>
In-Reply-To: <20230319140300.2892032-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Revert_=22drm/i915/hwmon=3A_Enable_PL1_power_limit=22_=28re?=
 =?utf-8?b?djMp?=
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

Series: Revert "drm/i915/hwmon: Enable PL1 power limit" (rev3)
URL   : https://patchwork.freedesktop.org/series/113793/
State : warning

== Summary ==

Error: dim checkpatch failed
99b53261c0ad Revert "drm/i915/hwmon: Enable PL1 power limit"
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0349c41b0596 ("drm/i915/hwmon: Enable PL1 power limit")'
#8: 
0349c41b0596 ("drm/i915/hwmon: Enable PL1 power limit") was reverted in

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 05d5562e401e ("Revert "drm/i915/hwmon: Enable PL1 power limit"")'
#9: 
05d5562e401e ("Revert "drm/i915/hwmon: Enable PL1 power limit"") but has

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ee892ea83d99 ("drm/i915/hwmon: Enable PL1 power limit")'
#10: 
appeared again as ee892ea83d99 ("drm/i915/hwmon: Enable PL1 power

-:16: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Bug:', use 'Link:' instead
#16: 
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/8062

total: 3 errors, 1 warnings, 0 checks, 11 lines checked


