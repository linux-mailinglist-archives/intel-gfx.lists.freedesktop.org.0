Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9F39B61DD
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6667910E786;
	Wed, 30 Oct 2024 11:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3EDA10E786;
 Wed, 30 Oct 2024 11:33:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Implemen?=
 =?utf-8?q?t_Dbuf_overlap_detection_feature_starting_from_LNL_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2024 11:33:59 -0000
Message-ID: <173028803979.1363580.15002297677161518716@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030103319.207235-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241030103319.207235-1-vinod.govindapillai@intel.com>
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

Series: drm/i915: Implement Dbuf overlap detection feature starting from LNL (rev7)
URL   : https://patchwork.freedesktop.org/series/136884/
State : warning

== Summary ==

Error: dim checkpatch failed
6cdd4214f3c8 drm/i915: Implement Dbuf overlap detection feature starting from LNL
-:59: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:146:
+#define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)

total: 0 errors, 1 warnings, 0 checks, 67 lines checked


