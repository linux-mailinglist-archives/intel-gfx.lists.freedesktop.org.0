Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E78175D0A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCAC6E2C8;
	Mon,  2 Mar 2020 14:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87A0B6E2C8;
 Mon,  2 Mar 2020 14:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 810E8A00FD;
 Mon,  2 Mar 2020 14:29:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 02 Mar 2020 14:29:36 -0000
Message-ID: <158315937652.30644.18209720289247811366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_drm=5Ffb=5Fhelper_cleanup=2E?=
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

Series: drm: drm_fb_helper cleanup.
URL   : https://patchwork.freedesktop.org/series/74140/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b1b805dc68b7 drm: Remove unused arg from drm_fb_helper_init
175d46a47660 drm/radeon: remove radeon_fb_{add, remove}_connector functions
af557abd14c0 drm/amdgpu: Remove drm_fb_helper_{add, remove}_one_connector calls
e5c6aa01171c drm/i915/display: Remove drm_fb_helper_{add, remove}_one_connector calls
603f81467e6f drm: Remove drm_fb_helper add, add all and remove connector calls
93f41559c3b8 drm/nouveau: Fix unused variable warning
8a9bc6fce8b9 drm/bridge: remove unused variable warning in tc358764_detach
c159742eb80c drm/fb-helper: Remove drm_fb_helper add, add_all and remove connector functions
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
drm_fb_helper_single_add_all_connectors(), drm_fb_helper_add_one_connector()

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
04d65ea03552 drm/todo: Update drm_fb_helper tasks

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
