Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E7860359
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 20:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242AD10EA54;
	Thu, 22 Feb 2024 19:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDE7VA68";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 650D410EA54;
 Thu, 22 Feb 2024 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708631813; x=1740167813;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S36oj1zNqOvtqoh+zeZsUov4SwAYKn6+VNs9pFFIT+I=;
 b=dDE7VA68nxAqGbi6lxbAaYYrv/SQOpD22OAVqVzwvHRNNunPVXNjYkMK
 D0xBlm0HX/Fq6uFYP3k/qGHcQ6Iolrj87RzB6ris5QzAb9UCzZNyhCeX0
 PkpBuAH8CdQSfhf+sFC08117U9Jrs3TGrmJPlqO9Fe4xQml4vNNm3Y8XR
 f8mWF5oX00t6zA6G0hdEbnSaEAs3+W2iDPxxliEqScwzMD5od3grbWaaq
 sHv56zgOzOxoYPA5mgPw6bj13qMJjz8OCC95N+J2i5ZkU4XNSpd81nmr/
 eX80s4JWTx6/3BllTOXwcJg4Doxk4iu9PiuLWv8MFjvd59svVAGeT9ziQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="3015208"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="3015208"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:56:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5969349"
Received: from kdtweet-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.144.156])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:56:53 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: linux-firmware@kernel.org
Cc: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: PR for Xe2LPD DMC v2.18
Date: Thu, 22 Feb 2024 16:56:34 -0300
Message-ID: <20240222195634.291662-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The following changes since commit 78b99e9ebad8e4e24dded99842f94a8a7db3a5e8:

  Merge branch 'robot/pr-0-1708610465' into 'main' (2024-02-22 14:24:47 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware xe2lpd_dmc_2.18

for you to fetch changes up to 94d9a511a605cc0794bbe2d13328143e86df26e9:

  i915: Add Xe2LPD DMC v2.18 (2024-02-22 16:54:31 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Add Xe2LPD DMC v2.18

 WHENCE              |   3 +++
 i915/xe2lpd_dmc.bin | Bin 0 -> 61208 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/xe2lpd_dmc.bin
