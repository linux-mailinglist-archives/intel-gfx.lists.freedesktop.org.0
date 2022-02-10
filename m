Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C7C4B0AF5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 11:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0824810E7DC;
	Thu, 10 Feb 2022 10:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13B610E7DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 10:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644489411; x=1676025411;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BTUaqp0F+v5AYFjave7Nm5FY2uvpU+hWGOVVNZDin9g=;
 b=jWGSqbaL+Xyo5AOVuqvVeF5YyNw7CqcfEtc0LQpU2CUb7Xniwfthj5n4
 MRNHPi5B9wFGV17UCCbyC/ymzhaefTx6tAoIUpHVNCpR8pJp9gwo+WLJp
 LLFhFAPyFkFZXD7/v/feEwmQLiis9UpWZ0m+xKx0D1bOUeK0lwNG9SbUO
 X07JpyWsNta+cRAioGY4M+TOov66TJEbxIelph/EveR9mTOpMqDtF05QO
 meTcwdI7NodAlhkGV5aBwqoAA2VZRpOwYrdzJb1injSCbM5l2/KSiVuwD
 7w0y3IsRwQtemVOnwoBtPFDoF7HipZdnazR6v4da+tad3gyscYZ7wXWnQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="233024474"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="233024474"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:36:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="541555069"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:36:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:36:41 +0200
Message-Id: <cover.1644489329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/opregion: fixes and cleanups,
 RESEND
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Resend of https://patchwork.freedesktop.org/series/98836/

Jani Nikula (5):
  drm/i915/opregion: check port number bounds for SWSCI display power
    state
  drm/i915/opregion: abstract the check for valid swsci function
  drm/i915/opregion: early exit from encoder notify if SWSCI isn't there
  drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion
  drm/i915/opregion: debug log about Mailbox #2 for backlight

 drivers/gpu/drm/i915/display/intel_opregion.c | 78 +++++++++++++++----
 1 file changed, 62 insertions(+), 16 deletions(-)

-- 
2.30.2

