Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C5A9DF427
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Dec 2024 00:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1545C10E0C0;
	Sat, 30 Nov 2024 23:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F0C10E0C0;
 Sat, 30 Nov 2024 23:57:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/connector=3A_add_eld?=
 =?utf-8?q?=5Fmutex_to_protect_connector-=3Eeld?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 30 Nov 2024 23:57:47 -0000
Message-ID: <173301106785.1054768.10767657030217680139@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
In-Reply-To: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
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

Series: drm/connector: add eld_mutex to protect connector->eld
URL   : https://patchwork.freedesktop.org/series/141958/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/141958/revisions/1/mbox/ not applied
Applying: drm/connector: add mutex to protect ELD from concurrent access
Applying: drm/bridge: anx7625: use eld_mutex to protect access to connector->eld
Applying: drm/bridge: ite-it66121: use eld_mutex to protect access to connector->eld
Applying: drm/amd/display: use eld_mutex to protect access to connector->eld
Applying: drm/exynos: hdmi: use eld_mutex to protect access to connector->eld
Applying: drm/i915/audio: use eld_mutex to protect access to connector->eld
Applying: drm/msm/dp: use eld_mutex to protect access to connector->eld
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/msm/dp/dp_audio.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/msm/dp/dp_audio.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/msm/dp/dp_audio.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/msm/dp: use eld_mutex to protect access to connector->eld
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


