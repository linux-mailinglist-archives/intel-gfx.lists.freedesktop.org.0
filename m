Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257CE6D2A02
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 23:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670E110E26C;
	Fri, 31 Mar 2023 21:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC1B310E26C;
 Fri, 31 Mar 2023 21:32:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93A51A00E6;
 Fri, 31 Mar 2023 21:32:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 31 Mar 2023 21:32:18 -0000
Message-ID: <168029833855.14985.10701503650656059444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230331200253.1435236-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230331200253.1435236-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fdinfo=3A_Enable_fdinfo_for_GuC_backends_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/fdinfo: Enable fdinfo for GuC backends (rev2)
URL   : https://patchwork.freedesktop.org/series/115958/
State : warning

== Summary ==

Error: dim checkpatch failed
5e2ea7ebd7e8 drm/i915/fdinfo: Enable fdinfo for GuC backends
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
Revert "drm/i915: Don't show engine information in fdinfo with GuC submission"

-:25: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Resolves:', use 'Link:' instead
#25: 
Resolves: https://gitlab.freedesktop.org/drm/intel/issues/8303

total: 0 errors, 2 warnings, 0 checks, 12 lines checked


