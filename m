Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B162E78C3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 13:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E72F894C9;
	Wed, 30 Dec 2020 12:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B28D5892BB;
 Wed, 30 Dec 2020 12:59:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC6E0A9A43;
 Wed, 30 Dec 2020 12:59:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 12:59:39 -0000
Message-ID: <160933317968.26067.14820317524309485962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201230104834.31236-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201230104834.31236-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/dp=3A_Remove_aux_xf?=
 =?utf-8?q?er_timeout_debug_message?=
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

Series: series starting with [1/2] drm/i915/dp: Remove aux xfer timeout debug message
URL   : https://patchwork.freedesktop.org/series/85315/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3af34a8e551 drm/i915/dp: Remove aux xfer timeout debug message
e8faa209ee7a drm/i915/dp: Track pm_qos per connector
-:60: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#60: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7530:
 }
+static void intel_dp_connector_destroy(struct drm_connector *connector)

total: 0 errors, 0 warnings, 1 checks, 87 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
