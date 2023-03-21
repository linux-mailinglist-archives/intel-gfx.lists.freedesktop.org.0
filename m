Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F3A6C2A34
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 07:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5CA10E6D6;
	Tue, 21 Mar 2023 06:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 50E6B10E6D6;
 Tue, 21 Mar 2023 06:07:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4368EAADD6;
 Tue, 21 Mar 2023 06:07:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Mar 2023 06:07:45 -0000
Message-ID: <167937886527.18679.10544957507243601530@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_various_issues_with_noarm_register_writes_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: Fix various issues with noarm register writes (rev2)
URL   : https://patchwork.freedesktop.org/series/115379/
State : warning

== Summary ==

Error: dim checkpatch failed
7b543473b5b0 drm/i915: Split icl_color_commit_noarm() from skl_color_commit_noarm()
64cd7158a867 drm/i915: Move CSC load back into .color_commit_arm() when PSR is enabled on skl/glk
-:32: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#32: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8283

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
c833e60dced4 drm/i915: Add a .color_post_update() hook
b1a6c0bd013d drm/i915: Workaround ICL CSC_MODE sticky arming
dbe9f4fad0e1 drm/i915: Disable DC states for all commits
96b1f5e9d4c8 drm/i915/psr: Define more PSR mask bits


