Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5201C54B213
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 15:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C1210FA3D;
	Tue, 14 Jun 2022 13:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE67710FA3D;
 Tue, 14 Jun 2022 13:12:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C61D6A00CC;
 Tue, 14 Jun 2022 13:12:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Tue, 14 Jun 2022 13:12:17 -0000
Message-ID: <165521233777.12486.7133467690423738979@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220614082732.2228-1-william.tseng@intel.com>
In-Reply-To: <20220614082732.2228-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_add_payload_receiving_code?=
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

Series: drm/i915/dsi: add payload receiving code
URL   : https://patchwork.freedesktop.org/series/105096/
State : warning

== Summary ==

Error: dim checkpatch failed
c041108e8df4 drm/i915/dsi: add payload receiving code
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:205:
+static int dsi_read_pkt_payld(struct intel_dsi_host *host,
+			    u8 *rx_buf, size_t rx_len)

-:75: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#75: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:253:
+	payld_read = min(rx_len, (size_t)4*payld_dw);
 	                                  ^

-:78: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#78: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:256:
+	for (i = 0; i < payld_read; i++) {
+

-:82: CHECK:SPACING: spaces preferred around that '%' (ctx:VxV)
#82: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:260:
+		*(rx_buf + i) = (payld_data >> (8 * (i%4))) & 0xff;
 		                                      ^

total: 0 errors, 0 warnings, 4 checks, 111 lines checked


