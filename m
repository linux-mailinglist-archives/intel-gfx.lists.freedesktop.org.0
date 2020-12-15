Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCA42DA90F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 09:20:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D3C893C0;
	Tue, 15 Dec 2020 08:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 202A5893C0;
 Tue, 15 Dec 2020 08:20:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B8B7A0091;
 Tue, 15 Dec 2020 08:20:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Tue, 15 Dec 2020 08:20:06 -0000
Message-ID: <160802040601.24782.12363950668177841672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215072712.12723-1-animesh.manna@intel.com>
In-Reply-To: <20201215072712.12723-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Multi_DSB_instance_support?=
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

Series: Multi DSB instance support
URL   : https://patchwork.freedesktop.org/series/84934/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5408c90cf097 drm/i915/dsb: multi dsb instance support in prepare() and cleanup()
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:161: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#161: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:277:
+		if (!dsb) {
+			drm_err(&i915->drm, "DSB%d obj creation failed\n", i);

total: 0 errors, 2 warnings, 0 checks, 187 lines checked
b29008823ac1 drm/i915/dsb: multi dsb instance support in dsb-write()
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
f98badfe5d95 drm/i915/dsb: multi dsb instance support in dsb-commit()
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 85 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
