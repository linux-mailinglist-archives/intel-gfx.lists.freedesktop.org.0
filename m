Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F849E6E55
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 13:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5F110E2E5;
	Fri,  6 Dec 2024 12:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209BF10E2E5;
 Fri,  6 Dec 2024 12:36:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_i915/gt=3A_Reapply_w?=
 =?utf-8?q?orkarounds_in_case_the_previous_attempt_failed=2E_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Dec 2024 12:36:04 -0000
Message-ID: <173348856412.3337989.4121570814400161252@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
In-Reply-To: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
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

Series: i915/gt: Reapply workarounds in case the previous attempt failed. (rev2)
URL   : https://patchwork.freedesktop.org/series/142188/
State : warning

== Summary ==

Error: dim checkpatch failed
70c3e0476ce2 i915/gt: Reapply workarounds in case the previous attempt failed.
-:19: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#19: 
This patch aims to resolve: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668

-:31: ERROR:TRAILING_WHITESPACE: trailing whitespace
#31: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1764:
+^I^I^Iif ((val ^ wa->set) & wa->read) { $

total: 1 errors, 1 warnings, 0 checks, 17 lines checked


