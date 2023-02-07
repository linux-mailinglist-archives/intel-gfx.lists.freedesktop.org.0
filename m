Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D85568CF05
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582DF10E2E7;
	Tue,  7 Feb 2023 05:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEED10E2E7;
 Tue,  7 Feb 2023 05:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675747945; x=1707283945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hpb6fhHsC6I9pMZPiNy984MUjJoy1J2xsTXCyptZXFw=;
 b=fiHFJXgcwJAwJcj3WLa8DCMD2QjeTkJwhO3PooGmiAOVuofLseJQnHVL
 rgcYSoUz8r2EK/P23JebZ+V2XI5XE2FBPpZfar0GjS4MWsH5mdUahF+wp
 Cwss6ZJJg5c2iklUb8vAQKJi34JDUKIa4Yxuc8MSXkk6d3zlqGHr70MPp
 2mPOQrvNQhnhxcxNZdxCRCcFwXtA1KL3N8Ir8Vn7xLUCbZHtfRqvM86bs
 1dZlodrNtvXxrJByyXPnuj6iE4gB5q/l4zkJUd8+6VMD+Ma7wAWVsDMNE
 rTZUj/izWTBOfOytoVctjQFmYSqWTv4uaVC3wc1rV+chGDrpRI+YxcQl9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="356778173"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="356778173"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 21:32:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790666555"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="790666555"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 06 Feb 2023 21:32:22 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com
Date: Tue,  7 Feb 2023 10:56:55 +0530
Message-Id: <20230207052657.2917314-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230120061600.1451088-1-arun.r.murthy@intel.com>
References: <20230120061600.1451088-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3 0/2] DP2.0 SDP CRC16 for 128/132b link layer
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

*** BLURB HERE ***

Arun R Murthy (2):
  drm: Add SDP Error Detection Configuration Register
  i915/display/dp: SDP CRC16 for 128b132b link layer

 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++++++++
 include/drm/display/drm_dp.h                         |  3 +++
 2 files changed, 15 insertions(+)

-- 
2.25.1

