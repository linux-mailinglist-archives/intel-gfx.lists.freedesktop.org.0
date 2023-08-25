Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A2B787C83
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 02:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B819A10E5ED;
	Fri, 25 Aug 2023 00:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C177D10E5B1;
 Fri, 25 Aug 2023 00:23:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8A09A47E9;
 Fri, 25 Aug 2023 00:23:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Date: Fri, 25 Aug 2023 00:23:55 -0000
Message-ID: <169292303572.10955.12864857659580923973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230824235636.1436665-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230824235636.1436665-1-dmitry.baryshkov@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/bridge=5Fconnector=3A_implement_OOB_HPD_handling_=28rev?=
 =?utf-8?q?3=29?=
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

Series: drm/bridge_connector: implement OOB HPD handling (rev3)
URL   : https://patchwork.freedesktop.org/series/120395/
State : warning

== Summary ==

Error: dim checkpatch failed
c914ada6d133 drm: Add HPD state to drm_connector_oob_hotplug_event()
b16fe4596376 drm/bridge_connector: stop filtering events in drm_bridge_connector_hpd_cb()
-:13: WARNING:BAD_SIGN_OFF: 'Reviewed-by:' is the preferred signature form
#13: 
Reviewed-By: Janne Grunau <j@jannau.net>

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
094968ebd4f5 drm/bridge_connector: implement oob_hotplug_event


