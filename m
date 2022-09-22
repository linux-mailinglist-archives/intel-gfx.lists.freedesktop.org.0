Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514535E69BE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 19:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D20010E067;
	Thu, 22 Sep 2022 17:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 524F710E067;
 Thu, 22 Sep 2022 17:38:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EBB0A0099;
 Thu, 22 Sep 2022 17:38:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maxime Ripard" <maxime@cerno.tech>
Date: Thu, 22 Sep 2022 17:38:08 -0000
Message-ID: <166386828831.19672.4313976191619746526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v2-0-f733a0ed9f90@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v2-0-f733a0ed9f90@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Analog_TV_Improvements_=28rev2=29?=
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

Series: drm: Analog TV Improvements (rev2)
URL   : https://patchwork.freedesktop.org/series/107892/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/107892/revisions/2/mbox/ not applied
Applying: drm/tests: Order Kunit tests in Makefile
Applying: drm/tests: Add Kunit Helpers
Applying: drm/atomic-helper: Rename drm_atomic_helper_connector_tv_reset to avoid ambiguity
Applying: drm/connector: Rename subconnector state variable
Applying: drm/atomic: Add TV subconnector property to get/set_property
Applying: drm/connector: Rename legacy TV property
Applying: drm/connector: Only register TV mode property if present
Applying: drm/connector: Rename drm_mode_create_tv_properties
Applying: drm/connector: Add TV standard property
Applying: drm/modes: Add a function to generate analog display modes
Applying: drm/modes: Only consider bpp and refresh before options
Applying: drm/modes: parse_cmdline: Add support for named modes containing dashes
Applying: drm/client: Add some tests for drm_connector_pick_cmdline_mode()
Applying: drm/modes: Move named modes parsing to a separate function
Applying: drm/modes: Bail out of named mode parsing if empty
Applying: drm/modes: Bail out of named mode parsing early if it's a number
Applying: drm/modes: Bail out of named mode parsing early if it's an option
Applying: drm/modes: Bail out of named mode parsing early if it's a status
Applying: drm/modes: Switch to named mode descriptors
Applying: drm/modes: Fill drm_cmdline mode from named modes
Applying: drm/connector: Add pixel clock to cmdline mode
Applying: drm/connector: Add a function to lookup a TV mode by its name
Applying: drm/modes: Introduce the tv_mode property as a command-line option
error: sha1 information is lacking or useless (include/drm/drm_connector.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0023 drm/modes: Introduce the tv_mode property as a command-line option
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


