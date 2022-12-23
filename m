Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4D76550B1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 14:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDCE10E64A;
	Fri, 23 Dec 2022 13:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC9010E64A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 13:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671800725; x=1703336725;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VqUT85QoJ5SbZqVmvJmHRaoSvEKOQwJn4Oknp16E6U8=;
 b=PcVWRlrhbVevnfa46m00/uZ+zSTX0mnT7z6rMikIqDUfzojHT2WmsLoR
 54zTxpQE23g8OEndFVY6BnToCsTop4L22n97C8T2HFIDnViWee3+vVlIZ
 V3wspL0dvXpf88N85jfuBEq5ttAFvIY8LkD7sptU7kdsOjSYnt/UnGhiI
 eilA/A1BO8yewwL2wlF1McSK6yDwGsYgbqZk/ZxBiOZKeweT7Q1qKHlFu
 o+f2LD2gmVNmVBfQh+nP0ZpMZsivnwJ/GdaFzOdiuKebTwyzmx+YlEsen
 k/yo2SgGGSQ7fS1cKagpAOff6lXo6P3W2He/hlN1UED4/e3ZaQzuGtSeo w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="322270525"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="322270525"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 05:05:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="980934573"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="980934573"
Received: from ipuustin-mobl1.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.251.219.9])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 05:05:23 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Dec 2022 15:05:07 +0200
Message-Id: <20221223130509.43245-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/2] drm/i915/mtl: handle some MTL scaler
 limitations
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

Hi,

Here's an updated version of the patches after Ville's last comments.
The versioning history is in the patches themselves.

Please review.

Cheers,
Luca.


Animesh Manna (1):
  drm/i915/mtl: update scaler source and destination limits for MTL

Luca Coelho (1):
  drm/i915/mtl: limit second scaler vertical scaling in ver >= 14

 drivers/gpu/drm/i915/display/intel_atomic.c | 85 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_scaler.c   | 40 ++++++++--
 2 files changed, 107 insertions(+), 18 deletions(-)

-- 
2.39.0

