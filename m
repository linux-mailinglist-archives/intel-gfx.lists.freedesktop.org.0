Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00F83D34B7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 08:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8376ED04;
	Fri, 23 Jul 2021 06:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD0656ED04;
 Fri, 23 Jul 2021 06:31:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D68C7A47DB;
 Fri, 23 Jul 2021 06:31:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 23 Jul 2021 06:31:22 -0000
Message-ID: <162702188287.3043.9877966001889444727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723053401.1269829-1-matthew.d.roper@intel.com>
In-Reply-To: <20210723053401.1269829-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_ADL_DDI_translation_buffer_updates_=28rev2=29?=
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

Series: ADL DDI translation buffer updates (rev2)
URL   : https://patchwork.freedesktop.org/series/92921/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
faad50971bdd drm/i915/adl_s: Update ddi buf translation tables
43e59f118335 drm/i915/adl_p: Add ddi buf translation tables for combo PHY
-:95: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1728:
+		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);

total: 0 errors, 1 warnings, 0 checks, 124 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
