Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EFC31004B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 23:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884F56E922;
	Thu,  4 Feb 2021 22:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 656536E922;
 Thu,  4 Feb 2021 22:47:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D751AAA91;
 Thu,  4 Feb 2021 22:47:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 Feb 2021 22:47:19 -0000
Message-ID: <161247883936.4504.13903183884997634840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1612467466.git.jani.nikula@intel.com>
In-Reply-To: <cover.1612467466.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_refactor_intel=5Fdisplay=2Ec_+_a_bit_more?=
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

Series: drm/i915: refactor intel_display.c + a bit more
URL   : https://patchwork.freedesktop.org/series/86723/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:742:28: warning: symbol 'bdw_get_buf_trans_edp' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:756:28: warning: symbol 'skl_get_buf_trans_dp' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:773:28: warning: symbol 'kbl_get_buf_trans_dp' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:794:28: warning: symbol 'skl_get_buf_trans_edp' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:826:28: warning: symbol 'skl_get_buf_trans_hdmi' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:841:5: warning: symbol 'skl_buf_trans_num_entries' was not declared. Should it be static?
+drivers/gpu/drm/i915/intel_wakeref.c:137:19: warning: context imbalance in 'wakeref_auto_timeout' - unexpected unlock


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
