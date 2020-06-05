Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC021F0067
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 21:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388A76E972;
	Fri,  5 Jun 2020 19:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE13E6E975;
 Fri,  5 Jun 2020 19:25:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD7A1A0BC6;
 Fri,  5 Jun 2020 19:25:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.aiemd@gmail.com>
Date: Fri, 05 Jun 2020 19:25:59 -0000
Message-ID: <159138515967.18508.12936367917148900811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603103223.10443-1-nirmoy.das@amd.com>
In-Reply-To: <20200603103223.10443-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/1=5D_drm/mm=3A_add_ig=5Ffrag?=
 =?utf-8?q?_selftest_=28rev2=29?=
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

Series: series starting with [v3,1/1] drm/mm: add ig_frag selftest (rev2)
URL   : https://patchwork.freedesktop.org/series/77964/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
375207a3bd0b drm/mm: add ig_frag selftest
-:75: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#75: FILE: drivers/gpu/drm/selftests/test-drm_mm.c:1063:
+
+}

-:100: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#100: FILE: drivers/gpu/drm/selftests/test-drm_mm.c:1088:
+
+}

-:174: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Nirmoy Das <nirmoy.aiemd@gmail.com>'

total: 0 errors, 1 warnings, 2 checks, 143 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
