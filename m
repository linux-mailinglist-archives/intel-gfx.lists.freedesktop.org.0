Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEEC9ECF9A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 16:24:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 195FA10E3F3;
	Wed, 11 Dec 2024 15:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2089A10E3F3;
 Wed, 11 Dec 2024 15:24:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/ci=3A_uprev_IGT_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2024 15:24:10 -0000
Message-ID: <173393065012.1237565.954657944777323571@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241211142806.1824961-1-vignesh.raman@collabora.com>
In-Reply-To: <20241211142806.1824961-1-vignesh.raman@collabora.com>
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

Series: drm/ci: uprev IGT (rev2)
URL   : https://patchwork.freedesktop.org/series/135749/
State : warning

== Summary ==

Error: dim checkpatch failed
954d51ca75ac drm/ci: uprev IGT
-:858: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#858: 
new file mode 100644

-:1290: ERROR:TRAILING_WHITESPACE: trailing whitespace
#1290: FILE: drivers/gpu/drm/ci/xfails/vkms-none-skips.txt:267:
+# Hardware name: ChromiumOS crosvm, BIOS 0 $

-:1344: ERROR:TRAILING_WHITESPACE: trailing whitespace
#1344: FILE: drivers/gpu/drm/ci/xfails/vkms-none-skips.txt:321:
+# Hardware name: ChromiumOS crosvm, BIOS 0 $

-:1397: ERROR:TRAILING_WHITESPACE: trailing whitespace
#1397: FILE: drivers/gpu/drm/ci/xfails/vkms-none-skips.txt:374:
+# Hardware name: ChromiumOS crosvm, BIOS 0 $

-:1451: ERROR:TRAILING_WHITESPACE: trailing whitespace
#1451: FILE: drivers/gpu/drm/ci/xfails/vkms-none-skips.txt:428:
+# Hardware name: ChromiumOS crosvm, BIOS 0 $

total: 4 errors, 1 warnings, 0 checks, 1300 lines checked


