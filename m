Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95A314F578
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 01:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37E66FC5E;
	Sat,  1 Feb 2020 00:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAB976FC5D;
 Sat,  1 Feb 2020 00:38:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C24B1A0087;
 Sat,  1 Feb 2020 00:38:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jerry (Fangzhi) Zuo" <Jerry.Zuo@amd.com>
Date: Sat, 01 Feb 2020 00:38:41 -0000
Message-ID: <158051752176.32693.5087826182498639725@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131202451.8994-1-Jerry.Zuo@amd.com>
In-Reply-To: <20200131202451.8994-1-Jerry.Zuo@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Add_support_for_DP_1=2E4_Compliance_edid_corruption_?=
 =?utf-8?q?test_=28rev4=29?=
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

Series: drm: Add support for DP 1.4 Compliance edid corruption test (rev4)
URL   : https://patchwork.freedesktop.org/series/70530/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bd9dc1267ab5 drm: Add support for DP 1.4 Compliance edid corruption test
-:51: ERROR:CODE_INDENT: code indent should use tabs where possible
#51: FILE: drivers/gpu/drm/drm_dp_helper.c:372:
+                                    u8 real_edid_checksum)$

-:51: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#51: FILE: drivers/gpu/drm/drm_dp_helper.c:372:
+                                    u8 real_edid_checksum)$

total: 1 errors, 1 warnings, 0 checks, 105 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
