Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CDF1E8B7B
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 00:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE9A6E983;
	Fri, 29 May 2020 22:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CCB86E983;
 Fri, 29 May 2020 22:46:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66B8BA0019;
 Fri, 29 May 2020 22:46:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.aiemd@gmail.com>
Date: Fri, 29 May 2020 22:46:08 -0000
Message-ID: <159079236839.3334.5709039006042752330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529163351.5228-1-nirmoy.das@amd.com>
In-Reply-To: <20200529163351.5228-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BRFC=2C1/1=5D_drm/mm=3A_add_ig=5Ffra?=
 =?utf-8?q?g_selftest?=
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

Series: series starting with [RFC,1/1] drm/mm: add ig_frag selftest
URL   : https://patchwork.freedesktop.org/series/77803/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
320cc6810801 drm/mm: add ig_frag selftest
-:82: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#82: FILE: drivers/gpu/drm/selftests/test-drm_mm.c:1068:
+
+}

-:106: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#106: FILE: drivers/gpu/drm/selftests/test-drm_mm.c:1092:
+				 error_factor)/100;
 				              ^

-:125: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Nirmoy Das <nirmoy.aiemd@gmail.com>'

total: 0 errors, 1 warnings, 2 checks, 86 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
