Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 993828C846A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 12:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0793F10E194;
	Fri, 17 May 2024 10:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CFB10E192;
 Fri, 17 May 2024 10:03:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/ci=3A_uprev_mesa?=
 =?utf-8?q?/IGT_and_generate_testlist?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2024 10:03:47 -0000
Message-ID: <171594022749.2123004.12399799554458646319@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
In-Reply-To: <20240517092502.647420-1-vignesh.raman@collabora.com>
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

Series: drm/ci: uprev mesa/IGT and generate testlist
URL   : https://patchwork.freedesktop.org/series/133735/
State : warning

== Summary ==

Error: dim checkpatch failed
f4f172f649c7 drm/ci: uprev mesa version
34b9ee949713 drm/ci: generate testlist from build
-:100: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#100: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
2ae51618e33e drm/ci: build virtual GPU driver as module
f8399975f3b6 drm/ci: uprev IGT
b1a607e8a327 drm/ci: skip driver specific tests
-:168: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#168: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 285 lines checked
de1812520818 drm/ci: update xfails for the new testlist
-:211: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#211: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1709 lines checked


