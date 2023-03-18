Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE22B6BF7B5
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 05:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5457210E179;
	Sat, 18 Mar 2023 04:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41F010E036
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 04:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679113249; x=1710649249;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xEqITh3wRP6lAJhAZ1vPsRCJRVb22DamYLIlPyJPB8Y=;
 b=brf5yt4vagRU++UiZCF7dnekqSYTTgt3wh5AI1o7nT0SRWLRa5llvOOx
 tod29fk8ua2aG85/IIl9zFepl8fKI8C4LMk5OqHfcQYOGn0zDZatC/Oj2
 X3DjCySHHFJdnonCHBeegcu3FJy4cVq3TrBwD6/ulyuOpfNK09QOU6hTs
 EsyN7W8uhvRhlKXR2SKMK7tmw4E0y7QV4nDt3bWRl+jDWq2YQ32RTrTcB
 grJbOaQcIaFgG13MeFDtuf94R957ly/65wjmll0+cNuiwbOv1G4wLnmjZ
 +ggqvOr7mn8pjGvDxK9HVUMtJDL3UKy5Lntjjqeoyun5PAudQi6E2B229 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424681849"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="424681849"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 21:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="680511390"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="680511390"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 21:20:48 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 09:47:02 +0530
Message-Id: <20230318041704.2714520-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 0/2] Add crtc i915_pipe debugfs file
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

The pipe may differ from crtc index if pipes are fused off. For testing
purposes, IGT needs to know the pipe.

There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
the upcoming Xe driver won't have that IOCTL, and going forward, we'll
want a unified interface for testing i915 and Xe, as they share the
display code. Thus add the debugfs for i915 display.

Test-with: 20230317165044.2616573-1-bhanuprakash.modem@intel.com

Jani Nikula (2):
  drm/i915/debugfs: switch crtc debugfs to struct intel_crtc
  drm/i915/debugfs: add crtc i915_pipe debugfs file

 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 35 +++++++++++++------
 .../drm/i915/display/intel_display_debugfs.h  |  6 ++--
 3 files changed, 29 insertions(+), 14 deletions(-)

--
2.40.0

