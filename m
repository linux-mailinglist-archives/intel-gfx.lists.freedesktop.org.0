Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA020430CF8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA56B6E847;
	Mon, 18 Oct 2021 00:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F5AF6E847;
 Mon, 18 Oct 2021 00:01:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B39AA00E8;
 Mon, 18 Oct 2021 00:01:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 00:01:28 -0000
Message-ID: <163451528843.27088.13528147579570360977@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211017234106.2412994-1-airlied@gmail.com>
In-Reply-To: <20211017234106.2412994-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?finish/rebase_fbdev_pin_refactor=2E?=
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

Series: finish/rebase fbdev pin refactor.
URL   : https://patchwork.freedesktop.org/series/95925/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/display/intel_fbdev.c:222:60:    expected void **vaddr
+drivers/gpu/drm/i915/display/intel_fbdev.c:222:60:    got void [noderef] __iomem **
+drivers/gpu/drm/i915/display/intel_fbdev.c:222:60: warning: incorrect type in argument 3 (different address spaces)
+drivers/gpu/drm/i915/display/intel_fb_pin.c:298:16:    expected void *
+drivers/gpu/drm/i915/display/intel_fb_pin.c:298:16:    got void [noderef] __iomem *
+drivers/gpu/drm/i915/display/intel_fb_pin.c:298:16: warning: incorrect type in assignment (different address spaces)


