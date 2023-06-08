Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C70727ECF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 13:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABACB10E05D;
	Thu,  8 Jun 2023 11:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE22510E05D;
 Thu,  8 Jun 2023 11:31:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD32DA73C7;
 Thu,  8 Jun 2023 11:31:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Thu, 08 Jun 2023 11:31:57 -0000
Message-ID: <168622391770.18387.7079563515623261993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230608093218.511280-1-arun.r.murthy@intel.com>
In-Reply-To: <20230608093218.511280-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/dp=3A_On_AUX_xfer_timeout_restart_freshly_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/display/dp: On AUX xfer timeout restart freshly (rev2)
URL   : https://patchwork.freedesktop.org/series/119055/
State : warning

== Summary ==

Error: dim checkpatch failed
2a1723da181b drm/i915/display/dp: On AUX xfer timeout restart freshly
-:6: WARNING:TYPO_SPELLING: 'begining' may be misspelled - perhaps 'beginning'?
#6: 
At the begining of the aux transfer a check for aux control busy bit is
       ^^^^^^^^

-:79: CHECK:BRACES: Unbalanced braces around else statement
#79: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:304:
+				} else

total: 0 errors, 1 warnings, 1 checks, 72 lines checked


