Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AEE8B6E64
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419B210E786;
	Tue, 30 Apr 2024 09:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6561910E574;
 Tue, 30 Apr 2024 09:32:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/ci=3A_uprev_mesa_and_?=
 =?utf-8?q?generate_testlist?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 09:32:58 -0000
Message-ID: <171446957841.1778251.14724684638908392403@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240430091121.508099-1-vignesh.raman@collabora.com>
In-Reply-To: <20240430091121.508099-1-vignesh.raman@collabora.com>
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

Series: drm/ci: uprev mesa and generate testlist
URL   : https://patchwork.freedesktop.org/series/133058/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/133058/revisions/1/mbox/ not applied
Applying: drm/ci: uprev mesa version
Applying: drm/ci: generate testlist from build
Applying: drm/ci: build virtual GPU driver as module
Applying: drm/ci: skip driver specific tests
Applying: drm/ci: update xfails for the new testlist
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
Falling back to patching base and 3-way merge...
Removing drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt
Removing drivers/gpu/drm/ci/xfails/rockchip-rk3288-fails.txt
Auto-merging drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
CONFLICT (content): Merge conflict in drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/ci: update xfails for the new testlist
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


