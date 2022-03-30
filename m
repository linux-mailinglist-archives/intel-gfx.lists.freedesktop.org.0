Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FD04EC50D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 14:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4D910EE67;
	Wed, 30 Mar 2022 12:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C55110ECFA;
 Wed, 30 Mar 2022 12:58:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 352DBAA0EA;
 Wed, 30 Mar 2022 12:58:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 30 Mar 2022 12:58:42 -0000
Message-ID: <164864512219.8653.2654209743690297581@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330124119.224966-1-jani.nikula@intel.com>
In-Reply-To: <20220330124119.224966-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BRESEND=2C1/3=5D_drm/i915/dmc=3A_abstract?=
 =?utf-8?q?_GPU_error_state_dump?=
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

Series: series starting with [RESEND,1/3] drm/i915/dmc: abstract GPU error state dump
URL   : https://patchwork.freedesktop.org/series/101957/
State : failure

== Summary ==

Applying: drm/i915/dmc: abstract GPU error state dump
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dmc.c
M	drivers/gpu/drm/i915/display/intel_dmc.h
M	drivers/gpu/drm/i915/i915_gpu_error.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
Auto-merging drivers/gpu/drm/i915/display/intel_dmc.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dmc.h
Auto-merging drivers/gpu/drm/i915/display/intel_dmc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dmc.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/dmc: abstract GPU error state dump
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


