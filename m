Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F41C720A98
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 22:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC65710E106;
	Fri,  2 Jun 2023 20:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2392410E066
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 20:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685739214; x=1717275214;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5gctG1ispcfXYOldZ/sz//cbOZrY/NAOa52f6yaHxRk=;
 b=dDBYCDJ9tmOvGXf7ttMuvEp+OdJ2nRn77KiGP1w1MRt0qvAtyLkV+ibB
 5vaDMPXUkj7LjWLL2loN/1qbzYT9Km+fdLTKPK17jzyjEKQU8Nk/dKKTV
 WgP+fa/3Cpq0fZdpR29EbYRtCFYhN456cYS3eItiMYr9UcLaSfXym4LeV
 r5tTRm84RIzit9axK/c4OlY1xoSwpfgeMKw/YAD9q167YexpErv139Pb1
 NrIfaSjjdLGEv7Qjdukbmr/3STpJXe0+A8HCbk1e3KGYNmWQQI1+6s5OF
 KhXzasHgJIhDPGWW19sZPbkHXA/Guga0uGU15Xfx8rVoWroEkdL51EgnO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="340595931"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="340595931"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 13:53:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="777820733"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="777820733"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 13:53:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 13:53:25 -0700
Message-Id: <20230602205327.1542958-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Avoid reading OA reports before they land
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

Fix OA issue seen on DG2 where parts of OA reports are zeroed out or
have stale values. This was due to the fact that rewind logic was not
being run when the tail pointer was aged. The series drops the complex
aging/aged logic and just checks the reports for validity.

rev1 - https://patchwork.freedesktop.org/series/118054/

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/perf: Drop the aging_tail logic in perf OA
  i915/perf: Do not add ggtt offset to hw_tail

 drivers/gpu/drm/i915/i915_perf.c       | 76 ++++++++++----------------
 drivers/gpu/drm/i915/i915_perf_types.h | 12 ----
 2 files changed, 28 insertions(+), 60 deletions(-)

-- 
2.36.1

