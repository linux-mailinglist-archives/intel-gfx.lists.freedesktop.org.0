Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6511F455CE3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 14:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC8A6EE95;
	Thu, 18 Nov 2021 13:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86BCE6EE95;
 Thu, 18 Nov 2021 13:42:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78A02A73C7;
 Thu, 18 Nov 2021 13:42:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Thu, 18 Nov 2021 13:42:45 -0000
Message-ID: <163724296546.10080.16214798064930731156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118085424.685686-1-mika.kahola@intel.com>
In-Reply-To: <20211118085424.685686-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/dg2=3A_Add_CD_clock_squashing?=
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

Series: drm/i915/display/dg2: Add CD clock squashing
URL   : https://patchwork.freedesktop.org/series/97058/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
406193c026fe drm/i915/display/dg2: Introduce CD clock squashing table
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
For CD clock squashing method, we need to define corresponding CD clock table for

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
58e49ef9f241 drm/i915/display/dg2: Read CD clock from squasher table
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
To calculate CD clock with squasher unit, we set CD clock ratio to fixed value of 34.

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
ab77ac821b7c drm/i915/display/dg2: Sanitize CD clock
ca84b729d4ae drm/i915/display/dg2: Set CD clock squashing registers


