Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2B353C838
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 12:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CDD10F21A;
	Fri,  3 Jun 2022 10:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2FC10F21A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 10:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654251264; x=1685787264;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fgZYxczEKRLJCuPz1+TzpNo5Lx2OGGXoLbrheMrtKlo=;
 b=kV5jfGSyj/h2kQEfXKyzgSQVpzl/ZebHtrCMkBAPazBnT3UXg+ddFIYS
 9h0qwrIz9HuV/mvh/a8Y6/L6OFAQUyLLo+x9wa6dX6wAvrdZUeWCyVEA/
 nk5d8J5Rby2msB3q3fIAB4RPolxMtdFPmU8l5YIK3d8BPpDYtT720WLfL
 ZFpe/Wyz6dxqMPj1agzBLYYK+uuUVodpFaNdxqw3A8eNnuez7EVivgtsD
 +xm400kS6H0q4lqg686vj0bGvSM+pswBFzXVXagRBtCRYpyS2EDhqWcdx
 CT7Q6kribzJS8GiPc/0h+IYUlNQAAmYLRyMRf41PUwvQozoFR6oKKS+de A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256081970"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="256081970"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:14:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="721694708"
Received: from kaszymec-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.38.113])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:14:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 13:14:09 +0300
Message-Id: <20220603101411.3087789-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Disable connector polling for a headless sku
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

This patch set disables connector polling when entering runtime
suspend for headless sku to prevent waking it up again when poll
is performed.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>

Jouni Högander (2):
  drm/i915/opregion: add function to check if headless sku
  drm/i915: do not start connector polling when headless sku

 drivers/gpu/drm/i915/display/intel_hotplug.c  |  3 ++-
 drivers/gpu/drm/i915/display/intel_opregion.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
 3 files changed, 21 insertions(+), 1 deletion(-)

-- 
2.25.1

