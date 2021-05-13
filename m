Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBFB37F757
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 14:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29F86ED00;
	Thu, 13 May 2021 12:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BE426ED00;
 Thu, 13 May 2021 12:03:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 147F8A0BCB;
 Thu, 13 May 2021 12:03:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 13 May 2021 12:03:04 -0000
Message-ID: <162090738408.26534.11928671999716848288@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210513105334.175595-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210513105334.175595-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/jsl=3A_Add_W/A_1409054076_for_JSL?=
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

Series: drm/i915/jsl: Add W/A 1409054076 for JSL
URL   : https://patchwork.freedesktop.org/series/90129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
816593a3ccd4 drm/i915/jsl: Add W/A 1409054076 for JSL
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:44:
+static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
+				    enum pipe *pipe);

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1054:
+	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
+			pipe == PIPE_B &&

-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1059:
+		intel_de_write(dev_priv, CHICKEN_PAR1_1,
+				intel_de_read(dev_priv, CHICKEN_PAR1_1) | IGNORE_KVMR_PIPE_A);

-:58: CHECK:LINE_SPACING: Please don't use multiple blank lines
#58: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1267:
 
+

-:70: CHECK:LINE_SPACING: Please don't use multiple blank lines
#70: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1287:
 
+

-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1297:
+	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
+			pipe == PIPE_B &&

-:85: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#85: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:1302:
+		intel_de_write(dev_priv, CHICKEN_PAR1_1,
+				intel_de_read(dev_priv, CHICKEN_PAR1_1) &

total: 0 errors, 0 warnings, 7 checks, 76 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
