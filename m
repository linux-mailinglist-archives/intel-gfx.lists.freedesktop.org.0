Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DE55ECBF2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C752210E04A;
	Tue, 27 Sep 2022 18:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF5810E04A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664302459; x=1695838459;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k4errbbTJY6DOiJvl5ZH95P91uXbF53/887J+tIbkmU=;
 b=HCZlLaFwW1NfEWD5lfUtDsQuSBhrN12/aEWoQD4IX3IS5LtwzKFiKLlE
 /oKJUmFX9UE7TqdYewU5MKA1T+jvL6tviOdUaqsQ31T69n0ldKYWi9tbb
 qA3aXnwxx6yzM4ZS3J1cHc+tcBpLocjfDIjllL+dbCgTNCftVEYuUrJ/Z
 QtHhdA+U+A8MknHVW1Q6WOa1YvEmzgcy9gKjGw7+8LbATCGRd3hkxYRwK
 SbXbk2HIE4W5wucLZgicIXPbD3boGnmXPyR8fb3kqbdLZT5Ki5ewilBuf
 bmBQmQoFngs+IqGH0Tc1vlIC7aC/N2UQ7kgRpWn9uzWfBOwfWU5kACsto Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="300110844"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="300110844"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:14:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="796858724"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="796858724"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 27 Sep 2022 11:14:18 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 11:13:46 -0700
Message-Id: <20220927181346.1187-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unwanted pointer unpacking
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In await_fence_array(), unpacking syncobj pointer is not needed.
Remove it.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cd75b0ca2555..8f5796cf9c9c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2954,11 +2954,6 @@ await_fence_array(struct i915_execbuffer *eb,
 	int err;
 
 	for (n = 0; n < eb->num_fences; n++) {
-		struct drm_syncobj *syncobj;
-		unsigned int flags;
-
-		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
-
 		if (!eb->fences[n].dma_fence)
 			continue;
 
-- 
2.21.0.rc0.32.g243a4c7e27

