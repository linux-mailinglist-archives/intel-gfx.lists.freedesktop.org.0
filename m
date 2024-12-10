Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEF79EB530
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 16:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FEFA10E3BE;
	Tue, 10 Dec 2024 15:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF86A10E118;
 Tue, 10 Dec 2024 15:38:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Expose_dsc_sink_max_?=
 =?utf-8?q?slice_count_via_debugfs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2024 15:38:45 -0000
Message-ID: <173384512597.880270.5315813579779049444@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241210140543.2117692-1-swati2.sharma@intel.com>
In-Reply-To: <20241210140543.2117692-1-swati2.sharma@intel.com>
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

Series: Expose dsc sink max slice count via debugfs
URL   : https://patchwork.freedesktop.org/series/142354/
State : warning

== Summary ==

Error: dim checkpatch failed
06d13d827dc9 drm/i915/dsc: Expose dsc sink max slice count via debugfs
-:27: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1021:
+				   drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd), false));

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


