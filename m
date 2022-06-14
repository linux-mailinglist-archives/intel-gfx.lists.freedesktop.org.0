Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B99454B075
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 14:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E3510F7EC;
	Tue, 14 Jun 2022 12:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5017C10F7EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 12:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655209359; x=1686745359;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GK08OEQ6+D68+CKsbBmk4Rb/+KvojrYDB2isB0Ghmes=;
 b=TxGSDC+mktqtA4I9vG/gwn0/9pdAW+LU0jM31ulkJyKSbddu+Dj4K73G
 VhYvVGdCy8acH8rjYm01LxLbKd72R/KIDiyd1UpC6sCQxLOWy2IwVV1Cz
 pSyIJOt7HwgUA928T8KFkvajV+P6wAEQ6DKq+/YhL/Fw1U3S5FwZ9M/+7
 380d1A9xhrGeTNFTrcRvaKe/Dd1BGoAhuhLuZ/1trSX9Gh8lS35mAPzSm
 8U3AOBoq6G1gtwtgJAdiKxF5S5UDHBT3g+It/BnmZ/z9VSDICAh+IMDbL
 vJteMDXklj6qiF9yVnpyEQmBn/1+vjtqcXzq1IGCXxm0by+mkzJQQvT8d w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279317376"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279317376"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="686640511"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jun 2022 05:22:36 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 15:22:56 +0300
Message-Id: <20220614122257.10925-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Do not enable PSR2 if no active planes
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

We seem to cause FIFO underruns by doing that.
Also it doesn't make sense. 

Stanislav Lisovskiy (1):
  drm/i915: Do not enable PSR2/selective fetch if there are no planes

 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

-- 
2.24.1.485.gad05a3d8e5

