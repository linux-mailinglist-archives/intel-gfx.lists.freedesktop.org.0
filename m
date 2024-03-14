Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C35887B6DC
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 04:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E5B10F88F;
	Thu, 14 Mar 2024 03:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C376B10F88F;
 Thu, 14 Mar 2024 03:29:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_divide-by-zero_r?=
 =?utf-8?q?egression_on_DP_MST_unplug_with_nouveau_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Bainbridge" <chris.bainbridge@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 03:29:59 -0000
Message-ID: <171038699980.750251.10593169391256719419@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <ZcfpqwnkSoiJxeT9@debian.local>
In-Reply-To: <ZcfpqwnkSoiJxeT9@debian.local>
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

Series: Fix divide-by-zero regression on DP MST unplug with nouveau (rev2)
URL   : https://patchwork.freedesktop.org/series/131002/
State : warning

== Summary ==

Error: dim checkpatch failed
64a2dd5de4fd Fix divide-by-zero regression on DP MST unplug with nouveau
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
 Code: c6 b8 01 00 00 00 75 61 01 c6 41 0f af f3 41 0f af f1 c1 e1 04 48 63 c7 31 d2 89 ff 48 8b 5d f8 c9 48 0f af f1 48 8d 44 06 ff <48> f7 f7 31 d2 31 c9 31 f6 31 ff 45 31 c0 45 31 c9 45 31 d2 45 31

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


