Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C933A36F857
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 12:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210826E1A7;
	Fri, 30 Apr 2021 10:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 324C96EDC7;
 Fri, 30 Apr 2021 10:13:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A1C6A008A;
 Fri, 30 Apr 2021 10:13:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maxime Ripard" <maxime@cerno.tech>
Date: Fri, 30 Apr 2021 10:13:53 -0000
Message-ID: <161977763314.17882.13729883397277802510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210430094451.2145002-1-maxime@cerno.tech>
In-Reply-To: <20210430094451.2145002-1-maxime@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/5=5D_drm/connector=3A_Create?=
 =?utf-8?q?_a_helper_to_attach_the_hdr=5Foutput=5Fmetadata_property?=
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

Series: series starting with [v3,1/5] drm/connector: Create a helper to attach the hdr_output_metadata property
URL   : https://patchwork.freedesktop.org/series/89690/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
edc37a6f6280 drm/connector: Create a helper to attach the hdr_output_metadata property
19ebe25f0b40 drm/connector: Add helper to compare HDR metadata
4601e9361ce4 drm/vc4: Add HDR metadata property to the VC5 HDMI connectors
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/vc4/vc4_hdmi.c:218:
+static int vc4_hdmi_connector_atomic_check(struct drm_connector *connector,
+					  struct drm_atomic_state *state)

total: 0 errors, 0 warnings, 1 checks, 110 lines checked
f576047b2a0c drm/connector: Add a helper to attach the colorspace property
df84548b8d57 drm/vc4: hdmi: Signal the proper colorimetry info in the infoframe


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
