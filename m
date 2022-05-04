Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F5651AEFD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE6610EAD1;
	Wed,  4 May 2022 20:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9546010EAD1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651695960; x=1683231960;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s3bvzzVbF776Ek4PEcH3UBqBvtXDBpQpiNpyaXDZp3o=;
 b=D2HTpEm31X7O5skSdeKT3XjMFOkIHy/fz5Zzkc1KsWPtsF24cgLdvSq/
 zp/59UwQayW+YlACC+5hp3GkRRO63MdIDqEmTKEWxl45eAhJ2fXAhv4mf
 n1s7TpTXJKMKy+01sTVIJVN7BdiDTNsxvFKm3tdSReXKj3+zFQSdkW7iC
 hbo4VJoQ8JEgYr71EjCRsV/BuaVmLqzADjr+cMOt1uKFkofn57ZGnctvD
 1uYxAFvTIBWDCKNILYSuewIaILH6zBpcalHSTO7FHoVqxB/zT4vUtl+SA
 cLIf5VBVeSMRPjY1JZ1fDl1R3sf4unQxXw52EM4XFeiBJ1HVNG85zLjd3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="268044279"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="268044279"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:26:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="664635904"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:25:59 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 13:22:11 -0700
Message-Id: <20220504202213.740200-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] DG2 DMC Support
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While DG2 supports DC5 and DC9, some of the tests in
fast-feedback blew up DG2 when the tests forced transition
from dc5->dc9 on suspend and dc9->dc5 on resume. Some local
experiments performed with Rodrigo on a RIL system  showed promising
results when dc5 was completely diabled and i915 took only dc9 paths.

Sending this so we can check the CI results to confirm the
findings from local testing which will hopefully help narrow
down the root cause of MMIO BAR lost issue

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Anusha Srivatsa (1):
  drm/i915/dmc: Load DMC on DG2

 drivers/gpu/drm/i915/display/intel_display_power.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.25.1

