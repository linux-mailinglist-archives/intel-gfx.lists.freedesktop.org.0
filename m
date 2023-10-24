Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 325907D5B53
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 21:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B7C10E485;
	Tue, 24 Oct 2023 19:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA2F10E485
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 19:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698175044; x=1729711044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WGKgHwucaZd6y0NQGPmgV3sCFZELqEJC0AJNAp25S3g=;
 b=YHV+rGjTZSuZ7COKMDW/gsd/PS+EIcWv5rukK6IFfzMmjDAyPzTIGL3i
 N1vekI6yIkWjPPQVHVMyWiV0rxVimbyyKZntlp8x+/Admij53kqYFOBbD
 wSYH6pRKCAcUu9CFoy1kzze9lS7UCcnHT2Q/iaOXhKIi5yrr9OykJwQgP
 hFmJ/y8jODsd5uQeyDJKE5N+VrJBJosKUPUENxcB8yDGvomzLzkFg/EVp
 3EMuuEyHAcOcvHHD8saE+bp18Yx36hK2YY3TUY14vpg1wWRonIMnu+lw8
 FRarAUJbfmXV60s3oDhXgT2iAi+MpYjDr/l6KRdptxpm5jSKWGVr/twim Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418269768"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="418269768"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 12:17:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="902303518"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="902303518"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga001.fm.intel.com with SMTP; 24 Oct 2023 12:14:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Oct 2023 22:17:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: linux-pm@vger.kernel.org
Date: Tue, 24 Oct 2023 22:17:19 +0300
Message-ID: <20231024191719.4041-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
References: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] powercap: intel_rapl: Downgrade BIOS locked
 limits pr_warn() to pr_debug()
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
Cc: intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org,
 Srinivas Pandruvada <srinivas.pandruvada@intel.com>,
 Zhang Rui <rui.zhang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Before the refactoring the pr_warn() only triggered when
someone explicitly tried to write to a BIOS locked limit.
After the refactoring the warning is also triggering during
system resume. The user can't do anything about this so
printing scary warnings doesn't make sense

Keep the printk but make it pr_debug() instead of pr_warn()
to make it clear it's not a serious issue.

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Wang Wendy <wendy.wang@intel.com>
Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Cc: Srinivas Pandruvada <srinivas.pandruvada@intel.com>
Fixes: 9050a9cd5e4c ("powercap: intel_rapl: Cleanup Power Limits support")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/powercap/intel_rapl_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
index 40a2cc649c79..2feed036c1cd 100644
--- a/drivers/powercap/intel_rapl_common.c
+++ b/drivers/powercap/intel_rapl_common.c
@@ -892,7 +892,7 @@ static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
 		return -EINVAL;
 
 	if (rd->rpl[pl].locked) {
-		pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name, rd->name, pl_names[pl]);
+		pr_debug("%s:%s:%s locked by BIOS\n", rd->rp->name, rd->name, pl_names[pl]);
 		return -EACCES;
 	}
 
-- 
2.41.0

