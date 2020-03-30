Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CF6198708
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 00:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0681D89D6C;
	Mon, 30 Mar 2020 22:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DDE389D6C;
 Mon, 30 Mar 2020 22:11:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 816E1A0099;
 Mon, 30 Mar 2020 22:11:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Melissa Wen" <melissa.srw@gmail.com>
Date: Mon, 30 Mar 2020 22:11:09 -0000
Message-ID: <158560626950.13828.16484259927444095904@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
In-Reply-To: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_GitLab=2EPipeline=3A_failure_for?=
 =?utf-8?q?_tests/kms=5Fplane=5Falpha=5Fblend=3A_Correct_typo_in_the_name_?=
 =?utf-8?q?and_comments_of_a_subtest?=
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

Series: tests/kms_plane_alpha_blend: Correct typo in the name and comments of a subtest
URL   : https://patchwork.freedesktop.org/series/75273/
State : failure

== Summary ==

ERROR! This series introduces new undocumented tests:

kms_plane_alpha_blend@pipe-A-alpha-transparent-fb
kms_plane_alpha_blend@pipe-B-alpha-transparent-fb
kms_plane_alpha_blend@pipe-C-alpha-transparent-fb
kms_plane_alpha_blend@pipe-D-alpha-transparent-fb
kms_plane_alpha_blend@pipe-E-alpha-transparent-fb
kms_plane_alpha_blend@pipe-F-alpha-transparent-fb

Can you document them as per the requirement in the [CONTRIBUTING.md]?

[Documentation] has more details on how to do this.

Here are few examples:
https://gitlab.freedesktop.org/drm/igt-gpu-tools/commit/0316695d03aa46108296b27f3982ec93200c7a6e
https://gitlab.freedesktop.org/drm/igt-gpu-tools/commit/443cc658e1e6b492ee17bf4f4d891029eb7a205d

Thanks in advance!

[CONTRIBUTING.md]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/blob/master/CONTRIBUTING.md#L19
[Documentation]: https://drm.pages.freedesktop.org/igt-gpu-tools/igt-gpu-tools-Core.html#igt-describe

Other than that, pipeline status: SUCCESS.

see https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/pipelines/126410 for the overview.

== Logs ==

For more details see: https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags/pipelines/126410
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
