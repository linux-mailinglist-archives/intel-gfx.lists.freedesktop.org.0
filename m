Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F60D2D522E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 04:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC376E7FA;
	Thu, 10 Dec 2020 03:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9F336E82D;
 Thu, 10 Dec 2020 03:57:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3890A7DFB;
 Thu, 10 Dec 2020 03:57:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 10 Dec 2020 03:57:55 -0000
Message-ID: <160757267577.19119.4953090692372915455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210012143.729402-1-lyude@redhat.com>
In-Reply-To: <20201210012143.729402-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_supp?=
 =?utf-8?q?ort_in_nouveau?=
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

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau
URL   : https://patchwork.freedesktop.org/series/84754/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07863bf5240e drm/nouveau/kms/nv40-/backlight: Assign prop type once
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
7f296e14de0e drm/nouveau/kms: Don't probe eDP connectors more then once
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
eDP doesn't do hotplugging, so there's no reason for us to reprobe it (unless a

-:23: CHECK:CAMELCASE: Avoid CamelCase: <DCB_CONNECTOR_eDP>
#23: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:558:
+	if (nv_connector->type == DCB_CONNECTOR_eDP &&

total: 0 errors, 1 warnings, 1 checks, 12 lines checked
96683b747a78 drm/i915/dp: Remove redundant AUX backlight frequency calculations
1504918e919d drm/dp: Extract i915's eDP backlight code into DRM helpers
5357fe99e438 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau
-:247: CHECK:CAMELCASE: Avoid CamelCase: <DCB_CONNECTOR_eDP>
#247: FILE: drivers/gpu/drm/nouveau/nouveau_backlight.c:299:
+	if (nv_conn->type == DCB_CONNECTOR_eDP) {

total: 0 errors, 0 warnings, 1 checks, 311 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
