Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB2E3031A9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 03:18:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA3E6E3FE;
	Tue, 26 Jan 2021 02:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC7C96E3CE;
 Tue, 26 Jan 2021 02:18:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFCC2A882F;
 Tue, 26 Jan 2021 02:18:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 26 Jan 2021 02:18:13 -0000
Message-ID: <161162749375.9813.4218131673816333505@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126001031.881048-1-lyude@redhat.com>
In-Reply-To: <20210126001031.881048-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_supp?=
 =?utf-8?q?ort_in_nouveau_=28rev4=29?=
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

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev4)
URL   : https://patchwork.freedesktop.org/series/84754/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fe77c1e29c45 drm/nouveau/kms/nv40-/backlight: Assign prop type once
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
13a7a2e26126 drm/nouveau/kms: Don't probe eDP connectors more then once
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
eDP doesn't do hotplugging, so there's no reason for us to reprobe it (unless a

-:23: CHECK:CAMELCASE: Avoid CamelCase: <DCB_CONNECTOR_eDP>
#23: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:560:
+	if (nv_connector->type == DCB_CONNECTOR_eDP &&

total: 0 errors, 1 warnings, 1 checks, 12 lines checked
ff5e1e98cbc2 drm/i915/dp: Remove redundant AUX backlight frequency calculations
72f9fc4aadbe drm/dp: Extract i915's eDP backlight code into DRM helpers
c574a4addb61 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau
-:247: CHECK:CAMELCASE: Avoid CamelCase: <DCB_CONNECTOR_eDP>
#247: FILE: drivers/gpu/drm/nouveau/nouveau_backlight.c:299:
+	if (nv_conn->type == DCB_CONNECTOR_eDP) {

total: 0 errors, 0 warnings, 1 checks, 311 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
