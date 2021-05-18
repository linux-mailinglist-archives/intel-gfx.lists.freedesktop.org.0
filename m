Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D826738825B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 23:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60CF76ECBA;
	Tue, 18 May 2021 21:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7136D6E04E;
 Tue, 18 May 2021 21:45:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 672CCA8832;
 Tue, 18 May 2021 21:45:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 18 May 2021 21:45:45 -0000
Message-ID: <162137434539.23334.5199641846806331211@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518213444.11420-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210518213444.11420-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Rename_all_CSR_references_to_DMC_=28rev5=29?=
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

Series: Rename all CSR references to DMC (rev5)
URL   : https://patchwork.freedesktop.org/series/90043/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c95595fe6606 drm/i915/dmc: s/intel_csr/intel_dmc
dcf0abc59e2e drm/i915/dmc: s/HAS_CSR/HAS_DMC
533a65622dfe drm/i915/dmc: Rename macro names containing csr
cf0a044aa3a8 drm/i915/dmc: Rename functions names having "csr"
7ffe49e365bd drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h
-:113: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#113: 
rename from drivers/gpu/drm/i915/display/intel_csr.c

total: 0 errors, 1 warnings, 0 checks, 114 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
