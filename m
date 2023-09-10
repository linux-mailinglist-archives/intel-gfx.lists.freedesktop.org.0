Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A2D799E6D
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 15:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A761610E047;
	Sun, 10 Sep 2023 13:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05EDA10E047;
 Sun, 10 Sep 2023 13:11:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EBD6A00E6;
 Sun, 10 Sep 2023 13:11:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Sun, 10 Sep 2023 13:11:31 -0000
Message-ID: <169435149148.5552.5600621993334802697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/spi=3A_spi_access_for_discrete_graphics?=
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

Series: drm/i915/spi: spi access for discrete graphics
URL   : https://patchwork.freedesktop.org/series/123510/
State : warning

== Summary ==

Error: dim checkpatch failed
eb746b900d2f drm/i915/spi: add spi device for discrete graphics
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:55: CHECK:LINE_SPACING: Please don't use multiple blank lines
#55: FILE: drivers/gpu/drm/i915/i915_driver.c:1140:
 
+

-:96: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#96: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 151 lines checked
26fb76820474 drm/i915/spi: add intel_spi_region map
e0ad98aa386a drm/i915/spi: add driver for on-die spi device
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
5541c7485c3f drm/i915/spi: implement region enumeration
216eef562149 drm/i915/spi: implement spi access functions
-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: drivers/gpu/drm/i915/spi/intel_spi_drv.c:189:
+static ssize_t spi_rewrite_partial(struct i915_spi *spi, loff_t to,
+			       loff_t offset, size_t len, const u32 *newdata)

total: 0 errors, 0 warnings, 1 checks, 217 lines checked
00bee55e853d drm/i915/spi: spi register with mtd
861dc64f2591 drm/i915/spi: mtd: implement access handlers
dac47dcd273d drm/i915/spi: align 64bit read and write
9cf0cd890835 drm/i915/spi: wake card on operations
c5fd84376d6e drm/i915/spi: add support for access mode


