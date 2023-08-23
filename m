Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DD8785875
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 15:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31FA10E422;
	Wed, 23 Aug 2023 13:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DFE410E422;
 Wed, 23 Aug 2023 13:02:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23218AADD8;
 Wed, 23 Aug 2023 13:02:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 23 Aug 2023 13:02:12 -0000
Message-ID: <169279573211.16625.13412018281361305319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230823115425.715644-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230823115425.715644-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_eDP_DSC_fixes?=
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

Series: eDP DSC fixes
URL   : https://patchwork.freedesktop.org/series/122792/
State : warning

== Summary ==

Error: dim checkpatch failed
31956f691aad drm/display/dp: Default 8 bpc support when DSC is supported
65c3aa45b7a3 drivers/drm/i915: Honor limits->max_bpp while computing DSC max input bpp
-:25: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2068:
+							min(max_bpc, conn_state->max_requested_bpc));

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


