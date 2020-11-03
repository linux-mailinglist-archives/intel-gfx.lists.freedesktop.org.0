Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E21C2A4732
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA096ECA9;
	Tue,  3 Nov 2020 14:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9352D6E0A6;
 Tue,  3 Nov 2020 14:04:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C593A0091;
 Tue,  3 Nov 2020 14:04:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Tue, 03 Nov 2020 14:04:53 -0000
Message-ID: <160441229354.25742.15354184225197224097@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ehl=3A_Implement_W/A_22010492432_=28rev2=29?=
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

Series: drm/i915/ehl: Implement W/A 22010492432 (rev2)
URL   : https://patchwork.freedesktop.org/series/83135/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
003c5f8bf5bd drm/i915/ehl: Implement W/A 22010492432
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2646:
+	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
+		IS_JSL_EHL_REVID(i915, EHL_REVID_B0, EHL_REVID_B0)) ||

total: 0 errors, 0 warnings, 1 checks, 42 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
