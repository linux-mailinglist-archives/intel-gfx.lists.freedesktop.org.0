Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088C4E9BF8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 18:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7429610E6FB;
	Mon, 28 Mar 2022 16:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A9410E6FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 16:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648483842; x=1680019842;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ulf2QpMQfQ3dpwVSr8D1YebZkmYrWcF2r4c3g4XVz04=;
 b=lOH8RVn6/nwadK143qFgA05BYZC3ixOJHn/Z+pVuMajHFXrAOwCXXYih
 C1eD3zpP7HMdUkkPc9jaXEVZv+9HLj6eAMXgGUHboVRexKViqaLMx+gHS
 v+auFlZMcu9XNMx5vebmDy05Q0M07z9yNtcCHuzr8KS7YQbMczVmkbbd0
 CUjOR5bZtVLA52h0NY0zbLZ4IqfNM+QLEXuexZf7K5WojEuwa83Ulr5JM
 b8XE8HVKXSKrY2wqpMO4xGuu7cJpcLhIsZA3fgeMa1alYKIYHV217AZT+
 G2jtb69knLEILie3Iaqh2abPgaBlXKWL98IxBL20OulB+VTu+XqLaDJui Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="345476266"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="345476266"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 09:10:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="694415288"
Received: from kmacakov-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.47])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 09:10:40 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 19:10:24 +0300
Message-Id: <20220328161025.175993-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] Handle the DG2 max bw properly
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Provide accurate max bw information for DG2

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Vinod Govindapillai (1):
  drm/i915: Handle the DG2 max bw properly

 drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.25.1

