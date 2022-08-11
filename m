Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4015058F722
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 07:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D4BA11F7;
	Thu, 11 Aug 2022 05:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37CD0A1192
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 05:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660194028; x=1691730028;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BCa/831KTwzVLYxqVh1kNYE56d6AfUbv9GUiF6NREhk=;
 b=KsfpNHNK4fNWsj/zuMaCwpFDyuG4DJj8fCGt4g7sXBWJmVLycLwEQLCo
 tYNB56eL9RuKLmIXfNM0f4Iabe/BQnxSCUlrcBcno6MFEIZ3oxkZE7C/o
 eUKsc9fs0/CdzQ6eA7+fhY3eze1mVTzE49I09jYw6hcCkf224+DqrtbjP
 fmojvv4YTCivlC322XGDkr/hrhgfJt9xmpztqhV/3qlS57wcBJsyOt9Yr
 EZoZAvcH2cMwSPRhuRmdVDDQSbHr/HsLXUriPO+0D7hpxnnTzUAeq9dNK
 he8icXjs9LywrSHBZuDSmt3sLbFnXxfVRnTxWEUNFVx4vJMhe63qieW05 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291257740"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="291257740"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:18 -0700
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="673553136"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 10:29:41 +0530
Message-Id: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Fix HFVSDB parsing
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
Cc: maarten.lankhorst@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix issues in HFVSDB parsing for DSC support.
Also minor refactoring in Logging.

Split from original patch into a new series.
https://patchwork.freedesktop.org/patch/495193/

Ankit Nautiyal (4):
  drm/edid: Fix minimum bpc supported with DSC1.2 for HDMI sink
  drm/edid: Split DSC parsing into separate function
  drm/edid: Refactor HFVSDB parsing for DSC1.2
  drm/edid: Avoid multiple log lines for HFVSDB parsing

 drivers/gpu/drm/drm_edid.c | 153 +++++++++++++++++++++----------------
 1 file changed, 87 insertions(+), 66 deletions(-)

-- 
2.25.1

