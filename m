Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 549464C3403
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 18:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7990C10EAC5;
	Thu, 24 Feb 2022 17:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4717910E7A8;
 Thu, 24 Feb 2022 17:51:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A2A2C61C54;
 Thu, 24 Feb 2022 17:51:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F0BBC340E9;
 Thu, 24 Feb 2022 17:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645725113;
 bh=okvli80VUxIOQbN6MsWGNd2XsmG92pwx21C/8Pm4/Y4=;
 h=From:To:Cc:Subject:Date:From;
 b=Uk/Ss2CSiLRq9yizvMPg10mROQXswArnNro4vr0utE0RxaFpZ6sdEFevmk2GaeCVs
 +5QQeeTq8FHZ/Fj6uxIQi0USANb3cECCBdWr4okr1y9I5YiICuNclJf2BPsidpMp5h
 L8V4estdNA27lBXssSFTva8Mn8tqMxzX4FrO0BYgjS/LfQqRt26ltGXYWmccoxBmGW
 WMCOCvq5Oc59lM26EG48O5UiNjbQdFwjV263//DpeFgI8HarZa0fbfVMkyQZzClsUO
 R0V2iP18+YDjas5hEg+1CboZA6+0Cq8e8RNUIZoQRVaOhI0HBBOvJ2JBSLFWho8P0O
 y8e7LR5anI37g==
From: broonie@kernel.org
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Date: Thu, 24 Feb 2022 17:51:47 +0000
Message-Id: <20220224175147.2694056-1-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] linux-next: manual merge of the drm-intel tree with the
 drm-intel-gt tree
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Today's linux-next merge of the drm-intel tree got a conflict in:

  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c

between commit:

  721fd84ea1fe9 ("drm/i915/pmu: Use PM timestamp instead of RING TIMESTAMP for reference")

from the drm-intel-gt tree and commit:

  b3f74938d6566 ("drm/i915/pmu: Use PM timestamp instead of RING TIMESTAMP for reference")

from the drm-intel tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --cc drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 04b8321fc7587,b3a429a92c0da..0000000000000
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c

[Used drm-next version]
