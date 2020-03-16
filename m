Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2717E1866D6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 09:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73BD56E379;
	Mon, 16 Mar 2020 08:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D436E379;
 Mon, 16 Mar 2020 08:46:00 +0000 (UTC)
IronPort-SDR: WQOPJrIfq3INUM7YbR1r3abii3qUbmEndjsOHE0q5z9M1vPhS64p24eVqrPuHpO6nNYCOhXygy
 2V2WDjtdaCLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:46:00 -0700
IronPort-SDR: 2wvagp3AQMoa/x9jH1idIlexFsjVWPR6hWp40Qnh3sbAOFpy9m37+oXvPBzwgOFkYtqa9oGTtu
 C7IxssXKq5fw==
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="417069088"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 01:45:58 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 16 Mar 2020 09:45:41 +0100
Message-Id: <20200316084543.15421-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RESUBMIT PATCH 0/2] tests/gem_userptr_blits: Refresh
 other now MMAP_GTT dependent subtests
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Together with recently submitted patches, this series concludes
MMAP_OFFSET related changes required for gem_userptr_blits.

Thanks,
Janusz

Janusz Krzysztofik (2):
  tests/gem_userptr_blits: Refresh readonly-mmap-unsync exercise
  tests/gem_userptr_blits: Refresh other now MMAP_GTT dependent subtests

 tests/i915/gem_userptr_blits.c | 129 ++++++++++++++++++++++++---------
 1 file changed, 95 insertions(+), 34 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
