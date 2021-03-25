Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A854A349CC7
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 00:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF67A6EE56;
	Thu, 25 Mar 2021 23:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19C946EE55;
 Thu, 25 Mar 2021 23:17:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 119D2A9932;
 Thu, 25 Mar 2021 23:17:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dale B Stimson" <dale.b.stimson@intel.com>
Date: Thu, 25 Mar 2021 23:17:43 -0000
Message-ID: <161671426304.15546.8178104850710741274@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325195230.97238-1-dale.b.stimson@intel.com>
In-Reply-To: <20210325195230.97238-1-dale.b.stimson@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/dg1=3A_Add_HWMON_power_sensor_support?=
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

Series: drm/i915/dg1: Add HWMON power sensor support
URL   : https://patchwork.freedesktop.org/series/88459/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    expected unsigned int [usertype] bits_to_set
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    expected unsigned int [usertype] bits_to_set
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    expected unsigned int [usertype] bits_to_set
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    expected unsigned int [usertype] bits_to_set
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    got restricted __le32
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    got restricted __le32
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    got restricted __le32
+drivers/gpu/drm/i915/i915_hwmon.c:114:21:    got restricted __le32
+drivers/gpu/drm/i915/i915_hwmon.c:114:21: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:114:21: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:114:21: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:114:21: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    got unsigned int [assigned] [usertype] reg_value
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    got unsigned int [assigned] [usertype] reg_value
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    got unsigned int [assigned] [usertype] reg_value
+drivers/gpu/drm/i915/i915_hwmon.c:63:35:    got unsigned int [assigned] [usertype] reg_value
+drivers/gpu/drm/i915/i915_hwmon.c:63:35: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:63:35: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:63:35: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:63:35: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:720:48:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:720:48:    got unsigned int [assigned] [usertype] val_sku_unit
+drivers/gpu/drm/i915/i915_hwmon.c:720:48: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:721:49:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:721:49:    got unsigned int [assigned] [usertype] val_sku_unit
+drivers/gpu/drm/i915/i915_hwmon.c:721:49: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:722:47:    expected restricted __le32 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:722:47:    got unsigned int [assigned] [usertype] val_sku_unit
+drivers/gpu/drm/i915/i915_hwmon.c:722:47: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:87:35:    expected restricted __le64 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:87:35:    expected restricted __le64 [usertype] v
+drivers/gpu/drm/i915/i915_hwmon.c:87:35:    got unsigned long long [assigned] [usertype] reg_value
+drivers/gpu/drm/i915/i915_hwmon.c:87:35:    got unsigned long long [assigned] [usertype] reg_value
+drivers/gpu/drm/i915/i915_hwmon.c:87:35: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i915/i915_hwmon.c:87:35: warning: incorrect type in argument 1 (different base types)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
