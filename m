Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6037C176359
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 19:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16C86E44B;
	Mon,  2 Mar 2020 18:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FD296E43A;
 Mon,  2 Mar 2020 18:56:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67C19A0071;
 Mon,  2 Mar 2020 18:56:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oliver Barta" <o.barta89@gmail.com>
Date: Mon, 02 Mar 2020 18:56:37 -0000
Message-ID: <158317539742.30645.10759915254460134994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200229103922.4432-1-oliver.barta@aptiv.com>
In-Reply-To: <20200229103922.4432-1-oliver.barta@aptiv.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_HDCP=3A_fix_Ri_prime_check_done_during_link_che?=
 =?utf-8?q?ck?=
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

Series: drm/i915: HDCP: fix Ri prime check done during link check
URL   : https://patchwork.freedesktop.org/series/74152/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
56c69a1c0711 drm/i915: HDCP: fix Ri prime check done during link check
-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1540:
+	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
+		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==

total: 0 errors, 0 warnings, 1 checks, 9 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
