Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D425E57306D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 10:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA1BC95DB6;
	Wed, 13 Jul 2022 08:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4116E95463;
 Wed, 13 Jul 2022 08:12:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A4468B81D61;
 Wed, 13 Jul 2022 08:12:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A57BC341D7;
 Wed, 13 Jul 2022 08:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657699952;
 bh=XHVdLY91hJyhxc9rQko5XV9oeLHtBy2npWeICKEo4Mw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HYxXuisDPJyuOaCaGN4bCEGCezzknJJGCA/MVDHKdQmm87fsoV96WRrzq/TAPw4sE
 5dIWnfUmYYsO7m4HwaQqy9nEeMbGKtbPeJ3VxVeobZAWBQiLK9idf70GmbslvTVBh+
 AFrOWk1npnzJSlRVvbwMBxlmibCOuddnHcLQPHEZp1j103r/QjpP87HssMaQ7+lq7s
 2EIeXr/d0QfnPYFG6lyMhwhR3YJZd4/U/pPNEowRtcycSOFB9dZY6LLa/mbTkYreX7
 /zUXyr1FFNcNV0tTcmevaBMdoEz+Wfb71ITesVjVtiRw1Xd1PK97PJp7G33+hvrvQC
 cb+3+9jEm5Sog==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oBXTx-004zsz-Gl;
 Wed, 13 Jul 2022 09:12:29 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Wed, 13 Jul 2022 09:11:58 +0100
Message-Id: <836c640e6c65cb2b444d4072b93eaae1e9636897.1657699522.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657699522.git.mchehab@kernel.org>
References: <cover.1657699522.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/39] drm/i915: i915_gem_ttm: fix a
 kernel-doc markup
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Two new fields were added to __i915_gem_ttm_object_init() without
their corresponding documentation.

Document them.

Fixes: 9b78b5dade2d ("drm/i915: add i915_gem_object_create_region_at()")
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/39] at: https://lore.kernel.org/all/cover.1657699522.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 053b0022ddd0..e8cfb47b5f5a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1187,7 +1187,9 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
  * __i915_gem_ttm_object_init - Initialize a ttm-backed i915 gem object
  * @mem: The initial memory region for the object.
  * @obj: The gem object.
+ * @offset: The range start.
  * @size: Object size in bytes.
+ * @page_size: The requested page size in bytes for this object.
  * @flags: gem object flags.
  *
  * Return: 0 on success, negative error code on failure.
-- 
2.36.1

