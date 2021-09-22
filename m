Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B34641531B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 23:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904686E054;
	Wed, 22 Sep 2021 21:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 757676E054;
 Wed, 22 Sep 2021 21:56:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F74FA008A;
 Wed, 22 Sep 2021 21:56:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 21:56:21 -0000
Message-ID: <163234778143.6943.1517099807553795203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922215242.66683-1-jose.souza@intel.com>
In-Reply-To: <20210922215242.66683-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/display/dmc=3A?=
 =?utf-8?q?_Set_DC=5FSTATE=5FDEBUG=5FMASK=5FCORES_after_firmware_load?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/display/dmc: Set DC_STATE_DEBUG_MASK_CORES after firmware load
URL   : https://patchwork.freedesktop.org/series/94967/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5b64a2f4c3ca drm/i915/display/dmc: Set DC_STATE_DEBUG_MASK_CORES after firmware load
99491a0cc1f9 drm/i915/display: Match PSR2 selective fetch sequences with specification
f58ed69579ae drm/i915/display: Only keep PSR enabled if there is active planes
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
commit 84030adb9e27 ("drm/i915/display: Disable audio, DRRS and PSR before planes").

total: 0 errors, 1 warnings, 0 checks, 321 lines checked


