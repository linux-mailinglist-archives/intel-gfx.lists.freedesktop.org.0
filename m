Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161111FC9E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 02:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9416E425;
	Mon, 16 Dec 2019 01:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACDA96E423;
 Mon, 16 Dec 2019 01:41:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4750A0BA8;
 Mon, 16 Dec 2019 01:41:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Mon, 16 Dec 2019 01:41:21 -0000
Message-ID: <157646048164.5613.1862419248448095110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216122331.43c766f1@canb.auug.org.au>
In-Reply-To: <20191216122331.43c766f1@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_linux-next=3A_build_failure_after_merge_of_the_drm-misc_tre?=
 =?utf-8?q?e?=
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

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/70958/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ccba0d4a341c linux-next: build failure after merge of the drm-misc tree
-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6aa192698089 ("drm/bridge: Add Analogix anx6345 support")'
#21: 
  6aa192698089 ("drm/bridge: Add Analogix anx6345 support")

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/bridge/analogix/analogix-anx6345.c:739:
+			anx6345->i2c_clients[i] = i2c_new_dummy_device(client->adapter,
 						anx6345_i2c_addresses[i] >> 1);

total: 1 errors, 0 warnings, 1 checks, 16 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
