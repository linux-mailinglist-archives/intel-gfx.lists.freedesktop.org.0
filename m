Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 331C93B8AD0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 01:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E9689D86;
	Wed, 30 Jun 2021 23:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9F676EA94;
 Wed, 30 Jun 2021 23:13:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB260A0078;
 Wed, 30 Jun 2021 23:13:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 30 Jun 2021 23:13:28 -0000
Message-ID: <162509480887.10376.9585937257905710533@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630230624.25407-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210630230624.25407-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_Use_RUNTIME=5FINFO-=3Estp_for_DMC?=
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

Series: drm/i915/dmc: Use RUNTIME_INFO->stp for DMC
URL   : https://patchwork.freedesktop.org/series/92088/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dc34e57ce634 drm/i915/dmc: Use RUNTIME_INFO->stp for DMC
-:29: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#29: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:274:
+{
+

-:84: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:332:
+		return INTEL_REVID(dev_priv) < size ? si + INTEL_REVID(dev_priv) : &no_stepping_info;

total: 0 errors, 1 warnings, 1 checks, 69 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
