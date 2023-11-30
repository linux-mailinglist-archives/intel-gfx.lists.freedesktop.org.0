Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247CF7FFD1F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 21:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FC510E755;
	Thu, 30 Nov 2023 20:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E43E10E755;
 Thu, 30 Nov 2023 20:52:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97542A03D2;
 Thu, 30 Nov 2023 20:52:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Date: Thu, 30 Nov 2023 20:52:54 -0000
Message-ID: <170137757459.15643.16065998157202194250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231130113505.1321348-1-luciano.coelho@intel.com>
In-Reply-To: <20231130113505.1321348-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_handle_uncore_spinlock_when_not_available_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915: handle uncore spinlock when not available (rev3)
URL   : https://patchwork.freedesktop.org/series/125442/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/display/intel_vblank.c:278:13: warning: context imbalance in 'intel_vblank_section_enter' - wrong count at exit
+drivers/gpu/drm/i915/display/intel_vblank.c:285:13: warning: context imbalance in 'intel_vblank_section_exit' - unexpected unlock


