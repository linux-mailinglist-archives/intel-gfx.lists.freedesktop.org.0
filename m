Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8507C6BB1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 12:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD0810E4BD;
	Thu, 12 Oct 2023 10:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52A3110E4C1;
 Thu, 12 Oct 2023 10:57:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FE6BAADF2;
 Thu, 12 Oct 2023 10:57:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 12 Oct 2023 10:57:22 -0000
Message-ID: <169710824232.25007.8759072929536692461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231011201533.1081368-1-jani.nikula@intel.com>
In-Reply-To: <20231011201533.1081368-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/aux=3A_add_separate?=
 =?utf-8?q?_register_macros_and_functions_for_VLV/CHV?=
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

Series: series starting with [1/2] drm/i915/aux: add separate register macros and functions for VLV/CHV
URL   : https://patchwork.freedesktop.org/series/124999/
State : warning

== Summary ==

Error: dim checkpatch failed
04c3809d13f5 drm/i915/aux: add separate register macros and functions for VLV/CHV
-:162: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_regs.h:80:
+								       _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
43cb21672a63 drm/i915/aux: rename dev_priv to i915


