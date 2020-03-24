Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EBA191AF4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 21:28:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859C66E086;
	Tue, 24 Mar 2020 20:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 370BF6E544;
 Tue, 24 Mar 2020 20:28:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30668A47DF;
 Tue, 24 Mar 2020 20:28:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 24 Mar 2020 20:28:20 -0000
Message-ID: <158508170019.5747.473819998805242461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324201429.29153-1-jose.souza@intel.com>
In-Reply-To: <20200324201429.29153-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/6=5D_drm/i915/tc/tgl=3A_Impl?=
 =?utf-8?q?ement_TCCOLD_sequences?=
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

Series: series starting with [v3,1/6] drm/i915/tc/tgl: Implement TCCOLD sequences
URL   : https://patchwork.freedesktop.org/series/75034/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
125d3dc52b2a drm/i915/tc/tgl: Implement TCCOLD sequences
ca5b103fb97c drm/i915/display: Add intel_display_power_get_without_ack()
bb6945d8d8cf drm/i915/display: Implement intel_display_power_wait_enable_ack()
4b5d60dcb2a5 drm/i915/display: Add intel_aux_ch_to_power_domain()
3b031f0ded4f drm/i915/tc/icl: Implement the TC cold exit sequence
-:161: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#161: FILE: drivers/gpu/drm/i915/display/intel_tc.c:549:
+			msleep(1);

total: 0 errors, 1 warnings, 0 checks, 166 lines checked
ae9ffbf9a4cc drm/i915/dp: Get TC link reference during DP detection

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
