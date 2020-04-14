Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C9B1A83C0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 17:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084896E207;
	Tue, 14 Apr 2020 15:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 27B086E207;
 Tue, 14 Apr 2020 15:49:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F6E3A0019;
 Tue, 14 Apr 2020 15:49:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Tue, 14 Apr 2020 15:49:13 -0000
Message-ID: <158687935309.30377.12063167201030437871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413063420.20668-1-animesh.manna@intel.com>
In-Reply-To: <20200413063420.20668-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915/dsb=3A_Pre_allocate_and_late_cleanup_of_cmd_buffer_=28re?=
 =?utf-8?b?djMp?=
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

Series: drm/i915/dsb: Pre allocate and late cleanup of cmd buffer (rev3)
URL   : https://patchwork.freedesktop.org/series/73036/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/display/intel_dsb.c:46: warning: Excess function parameter 'crtc' description in 'intel_dsb_prepare'
./drivers/gpu/drm/i915/display/intel_dsb.c:103: warning: Excess function parameter 'dsb' description in 'intel_dsb_cleanup'
./drivers/gpu/drm/i915/display/intel_dsb.c:185: warning: Excess function parameter 'crtc' description in 'intel_dsb_get'
./drivers/gpu/drm/i915/display/intel_dsb.c:47: warning: Function parameter or member 'crtc_state' not described in 'intel_dsb_prepare'
./drivers/gpu/drm/i915/display/intel_dsb.c:47: warning: Excess function parameter 'crtc' description in 'intel_dsb_prepare'
./drivers/gpu/drm/i915/display/intel_dsb.c:104: warning: Function parameter or member 'crtc_state' not described in 'intel_dsb_cleanup'
./drivers/gpu/drm/i915/display/intel_dsb.c:104: warning: Excess function parameter 'dsb' description in 'intel_dsb_cleanup'
./drivers/gpu/drm/i915/display/intel_dsb.c:186: warning: Function parameter or member 'crtc_state' not described in 'intel_dsb_get'
./drivers/gpu/drm/i915/display/intel_dsb.c:186: warning: Excess function parameter 'crtc' description in 'intel_dsb_get'
/home/cidrm/kernel/Documentation/gpu/i915.rst:610: WARNING: duplicate label gpu/i915:layout, other instance in /home/cidrm/kernel/Documentation/gpu/i915.rst

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
