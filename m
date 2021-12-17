Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7923479568
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 21:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B606010E57D;
	Fri, 17 Dec 2021 20:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 153DB10E57D;
 Fri, 17 Dec 2021 20:24:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DBD5AA0ED;
 Fri, 17 Dec 2021 20:24:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 17 Dec 2021 20:24:29 -0000
Message-ID: <163977266903.10410.13729609997833341400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211217200302.2855240-1-anusha.srivatsa@intel.com>
In-Reply-To: <20211217200302.2855240-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Move_cdclk_checks_to_atomic_check_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915/display: Move cdclk checks to atomic check (rev2)
URL   : https://patchwork.freedesktop.org/series/97850/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a83c610f1486 drm/i915/display: Move cdclk checks to atomic check
-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1960:
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,

-:144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#144: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1988:
+static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
 				   const struct intel_cdclk_config *a,

total: 0 errors, 0 warnings, 2 checks, 288 lines checked


