Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609E2965F99
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBCF610EA74;
	Fri, 30 Aug 2024 10:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833A310EA73;
 Fri, 30 Aug 2024 10:52:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_fbdev=3A_Introduce_d?=
 =?utf-8?q?evm=5Fregister=5Fframebuffer=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 10:52:05 -0000
Message-ID: <172501512553.854308.3127193858498449850@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240830-fbdev-devm_register_framebuffer-v1-1-6d4186519c68@weissschuh.net>
In-Reply-To: <20240830-fbdev-devm_register_framebuffer-v1-1-6d4186519c68@weissschuh.net>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: fbdev: Introduce devm_register_framebuffer()
URL   : https://patchwork.freedesktop.org/series/138009/
State : warning

== Summary ==

Error: dim checkpatch failed
89dd5a26d8ff fbdev: Introduce devm_register_framebuffer()
-:64: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#64: FILE: include/linux/fb.h:605:
+extern int devm_register_framebuffer(struct device *dev, struct fb_info *fb_info);

total: 0 errors, 0 warnings, 1 checks, 43 lines checked


