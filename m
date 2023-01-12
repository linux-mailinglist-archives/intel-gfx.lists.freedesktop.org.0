Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4C3667CED
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57ACC10E1A9;
	Thu, 12 Jan 2023 17:47:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCEBC10E1A9;
 Thu, 12 Jan 2023 17:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545658; x=1705081658;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jp3biPBHwK1gTvXDFNdI9XJ1Y5mw8tZFVq5kNZI5wVo=;
 b=Bc8L6zQu+48o7R3VVPaCRYvYo2pvFTZRxkUd6ST5wnhzGA6Tc53/saAO
 e4Rqsa5J2L3IrGZTYcuim13Z9aVy0OLqGxN9ebxKOl1cuFoHXWqzwlf5I
 L1r0OzV581+Noeal/iaGrp74eOWsgIxvjUsYxAYsfwBT+jQe0bFezPOIt
 2Z43mLujUPLzTNqs7cRc4PAIWp1Fmo0tQ/BNr+Gpw+md+MZPsl1n/1mJ0
 lGeAp3SlTPMNrmvu9iM7kMeMH7de4r1zjdyDuenJo80+QJMCgr67VMme5
 4nPVY0sl+f+8V3yHCyJjLUrlnSk4ynsEibV6XLczYVNywzuD48y7YIKE7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="321471394"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="321471394"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635468273"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="635468273"
Received: from jacton-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.195.171])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:36 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:47:26 +0000
Message-Id: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/4] Some intel_gpu_top tweaks
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Mostly by popular demand from
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/109, although for
some of these changes I'd like some second opinions. For instance is it user
friendly to change the default aggregation mode for stdout and JSON output?

Tvrtko Ursulin (4):
  intel_gpu_top: Fix man page formatting
  intel_gpu_top: Automatically enclose JSON output into brackets
  intel_gpu_top: Add command line switch to start in physical engine
    mode
  intel_gpu_top: Aggregate engine classes in all output modes

 man/intel_gpu_top.rst | 20 ++++++++++++--------
 tools/intel_gpu_top.c | 16 ++++++++++++++--
 2 files changed, 26 insertions(+), 10 deletions(-)

-- 
2.34.1

