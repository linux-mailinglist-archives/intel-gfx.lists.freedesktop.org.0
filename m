Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E60E6C7114
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 20:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF8D10E0CC;
	Thu, 23 Mar 2023 19:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAFDB10E058;
 Thu, 23 Mar 2023 19:34:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2DFCAADE6;
 Thu, 23 Mar 2023 19:34:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 23 Mar 2023 19:34:56 -0000
Message-ID: <167960009677.6630.5799537873574149634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230323184156.4140659-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230323184156.4140659-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_limit_drm-errors_or_warning_on_firmware_API?=
 =?utf-8?q?_failures_=28rev4=29?=
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

Series: drm/i915/pxp: limit drm-errors or warning on firmware API failures (rev4)
URL   : https://patchwork.freedesktop.org/series/113680/
State : warning

== Summary ==

Error: dim checkpatch failed
38ee87043677 drm/i915/pxp: limit drm-errors or warning on firmware API failures
-:41: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Link: with a URL to the report
#41: 
Reported-and-tested-by: Eero Tamminen <eero.t.tamminen@intel.com>
Fixes: b762787bf767 ("drm/i915/pxp: Use drm_dbg if arb session failed due to fw version")

total: 0 errors, 1 warnings, 0 checks, 111 lines checked


