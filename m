Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0E325F168
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 03:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30086E102;
	Mon,  7 Sep 2020 01:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E25C56E0F2;
 Mon,  7 Sep 2020 01:15:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D266AA0003;
 Mon,  7 Sep 2020 01:15:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Mon, 07 Sep 2020 01:15:33 -0000
Message-ID: <159944133383.31224.9464992360860686005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1599236505-9086-1-git-send-email-xiaolin.zhang@intel.com>
In-Reply-To: <1599236505-9086-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGVu?=
 =?utf-8?q?hanced_i915_vgpu_with_PV_feature_support?=
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

Series: enhanced i915 vgpu with PV feature support
URL   : https://patchwork.freedesktop.org/series/81400/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/i915_vgpu.c:846: warning: Excess function parameter 'dev_priv' description in 'intel_vgpu_detect_pv_caps'
./drivers/gpu/drm/i915/i915_vgpu.c:547: warning: Function parameter or member 'pv' not described in 'pv_command_buffer_write'
./drivers/gpu/drm/i915/i915_vgpu.c:547: warning: Function parameter or member 'action' not described in 'pv_command_buffer_write'
./drivers/gpu/drm/i915/i915_vgpu.c:547: warning: Function parameter or member 'len' not described in 'pv_command_buffer_write'
./drivers/gpu/drm/i915/i915_vgpu.c:547: warning: Function parameter or member 'fence' not described in 'pv_command_buffer_write'
./drivers/gpu/drm/i915/i915_vgpu.c:847: warning: Function parameter or member 'i915' not described in 'intel_vgpu_detect_pv_caps'
./drivers/gpu/drm/i915/i915_vgpu.c:847: warning: Function parameter or member 'shared_area' not described in 'intel_vgpu_detect_pv_caps'
./drivers/gpu/drm/i915/i915_vgpu.c:847: warning: Excess function parameter 'dev_priv' description in 'intel_vgpu_detect_pv_caps'


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
