Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AF21CB129
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 15:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5AE6E1B4;
	Fri,  8 May 2020 13:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A606E18E;
 Fri,  8 May 2020 13:56:52 +0000 (UTC)
IronPort-SDR: o89rhtYcuuApYNXkSSkrebfEA9nJo6jevv25G4Q5yysp9EBft0rNWhxneIYLhtqyTBI+FAoflo
 FiX+fpluo9eQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 06:56:51 -0700
IronPort-SDR: Dpk7LDpOTGqrpONlCm4WIBKCbVjB0h191/lMQMDoj1Vo4AOcdiQJWJNWRJyJask0xjsRPjXNrH
 er/5DzeS0WzQ==
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="408078655"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 06:56:50 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 May 2020 15:56:29 +0200
Message-Id: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/2] tests/gem_exec_nop: Remove submission
 batching
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Execbuf requests are now submitted by subtests in batches of 1024
repetitions.  That may be too many under some circumstances (e.g.,
intensive logging output) and subtests may take far more time than
expected.

Kill obsolete showcase for an old GuC failure, then remove submission
batching from subtests which don't require submicrosecond precision.

Janusz Krzysztofik (2):
  tests/gem_exec_nop: Kill obsolete pass/fail metric
  tests/gem_exec_nop: Remove submission batching

 tests/i915/gem_exec_nop.c | 137 ++++++++++++++++----------------------
 1 file changed, 59 insertions(+), 78 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
