Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDB45B5E0E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFF210E5F5;
	Mon, 12 Sep 2022 16:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7BD10E5F0;
 Mon, 12 Sep 2022 16:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662999624; x=1694535624;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=87xf4SYN2Jh69pdF5M5ZZdgG3G9smir/OdPyheziin0=;
 b=GZT66iaylvWsconhpZrxMGAlNbvviW2DH+SSkP+C3LPqdldICzKR0Vxl
 Deeur0Xn4gACT6P89wgGcbUySMJrXILipduLy6bBiuEx7T1+2DyVjl1UO
 VZZUrSjnOqStnzVIsIcdkqhYyEdFWlmv6yWwX+BVyBep2e28lB++RwRVG
 g6cGU+/WR9V7SnsPzQP6ANFIICLzpwufjfQMYYkSdKl4MCAvazPgpOOe6
 QhzJdtcSct6gRQnQR5CmiAq7H05v76U/nMW1QDlSF9l6EDZtSleAnYl/X
 pAa3IE4eW5ZyOvuTIYYBFyHP3CKyoWY+mFeKJpA5iAhz7/1dEAyBsC+Q4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="299248377"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="299248377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:20:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646528973"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:20:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 09:19:37 -0700
Message-Id: <20220912-copy-engine-v1-0-ef92fd81758d@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-df873
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH v1 0/1] drm/i915: Copy engine fuses
 future-proofing
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix missing IP version when applying copy engine fuses.=0D
=0D
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=0D
---=0D
Lucas De Marchi (1):=0D
      drm/i915: Skip applying copy engine fuses=0D
=0D
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 4 ++++=0D
 1 file changed, 4 insertions(+)=0D
---=0D
base-commit: 088771790e5d121c70c358468abbebb4710eb02f=0D
change-id: 20220912-copy-engine-526db816b088=0D
=0D
Best regards,=0D
-- =0D
Lucas De Marchi <lucas.demarchi@intel.com>=0D
