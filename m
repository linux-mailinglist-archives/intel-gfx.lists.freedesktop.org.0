Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F48720BBC
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 00:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D3B10E64A;
	Fri,  2 Jun 2023 22:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79B0210E64A;
 Fri,  2 Jun 2023 22:07:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 706DEAADD8;
 Fri,  2 Jun 2023 22:07:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 02 Jun 2023 22:07:35 -0000
Message-ID: <168574365542.15700.14535249467662837242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230602205327.1542958-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230602205327.1542958-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Avoid_reading_OA_reports_before_they_land?=
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

Series: Avoid reading OA reports before they land
URL   : https://patchwork.freedesktop.org/series/118802/
State : warning

== Summary ==

Error: dim checkpatch failed
4ad91b694aa1 i915/perf: Drop the aging_tail logic in perf OA
-:36: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Bug:', use 'Link:' or 'Closes:' instead
#36: 
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484

-:37: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Bug:', use 'Link:' or 'Closes:' instead
#37: 
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757

total: 0 errors, 2 warnings, 0 checks, 143 lines checked
c3dbf9b44f05 i915/perf: Do not add ggtt offset to hw_tail


