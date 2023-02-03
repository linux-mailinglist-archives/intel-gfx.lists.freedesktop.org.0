Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 124B6689792
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE8210E763;
	Fri,  3 Feb 2023 11:16:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC88C10E763;
 Fri,  3 Feb 2023 11:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675423004; x=1706959004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=98Fm6XSE8/Ahpw5HhQ8s+CnCkwPlh6u727x5QjsSE3I=;
 b=fhA/svOO+ra35FumJpXIMvA7Pgf5Yp1o4eL+sNAAxudWqX/AcCCymNUJ
 g3aTD/3uWdBIOFfipx2d2tyLfftXbBhuNbPWCP8/iiPcsPvxFSE636uJC
 DlpN0o5/c40Ze7AlCRF/c8y6JjzoYh0uyDTS+DEnFz0v9AgZ8jtZoLvLs
 8B+wDwz4JCikQn9nw9ZgDqZkQKMHgGvVdLuRroLteyyu0g6xcsKQHDk1Q
 XNP8jtuoN8BRt9PaJLbuQs5euDXb1sDfKMX3yF3mtMb9HDE1oaiHmaHwm
 x7D1v+4JwpryosF1i0QL+rsQHKhV/betN78pBmfgod7ciV5zaYryAsDlz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308363117"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="308363117"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:16:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="698036019"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="698036019"
Received: from lhime-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.220.100])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:16:42 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 11:16:33 +0000
Message-Id: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/3] More intel_gpu_top improvements
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

Suggestion was received to omit repeating header lines when outputting to a file
and also to add the CVS mode for easy parsing. We have JSON but I guess CVS can
definitely be easier for some use cases.

Tvrtko Ursulin (3):
  intel_gpu_top: Do not repeat header lines in non-interactive output
  intel_gpu_top: Rename STDOUT to TEXT
  intel_gpu_top: Add CVS output format

 man/intel_gpu_top.rst |   3 +
 tools/intel_gpu_top.c | 137 +++++++++++++++++++++++++++++++++---------
 2 files changed, 111 insertions(+), 29 deletions(-)

-- 
2.34.1

