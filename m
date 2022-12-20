Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B28365202B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 13:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC63210E0A9;
	Tue, 20 Dec 2022 12:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEFE10E3BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 12:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671538059; x=1703074059;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mZ6B7Iyld8XA1ClSD25xVlVG97XFXNuOYa9Ft3eMtok=;
 b=mLQ/OtzMEKdZER236iu97FARn/Bmbvhtpj1A0L59ZMcWRtuYh22ytRWM
 x839IM+NVFaT9OC2gqlUn8jb5coCmyN5VmT/M9ttgMlM9eaIrvA/hILoQ
 WRL0IaoSlX+4TVpc0NGjYgh0nQixt8mfsOnSxMksOqWRJZ4OTfZKZbc40
 s+eoSyRfcKbgCVWHHSVxgFw/1X1qY00FjTnme2+aD2IcaCjKlBNq133iN
 d7PXr1mgvpRAYdPw2bKKgBmoPCJ0S5G/ey/GmxiDK9YDeNnonzF4J+VfQ
 6bzT7CTcqQgLNMSJ/Tadp0/EikRZjwQvS6OSZVaB6hrSxrAu0EPs83dmw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="405845464"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="405845464"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 04:07:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="628699218"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="628699218"
Received: from asignori-mobl3.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.252.46.89])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 04:07:37 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 14:07:22 +0200
Message-Id: <20221220120724.196570-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/2] drm/i915/mtl: handle some MTL scaler
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

I stupidly sent an old version of the patches in my v5... Resending
the correct ones (which were sent as v4).

The versioning history is in the patches themselves.

Please review.

Cheers,
Luca.


Animesh Manna (1):
  drm/i915/mtl: Limit scaler input to 4k in plane scaling

Luca Coelho (1):
  drm/i915/mtl: limit second scaler vertical scaling in ver >= 14

 drivers/gpu/drm/i915/display/intel_atomic.c | 83 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_scaler.c   | 31 ++++++--
 2 files changed, 96 insertions(+), 18 deletions(-)

-- 
2.38.1

