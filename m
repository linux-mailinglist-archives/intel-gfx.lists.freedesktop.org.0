Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D31386534
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 22:07:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132BC6E0F3;
	Mon, 17 May 2021 20:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C11E6E0F1;
 Mon, 17 May 2021 20:07:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1CA43A00CC;
 Mon, 17 May 2021 20:07:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 17 May 2021 20:07:47 -0000
Message-ID: <162128206711.27270.1716004831710173417@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210517195015.27983-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210517195015.27983-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Rename_all_CSR_references_to_DMC_=28rev3=29?=
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

Series: Rename all CSR references to DMC (rev3)
URL   : https://patchwork.freedesktop.org/series/90043/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5dcdd9a0dcbf drm/i915/dmc: s/intel_csr/intel_dmc
c2408b6c4dc6 drm/i915/dmc: s/HAS_CSR/HAS_DMC
2afe14077c3b drm/i915/dmc: Rename macro names containing csr
c9be8c2b1f83 drm/i915/dmc: Rename functions names having "csr"
c7b6540871d8 drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h
-:104: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#104: 
rename from drivers/gpu/drm/i915/display/intel_csr.c

total: 0 errors, 1 warnings, 0 checks, 102 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
