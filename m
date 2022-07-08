Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC2956AF3B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 02:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD61A10FDF6;
	Fri,  8 Jul 2022 00:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C8510ED24
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 00:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657238630; x=1688774630;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dj3655PAd/bouaw34SvAX5OfTcpTWLc7SI0f90w64xM=;
 b=HgeCtTY/m7yVYHAeBZ1iZDD+tHamTPhpH8mOYdPBc7ReTjpAZ4xcByZD
 n2McEltIeZbFL8q16t7qVfGRDv1V22Gw7UvPjRnAKIEOgspqfNORnukb4
 NLiD4ok7eJKxFnJD6KXbNla1/AMAITmoy3xjcgXLNxdNL1X0bsUS+IKTN
 cVZsJYMifseKFtIb6E1NRiyUISSufBZjq/ko/tfunsuJoC80GHJUPSy7f
 Ta4vq0q+jl9UoqdEkRwERkBt51qLjNOx2jkwzuy3zUJG99uJHdE9e2IqP
 4COoeWB33d/+Yu0yfTHPmqsFRwXGekK6NOB/HWInu+eYcrVpj+CxHPV6E Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="345836744"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="345836744"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:03:49 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="598196584"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:03:49 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jul 2022 17:03:33 -0700
Message-Id: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] i915: Introduce Meteorlake
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Meteorlake is a new client platform following RPL S. Meteorlake
introduces version 14 for Display, version 13 Media and version
12.70 for Graphics.

This is the basic platform definition series to introduce Meteorlake.

v2: Remove unused PCI'ids and rebase on drm-tip
v3: Sort the pci info entries and update PCI list.


Radhakrishna Sripada (2):
  drm/i915/mtl: Add MeteorLake platform info
  drm/i915/mtl: Add MeteorLake PCI IDs

 drivers/gpu/drm/i915/i915_drv.h          |  5 +++++
 drivers/gpu/drm/i915/i915_pci.c          | 26 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c | 15 ++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  5 +++++
 include/drm/i915_pciids.h                | 13 ++++++++++++
 5 files changed, 64 insertions(+)

-- 
2.25.1

