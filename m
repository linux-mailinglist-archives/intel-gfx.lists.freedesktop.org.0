Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C225ACDF9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 10:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E4F10E230;
	Mon,  5 Sep 2022 08:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9871510E221;
 Mon,  5 Sep 2022 08:53:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 902E9A8830;
 Mon,  5 Sep 2022 08:53:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 05 Sep 2022 08:53:52 -0000
Message-ID: <166236803258.1949.3950771716158597029@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
In-Reply-To: <20220905080500.213330-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_do_not_reset_PLANE=5FSURF_on_plane_disable_on_o?=
 =?utf-8?q?lder_gens?=
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

Series: drm/i915: do not reset PLANE_SURF on plane disable on older gens
URL   : https://patchwork.freedesktop.org/series/108133/
State : warning

== Summary ==

Error: dim checkpatch failed
574a7dd04303 drm/i915: do not reset PLANE_SURF on plane disable on older gens
-:12: WARNING:TYPO_SPELLING: 'writting' may be misspelled - perhaps 'writing'?
#12: 
write to it to trigger update on VBLANK, writting current value should
                                         ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 30 lines checked


