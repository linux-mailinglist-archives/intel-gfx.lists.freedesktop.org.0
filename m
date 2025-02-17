Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738BEA387B6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 16:36:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2A310E4F7;
	Mon, 17 Feb 2025 15:36:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YRdnyBmH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144AA10E331;
 Mon, 17 Feb 2025 15:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739806569; x=1771342569;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KqDj/t5Q4QqEonOoHuZj9LyZe05KE0IrFcNvIQUq9/Y=;
 b=YRdnyBmHrwWikiuTfemJWPYViPfAyNqlcQ3BJj1y3rG/lnb3Uicmpusr
 z7ms3fJCpLC5tlvItI3R7CDEK9zbBvQ/vv5G8smlH7rRfoytlR2U8Mp+c
 9l+BrFOvmcwDfosvytht6HOL/pRTeIJZAcLShhySJkGLXeTTVYp9TYzk4
 yE3uN0ZVjLmQXALLhvVdzWUWdY1M3MmP6vNSguoqiLCGBI9Op9lP6xrxs
 v+lVsKxXEk/2o9zTi4/aSoF23rkBb7q5HT6Xe7Q9dQT6gCw++4Hj7dzIg
 hxrwpMmvdxREFKNinUzAGk3mKoLfWXChxsMGYhTlxWxxN0EhlxE3rdS1V w==;
X-CSE-ConnectionGUID: 3rvO2JCmTBm6UUh0YWvsTA==
X-CSE-MsgGUID: m+DTiBCzTI+VK0htGjHf2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="43321623"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="43321623"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 07:36:09 -0800
X-CSE-ConnectionGUID: EGRTr1y6QZOBoqXwIeXUoQ==
X-CSE-MsgGUID: WjM/8oeKTlyG2H9C/z9DUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="119258645"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.142])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 07:36:07 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/i915/xe3lpd: Update bandwidth parameters
Date: Mon, 17 Feb 2025 12:35:22 -0300
Message-ID: <20250217153550.43909-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Since we are touching intel_bw.c, also take the opportunity to make it
use display-specific platform checkers, which is what patches #1 and #2
are about.

v2:
  - Fix typo in patch #2.

Gustavo Sousa (3):
  drm/i915/display: Use display variable in intel_bw.c
  drm/i915/display: Use display-specific platform checks in intel_bw.c
  drm/i915/xe3lpd: Update bandwidth parameters

 drivers/gpu/drm/i915/display/intel_bw.c | 192 ++++++++++++++----------
 1 file changed, 112 insertions(+), 80 deletions(-)

-- 
2.48.1

