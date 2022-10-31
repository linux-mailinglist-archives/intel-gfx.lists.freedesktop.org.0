Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 097BB612F9B
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 06:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4A110E113;
	Mon, 31 Oct 2022 05:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173BB10E113
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 05:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667193272; x=1698729272;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vuIrQLcth39UJc4xrI50U+ZH88OJAhV1A/HfRZzyHWs=;
 b=JevjNPyhMEFwQG19mP67/v+RmTsEenlqU5SoFb6hDIwiCT3Egbj9IK+f
 dTL/SzIDoiUp+BiZfEkTnysw2ypO/nXe4pwqFLrm+2O3lhtm/IiBMlYRS
 RCE9KiI9+Zj3vz8+S0nd0Un43xvv/3PPeMvAOTykL2zQxBszrXu0TPH+e
 F3bIeOiePq0rNPj2gUBxgafURcXgLWzvoJrcNXzuuBHbvz79axgWefUJ/
 zAa7O/BSWN54veRWu3//HorGeJSVHKNSOO8Y2lACpcULWQCMXiq05o4ya
 mIuxDm5QFdx68cSlxWWqXS1tisLf9AqQPsjDW8Y1qhqeAFxrDijhPTwQP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="395134523"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="395134523"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 22:14:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="878605094"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="878605094"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 22:14:29 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 10:44:10 +0530
Message-Id: <20221031051411.3739031-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] Add selftest for slpc tile interaction
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

This test runs a workload on tiles simultaneously by requesting for RP0 frequency
and fails if there is a throttling error.

Rev2 : Fix build error
Rev3 : Addressed cosmetic review comments

Riana Tauro (1):
  drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction

 drivers/gpu/drm/i915/gt/selftest_slpc.c | 60 +++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

-- 
2.25.1

