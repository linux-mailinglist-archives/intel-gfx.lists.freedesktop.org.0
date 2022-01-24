Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3454994C3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 22:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8F510EAF9;
	Mon, 24 Jan 2022 21:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17A1210EA78;
 Mon, 24 Jan 2022 21:06:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14B9EAA01E;
 Mon, 24 Jan 2022 21:06:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yaroslav Bolyukin" <iam@lach.pw>
Date: Mon, 24 Jan 2022 21:06:27 -0000
Message-ID: <164305838708.1340.5762438040232537389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118215956.17229-1-iam@lach.pw>
In-Reply-To: <20220118215956.17229-1-iam@lach.pw>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_Support_type_7_timings?=
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

Series: drm/edid: Support type 7 timings
URL   : https://patchwork.freedesktop.org/series/99250/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9735d3ddba6d drm/edid: Support type 7 timings
-:24: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#24: FILE: drivers/gpu/drm/drm_edid.c:5443:
+							    struct displayid_detailed_timings_1 *timings,

total: 0 errors, 1 warnings, 0 checks, 42 lines checked


