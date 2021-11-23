Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F6745A63D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 16:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40316E0B8;
	Tue, 23 Nov 2021 15:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20B036E116;
 Tue, 23 Nov 2021 15:09:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19CD4AA917;
 Tue, 23 Nov 2021 15:09:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: ravitejax.goud.talla@intel.com
Date: Tue, 23 Nov 2021 15:09:05 -0000
Message-ID: <163768014507.2115.9022081803020572380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211123144559.3474989-1-ravitejax.goud.talla@intel.com>
In-Reply-To: <20211123144559.3474989-1-ravitejax.goud.talla@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gen11=3A_Moving_WAs_to_icl=5Fgt=5Fworkarounds=5Fin?=
 =?utf-8?q?it=28=29?=
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

Series: drm/i915/gen11: Moving WAs to icl_gt_workarounds_init()
URL   : https://patchwork.freedesktop.org/series/97208/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8a0b3247925b drm/i915/gen11: Moving WAs to icl_gt_workarounds_init()
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1236:
+	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
+			PSDUNIT_CLKGATE_DIS);

-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1240:
+	wa_write_or(wal,
+			SUBSLICE_UNIT_LEVEL_CLKGATE,

total: 0 errors, 0 warnings, 2 checks, 30 lines checked


