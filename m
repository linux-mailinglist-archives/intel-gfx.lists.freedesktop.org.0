Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2832C9EDBBD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 00:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B48110EC6B;
	Wed, 11 Dec 2024 23:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9219810EC6A;
 Wed, 11 Dec 2024 23:33:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/connector=3A_Exp?=
 =?utf-8?q?ose_only_a_properly_inited_connector?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2024 23:33:22 -0000
Message-ID: <173396000259.1373735.5336172415057660812@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241211230328.4012496-1-imre.deak@intel.com>
In-Reply-To: <20241211230328.4012496-1-imre.deak@intel.com>
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

Series: drm/connector: Expose only a properly inited connector
URL   : https://patchwork.freedesktop.org/series/142445/
State : warning

== Summary ==

Error: dim checkpatch failed
f8b5a1808248 drm/connector: Add a way to init/add a connector in separate steps
42da5fe8446c drm/connector: Add FIXME for GETRESOURCES ioctl wrt. uninited connectors
f5d2f29c6512 drm/connector: Add deprication notes for drm_connector_register/unregister
25c96d5d3f8c drm/dp_mst: Register connectors via drm_connector_dynamic_register()
476d54fcc6f1 drm/i915/dp_mst: Expose a connector to kernel users after it's properly initialized
b7cfe8ca8445 drm/amd/dp_mst: Expose a connector to kernel users after it's properly initialized
-:32: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#32: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c:593:
+	if (drm_connector_dynamic_init(

total: 0 errors, 0 warnings, 1 checks, 14 lines checked
cc8f22c6a472 drm/nouveau/dp_mst: Expose a connector to kernel users after it's properly initialized
f4cfe5aced75 drm/connector: Warn if a connector is registered/added incorrectly
bc5e411da7ef drm/tests: Add tests for drm_connector_dynamic_init()/register()
-:102: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#102: FILE: drivers/gpu/drm/tests/drm_connector_test.c:257:
+	uint64_t val;

total: 0 errors, 0 warnings, 1 checks, 481 lines checked
b26528e65b92 drm/i915/dp_mst: Fix error handling while adding a connector
7356933b5472 drm/i915/dp_mst: Use intel_connector vs. drm_connector pointer in intel_dp_mst.c


