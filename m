Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E514D604EC4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33A110F2A0;
	Wed, 19 Oct 2022 17:33:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE2610EB44
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200813; x=1697736813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VJyRakDrcYw5JZqsmPYIUKEzZIT9xwrJ50NQxku3Mso=;
 b=hfXNX/dxDCI/r5lePaDL2ahc+ni3Bk9vVh0pKH5bgsocZWBtaJPhbFjC
 J/RcGAkGFy++lVNwSLF2ziSoG+J6zEterapTVg2qgs72XEDEEn4ZUZe1n
 qU7x6HtsC/tUutUN9gBQQJOZC2885sR2inOvZKbPFHbmnNediPu6E4QzD
 HbcPKgsaJ7khTZ8PhphBQHKPIAGid/Bz+jyl2UuveLPvX4SrtrqJ2rONs
 UXEOwmRmCajn9ZJCW1GBkiazDSMA83u9biPhDGkpJ878R5C8DnkwvogUx
 H/1deL5JLoz/Tf+Qn0wouq7KufAVf0jQZ2b3t0SUurknVu2Mqf06rMHoT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201619"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201619"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204723"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204723"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:41 +0100
Message-Id: <20221019173254.3361334-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 04/17] drm/cgroup: Allow safe external access to
 file_priv
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Entry points from the cgroup subsystem into the drm cgroup controller will
need to walk the file_priv structures associated with registered clients
and since those are not RCU protected lets add a hack for now to make this
safe.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/drm_cgroup.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/drm_cgroup.c b/drivers/gpu/drm/drm_cgroup.c
index a31ff1d593ab..9e9caeb0aa87 100644
--- a/drivers/gpu/drm/drm_cgroup.c
+++ b/drivers/gpu/drm/drm_cgroup.c
@@ -21,6 +21,13 @@ void drm_clients_close(struct drm_file *file_priv)
 	if (atomic_dec_and_test(&clients->num)) {
 		xa_erase(&drm_pid_clients, pid);
 		kfree_rcu(clients, rcu);
+
+		/*
+		 * FIXME: file_priv is not RCU protected so we add this hack
+		 * to avoid any races with code which walks clients->file_list
+		 * and accesses file_priv.
+		 */
+		synchronize_rcu();
 	}
 }
 
-- 
2.34.1

