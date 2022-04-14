Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CC1501EC8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 00:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C013910E430;
	Thu, 14 Apr 2022 22:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CA7D10E430;
 Thu, 14 Apr 2022 22:56:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B1F5A0118;
 Thu, 14 Apr 2022 22:56:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 14 Apr 2022 22:56:15 -0000
Message-ID: <164997697508.1347.8483802943826044664@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414183148.15884-1-nirmoy.das@intel.com>
In-Reply-To: <20220414183148.15884-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?ALSA=3A_hda=3A_handle_UAF_at_probe_error?=
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

Series: ALSA: hda: handle UAF at probe error
URL   : https://patchwork.freedesktop.org/series/102714/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i2c/tda998x_drv.c:1712:50:    expected restricted __be32 const [usertype] *p
+drivers/gpu/drm/i2c/tda998x_drv.c:1712:50:    got unsigned int const [usertype] *
+drivers/gpu/drm/i2c/tda998x_drv.c:1712:50: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i2c/tda998x_drv.c:1713:52:    expected restricted __be32 const [usertype] *p
+drivers/gpu/drm/i2c/tda998x_drv.c:1713:52:    got unsigned int const [usertype] *
+drivers/gpu/drm/i2c/tda998x_drv.c:1713:52: warning: incorrect type in argument 1 (different base types)


