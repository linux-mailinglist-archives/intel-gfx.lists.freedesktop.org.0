Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 568C2153A38
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 22:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29CF6E24B;
	Wed,  5 Feb 2020 21:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D99F76E24B;
 Wed,  5 Feb 2020 21:25:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D20B7A0078;
 Wed,  5 Feb 2020 21:25:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 05 Feb 2020 21:25:28 -0000
Message-ID: <158093792883.17318.129566537664332187@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205173419.1695-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200205173419.1695-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in?=
 =?utf-8?q?_i915_=28rev6=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev6)
URL   : https://patchwork.freedesktop.org/series/72035/
State : failure

== Summary ==

Applying: drm/i915/display/cdclk: Make WARN* drm specific where drm_priv ptr is available
Applying: drm/i915/display/ddi: Make WARN* drm specific where drm_device ptr is available
Applying: drm/i915/display/display: Make WARN* drm specific where drm_device ptr is available
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Applying: drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display_power.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display_power.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0004 drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
