Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1726A697D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 10:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DFE10E219;
	Wed,  1 Mar 2023 09:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B4610E219
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 09:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677661839; x=1709197839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Em+P88T+EKWMXn1q3nO2qS824HPJ9pmECb0c8n+8PBw=;
 b=FIttsAV3DBeVOZLPVaVPw8RnU40QCaKzDM4kfSr3hPBbbcOQsvPWkGXz
 kaAbdEEcm/CKgcL0nzI20OXbXwpfLFNSUxqmIU/IG93JY4B+H9JyYvU/A
 Tx05ZS2VbG3aMLGtwPUaX/YxB0noSJQbL1dQb4nUJm29WkSq6Q4rWdSX/
 kV68mFNDoYARLt2tvnWnPwD9uzrZ8EYkXaVqF0g1w55jZd/L4kq5twO7E
 ATuF/EC6TRUWKeJz8giA1akDtdR5z0kYsGyDB5JaqvmAhidAvclfah/0+
 Svbh1hzyy1kW4XyWHgRWo++hJ2Mq/xUbLpB8qnSjBe8Jb3liFMRdR1JDo w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="334396341"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="334396341"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:10:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="784262104"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="784262104"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.intranet) ([10.213.8.127])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:10:38 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 10:10:16 +0100
Message-Id: <20230301091017.31725-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 0/1] drm/i915/active: Fix misuse of non-idle
 barriers as fence trackers
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

Dummy cover letter to prevent CI / patchwork from picking up a previous
one with an outdated Test-with: clause.

Janusz Krzysztofik (1):
  drm/i915/active: Fix misuse of non-idle barriers as fence trackers

 drivers/gpu/drm/i915/i915_active.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

-- 
2.25.1

