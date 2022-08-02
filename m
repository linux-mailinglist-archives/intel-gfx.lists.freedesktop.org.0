Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C422C5874BC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 02:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389A110E62D;
	Tue,  2 Aug 2022 00:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF35610E61B;
 Tue,  2 Aug 2022 00:13:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0BE7A00A0;
 Tue,  2 Aug 2022 00:13:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Date: Tue, 02 Aug 2022 00:13:17 -0000
Message-ID: <165939919763.13190.6582832285884364481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220801234856.2832317-1-clinton.a.taylor@intel.com>
In-Reply-To: <20220801234856.2832317-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Add_additional_HDMI_pixel_clock_frequencies?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/dg2: Add additional HDMI pixel clock frequencies (rev2)
URL   : https://patchwork.freedesktop.org/series/106891/
State : warning

== Summary ==

Error: dim checkpatch failed
64ed0b830d10 drm/i915/dg2: Add additional HDMI pixel clock frequencies
-:382: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#382: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:880:
+};
+static const struct intel_mpllb_state dg2_hdmi_71000 = {

total: 0 errors, 0 warnings, 1 checks, 1127 lines checked


