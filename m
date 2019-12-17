Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFAF122C75
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 14:03:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20CBC6E9D8;
	Tue, 17 Dec 2019 13:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8319D6E118;
 Tue, 17 Dec 2019 13:03:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79E6AA0BC6;
 Tue, 17 Dec 2019 13:03:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Steven Price" <Steven.Price@arm.com>
Date: Tue, 17 Dec 2019 13:03:33 -0000
Message-ID: <157658781347.21847.12210796863830317915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216162209.5b5256dd@canb.auug.org.au>
In-Reply-To: <20191216162209.5b5256dd@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_linux-next=3A_Tree_for_Dec_16_=28drm=5Fpanel_=26_intel=5Fpa?=
 =?utf-8?q?nel=29?=
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

Series: linux-next: Tree for Dec 16 (drm_panel & intel_panel)
URL   : https://patchwork.freedesktop.org/series/71052/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4f9c2e2f3e3a linux-next: Tree for Dec 16 (drm_panel & intel_panel)
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
>>> ld: drivers/gpu/drm/i915/display/intel_panel.o: in function `intel_backlight_device_register':

-:34: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 907aa265fde6 ("drm/drm_panel: fix EXPORT of drm_panel_of_backlight")'
#34: 
>> 907aa265fde6589b8059dc51649c6d1f49ade2f3

-:47: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 907aa265fde6 ("drm/drm_panel: fix EXPORT of drm_panel_of_backlight")'
#47: 
907aa265fde6589b8059dc51649c6d1f49ade2f3 ("drm/drm_panel: fix EXPORT of

-:76: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 3 errors, 1 warnings, 0 checks, 8 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
