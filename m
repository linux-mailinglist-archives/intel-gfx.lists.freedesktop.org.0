Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F98A26A8E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 04:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC85A10E1ED;
	Tue,  4 Feb 2025 03:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29EF310E1ED;
 Tue,  4 Feb 2025 03:21:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_scsi=3A_use_GFP=5FNO?=
 =?utf-8?q?IO_to_avoid_circular_locking_dependency?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Feb 2025 03:21:42 -0000
Message-ID: <173863930216.614152.16883157662513563534@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250204024719.1336311-1-lucas.demarchi@intel.com>
In-Reply-To: <20250204024719.1336311-1-lucas.demarchi@intel.com>
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

Series: scsi: use GFP_NOIO to avoid circular locking dependency
URL   : https://patchwork.freedesktop.org/series/144282/
State : warning

== Summary ==

Error: dim checkpatch failed
ab538f49c00a scsi: use GFP_NOIO to avoid circular locking dependency
-:25: WARNING:PREFER_LORE_ARCHIVE: Use lore.kernel.org archive links when possible - see https://lore.kernel.org/lists.html
#25: 
https://lkml.org/lkml/2025/1/24/1101

-:30: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#30: 
Reported-by: Marc Aurèle La France <tsi@tuyoix.net>
Signed-off-by: Rik van Riel <riel@surriel.com>

total: 0 errors, 2 warnings, 0 checks, 8 lines checked


