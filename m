Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBC563CFD4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 08:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C1010E41A;
	Wed, 30 Nov 2022 07:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89CA610E41A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 07:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669794344; x=1701330344;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kEI/qVdF3wn7yc06GRIIvQBocfMsaMUA8xyD/Amo3rU=;
 b=jEsvAFcLUJW+2Wg00JLNmsDlXkp3g4cuiuYnE1Akrp119KUw2nFj3WXM
 gOXJzivv8AAEn4R6eF7AdAO2/AGu1J0dz1MfQHFsMyW7BfEFi4MG9NHlo
 4v/SziPmwtN5N9EChwF99Rv+PZ7QrA5J7gZmBUZAR1Py+4R6lW7Yr3wl+
 62b24ZlQepzkPv1soY902olHXn2PKIEkHgf8rUkFf22AVvU+Cx//hUB4S
 GTPyEeFgewTVNSgbQbAbfvSFx9yK8SsFj82XS/eB0D0FcLjqNM2QdzJn+
 /0ppS6UYFl1v9uclM/UDfNpvhfe+UzF+3oKeyDi2RWFGpamEOfnAqXSrg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401610672"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="401610672"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 23:45:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="973003867"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="973003867"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2022 23:45:41 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 13:16:15 +0530
Message-Id: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new step of 480MHz has been added on SKUs that have a RPL-U
device id. This particular step is to better support 120Hz panels.

This patchset adds a new table to include this new CDCLK
step. Details can be found in BSpec entry 55409.

In addition to identifying RPL-U device id, we need to make a
distinction between ES and QS parts as this change comes only to
QS parts. For this CPUID Brand string is used. 480Mhz step is only
supported in SKUs which does not contain the string "Genuine Intel" in
the Brand string.

Even though ES parts will be deprecated in future we are adding this
distinction since they are currently in use. However, here the question
arises if we keep this change in upstream or not as this could just be dead
code down the line. Feedbacks are appreciated on this.

Chaitanya Kumar Borah (2):
  drm/i915: Add RPL-U CDCLK table
  drm/i915: Add additional check for 480Mhz step CDCLK

 drivers/gpu/drm/i915/display/intel_cdclk.c | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

-- 
2.25.1

