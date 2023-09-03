Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387FA790E92
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Sep 2023 23:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A3210E21B;
	Sun,  3 Sep 2023 21:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B878210E217;
 Sun,  3 Sep 2023 21:54:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62285AA3D8;
 Sun,  3 Sep 2023 21:54:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Date: Sun, 03 Sep 2023 21:54:04 -0000
Message-ID: <169377804437.29654.1889016670653738934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230903212937.2876815-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230903212937.2876815-1-dmitry.baryshkov@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/bridge=5Fconnector=3A_implement_OOB_HPD_handling_=28rev?=
 =?utf-8?q?4=29?=
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

Series: drm/bridge_connector: implement OOB HPD handling (rev4)
URL   : https://patchwork.freedesktop.org/series/120395/
State : warning

== Summary ==

Error: dim checkpatch failed
a42361e2d28c drm: Add HPD state to drm_connector_oob_hotplug_event()
af79a05f3d56 drm/bridge_connector: stop filtering events in drm_bridge_connector_hpd_cb()
-:13: WARNING:BAD_SIGN_OFF: 'Reviewed-by:' is the preferred signature form
#13: 
Reviewed-By: Janne Grunau <j@jannau.net>

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
c873ece82980 drm/bridge_connector: implement oob_hotplug_event


