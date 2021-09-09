Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409EB405DD2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 22:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD12F6E935;
	Thu,  9 Sep 2021 20:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA1E96E91E;
 Thu,  9 Sep 2021 20:02:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0C9AA363D;
 Thu,  9 Sep 2021 20:02:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 20:02:09 -0000
Message-ID: <163121772988.16809.9995839339507723619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909194917.66433-1-jose.souza@intel.com>
In-Reply-To: <20210909194917.66433-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/display/skl+?=
 =?utf-8?q?=3A_Drop_frontbuffer_rendering_support?=
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

Series: series starting with [CI,1/2] drm/i915/display/skl+: Drop frontbuffer rendering support
URL   : https://patchwork.freedesktop.org/series/94522/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8ed17fa41e37 drm/i915/display/skl+: Drop frontbuffer rendering support
d1a6a5a3ecab drm/i915/display: Drop PSR frontbuffer rendering support
-:251: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#251: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1894:
+#if 0

total: 0 errors, 1 warnings, 0 checks, 298 lines checked


