Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF617EE850
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 21:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E73210E2BE;
	Thu, 16 Nov 2023 20:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092F210E2BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 20:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700166651; x=1731702651;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nt5c2Lt86yGQeeyt2v06f9Nn5er/CtdyavO9TiihRX0=;
 b=LQTPRH1NQMoN+z1X/5tkzXbmkOPkK/w7EuXqSOEnY5TwTdshZ4038TIv
 k7204/ubO/F1SLu98pQfFFiMGXJulkleYVKy6wBKWb4Ojl5PrzFs056NK
 d5JlMPQ0Mkov0N9M3SecYFqxPyLxkQdOIM2TBMRMJpqyMAZMSe1jfu/3H
 elkTRqKDonQhmrDRTAVRm4UYFRjsj8Me5EtCWoZ3nyP43Y6jvBtKIdq98
 CYDSBqCAvIE2QwQslG4YtO7WQUECaSP2P4gyYqmOO/Sf3bjpp8IhAieal
 7vn+qnT3zLYLdf7fmCvS5Gk8nJdPp6VN87ysBRX89IC6NA8FwoN5h87Lp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="390960834"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="390960834"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 12:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="835856458"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="835856458"
Received: from tjlunife-mobl3.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.34.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 12:30:48 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 17:30:26 -0300
Message-ID: <20231116203027.64176-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Test MTL DMC v2.19
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

The following changes since commit 817619ea70a74598b4216dd25c0f49f61b09309b:

  [CI] i915: Add mtl DMC v2.19 (2023-11-15 19:36:22 -0300)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware 88364c11402c5a0cdb3a07530b76eef32882a54b

for you to fetch changes up to 88364c11402c5a0cdb3a07530b76eef32882a54b:

  [CI] xe: Add xe directory (2023-11-16 17:28:49 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] xe: Add xe directory

 xe/README | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 xe/README


