Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A22B673908
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 13:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4472210E242;
	Thu, 19 Jan 2023 12:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E12410E91F;
 Thu, 19 Jan 2023 12:57:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 436E5A47DF;
 Thu, 19 Jan 2023 12:57:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Thu, 19 Jan 2023 12:57:31 -0000
Message-ID: <167413305127.24701.9339976076335222994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230113043653.795183-1-arun.r.murthy@intel.com>
In-Reply-To: <20230113043653.795183-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BPATCHv2=2C2/2=5D_i915/display/dp=3A_SDP_?=
 =?utf-8?q?CRC16_for_128b132b_link_layer_=28rev3=29?=
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

Series: series starting with [PATCHv2,2/2] i915/display/dp: SDP CRC16 for 128b132b link layer (rev3)
URL   : https://patchwork.freedesktop.org/series/112774/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/display/intel_dp.o
drivers/gpu/drm/i915/display/intel_dp.c: In function ‘intel_dp_set_dpcd_sink_rates’:
drivers/gpu/drm/i915/display/intel_dp.c:204:9: error: ‘DP_SDP_ERROR_DETECTION’ undeclared (first use in this function)
  204 |         DP_SDP_ERROR_DETECTION,
      |         ^~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_dp.c:204:9: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/display/intel_dp.c:205:9: error: ‘DP_SDP_CRC16_128B132B_EN’ undeclared (first use in this function)
  205 |         DP_SDP_CRC16_128B132B_EN);
      |         ^~~~~~~~~~~~~~~~~~~~~~~~
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/display/intel_dp.o] Error 1
make[4]: *** [scripts/Makefile.build:504: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:504: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:504: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:504: drivers] Error 2
make: *** [Makefile:2008: .] Error 2


