Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3D882A071
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 19:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695AF10E66D;
	Wed, 10 Jan 2024 18:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A810010E66D;
 Wed, 10 Jan 2024 18:52:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_enable_W=3D1_?=
 =?utf-8?q?warnings_by_default_across_the_subsystem_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 10 Jan 2024 18:52:16 -0000
Message-ID: <170491273668.270231.2561335091064664548@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <cover.1704908087.git.jani.nikula@intel.com>
In-Reply-To: <cover.1704908087.git.jani.nikula@intel.com>
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

Series: drm: enable W=1 warnings by default across the subsystem (rev2)
URL   : https://patchwork.freedesktop.org/series/127072/
State : warning

== Summary ==

Error: dim checkpatch failed
e933bc518dbe drm/nouveau/acr/ga102: remove unused but set variable
3d19a8353d23 drm/nouveau/svm: remove unused but set variables
-:23: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#23: FILE: drivers/gpu/drm/nouveau/nouveau_svm.c:115:
+	unsigned target, cmd;

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
d3c52590c534 drm/amdgpu: prefer snprintf over sprintf
1a47f78e2cb8 drm/imx: prefer snprintf over sprintf
d12ab92b241f drm: enable (most) W=1 warnings by default across the subsystem
9ef4af77b0bf drm: Add CONFIG_DRM_WERROR


