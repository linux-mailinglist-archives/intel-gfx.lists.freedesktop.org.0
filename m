Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC3C823C8F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 08:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D212F10E3B1;
	Thu,  4 Jan 2024 07:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298B410E3B1;
 Thu,  4 Jan 2024 07:19:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Skip_C10_state_verification_in_case_of_fastset_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Thu, 04 Jan 2024 07:19:11 -0000
Message-ID: <170435275116.1840.17188082380432700892@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231219123246.832245-1-mika.kahola@intel.com>
In-Reply-To: <20231219123246.832245-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Skip C10 state verification in case of fastset (rev3)
URL   : https://patchwork.freedesktop.org/series/127966/
State : warning

== Summary ==

Error: dim checkpatch failed
13b2c73352d0 drm/i915/display: Skip C10 state verification in case of fastset
-:8: WARNING:TYPO_SPELLING: 'verfication' may be misspelled - perhaps 'verification'?
#8: 
verfication compares bios programmed PLL values against
^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 9 lines checked


