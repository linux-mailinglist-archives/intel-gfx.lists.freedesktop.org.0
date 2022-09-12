Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1D45B5FA9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 19:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C587710E03B;
	Mon, 12 Sep 2022 17:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9881B10E029;
 Mon, 12 Sep 2022 17:56:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9148CA8830;
 Mon, 12 Sep 2022 17:56:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 12 Sep 2022 17:56:50 -0000
Message-ID: <166300541059.11338.11569273240743018345@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Some_house_cleaning?=
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

Series: drm/i915: Some house cleaning
URL   : https://patchwork.freedesktop.org/series/108426/
State : warning

== Summary ==

Error: dim checkpatch failed
bb92496cbf75 drm/i915: Drop pointless middle man variable
24106901ef3f drm/i915: Clean up transcoder_to_stream_enc_status()
f812b8d2b903 drm/i915: Drop pointless 'budget' variable
585c200640cf drm/i915: Use BIT() when dealing with output types
56b56ed7479a drm/i915: Pass intel_encoder to to_lvds_encoder()
9d3269780500 drm/i915: Extract intel_edp_backlight_setup()
50ef7f176f11 drm/i915: Extract intel_tv_add_properties()
a28c6ad5cd02 drm/i915: Extract intel_dp_mst_add_properties()
1f08af6be780 drm/i915: Extract intel_lvds_add_properties()
d4b0e18948d1 drm/i915: Move eDP scaling_mode prop setup to the proper place
534fed13623a drm/i915: Extract intel_attach_scaling_mode_property()
7103e1ac93ff drm/i915: Clean up connector->*_allowed setup
ee13198e6f5a drm/i915: Don't init eDP if we can't find a fixed mode
46944f8a5aa8 drm/i915: Finish s/intel_encoder/encoder/ rename
-:347: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "encoder->audio_connector"
#347: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1234:
+	*enabled = encoder->audio_connector != NULL;

total: 0 errors, 0 warnings, 1 checks, 1523 lines checked
d0565df6f72d drm/i915: s/intel_connector/connector/ in init code
-:62: CHECK:CAMELCASE: Avoid CamelCase: <SubPixelHorizontalRGB>
#62: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:2035:
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;

total: 0 errors, 0 warnings, 1 checks, 1083 lines checked


