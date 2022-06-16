Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B73BC54D8EE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 05:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D6611272C;
	Thu, 16 Jun 2022 03:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AB7511272C;
 Thu, 16 Jun 2022 03:32:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 113C4AA0EA;
 Thu, 16 Jun 2022 03:32:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Thu, 16 Jun 2022 03:32:52 -0000
Message-ID: <165535037203.17459.4394205395635850923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220614082732.2228-1-william.tseng@intel.com>
In-Reply-To: <20220614082732.2228-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_add_payload_receiving_code_=28rev2=29?=
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

Series: drm/i915/dsi: add payload receiving code (rev2)
URL   : https://patchwork.freedesktop.org/series/105096/
State : warning

== Summary ==

Error: dim checkpatch failed
45422b4b5f8a drm/i915/dsi: add payload receiving code
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:205:
+static int dsi_read_pkt_payld(struct intel_dsi_host *host,
+			    u8 *rx_buf, size_t rx_len)

-:77: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#77: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:255:
+	payld_read = min(rx_len, (size_t)4*payld_dw);
 	                                  ^

-:80: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#80: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:258:
+	for (i = 0; i < payld_read; i++) {
+

-:84: CHECK:SPACING: spaces preferred around that '%' (ctx:VxV)
#84: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:262:
+		*(rx_buf + i) = (payld_data >> (8 * (i%4))) & 0xff;
 		                                      ^

total: 0 errors, 0 warnings, 4 checks, 119 lines checked


