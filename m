Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E9826D68
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7F310E0A8;
	Mon,  8 Jan 2024 12:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C8E10E0A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704715650; x=1736251650;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D8i8YQSxvKDmaVRZv9cpYHTzXofRYkzmrTtHQGjxTt4=;
 b=R+qU1gCYlYrUi0QgO7ddErFuDof8El5rh2kqQodNIT35wUwrrptIcVoA
 dLlYhvdp9HoGM2FTLZ2VkhUvIFumNAc/OTzvKBZLEEeETcdHPsbk0XRib
 AZr+AgsCQLYcfmgMQwTlSSMeeJnCQ2KrSgh1YORjaE+fkZyyo7VJz0IZI
 Y/kpU/3FgFrlN3h09gc5dPu2e1GJjW9VfB6a9nsnyOjnLcBfyaKVwa0hJ
 PYsWmqS9Efl6ywApdq5+08+Rc5NOHWY4dWU5qjEGjDvThr9yqTpgDxOqA
 vDbMysbLLsyr2CawEHkZDHaYW3yKlj1925zh2eA3Lzl2qG8J4gsqMs7Xy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="19361469"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="19361469"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:07:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="757605098"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="757605098"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2024 04:07:26 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] Bigjoiner refactoring
Date: Mon,  8 Jan 2024 14:07:22 +0200
Message-Id: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

There are few things we need to do for bigjoiner, in order
to improve code maintenance and also make testing for Bigjoiner
easier.
Those series contain addition of bigjoiner force debugfs option,
in order to be able to force bigjoiner even if there is no display
support, also we refactor pipe vs transcoder logic, as currently
it is a bit scattered between *_commit_modeset_enables/disables
and *_crtc_enable/disable functions. Same applies to encoders.
We made a decision to handle all the slaves in correspondent master
hook, so slaves and slave checks no longer would be in modesetting
level logic.

Stanislav Lisovskiy (3):
  drm/i915: Add bigjoiner force enable option to debugfs
  drm/i915/bigjoiner: Refactor bigjoiner state readout
  Start separating pipe vs transcoder set logic for bigjoiner during
    modeset

 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 170 ++++++++++++++----
 .../drm/i915/display/intel_display_debugfs.c  |  59 ++++++
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 5 files changed, 202 insertions(+), 35 deletions(-)

-- 
2.37.3

