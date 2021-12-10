Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6EF470C25
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 22:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6953E10E3B3;
	Fri, 10 Dec 2021 21:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7AB010E296;
 Fri, 10 Dec 2021 21:02:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0B25AADD1;
 Fri, 10 Dec 2021 21:02:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Fri, 10 Dec 2021 21:02:16 -0000
Message-ID: <163917013683.3445.9995648315117515383@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210201144.1975655-1-rajatja@google.com>
In-Reply-To: <20211210201144.1975655-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/privacy=5Fscreen=5Fx86?=
 =?utf-8?q?=3A_Add_entry_for_ChromeOS_privacy-screen?=
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

Series: series starting with [1/2] drm/privacy_screen_x86: Add entry for ChromeOS privacy-screen
URL   : https://patchwork.freedesktop.org/series/97883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7f0620e36c0b drm/privacy_screen_x86: Add entry for ChromeOS privacy-screen
-:34: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#34: FILE: drivers/gpu/drm/drm_privacy_screen_x86.c:58:
+
+}

total: 0 errors, 0 warnings, 1 checks, 32 lines checked
ac1daa5f1a8b platform/chrome: Add driver for ChromeOS privacy-screen
-:30: WARNING:CONFIG_DESCRIPTION: please write a paragraph that describes the config symbol fully
#30: FILE: drivers/platform/chrome/Kconfig:246:
+config CHROMEOS_PRIVACY_SCREEN

-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
new file mode 100644

-:108: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#108: FILE: drivers/platform/chrome/chromeos_priv_scrn.c:48:
+		drm_priv_scrn->hw_state = drm_priv_scrn->sw_state =

-:111: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#111: FILE: drivers/platform/chrome/chromeos_priv_scrn.c:51:
+		drm_priv_scrn->hw_state = drm_priv_scrn->sw_state =

-:148: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#148: FILE: drivers/platform/chrome/chromeos_priv_scrn.c:88:
+	drm_priv_scrn->hw_state = drm_priv_scrn->sw_state = state;

total: 0 errors, 2 warnings, 3 checks, 156 lines checked


