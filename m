Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204FB9CF6E4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 22:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A1D810E8BC;
	Fri, 15 Nov 2024 21:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD74410E8BC;
 Fri, 15 Nov 2024 21:16:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/connector=3A_make_mod?=
 =?utf-8?q?e=5Fvalid=28=29_callback_accept_const_mode_pointer?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2024 21:16:43 -0000
Message-ID: <173170540386.380829.13391990515550837020@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
In-Reply-To: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
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

Series: drm/connector: make mode_valid() callback accept const mode pointer
URL   : https://patchwork.freedesktop.org/series/141432/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/141432/revisions/1/mbox/ not applied
Applying: drm/encoder_slave: make mode_valid accept const struct drm_display_mode
Applying: drm/amdgpu: don't change mode in amdgpu_dm_connector_mode_valid()
Applying: drm/sti: hda: pass const struct drm_display_mode* to hda_get_mode_idx()
Applying: drm/connector: make mode_valid_ctx accept const struct drm_display_mode
Applying: drm/connector: make mode_valid accept const struct drm_display_mode
error: invalid object 100644 d0ca905e91eafe6c53f3f2ebdf3f2ae9589d7f89 for 'drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c'
error: Repository lacks necessary blobs to fall back on 3-way merge.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/connector: make mode_valid accept const struct drm_display_mode
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


