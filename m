Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65C4729B89
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 15:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764E410E6A1;
	Fri,  9 Jun 2023 13:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBD7E10E6A7;
 Fri,  9 Jun 2023 13:23:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3F96AADEA;
 Fri,  9 Jun 2023 13:23:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Fri, 09 Jun 2023 13:23:45 -0000
Message-ID: <168631702579.15972.16725219549010700593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230609122130.69794-1-mika.kahola@intel.com>
In-Reply-To: <20230609122130.69794-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Cleanup_usage_of_phy_lane_reset?=
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

Series: drm/i915/mtl: Cleanup usage of phy lane reset
URL   : https://patchwork.freedesktop.org/series/119138/
State : warning

== Summary ==

Error: dim checkpatch failed
2c4d880e398d drm/i915/mtl: Cleanup usage of phy lane reset
-:58: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:233:
+		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);

total: 0 errors, 1 warnings, 0 checks, 38 lines checked


