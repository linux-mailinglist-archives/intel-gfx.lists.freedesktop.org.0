Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D243D9A1C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 02:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730DC6E2E3;
	Thu, 29 Jul 2021 00:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66A476E2E3;
 Thu, 29 Jul 2021 00:33:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FE38A00F5;
 Thu, 29 Jul 2021 00:33:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 29 Jul 2021 00:33:31 -0000
Message-ID: <162751881138.27327.18018900394916924874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728221045.2363614-1-matthew.d.roper@intel.com>
In-Reply-To: <20210728221045.2363614-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/adl=5Fs=3A_Upd?=
 =?utf-8?q?ate_ddi_buf_translation_tables?=
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

Series: series starting with [CI,1/2] drm/i915/adl_s: Update ddi buf translation tables
URL   : https://patchwork.freedesktop.org/series/93145/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8cdfcb18e908 drm/i915/adl_s: Update ddi buf translation tables
c86a5ce5864a drm/i915/adl_p: Add ddi buf translation tables for combo PHY
-:115: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1738:
+		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);

total: 0 errors, 1 warnings, 0 checks, 134 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
