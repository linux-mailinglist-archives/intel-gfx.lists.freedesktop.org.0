Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E58E81669C9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 22:26:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D125888A28;
	Thu, 20 Feb 2020 21:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B0BE88A28;
 Thu, 20 Feb 2020 21:26:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52CD0A0138;
 Thu, 20 Feb 2020 21:26:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 20 Feb 2020 21:26:08 -0000
Message-ID: <158223396833.17408.11003576352095402983@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_th?=
 =?utf-8?q?em_in_i915_=28rev7=29?=
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

Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev7)
URL   : https://patchwork.freedesktop.org/series/72035/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f3e1e10ac32d drm/i915/display/cdclk: Make WARN* drm specific where drm_priv ptr is available
37b11379faf7 drm/i915/display/ddi: Make WARN* drm specific where drm_device ptr is available
0a9eccf2eb1a drm/i915/display/display: Make WARN* drm specific where drm_device ptr is available
-:497: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#497: FILE: drivers/gpu/drm/i915/display/intel_display.c:10699:
+		drm_WARN_ON(dev, !pll->info->funcs->get_hw_state(dev_priv, pll,
+						 &pipe_config->dpll_hw_state));

total: 0 errors, 0 warnings, 1 checks, 657 lines checked
bca7c0209467 drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
714a69f8bd80 drm/i915/display/dp: Make WARN* drm specific where drm_device ptr is available
7fd6b4d78e27 drm/i915/display/hdcp: Make WARN* drm specific where drm_priv ptr is available
-:103: WARNING:LONG_LINE: line over 100 characters
#103: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1604:
+	drm_WARN_ON(&dev_priv->drm, !(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
820962439df7 drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
5e643f5a8467 drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
-:293: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#293: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1373:
+		drm_WARN_ONCE(&i915->drm, 1,
+				"VM(%d): iGVT-g doesn't support GuC\n",

-:307: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#307: FILE: drivers/gpu/drm/i915/gvt/handlers.c:1389:
+		drm_WARN(&i915->drm, 1,
+				"VM(%d): Use physical address for TRTT!\n",

total: 0 errors, 0 warnings, 2 checks, 519 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
