Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEC914F509
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 00:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0F46FC55;
	Fri, 31 Jan 2020 23:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C3406FC54;
 Fri, 31 Jan 2020 23:00:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 252BDA0071;
 Fri, 31 Jan 2020 23:00:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Fri, 31 Jan 2020 23:00:25 -0000
Message-ID: <158051162512.13120.4909016453593889494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200201031951.3209-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200201031951.3209-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl=3A_Add_Wa=5F1606054188=3Atgl?=
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

Series: drm/i915/tgl: Add Wa_1606054188:tgl
URL   : https://patchwork.freedesktop.org/series/72839/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
53bdc3c76702 drm/i915/tgl: Add Wa_1606054188:tgl
-:31: ERROR:SWITCH_CASE_INDENT_LEVEL: switch and case should be at the same indent
#31: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:2075:
+	switch(format){
+		case DRM_FORMAT_P010:
+		case DRM_FORMAT_P012:
+		case DRM_FORMAT_P016:
[...]
+		default:

-:31: ERROR:SPACING: space required before the open brace '{'
#31: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:2075:
+	switch(format){

-:31: ERROR:SPACING: space required before the open parenthesis '('
#31: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:2075:
+	switch(format){

-:53: ERROR:SPACING: space required before the open parenthesis '('
#53: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:2163:
+	if(IS_GEN(dev_priv, 12) &&

total: 4 errors, 0 warnings, 0 checks, 34 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
