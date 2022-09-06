Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9D45AF2FE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 19:46:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FD610E0D7;
	Tue,  6 Sep 2022 17:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C7610E0D7
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 17:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662486375; x=1694022375;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=10IoLOddqwHE3DfKgTTQ8fxBrq8d/+7/Zg0+r8Xjj1o=;
 b=So+eXjpyqSrhi8c/4od8v8L0nqES9H5jyLv42f8CPoRlADuVf6MmsmXJ
 1d1QzvOnwtQPC+2hrhrQYfg2QfOqdmGKrcF1F+AwKTb+STsSVSVP6WnwJ
 NUj9k9Th3uW8+NuLltKYoXuCHO/aJ/Pt4k0AOEEsibrAOxMMD/q6OVLZI
 x055FmnYwggAAPOXzqCmvKKBdP4Y2hmf0cJrrpsRlsNEkX1Zf343Idyku
 /rlNURd0q41j7fpYM+XcflUH1EckM3+eKJgXvWikmq/EyZ3TUH9n2axAB
 f+nOEqs/m1iEm1a8g+lbKPB/muviN7SdTUcoAGR43UkiaSsgUDmNk65TW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="295396627"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="295396627"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 10:46:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="591354768"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 06 Sep 2022 10:46:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Sep 2022 20:46:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 20:46:09 +0300
Message-Id: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Kick rcu harder to free objects
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On gen3 the selftests are pretty much always tripping this:
<4> [383.822424] pci 0000:00:02.0: drm_WARN_ON(dev_priv->mm.shrink_count)
<4> [383.822546] WARNING: CPU: 2 PID: 3560 at drivers/gpu/drm/i915/i915_gem.c:1223 i915_gem_cleanup_early+0x96/0xb0 [i915]

Looks to be due to the status page object lingering on the
purge_list. Call synchronize_rcu() ahead of it to make more
sure all objects have been freed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0f49ec9d494a..5b61f7ad6473 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1098,6 +1098,7 @@ void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
 		flush_delayed_work(&i915->bdev.wq);
 		rcu_barrier();
 	}
+	synchronize_rcu();
 }
 
 /*
-- 
2.35.1

