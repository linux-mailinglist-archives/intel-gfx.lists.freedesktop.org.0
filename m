Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ABD4B17C7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 22:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D0E10E969;
	Thu, 10 Feb 2022 21:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9861710E2D9;
 Thu, 10 Feb 2022 21:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644529341; x=1676065341;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mBzSTrRMrVFhDj0QXaYZ2rNVjY1h6iZq27oJNWxJhr0=;
 b=KBtfzXNtgd1eRboaG7gamYdhyhz1aFkeg21MkCXaiqMf/fqITGZ/MKcY
 lYcdPdQL8RFik/VEyLDcp8SMJjdI5JtFmPUzLiabWKJluZ3grYUssRHH3
 rug+nC0As2mFflV6BhANQU1nuEhJLw5SF3/RMe+xIHmwnnL+a2R+n0nvk
 u+LgIzoAx8jNweaDgxVhaM5VWCQqcl5wVWmDlwMKa6SvLWDwYpxN3M2SO
 cx5pq94y1V9e8Ij5QC/+rxR9ejDZt2npOVCsjJztXYDFizZptLO1y7kH1
 jxCKXc8Pqxsl3jCohIBd6DF0bwFKXLQ2HnR4MOJMW1EITRj+ltO3mdQ5H w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249547366"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249547366"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 13:42:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="485949866"
Received: from lmoua-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.212.169.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 13:42:20 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 13:42:15 -0800
Message-Id: <20220210214216.1227694-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/1] Move #define wbvind_on_all_cpus
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series moves the #define wbvind_on_all_cpus logic to intel_gt.h. This way
all calls to wbvind_on_all_cpus benefit from the logic, and fixes compile 
errors on non-x86 platforms.

Michael Cheng (1):
  drm/i915/gt: Move wbvind_on_all_cpus #define

 drivers/gpu/drm/i915/gem/i915_gem_pm.c | 7 -------
 drivers/gpu/drm/i915/gt/intel_gt.h     | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)

-- 
2.25.1

