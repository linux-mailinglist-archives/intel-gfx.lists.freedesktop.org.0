Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9265414155A
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 02:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FC86F984;
	Sat, 18 Jan 2020 01:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C809C6F983;
 Sat, 18 Jan 2020 01:11:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B94C6A0118;
 Sat, 18 Jan 2020 01:11:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 18 Jan 2020 01:11:49 -0000
Message-ID: <157930990973.11508.3914145973515827911@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117153554.3104278-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117153554.3104278-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gvt=3A_Wean_gvt_off?=
 =?utf-8?q?_dev=5Fpriv-=3Eengine=5B=5D?=
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

Series: series starting with [1/2] drm/i915/gvt: Wean gvt off dev_priv->engine[]
URL   : https://patchwork.freedesktop.org/series/72194/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ae3c3de52ba8 drm/i915/gvt: Wean gvt off dev_priv->engine[]
-:681: WARNING:LONG_LINE: line over 100 characters
#681: FILE: drivers/gpu/drm/i915/gvt/execlist.c:163:
+					       hwsp_gpa + I915_HWS_CSB_BUF0_INDEX * 4 + write_pointer * 8,

-:687: WARNING:LONG_LINE: line over 100 characters
#687: FILE: drivers/gpu/drm/i915/gvt/execlist.c:166:
+					       hwsp_gpa + intel_hws_csb_write_index(execlist->engine->i915) * 4,

-:1280: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#1280: FILE: drivers/gpu/drm/i915/gvt/mmio_context.c:498:
+			old_v = mmio->value =

total: 0 errors, 2 warnings, 1 checks, 1881 lines checked
70601304dcee drm/i915/gvt: Wean gvt off using dev_priv
-:797: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gvt' - possible side-effects?
#797: FILE: drivers/gpu/drm/i915/gvt/gvt.h:387:
+#define gvt_hidden_sz(gvt)	(gvt_ggtt_gm_sz(gvt) - gvt_aperture_sz(gvt))

total: 0 errors, 0 warnings, 1 checks, 1232 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
