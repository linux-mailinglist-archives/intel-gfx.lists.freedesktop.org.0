Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B61947597C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 14:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D431F10ED83;
	Wed, 15 Dec 2021 13:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8431010ED83;
 Wed, 15 Dec 2021 13:14:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E802A9A42;
 Wed, 15 Dec 2021 13:14:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 15 Dec 2021 13:14:06 -0000
Message-ID: <163957404648.18075.11788625740028640112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210917234828.1156078-1-lucas.demarchi@intel.com>
In-Reply-To: <20210917234828.1156078-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg1=3A_Read_OPROM_via_SPI_controller_=28rev2=29?=
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

Series: drm/i915/dg1: Read OPROM via SPI controller (rev2)
URL   : https://patchwork.freedesktop.org/series/94826/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0152dbed149b drm/i915/dg1: Read OPROM via SPI controller
-:63: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#63: FILE: drivers/gpu/drm/i915/display/intel_bios.c:2374:
+	if (!vbt) {
+		drm_err(&i915->drm, "Unable to allocate %u bytes for VBT storage\n",

total: 0 errors, 1 warnings, 0 checks, 117 lines checked


