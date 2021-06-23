Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735B23B1CD3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7FD6E91C;
	Wed, 23 Jun 2021 14:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7EFD889970;
 Wed, 23 Jun 2021 14:46:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76795A7DFB;
 Wed, 23 Jun 2021 14:46:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 23 Jun 2021 14:46:29 -0000
Message-ID: <162445958945.30470.8223909208485906938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210623134601.2128663-1-imre.deak@intel.com>
In-Reply-To: <20210623134601.2128663-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_ALSA=3A_hda=3A_Release_contr?=
 =?utf-8?q?oller_display_power_during_shutdown/reboot?=
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

Series: series starting with [1/2] ALSA: hda: Release controller display power during shutdown/reboot
URL   : https://patchwork.freedesktop.org/series/91815/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
150ed9082a2d ALSA: hda: Release controller display power during shutdown/reboot
-:30: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#30: 
References: https://lore.kernel.org/lkml/cea1f9a-52e0-b83-593d-52997fe1aaf6@er-systems.de

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
8cc451e3f4c2 ALSA: hda: Release codec display power during shutdown/reboot


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
