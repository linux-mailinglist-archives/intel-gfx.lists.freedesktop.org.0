Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5BD78F710
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 04:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD3D10E70A;
	Fri,  1 Sep 2023 02:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D44D10E70A;
 Fri,  1 Sep 2023 02:25:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 051E5AADD8;
 Fri,  1 Sep 2023 02:25:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Heiner Kallweit" <hkallweit1@gmail.com>
Date: Fri, 01 Sep 2023 02:25:51 -0000
Message-ID: <169353515198.9816.2398355869922026818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
In-Reply-To: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_WQ=5FUNBOUND_warning_since_recent_workqueue_refactoring?=
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

Series: WQ_UNBOUND warning since recent workqueue refactoring
URL   : https://patchwork.freedesktop.org/series/123134/
State : warning

== Summary ==

Error: dim checkpatch failed
f4ee63f6c28e WQ_UNBOUND warning since recent workqueue refactoring
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
>>> Recently I started to see the following warning on linux-next and presumably

-:45: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit cfd48ad8c4a9 ("drm/i915: Fix HPD polling, reenabling the output poll work as needed")'
#45: 
> after cfd48ad8c4a9 ("drm/i915: Fix HPD polling, reenabling the output poll work as needed")

-:102: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 1 warnings, 0 checks, 24 lines checked


