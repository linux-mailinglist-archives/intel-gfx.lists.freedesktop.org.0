Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0345D390359
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 16:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF136EA30;
	Tue, 25 May 2021 14:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7E26EA30
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 14:04:43 +0000 (UTC)
IronPort-SDR: SYsTQtVRb8hn6ewZPtfX84cYt5EJJcTmtGGsM19d2wQ1ADePw8Y28hMuDHg8COZen9cd8+4XS/
 m/Yv22TygbrA==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="181839540"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="181839540"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 07:04:40 -0700
IronPort-SDR: DUPJvqbxeex+W+c5eacAcDnP4tLcCll5nA/2WjqFi63lt3ypRp47OGA9+KtzIwkpPVaPuVg7/D
 Yjj7bBUW/7Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="435726237"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga007.jf.intel.com with ESMTP; 25 May 2021 07:04:35 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	mahesh.meena@intel.com
Date: Tue, 25 May 2021 19:25:07 +0530
Message-Id: <20210525135508.244659-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/gt: Introduce timeslicing for
 userspace
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Test-with: 20210524124806.241439-1-tejaskumarx.surendrakumar.upadhyay@intel.com

Tejas Upadhyay (1):
  Let userspace know if they can trust timeslicing by including it as
    part of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING

 drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
 include/uapi/drm/i915_drm.h                 | 1 +
 2 files changed, 2 insertions(+)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
