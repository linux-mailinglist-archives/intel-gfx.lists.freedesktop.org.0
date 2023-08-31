Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F5378EF08
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 15:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354B510E67D;
	Thu, 31 Aug 2023 13:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4E5910E67D;
 Thu, 31 Aug 2023 13:54:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A167AA00CC;
 Thu, 31 Aug 2023 13:54:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 31 Aug 2023 13:54:36 -0000
Message-ID: <169349007665.12509.17438502658146637903@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230829113920.13713-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230829113920.13713-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Populate_connector-=3Eddc_always_=28rev2=29?=
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

Series: drm/i915: Populate connector->ddc always (rev2)
URL   : https://patchwork.freedesktop.org/series/123006/
State : warning

== Summary ==

Error: dim checkpatch failed
47a1e16097f5 drm: Reorder drm_sysfs_connector_remove() vs. drm_debugfs_connector_remove()
2ac1ee4c65aa drm/sysfs: Register "ddc" symlink later
f0193be71b51 drm/i915: Call the DDC bus i2c adapter "ddc"
43e09a3902ce drm/i915/lvds: Populate connector->ddc
6b3844d1cca8 drm/i915/crt: Populate connector->ddc
5d50373b61f7 drm/i915/dvo: Populate connector->ddc
be8dd2ee3da3 drm/i915/dp: Populate connector->ddc
fcbd58896620 drm/i915/mst: Populate connector->ddc
-:14: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#14: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/3605

total: 0 errors, 1 warnings, 0 checks, 12 lines checked
52dcff2e47f8 drm/i915/hdmi: Use connector->ddc everwhere
b7da451d677e drm/i915/hdmi: Nuke hdmi->ddc_bus
e6b491317b4d drm/i915/hdmi: Remove old i2c symlink
55695e375316 drm/i915/sdvo: Constify mapping structs


