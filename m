Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9D825D942
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 15:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27D66EB9F;
	Fri,  4 Sep 2020 13:06:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3880D6E151;
 Fri,  4 Sep 2020 13:06:24 +0000 (UTC)
IronPort-SDR: dhi72QTBnQra9b2VI68dep6+8jJO4cVq2T0hhVjVSCj8wyREfv3lsYlXz9IWjpa5VmmYosF7jB
 PzX3HEfzLhxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="145440138"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="145440138"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 06:06:23 -0700
IronPort-SDR: 8BVI9eo5Ijo5zQfEeUzoZ1qAi7t490ks2VEoKXXeu92TeK/SmRjorUhUZ4N4A9i3KlKPcsDNqR
 dGz20s7cfuXg==
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="478482110"
Received: from arielsig-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.165.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 06:06:21 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  4 Sep 2020 14:06:06 +0100
Message-Id: <20200904130607.133724-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/1] Per client engine busyness for
 intel_gpu_top
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Intel_gpu_top changes to show per client and per engine class busyness.

Tvrtko Ursulin (1):
  intel-gpu-top: Support for client stats

 tools/intel_gpu_top.c | 539 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 528 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
