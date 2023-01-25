Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3295567C0F6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 00:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7E810E3AA;
	Wed, 25 Jan 2023 23:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B691610E3A9;
 Wed, 25 Jan 2023 23:39:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADCF5AADED;
 Wed, 25 Jan 2023 23:39:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 25 Jan 2023 23:39:45 -0000
Message-ID: <167468998567.5513.3149080919671852955@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125114852.748337-1-imre.deak@intel.com>
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dp=5Fmst=3A_Fix_MST_payload_removal_during_output_disab?=
 =?utf-8?q?ling?=
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

Series: drm/i915/dp_mst: Fix MST payload removal during output disabling
URL   : https://patchwork.freedesktop.org/series/113329/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  LD [M]  drivers/gpu/drm/i915/i915.o
  LD [M]  drivers/gpu/drm/i915/kvmgt.o
  HDRTEST drivers/gpu/drm/i915/display/intel_dp_mst.h
In file included from <command-line>:
./drivers/gpu/drm/i915/display/intel_dp_mst.h:22:18: error: ‘struct intel_crtc’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
   22 |           struct intel_crtc *crtc);
      |                  ^~~~~~~~~~
./drivers/gpu/drm/i915/display/intel_dp_mst.h:21:53: error: ‘struct intel_atomic_state’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
   21 | int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
      |                                                     ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/display/intel_dp_mst.h:23:39: error: ‘struct intel_atomic_state’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
   23 | void intel_dp_mst_verify_state(struct intel_atomic_state *state);
      |                                       ^~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [drivers/gpu/drm/i915/Makefile:380: drivers/gpu/drm/i915/display/intel_dp_mst.hdrtest] Error 1
make[4]: *** [scripts/Makefile.build:504: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:504: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:504: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:504: drivers] Error 2
make: *** [Makefile:2021: .] Error 2


