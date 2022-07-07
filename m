Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5C256ACAA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 22:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1140014A5DE;
	Thu,  7 Jul 2022 20:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D739414A5DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 20:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657225578; x=1688761578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mpb3uxfHHs8KMVw5+A3lPOl9+Izgk9OYO+GqdyWqfGs=;
 b=Pi3Zv5iSiec4TEWFrnQ/DE4zuXqMZC20zQMJMciYJBnBXiI9Osilq8r5
 kWfR+aIRPGlzHJPqQ6QAniJxw9ix41RQaR4q3DPqTnG64HaaMbQPgKiQi
 fa+IeTre8bulXqvdzpnyTkrmy8BJuhycxSyJzHWd0anfW7KSsV4GcDgtm
 wqnZJmIZq1/rBKsCzgdJPKg+x/ETSG4LON3Teweq/UVdPUTbNucD4kGZi
 LmaK+SQhXMdEdng1k2UW3+lA+3/eWxPF49DoBKpbrJ/qPkltXunWhLX8p
 2gTgWsMSgEKk5pom6AilFV8aq7dB9KIPjDVu0yahC7tJku1jcIsf0pWPy Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="281664102"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="281664102"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 13:26:18 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651278477"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 13:26:17 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jul 2022 13:26:08 -0700
Message-Id: <20220707202610.2795136-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] i915: Introduce Meteorlake
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

