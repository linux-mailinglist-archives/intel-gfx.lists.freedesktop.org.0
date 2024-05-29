Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E9C8D2B53
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 05:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1665F10E2C5;
	Wed, 29 May 2024 03:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D1210E2C5;
 Wed, 29 May 2024 03:13:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/ci=3A_uprev_mesa?=
 =?utf-8?q?/IGT_and_generate_testlist_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2024 03:13:07 -0000
Message-ID: <171695238792.2232184.9616918404282351776@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240529024049.356327-1-vignesh.raman@collabora.com>
In-Reply-To: <20240529024049.356327-1-vignesh.raman@collabora.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/ci: uprev mesa/IGT and generate testlist (rev2)
URL   : https://patchwork.freedesktop.org/series/133735/
State : warning

== Summary ==

Error: dim checkpatch failed
743a104c33ea drm/ci: uprev mesa version
ce8ea01f6e6c drm/ci: add farm variable
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
https://mesa.pages.freedesktop.org/-/mesa/-/jobs/59165650/artifacts/results/job_detail.json

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
5199321bea46 drm/ci: generate testlist from build
-:101: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#101: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
973479280cb3 drm/ci: uprev IGT
0f762810c793 drm/ci: skip driver specific tests
-:169: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#169: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 285 lines checked
ae7109963a41 drm/ci: update xfails for the new testlist
-:213: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#213: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1722 lines checked


