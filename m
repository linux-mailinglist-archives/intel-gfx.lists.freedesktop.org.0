Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2870A695284
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 22:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3044E10E73F;
	Mon, 13 Feb 2023 21:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B2110E0C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676322054; x=1707858054;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rJ643r4Thp3FKf3ZTD6GuntMJV548RiJTr2/3rpmqI4=;
 b=bi0NebVsoKbiYj9uJZzJ1tXVU52T9APzJdhx97DRuozB/ZAuotsLaRcn
 otJrG0Rcbn7CiX9e0g37xvP1F6WzH66JJu+azHW/hUg4MCXvoiyot//y+
 Dbr4MlNoE5OjbLNFkPzqie4QmviENzJjwJu2oFrCWuZGUAclFzuV7wBsz
 eCnyrX7t2lvxdlcjp2VotOaJ9fr9XF1LOR/wLCm7xk9/uU0qRLd4jsaRz
 wqdiVoOfnPhTMCKsNdBzkrZQtBSDJm4m+kvtFN7WuFcDHPBwIoglVmkl8
 9IposkLSzWyY2mwSPh2LODbIPwJiWtNmLZ/6aDTMzLRDq+kQ2dGwGsxxK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310633169"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="310633169"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792856385"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792856385"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 13:00:46 -0800
Message-Id: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/hwmon: PL1 power limit fixes for
 ATSM
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

Previous PL1 power limit implementation assumed that the PL1 limit is
always enabled in HW. However we now find this not to be the case on ATSM
where the PL1 limit is disabled at power up. This requires changes in the
previous PL1 implementation.

Ashutosh Dixit (3):
  drm/i915/hwmon: Replace hwm_field_scale_and_write with
    hwm_power_max_write
  drm/i915/hwmon: Enable PL1 limit when writing limit value to HW
  drm/i915/hwmon: Use -1 to designate disabled PL1 power limit

 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  3 +-
 drivers/gpu/drm/i915/i915_hwmon.c             | 61 +++++++++++++------
 2 files changed, 43 insertions(+), 21 deletions(-)

-- 
2.38.0

