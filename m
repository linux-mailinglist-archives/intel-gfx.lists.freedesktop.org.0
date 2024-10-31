Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC559B7B17
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE8A10E878;
	Thu, 31 Oct 2024 12:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3EC10E063;
 Thu, 31 Oct 2024 12:50:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Power_request_asserting/deasserting?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 12:50:54 -0000
Message-ID: <173037905469.1365305.6643022295449648615@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241031114027.225217-1-mika.kahola@intel.com>
In-Reply-To: <20241031114027.225217-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Power request asserting/deasserting
URL   : https://patchwork.freedesktop.org/series/140766/
State : warning

== Summary ==

Error: dim checkpatch failed
392683beeeaa drm/i915/xe3lpd: Power request asserting/deasserting
-:49: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:207:
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val))

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
58820cd50245 drm/i915/display: Use struct intel_display instead of struct drm_i915_private


