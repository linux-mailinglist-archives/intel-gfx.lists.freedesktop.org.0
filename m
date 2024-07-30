Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6C3940597
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 05:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59AE010E4AE;
	Tue, 30 Jul 2024 03:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 270E010E43C;
 Tue, 30 Jul 2024 03:05:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/ci=3A_Add_suppor?=
 =?utf-8?q?t_for_GPU_and_display_testing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2024 03:05:02 -0000
Message-ID: <172230870213.426888.13735958029153339871@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240730021545.912271-1-vignesh.raman@collabora.com>
In-Reply-To: <20240730021545.912271-1-vignesh.raman@collabora.com>
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

Series: drm/ci: Add support for GPU and display testing
URL   : https://patchwork.freedesktop.org/series/136646/
State : warning

== Summary ==

Error: dim checkpatch failed
e01c2a173ab0 drm/ci: arm64.config: Enable CONFIG_DRM_ANALOGIX_ANX7625
737505e036bc drm/ci: skip tools_test on non-intel platforms
4d01eed7c465 drm/ci: mediatek: add tests for mediatek display driver
-:172: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#172: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 186 lines checked
9d0960bcc1f6 drm/ci: mediatek: add tests for powervr gpu driver
6a620d12d1fd drm/ci: meson: add tests for meson display driver
-:126: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#126: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
20dd12a87712 drm/ci: rockchip: add tests for rockchip display driver
-:107: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#107: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 402 lines checked


