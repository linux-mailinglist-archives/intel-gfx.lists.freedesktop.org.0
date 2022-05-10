Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D745221E3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 18:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4477210E4F6;
	Tue, 10 May 2022 16:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D073D10E4F6;
 Tue, 10 May 2022 16:59:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C66BDA73C7;
 Tue, 10 May 2022 16:59:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 10 May 2022 16:59:26 -0000
Message-ID: <165220196678.26422.17572823994133143684@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220510144355.2503681-1-andrzej.hajda@intel.com>
In-Reply-To: <20220510144355.2503681-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_disable_HPD_workers_before_display_driv?=
 =?utf-8?q?er_unregister?=
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

Series: drm/i915/display: disable HPD workers before display driver unregister
URL   : https://patchwork.freedesktop.org/series/103811/
State : warning

== Summary ==

Error: dim checkpatch failed
ca003eeff722 drm/i915/display: disable HPD workers before display driver unregister
-:9: WARNING:TYPO_SPELLING: 'deffered' may be misspelled - perhaps 'deferred'?
#9: 
1. Setup of deffered fbdev after fbdev unregistration.
            ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 7 lines checked


