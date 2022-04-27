Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89814510D51
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 02:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E9D10E1C8;
	Wed, 27 Apr 2022 00:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2876810E1C8;
 Wed, 27 Apr 2022 00:39:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25740A7DFB;
 Wed, 27 Apr 2022 00:39:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 27 Apr 2022 00:39:40 -0000
Message-ID: <165101998014.24234.4381315389029396201@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427002617.1767295-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220427002617.1767295-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Prepare_for_GSC-loaded_HuC?=
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

Series: drm/i915: Prepare for GSC-loaded HuC
URL   : https://patchwork.freedesktop.org/series/103186/
State : warning

== Summary ==

Error: dim checkpatch failed
8916eb4e3081 drm/i915/huc: check HW directly for HuC auth status
0cbbd92e569f drm/i915/huc: Add fetch support for gsc-loaded HuC binary
f17e836d85dc drm/i915/huc: Prepare for GSC-loaded HuC
-:22: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h:99:
+#define   GSC_LOADS_HUC			(1<<30)
                        			  ^

total: 0 errors, 0 warnings, 1 checks, 177 lines checked
120b114272a8 drm/i915/huc: Don't fail the probe if HuC init fails


