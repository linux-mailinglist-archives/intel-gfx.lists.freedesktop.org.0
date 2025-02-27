Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD089A489DB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 21:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D8C10EB78;
	Thu, 27 Feb 2025 20:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWUKBEzH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0DD10EB78;
 Thu, 27 Feb 2025 20:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740688125; x=1772224125;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=jc4BAWQTu+kBE8Om2CV/fiObOu2TJ8ZUAVEfRrNEikI=;
 b=gWUKBEzHFZWr/B+cUfYnO6fDZsBHYTJMa6ZWKpLwV47RS0HvM+TCB5BH
 +UCj/0CshG/2cpKsdNtkesB5S/tMGcvPTf+goNK3QGvG5fnM/zJpPKtvE
 l80wByUzhFDnfkcP5VVcZaj+oc+OyyRWzEJUT3Pii+aKXA9YXUPVkorGe
 DwAVVUA/CvImLgxzktes+Uez/K3LfOBIJurm/PoTePHb8+U3uczOKTScE
 0nr4HPCZEOB6DGz/9mNbiG/d0iZUH0lZs9z2gvGkEwOT9MsPc2Lw77VDm
 QuwY+tcKTPPTChW3gfD+TCpkBXnoCTYgnyzvziu1MPnldMKRh7sk+UWf/ Q==;
X-CSE-ConnectionGUID: N6EWGrWjTZyrwjnp5mDReA==
X-CSE-MsgGUID: KKlu8eZKSr24y/41gRVwKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41855744"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41855744"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 12:28:44 -0800
X-CSE-ConnectionGUID: StBr8oKsS/KVFgbqer+QOA==
X-CSE-MsgGUID: LpSfxUkaQeOEUaQq7sy6tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="121724616"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 12:28:43 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 0/2] drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD
Date: Thu, 27 Feb 2025 17:28:16 -0300
Message-Id: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAODKwGcC/4WNQQ6CMBBFr0Jm7Zh2oAVdeQ/DAtupNEFKWoIYw
 t2tXMDle8l/f4PE0XOCa7FB5MUnH8YMdCrA9N34ZPQ2M5AgJYg0rlwOk8V3h7ISJBpd1qpC5aR
 0taqNIwF5O0V2fj269zZz79Mc4ue4WeTP/isuEiU24qKt40dptL35cebhbMIL2n3fvwV5zY+6A
 AAA
X-Change-ID: 20250226-xe3lpd-wa-14020863754-5f11f757cf20
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

This is v2 of the series to extend Wa_14020863754 to Xe3_LPD.

The initial version was just a single patch. Now this is a 2-patch
series, where the first patch converts needs_wa_14020863754() to always
check IP versions.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v2:
- Add a patch convert needs_wa_14020863754() to always check IP
  versions.
- Link to v1: https://lore.kernel.org/r/20250226-xe3lpd-wa-14020863754-v1-1-8096dfeb3c6d@intel.com

---
Gustavo Sousa (2):
      drm/i915/display: Use IP version check for Wa_14020863754
      drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD

 drivers/gpu/drm/i915/display/intel_audio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
---
base-commit: 6badede10d92c242241bd7bf59a5488b5eba5aa7
change-id: 20250226-xe3lpd-wa-14020863754-5f11f757cf20

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

