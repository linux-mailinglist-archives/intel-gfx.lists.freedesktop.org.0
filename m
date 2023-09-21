Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB157A93E7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 13:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C00C310E5D0;
	Thu, 21 Sep 2023 11:46:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F53110E5BF;
 Thu, 21 Sep 2023 11:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695296766; x=1726832766;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s+E9uuoc3yUKc0t47XfxPZS8r27EyJ01Ew7RF30MFPs=;
 b=cicYTwZAYrY5flltjrCVWrcXauOGkzj3x3kGBgyZhoTBuhdaKWM48W6n
 0TUuxwZKDrZGKsiULjp7o4snfmkajJiu5/1lCUYCXFLwffc+FRT/RQoG1
 7ZXU5ct4CQQAD1hexWyYAYYQfCyTY6B+opv3QkDzMbH0Sg/mIJBzEz/TO
 kAUdC31EcEjCl5xwFhjQmgIlD7o3N4M5vpJSj84aeqjBKxgTUfijNfCmU
 C35Ajv6qyWUlPj6W+ojT/pvyJ/Ion2QEFetCSp2Ll561bgHNte1CMPX5R
 ch+WGhtJipVNC0o0gmCwua5XygH8ti62zzQE9l9XK8WJbrBuvSIxSzjS5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359877288"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="359877288"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="817352773"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="817352773"
Received: from asilke-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.199.249])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:46:04 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 12:45:55 +0100
Message-Id: <20230921114557.192629-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] Basic tests for fdinfo client memory
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

Just some basic tests to check reported values look correct.

Tvrtko Ursulin (2):
  tests/i915/drm_fdinfo: Stress test context close versus fdinfo reads
  tests/i915/drm_fdinfo: Add some memory info tests

 tests/intel/drm_fdinfo.c | 269 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 269 insertions(+)

-- 
2.39.2

