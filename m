Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B361EA43
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 05:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941CA10E1DD;
	Mon,  7 Nov 2022 04:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA50A10E0B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 04:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667796790; x=1699332790;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j+6RvTm1C7PRV1pHTTNGWhiJinDjfBKAUwCad+BZap0=;
 b=LmQ4ol5raLFuveQC1gim3k9zuxA/AISXqEuyXQBqC37W6VU7egSoJfWm
 Sy1TQIGo/uv2rp0h7DVaLQB2dU5rOFrTBYHk4u7ZXORKD5EPtXMdyBuTE
 WJv9YjoN8SSL2wNwuGfOhV4ykir3JXV0Szbc5HGG24/sI2O/QCS3FKw+Z
 cwyWPXEtck/D7CEB+e5HS/E2TtwhzQF+P1JMIp5fA/ZWdSCjdJ0G0TBo2
 No6fOmgP4cGvMNLOS1yZcb+vh8QqJBoTubh16Sddkzxvf+7tWJQqqEU03
 /pHfQvfmh8UpaGx6n7M0nzLfHjQApw9gh43Zfz9/MXdy4sL3GaaMqw+Ku A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="290713882"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="290713882"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 20:53:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="638230548"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="638230548"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 20:53:04 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 10:22:37 +0530
Message-Id: <20221107045240.4164358-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Add hwmon support for dgfx selftests
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

Rename librapl library to libpower. Add hwmon support in libpower for
dgfx. 
Use libpower in selftests.

Rev2 : Update commit message

Riana Tauro (2):
  drm/i915/selftests: Rename librapl library to libpower
  drm/i915/hwmon: Add helper function to obtain energy values

Tilak Tangudu (1):
  drm/i915/selftests: Add hwmon support in libpower for dgfx

 drivers/gpu/drm/i915/Makefile             |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c    | 12 ++++----
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
 drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
 drivers/gpu/drm/i915/i915_hwmon.c         | 23 +++++++++++++--
 drivers/gpu/drm/i915/i915_hwmon.h         |  1 +
 drivers/gpu/drm/i915/selftests/libpower.c | 35 +++++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/libpower.h | 19 ++++++++++++
 drivers/gpu/drm/i915/selftests/librapl.c  | 34 ----------------------
 drivers/gpu/drm/i915/selftests/librapl.h  | 17 -----------
 10 files changed, 97 insertions(+), 76 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
 create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
 delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
2.25.1

