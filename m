Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B54814DAE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 17:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C2910EA2F;
	Fri, 15 Dec 2023 16:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E139610EA2F;
 Fri, 15 Dec 2023 16:56:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4C43AADEB;
 Fri, 15 Dec 2023 16:56:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Eaerly_g?=
 =?utf-8?q?gtt_pinning_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 15 Dec 2023 16:56:56 -0000
Message-ID: <170265941683.27832.1156264658841279368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Eaerly ggtt pinning stuff
URL   : https://patchwork.freedesktop.org/series/127870/
State : warning

== Summary ==

Error: dim checkpatch failed
bb26a9048f2e drm/i915/hdcp: Do intel_hdcp_component_init() much later during init
-:14: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#14: 
ggtt PTEs that need to be preserved until the the BIOS fb takover

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
442e16c2b7f9 drm/i915/hdcp: Pin the hdcp gsc message high in ggtt
3ad12ae18ce8 drm/i915: Pin error_capture to high end of mappable
-:14: WARNING:REPEATED_WORD: Possible repeated word: 'then'
#14: 
displays connected at boot). We are then then left with a

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


