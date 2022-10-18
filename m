Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A5760241A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 08:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B184C10EE5B;
	Tue, 18 Oct 2022 06:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8343E10E07E;
 Tue, 18 Oct 2022 06:04:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7461EA0169;
 Tue, 18 Oct 2022 06:04:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 18 Oct 2022 06:04:00 -0000
Message-ID: <166607304045.20426.13110795146951303720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221018053148.1798008-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221018053148.1798008-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_Parse_VRR_cap_fields_from_HFVSDB_block?=
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

Series: drm/edid: Parse VRR cap fields from HFVSDB block
URL   : https://patchwork.freedesktop.org/series/109801/
State : warning

== Summary ==

Error: dim checkpatch failed
1eed49c11931 drm/edid: Parse VRR cap fields from HFVSDB block
-:68: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#68: FILE: drivers/gpu/drm/drm_edid.c:5981:
+		    max_tmds_clock, str_yes_no(max_frl_rate), str_yes_no(vrr_support), str_yes_no(dsc_support));

-:80: CHECK:LINE_SPACING: Please don't use multiple blank lines
#80: FILE: include/drm/drm_connector.h:222:
 
+

total: 0 errors, 1 warnings, 1 checks, 92 lines checked


