Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17D3930D35
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 06:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8483010E245;
	Mon, 15 Jul 2024 04:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DC510E245;
 Mon, 15 Jul 2024 04:30:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/dp=3A_Describe_t?=
 =?utf-8?q?arget=5Frr=5Fdivider_in_struct_drm=5Fdp=5Fas=5Fsdp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jul 2024 04:30:39 -0000
Message-ID: <172101783907.216653.4724727560102084442@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: drm/dp: Describe target_rr_divider in struct drm_dp_as_sdp
URL   : https://patchwork.freedesktop.org/series/136072/
State : warning

== Summary ==

Error: dim checkpatch failed
570ec9af6914 drm/dp: Describe target_rr_divider in struct drm_dp_as_sdp
-:22: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#22: 
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

total: 0 errors, 1 warnings, 0 checks, 7 lines checked


