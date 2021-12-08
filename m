Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DAE46D63B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 15:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D3273747;
	Wed,  8 Dec 2021 14:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BE3873747;
 Wed,  8 Dec 2021 14:58:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0414DAA3D8;
 Wed,  8 Dec 2021 14:58:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: cgel.zte@gmail.com
Date: Wed, 08 Dec 2021 14:58:02 -0000
Message-ID: <163897548298.8234.1499265370053643751@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211208074952.404381-1-luo.penghao@zte.com.cn>
In-Reply-To: <20211208074952.404381-1-luo.penghao@zte.com.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Remove_the_useless_variable_offset_and_?=
 =?utf-8?q?its_assignment?=
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

Series: drm/i915/display: Remove the useless variable offset and its assignment
URL   : https://patchwork.freedesktop.org/series/97724/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c9a41e79dcc drm/i915/display: Remove the useless variable offset and its assignment
-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:1047:
+			intel_de_read(dev_priv,
 					       DSPTILEOFF(i9xx_plane));

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/display/i9xx_plane.c:1050:
+			intel_de_read(dev_priv,
 					       DSPLINOFF(i9xx_plane));

total: 0 errors, 0 warnings, 2 checks, 25 lines checked


