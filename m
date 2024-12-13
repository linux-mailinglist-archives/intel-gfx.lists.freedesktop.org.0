Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0569F0A1F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A928A10EFBC;
	Fri, 13 Dec 2024 10:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35EC110EFBE;
 Fri, 13 Dec 2024 10:53:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsc=3A_Expo?=
 =?utf-8?q?se_dsc_sink_max_slice_count_via_debugfs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2024 10:53:38 -0000
Message-ID: <173408721821.2097536.8278912681816320661@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241213093008.2149452-1-swati2.sharma@intel.com>
In-Reply-To: <20241213093008.2149452-1-swati2.sharma@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dsc: Expose dsc sink max slice count via debugfs
URL   : https://patchwork.freedesktop.org/series/142537/
State : warning

== Summary ==

Error: dim checkpatch failed
e878914615f9 drm/i915/dsc: Expose dsc sink max slice count via debugfs
-:26: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1017:
+			   drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd), intel_dp_is_edp(intel_dp)));

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


