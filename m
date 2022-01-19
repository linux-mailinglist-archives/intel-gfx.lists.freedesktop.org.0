Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5476E493F74
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 19:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA6A10E927;
	Wed, 19 Jan 2022 17:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0218310E922;
 Wed, 19 Jan 2022 17:59:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F37F5AA3D8;
 Wed, 19 Jan 2022 17:59:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "H.J. Lu" <hjl.tools@gmail.com>
Date: Wed, 19 Jan 2022 17:59:57 -0000
Message-ID: <164261519796.22603.5146456163397841993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220119160445.3609367-1-hjl.tools@gmail.com>
In-Reply-To: <20220119160445.3609367-1-hjl.tools@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915/bios=3A_Workaround_broken_video_BIOS_in_LG_Gram_2021?=
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

Series: drm/i915/bios: Workaround broken video BIOS in LG Gram 2021
URL   : https://patchwork.freedesktop.org/series/99052/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/display/intel_bios.c:2278: warning: Function parameter or member 'dev_priv' not described in 'intel_bios_is_valid_vbt'


