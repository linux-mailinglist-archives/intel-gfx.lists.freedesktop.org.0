Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 511354DEABB
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 21:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F58F10ED92;
	Sat, 19 Mar 2022 20:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D623910E90E;
 Sat, 19 Mar 2022 20:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647722522; x=1679258522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oAuomVYdSe9FwSIKqYTPrJiLqp/ge0kHN1bkveOJla0=;
 b=TyReSAjpykI99E8K02nU/xWSnBV+IINnMMyaMdhpYKHHqDj88o9EcbNQ
 RNz56Qf2fR9V8AzQQPnIP2Ulv5NgDv/bg1hZpUa31zji2+sesXkdbkSZd
 brhAMmJRcez1maGIyt/CtY/2Reu0r/+0llkRN6KIA5spI0HIq17z+7y89
 GzGiBEqMEvyz4E5RAImLt1EvIxOy2vv0aKdbNxxHJ6YpPRSgp+Mjjvz60
 MSCNLJCISJaF4g35i3nguHRZDMRFbtZZOaLOb2Ut2D26saQb53g8xnH46
 zddySZEStHOgWKSBxOHAxW6qIEQWstOeYQCghifLzuD2Cvk461LXLiGKc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10291"; a="237270091"
X-IronPort-AV: E=Sophos;i="5.90,195,1643702400"; d="scan'208";a="237270091"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2022 13:42:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,195,1643702400"; d="scan'208";a="559245016"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2022 13:42:00 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Sun, 20 Mar 2022 02:12:24 +0530
Message-Id: <20220319204229.9846-4-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220319204229.9846-1-ramalingam.c@intel.com>
References: <20220319204229.9846-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/8] drm/i915/selftest_migrate: Consider the
 possible roundup of size
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At obj allocation size could be rounded up by min_page_size. So please
update the size as per the obj size allocated.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index c9c4f391c5cc..b5da8b8cd039 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -152,6 +152,9 @@ static int clear(struct intel_migrate *migrate,
 	if (IS_ERR(obj))
 		return 0;
 
+	/* Consider the rounded up memory too */
+	sz = obj->base.size;
+
 	for_i915_gem_ww(&ww, err, true) {
 		err = i915_gem_object_lock(obj, &ww);
 		if (err)
-- 
2.20.1

