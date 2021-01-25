Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3BA30250B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 13:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD256892F1;
	Mon, 25 Jan 2021 12:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2D97899BB;
 Mon, 25 Jan 2021 12:41:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD985AB524;
 Mon, 25 Jan 2021 12:41:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Mon, 25 Jan 2021 12:41:42 -0000
Message-ID: <161157850274.3418.2758050694136908118@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125105931.268977-1-aditya.swarup@intel.com>
In-Reply-To: <20210125105931.268977-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_Alderlake-S_stolen_memory_changes=2E?=
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

Series: Add Alderlake-S stolen memory changes.
URL   : https://patchwork.freedesktop.org/series/86239/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6cbe021f414e x86/gpu: Add Alderlake-S stolen memory support
-:27: WARNING:BAD_SIGN_OFF: Unexpected content after email: 'Ingo Molnar <mingo@redhat.com>,', should be: 'Ingo Molnar <mingo@redhat.com>'
#27: 
Cc: Ingo Molnar <mingo@redhat.com>,

-:28: WARNING:BAD_SIGN_OFF: Unexpected content after email: 'Thomas Gleixner <tglx@linutronix.de>,', should be: 'Thomas Gleixner <tglx@linutronix.de>'
#28: 
Cc: Thomas Gleixner <tglx@linutronix.de>,

total: 0 errors, 2 warnings, 0 checks, 7 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
