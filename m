Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFDE672CBC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 00:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843FB10E872;
	Wed, 18 Jan 2023 23:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40D8210E872;
 Wed, 18 Jan 2023 23:42:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3973FAADDC;
 Wed, 18 Jan 2023 23:42:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Wed, 18 Jan 2023 23:42:52 -0000
Message-ID: <167408537219.3605.10657869298052576940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
In-Reply-To: <20230118155249.41551-1-gustavo.sousa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Move_LSC=5FCHICKEN=5FBIT*_workarounds_to_cor?=
 =?utf-8?q?rect_function_=28Series=29?=
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

Series: drm/i915/gt: Move LSC_CHICKEN_BIT* workarounds to correct function (Series)
URL   : https://patchwork.freedesktop.org/series/113036/
State : warning

== Summary ==

Error: dim checkpatch failed
6c2b52a5e74a drm/i915/doc: Document where to implement register workarounds
-:35: WARNING:REPEATED_WORD: Possible repeated word: 'of'
#35: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:52:
+ *   engine's MMIO range but that are part of of the common RCS/CCS reset domain

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
1deb862b66a9 drm/i915/gt: Move LSC_CHICKEN_BIT* workarounds to correct function


