Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966297EE4F0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 17:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EE510E62F;
	Thu, 16 Nov 2023 16:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765C110E633
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 16:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700150888; x=1731686888;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fmPy6Iu2XXrjKVxatvS3LKiX+PHRAXHK+EnsgBwiKdE=;
 b=EA6I5F1c/zhpIwgbDNUo9bVFcbD87T+FRoOF3T59PCOFwx/asRwdZwdf
 REEL/Dq3yKDAE8Gw0B0MBMLmLBrizpXZvw8o4EI9cakF3LLWeMdTbJwLa
 wd7M12UIfRy4SU9gmCQl203yKspizxGGreXZFypN8TDywkVHPlMu8uMMK
 Osv88XtJg5VtNqb5Ukp1kU70O+BmqpiRJMkd1ng+nT8/+0BxjzHlkJ+C/
 M/u+++c9+VEpa6RwTxxGEuTRq4AInwPqPR8dDLK05SeAUSNrP+zv1CTuH
 DgR5vTsS0lTjCQjlgsFi5waiYayxL0B7Vn4usRkAEqOiDp0By5tkfVE7C g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="389974143"
X-IronPort-AV: E=Sophos;i="6.04,204,1695711600"; d="scan'208";a="389974143"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 08:07:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="882794251"
X-IronPort-AV: E=Sophos;i="6.04,204,1695711600"; d="scan'208";a="882794251"
Received: from tjlunife-mobl3.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.34.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 08:07:43 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 13:07:31 -0300
Message-ID: <20231116160732.37923-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Test MTL DMC v2.19
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

The following changes since commit 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa:

  i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34:26 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware 817619ea70a74598b4216dd25c0f49f61b09309b

for you to fetch changes up to 817619ea70a74598b4216dd25c0f49f61b09309b:

  [CI] i915: Add mtl DMC v2.19 (2023-11-15 19:36:22 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] i915: Add mtl DMC v2.19

 i915/mtl_dmc_ver2_19.bin | Bin 0 -> 52476 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 i915/mtl_dmc_ver2_19.bin


