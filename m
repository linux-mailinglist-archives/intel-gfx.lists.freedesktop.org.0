Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 350A631D05D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 19:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C21D89F61;
	Tue, 16 Feb 2021 18:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5DBC89F61;
 Tue, 16 Feb 2021 18:45:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDFC4A8831;
 Tue, 16 Feb 2021 18:45:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Tue, 16 Feb 2021 18:45:44 -0000
Message-ID: <161350114487.32285.11584549810055934490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210216181925.650082-1-tomas.winkler@intel.com>
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/spi=3A_discrete_graphics_internal_spi?=
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

Series: drm/i915/spi: discrete graphics internal spi
URL   : https://patchwork.freedesktop.org/series/87137/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00cd2f532d55 drm/i915/spi: add spi device for discrete graphics
-:115: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#115: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 144 lines checked
898dd46b903c drm/i915/spi: intel_spi_region map
e863e8ed0f60 drm/i915/spi: add driver for on-die spi device
-:41: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#41: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 133 lines checked
38d4aaea57cb drm/i915/spi: implement region enumeration
09c90ea9056f drm/i915/spi: implement spi access functions
b0e8bcfbf9b1 drm/i915/spi: spi register with mtd
bf56e1ed210e drm/i915/spi: mtd: implement access handlers
e19e4be7b8a6 drm/i915/spi: serialize spi access
a88bc6332c0e mtd: use refcount to prevent corruption


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
