Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4DF818848
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 14:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F2110E14F;
	Tue, 19 Dec 2023 13:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D31E610E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 13:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702991281; x=1734527281;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7fHCReWB18Am3F3iwLOl9baTLWgN3Hpejzomp28Jdu8=;
 b=QQXGL0sDRd8XJmKHIb7PptzdBntfmFilhsy3v9jtXEGul8YNmAN1+XAu
 2GhNlwtG6Io+KIp/8h07VZD8KUuxLyHQMJW0HTWBfNacI5PxVnCSsDkh5
 A2TfN9Y4VtPqR/ZQgZLm4bWr1jnXb7ghZjTK+E2AwsMJtAnGcf5ydhsTT
 f7sqfXU8Vee4kNkz1j3/IGhaNjCycMXxdulP9MUij8uUvxxF3bTsNNtVb
 V3FGS0IJBMT1bu5vHzt24LSebYi934HgoDq8jTSgsAZsN/NT/1tcHqPc2
 ONN/57rQxBGPysi2uwPM58c5TcrPBBNwdt69Crh33FaofEsc4TspNTr7e Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17213541"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17213541"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 05:08:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769230551"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769230551"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 05:07:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 15:07:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: Rework global state serialization
Date: Tue, 19 Dec 2023 15:07:53 +0200
Message-ID: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Rework the way we do the hardware serialization with
global states. This avoids angering drm_atomic_check_only(),
and I suppose it's a bit more efficient as well.

Ville Syrjälä (3):
  drm/i915: Compute use_sagv_wm differently
  drm/i915: Rework global state serializaiton
  drm/i915: Extract intel_atomic_swap_state()

 drivers/gpu/drm/i915/display/intel_display.c  |  42 +++++-
 .../gpu/drm/i915/display/intel_global_state.c | 137 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_global_state.h |   9 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  38 +++--
 4 files changed, 193 insertions(+), 33 deletions(-)

-- 
2.41.0

