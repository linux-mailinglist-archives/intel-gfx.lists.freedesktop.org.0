Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB75C2FC659
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 02:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C5856E10D;
	Wed, 20 Jan 2021 01:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26406E10D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 01:21:15 +0000 (UTC)
IronPort-SDR: h9o+MS18Tza+Mt6RoxKtK+UeQNZ6c9+jABAu2VP4YffDAEEPcWnmhMd7d9OkwLEG6jCBpO+Kj1
 D31ZJOUmwAzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="175521819"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="175521819"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 17:21:15 -0800
IronPort-SDR: Tvcpl0Cw//Kd76mglJWULNNQ1JPRbxBLUq+6qhh9Pi2ztx5FmXQiyZIOI/240uXzxdTJobqzaA
 T3DICMd6pnCg==
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="501293117"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 17:21:15 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 17:21:10 -0800
Message-Id: <20210120012111.44184-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Fix subplatform check!!
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It looks like 3 bits are allocated to the subplatform in each index of
platform_mask, but IS_PLATFORM only checks 2. Checking if I understood this
correctly.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (1):
  drm/i915: Check for all subplatform bits

 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
