Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 539BE13D8E7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 12:26:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B864C6ECB6;
	Thu, 16 Jan 2020 11:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9ADD6ECB6;
 Thu, 16 Jan 2020 11:26:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E01E8A011A;
 Thu, 16 Jan 2020 11:26:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 16 Jan 2020 11:26:07 -0000
Message-ID: <157917396791.12911.687150227212070652@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/i915/sdvo=3A_Reduce_the_?=
 =?utf-8?q?size_of_the_on_stack_buffers_=28rev2=29?=
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

Series: series starting with [1/9] drm/i915/sdvo: Reduce the size of the on stack buffers (rev2)
URL   : https://patchwork.freedesktop.org/series/71775/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d629200d3735 drm/i915/sdvo: Reduce the size of the on stack buffers
63fd40d1cd3d drm/i915: Consolidate HDMI force_dvi handling
-:27: WARNING:LONG_LINE: line over 100 characters
#27: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2116:
+		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;

total: 0 errors, 1 warnings, 0 checks, 147 lines checked
db7012bcf038 drm/i915/sdvo: Consolidate SDVO HDMI force_dvi handling
-:28: WARNING:LONG_LINE: line over 100 characters
#28: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:1271:
+		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;

total: 0 errors, 1 warnings, 0 checks, 33 lines checked
347977599923 drm/i915/sdvo: Fix SDVO colorimetry bit defines
2ec2b60bb239 drm/i915/sdvo: Implement limited color range for SDVO HDMI properly
d0350c5ec179 drm/i915: Reject DRM_MODE_FLAG_DBLCLK with DVI sinks
2e9ee2b681b8 drm/i915/sdvo: Make SDVO deal with HDMI pixel repeat
18742fe20146 drm/i915/sdvo: Make .get_modes() return the number of modes
8b2fc5fad88e drm/i915/dvo: Make .get_modes() return the number of modes

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
