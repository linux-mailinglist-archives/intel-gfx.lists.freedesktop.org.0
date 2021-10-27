Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EB843BEAE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 02:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450336E4E8;
	Wed, 27 Oct 2021 00:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FFBC6E4E6;
 Wed, 27 Oct 2021 00:58:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88CA4A00E8;
 Wed, 27 Oct 2021 00:58:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 00:58:02 -0000
Message-ID: <163529628251.4635.10286588177557679633@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211027004821.66097-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211027004821.66097-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Add_a_name_to_th?=
 =?utf-8?q?e_execlists_stats?=
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

Series: series starting with [1/2] drm/i915/pmu: Add a name to the execlists stats
URL   : https://patchwork.freedesktop.org/series/96324/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:28:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:28:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:28:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:33:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:33:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:51:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:51:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:51:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:57:9: warning: trying to copy expression type 31
+drivers/gpu/drm/i915/gt/intel_engine_stats.h:57:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:27:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:32:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:32:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:49:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:56:9: warning: trying to copy expression type 31
-O:drivers/gpu/drm/i915/gt/intel_engine_stats.h:56:9: warning: trying to copy expression type 31


