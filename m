Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD875222BC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 19:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC9D10E259;
	Tue, 10 May 2022 17:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6865D10E259;
 Tue, 10 May 2022 17:31:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5ED28AA01E;
 Tue, 10 May 2022 17:31:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 10 May 2022 17:31:19 -0000
Message-ID: <165220387935.26420.8844857892938053588@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220510114957.406070-1-imre.deak@intel.com>
In-Reply-To: <20220510114957.406070-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Fix_=27mixing_different_enum_types=27_warnings_in_i?=
 =?utf-8?b?bnRlbF9kaXNwbGF5X3Bvd2VyLmMgKHJldjIp?=
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

Series: drm/i915: Fix 'mixing different enum types' warnings in intel_display_power.c (rev2)
URL   : https://patchwork.freedesktop.org/series/103803/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    int enum port
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    unsigned int enum intel_display_power_domain
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2431:34: warning: mixing different enum types:
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    int enum port
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    unsigned int enum intel_display_power_domain
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2442:37: warning: mixing different enum types:
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned int enum aux_ch
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned int enum intel_display_power_domain
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2468:43: warning: mixing different enum types:
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned int enum aux_ch
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned int enum intel_display_power_domain
-O:drivers/gpu/drm/i915/display/intel_display_power.c:2479:35: warning: mixing different enum types:


