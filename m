Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317821ED5D0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 20:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1908825B;
	Wed,  3 Jun 2020 18:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DF3D89D5C;
 Wed,  3 Jun 2020 18:07:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58235A47E6;
 Wed,  3 Jun 2020 18:07:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.aiemd@gmail.com>
Date: Wed, 03 Jun 2020 18:07:50 -0000
Message-ID: <159120767033.12268.17202571959839081190@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603103223.10443-1-nirmoy.das@amd.com>
In-Reply-To: <20200603103223.10443-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/1=5D_drm/mm=3A_add_ig=5Ffrag?=
 =?utf-8?q?_selftest?=
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

Series: series starting with [v2,1/1] drm/mm: add ig_frag selftest
URL   : https://patchwork.freedesktop.org/series/77964/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3560e47537d1 drm/mm: add ig_frag selftest
-:72: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#72: FILE: drivers/gpu/drm/selftests/test-drm_mm.c:1063:
+
+}

-:97: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#97: FILE: drivers/gpu/drm/selftests/test-drm_mm.c:1088:
+
+}

-:171: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Nirmoy Das <nirmoy.aiemd@gmail.com>'

total: 0 errors, 1 warnings, 2 checks, 143 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
