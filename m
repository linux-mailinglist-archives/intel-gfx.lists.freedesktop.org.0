Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 098FA722FEA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 21:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F1C10E1DF;
	Mon,  5 Jun 2023 19:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8055C10E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 19:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685993973; x=1717529973;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EBUICE4EThVUxU7waeUnPVHdpvBM4n9G/1bjfFZmiyo=;
 b=fxGusFrN9+ZvDMJCiVfz/v+Ian02wiCsEkSLTOhDCZ83d4vTmwsAkY2L
 JKiFsRSTyDSxgnu/A286UIc0GwOlkF2PlHtkjsXXndy7CjcFvBgveu7qA
 4839HPBUsuHxzIvo6rA657nfdVN0Gy21ZRKvKP5MXNPDCzzD+ACzzPDbX
 JhanuCqnY/Js6cgkLE/2ISlvQOq0WkLr7BtWL9wRcNTRR2GsLwn+ePkWG
 NwlYhqdFn//l6pe+gFdA7guyNOiFh9RyYJ1J57OoVL1+n1UdJZGxblC0F
 ITuRKjHqjtlqVBKfG7PwQ7GZTGU2LE9RTUKlaF/hjtlUBICHqAATgNTaV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="384775244"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="384775244"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="773851022"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="773851022"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:39:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 12:39:21 -0700
Message-Id: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Avoid reading OA reports before they land
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
v2: Drop aging logic completely
v3: Remove unnecessary renames and squash patches
v4: Indentaion fixes

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/perf: Drop the aging_tail logic in perf OA
  i915/perf: Do not add ggtt offset to hw_tail

 drivers/gpu/drm/i915/i915_perf.c       | 92 ++++++++++----------------
 drivers/gpu/drm/i915/i915_perf_types.h | 12 ----
 2 files changed, 36 insertions(+), 68 deletions(-)

-- 
2.36.1

