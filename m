Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A9554D936
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 06:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F7C113D1A;
	Thu, 16 Jun 2022 04:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2842D113CFE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 04:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655353276; x=1686889276;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4HQyzpVPe3fzEQYxFDMSiafvmKYmMYAsICn7ApdaE68=;
 b=J7stmt+CTN+GPiO727rBtg8nERL4jHQ0d7mhgXUMJMwHwlNXQpCNjfhL
 1BuD7rZfViIMozlpw8PPuOQ3d1buxdpKwLSS1JSyMTUB45Omt4GSClQ7T
 OKshLwENsXjAKzR5Hgq+inodG6mhOibkfxjimZ7gLCa6+TOlJI3H5cFgA
 JW0al5HTlygYLBn5lSPWlePPok8DpcgyTyVTqU/xwtlT4W8JtdQ7nBzNg
 aTgVd4nMEOgtKfjg/MCXz9lrpPTHqpZkYCykfL2fAQ+pcVHxEzy6Fi507
 nvX672P95vrs7otfRKGip8AH4LBeo6PjEZyvnWO3uiYzZqVxuSbcrTDIc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279219504"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="279219504"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="911993754"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 09:52:44 +0530
Message-Id: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/3] Get dsc optimal output bpp
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

Currently, when going with DSC for DP, we take the max lane, rate
and pipe bpp, to get the maximum compressed bpp possible. We then
set the output bpp to this value. It might be possible to have lesser
rate or lane count, for which the same compressed bpp works.

This RFC series attempts to get the best compressed bpp such that we
have maximum bpc, with minimum link rate and lane possible.

The policy here is chosen such that 'best compressed bpp' mean minimum
compression, ie. maximum compressed bpp. It means compress only that
is sufficient to sent over the link, and for that compressed bpp,
use minimum lanes, and rate.

Current series, only touches the DSC for DisplayPort. eDP might require
some more changes and also a different policy.

Ankit Nautiyal (3):
  drm/i915/dp: Rename helper to calculate dsc output bpp
  drm/i915/dp: Rename helper to get max pipe bpp with DSC
  drm/i915/dp: Get optimal link config to have best compressed bpp

 drivers/gpu/drm/i915/display/intel_dp.c | 263 ++++++++++++++++++------
 1 file changed, 201 insertions(+), 62 deletions(-)

-- 
2.25.1

