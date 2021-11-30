Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B404D46340F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 13:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBA56E41A;
	Tue, 30 Nov 2021 12:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F5F6E284;
 Tue, 30 Nov 2021 12:19:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="234926309"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="234926309"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 04:19:52 -0800
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="459577046"
Received: from hekner-mobl5.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.206])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 04:19:50 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 30 Nov 2021 13:19:34 +0100
Message-Id: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/2] Attempt to avoid
 dma-fence-[chain|array] lockdep splats
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
Cc: linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introducing more usage of dma-fence-chain and dma-fence-array in the
i915 driver we start to hit lockdep splats due to the recursive fence
locking in the dma-fence-chain and dma-fence-array containers.
This is a humble suggestion to try to establish a dma-fence locking order
(patch 1) and to avoid excessive recursive locking in these containers
(patch 2)

Thomas Hellström (2):
  dma-fence: Avoid establishing a locking order between fence classes
  dma-fence: Avoid excessive recursive fence locking from
    enable_signaling() callbacks

 drivers/dma-buf/dma-fence-array.c | 23 +++++++--
 drivers/dma-buf/dma-fence-chain.c | 12 ++++-
 drivers/dma-buf/dma-fence.c       | 79 +++++++++++++++++++++----------
 include/linux/dma-fence.h         |  4 ++
 4 files changed, 89 insertions(+), 29 deletions(-)

Cc: linaro-mm-sig@lists.linaro.org
Cc: dri-devel@lists.freedesktop.org
Cc: Christian König <christian.koenig@amd.com>

-- 
2.31.1

