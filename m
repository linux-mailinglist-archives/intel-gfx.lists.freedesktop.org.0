Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF885F149F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 23:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADA510EDB7;
	Fri, 30 Sep 2022 21:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33FBC10EDB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 21:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664572597; x=1696108597;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3PkRrmOE8uo4FWfqUJ1mRZzB4oLaJYCOmyUGCqAYFdQ=;
 b=WQs9Lad06H/s2I4Ec3oCgOyKHeiBSwZ+4ma4+JCrJelOBBoD5nquPOXk
 Y8I49kJ1uHic+ZFDV2PxlhXdyDOYyg+85UslmiZt00VP1JUyAdnZIaQ51
 7qv1PRly/cURUUzQejowJdwHM7aKDosU315rW08PSP9C/STY3yMAEz0c5
 8oJUQV7OxbNkauRfYE28ZUKADNFKnNCUlrV4HmUhimZsW0SAbqQm3umga
 vVSz1WIiqtultNs8lyKpYyq6HbSoWAYDQJiJ2aXnmMN+0DDt/bmGZLjRZ
 qwKWMQ3gzRFN02gTewwdeNcF1r2rq1JqntEfGYy/ZpdrNaAjYKWml/V81 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="328677249"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="328677249"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 14:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="656088451"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="656088451"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 30 Sep 2022 14:16:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 14:18:35 -0700
Message-Id: <20220930211836.148041-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] Fix Guc-Err-Capture sizing warning
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

GuC Error capture initialization calculates an estimation
buffer size for worst case scenario of all engines getting
reset. Fix the calculation change from drm_warn to drm_dbg
since its a corner case

Changes from prior revs:
   v1: Change drm_dbg to drm_warn for the case of the mis-estated
       size not being met (John Harrison).

Alan Previn (1):
  drm/i915/guc: Fix GuC error capture sizing estimation and reporting

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 29 ++++++++++++-------
 1 file changed, 18 insertions(+), 11 deletions(-)


base-commit: 0b9f0501c9541cf79fdfb43a7760360a81453d88
-- 
2.34.1

