Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD3144EE1A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 21:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28FBF6EB20;
	Fri, 12 Nov 2021 20:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 431CE6EB20;
 Fri, 12 Nov 2021 20:46:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C98EA8169;
 Fri, 12 Nov 2021 20:46:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 12 Nov 2021 20:46:20 -0000
Message-ID: <163674998024.27230.2734181430992749010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Register_define_cleanups?=
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

Series: drm/i915: Register define cleanups
URL   : https://patchwork.freedesktop.org/series/96868/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/display/intel_fbc.c:635: warning: Excess function parameter 'i915' description in 'intel_fbc_is_active'
./drivers/gpu/drm/i915/display/intel_fbc.c:1638: warning: Excess function parameter 'i915' description in 'intel_fbc_handle_fifo_underrun_irq'
./drivers/gpu/drm/i915/display/intel_fbc.c:635: warning: Function parameter or member 'fbc' not described in 'intel_fbc_is_active'
./drivers/gpu/drm/i915/display/intel_fbc.c:635: warning: Excess function parameter 'i915' description in 'intel_fbc_is_active'
./drivers/gpu/drm/i915/display/intel_fbc.c:1638: warning: Function parameter or member 'fbc' not described in 'intel_fbc_handle_fifo_underrun_irq'
./drivers/gpu/drm/i915/display/intel_fbc.c:1638: warning: Excess function parameter 'i915' description in 'intel_fbc_handle_fifo_underrun_irq'


