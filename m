Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E559561A66A
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 01:32:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F0310E0B5;
	Sat,  5 Nov 2022 00:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A0610E0B5
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 00:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667608360; x=1699144360;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QVRkmMQC/L6n8YZRMnMgx3DeBECNzM3kKil8UHRS9E0=;
 b=FpE8BqZNrWG6YkT9V0T/Opx9UqxC4o35+Z1oBfulYWsXa0BaYYzy6RPd
 +GaFjwN536g54OsFXgsrVVB8zGmxcUPBIB0/eiBUi0m9vEdv1tSgLVSb3
 IM2j9BrjL6lB/ZxD2u5dsnVPtZRzw1W9fMJIMmK6S7EgRDRM1UcpSl0Cl
 Lj88FdwJ5gXewt+JZVHJQxAo2PDew8Ie+e5QpqskGl1P3ty1We4v1Cs3C
 ccDRx85E3NwjW7j2W7cLfk+BASN5xrMffAr8kI1nkRTEWwhlJYxeNiWiF
 yuRT2rJwoq4CYE6arYPnB612n5RliXCklOi04EIsJyybWH3n2v6cMsc4O g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="308814627"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="308814627"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:32:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="698838654"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="698838654"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:32:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Nov 2022 17:32:33 -0700
Message-Id: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fix live busy stats selftest failure
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

Engine busyness samples around a 10ms period is failing with busyness
ranging approx. from 87% to 115%. The expected range is +/- 5% of the
sample period.

When determining busyness of active engine, the GuC based engine
busyness implementation relies on a 64 bit timestamp register read. The
latency incurred by this register read causes the failure.

On DG1, when the test fails, the observed latencies range from 900us -
1.5ms.

In order to make the selftest more robust and account for such
latencies, increase the sample period to 100 ms.

v2: (Tvrtko)
In addition refactor intel_uncore_read64_2x32 to obtain the forcewake
once before reading upper and lower register dwords.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32
  drm/i915/selftest: Bump up sample period for busy stats selftest

 drivers/gpu/drm/i915/gt/selftest_engine_pm.c |  2 +-
 drivers/gpu/drm/i915/intel_uncore.h          | 44 +++++++++++++-------
 2 files changed, 31 insertions(+), 15 deletions(-)

-- 
2.36.1

