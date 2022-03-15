Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA0A4DA2BC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC7010E141;
	Tue, 15 Mar 2022 18:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20D4B10E141;
 Tue, 15 Mar 2022 18:53:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BA24A0096;
 Tue, 15 Mar 2022 18:53:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 15 Mar 2022 18:53:39 -0000
Message-ID: <164737041910.20492.7553484773084042491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220314234203.799268-1-matthew.d.roper@intel.com>
In-Reply-To: <20220314234203.799268-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_General_multicast_steering_updates_=28rev2=29?=
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

Series: i915: General multicast steering updates (rev2)
URL   : https://patchwork.freedesktop.org/series/101367/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b9726a99fbeb drm/i915: Report steering details in debugfs
-:32: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#32: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:99:
+static const char *intel_steering_types[] = {

total: 0 errors, 1 warnings, 0 checks, 122 lines checked
ec0dbb3841d1 drm/i915/guc: add steering info to GuC register save/restore list
c390edc727c1 drm/i915: Add support for steered register writes


