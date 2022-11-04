Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A382661972D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 14:13:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232FA10E748;
	Fri,  4 Nov 2022 13:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF14210E748;
 Fri,  4 Nov 2022 13:13:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D80FDAADE1;
 Fri,  4 Nov 2022 13:13:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mauro.chehab@linux.intel.com>
Date: Fri, 04 Nov 2022 13:13:16 -0000
Message-ID: <166756759685.23020.6060170484081724442@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221103162302.4ba62d72@maurocar-mobl2>
In-Reply-To: <20221103162302.4ba62d72@maurocar-mobl2>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_KUnit_issues_-_Was=3A_=5Bigt-dev=5D_=5BPATCH_RFC_v2_8/8=5D_?=
 =?utf-8?q?drm/i915=3A_check_if_current-=3Emm_is_not_NULL_=28rev2=29?=
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

Series: KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8] drm/i915: check if current->mm is not NULL (rev2)
URL   : https://patchwork.freedesktop.org/series/110492/
State : warning

== Summary ==

Error: dim checkpatch failed
1bcd7d5d971a KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8] drm/i915: check if current->mm is not NULL
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
> > > I'm facing a couple of issues when testing KUnit with the i915 driver.

-:261: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 41 lines checked


