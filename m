Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B29A5BE09
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 11:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0931510E157;
	Tue, 11 Mar 2025 10:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E0310E157;
 Tue, 11 Mar 2025 10:38:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_i915/gt/selftests=3A?=
 =?utf-8?q?_Disable_lrc=5Ftimestamp_test?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mikolaj Wasiak" <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Mar 2025 10:38:14 -0000
Message-ID: <174168949407.17898.5150378460800530796@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
In-Reply-To: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
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

Series: i915/gt/selftests: Disable lrc_timestamp test
URL   : https://patchwork.freedesktop.org/series/146125/
State : warning

== Summary ==

Error: dim checkpatch failed
95199fb5c6f5 i915/gt/selftests: Disable lrc_timestamp test
-:12: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Fixes:', use 'Link:' or 'Closes:' instead
#12: 
Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697

-:35: ERROR:TRAILING_WHITESPACE: trailing whitespace
#35: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:864:
+^I * The bug was found and fixed in future generations but $

total: 1 errors, 1 warnings, 0 checks, 23 lines checked


