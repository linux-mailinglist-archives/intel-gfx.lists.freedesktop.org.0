Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CCC438A86
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Oct 2021 17:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669486E16D;
	Sun, 24 Oct 2021 15:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49A426E156;
 Sun, 24 Oct 2021 15:59:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F44AA0169;
 Sun, 24 Oct 2021 15:59:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Oct 2021 15:59:52 -0000
Message-ID: <163509119222.27628.11726919402235205438@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211024155010.126275-1-hdegoede@redhat.com>
In-Reply-To: <20211024155010.126275-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_NO=5FVLV=5FDISP=5FPW=5FDPIO=5FCMN=5FBC=5FIN?=
 =?utf-8?q?IT_quirk?=
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

Series: drm/i915: Add NO_VLV_DISP_PW_DPIO_CMN_BC_INIT quirk
URL   : https://patchwork.freedesktop.org/series/96220/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ba397ea89951 drm/i915: Add NO_VLV_DISP_PW_DPIO_CMN_BC_INIT quirk
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
 i915 0000:00:02.0: [drm] *ERROR* timeout setting power well state 00000000 (fffff3ff)

-:153: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#153: FILE: drivers/gpu/drm/i915/i915_drv.h:544:
+#define QUIRK_NO_VLV_DISP_PW_DPIO_CMN_BC_INIT (1<<9)
                                                 ^

total: 0 errors, 1 warnings, 1 checks, 75 lines checked


