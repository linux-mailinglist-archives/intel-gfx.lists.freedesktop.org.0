Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 274FC456FD5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0656EE76;
	Fri, 19 Nov 2021 13:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40F5E6EE76;
 Fri, 19 Nov 2021 13:46:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 377F3A73C7;
 Fri, 19 Nov 2021 13:46:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Fri, 19 Nov 2021 13:46:19 -0000
Message-ID: <163732957918.2299.4561048432514855651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211119131348.725220-1-mika.kahola@intel.com>
In-Reply-To: <20211119131348.725220-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_CD_clock_squashing_feature=2E?=
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

Series: Add support for CD clock squashing feature.
URL   : https://patchwork.freedesktop.org/series/97104/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1372fab833bb drm/i915/display/dg2: Introduce CD clock squashing table
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
For CD clock squashing method, we need to define corresponding CD clock table for

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
4ded7cded63e drm/i915/display/dg2: Sanitize CD clock
8a5e9f1943f0 drm/i915/display/dg2: Set CD clock squashing registers
784c7e613365 drm/i915/display/dg2: Read CD clock from squasher table
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
To calculate CD clock with squasher unit, we set CD clock ratio to fixed value of 34.

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
c9471d4f8383 drm/i915: Allow cdclk squasher to be reconfigured live


