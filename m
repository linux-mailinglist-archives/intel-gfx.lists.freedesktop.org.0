Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 628B77888D6
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 15:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 245DF10E69A;
	Fri, 25 Aug 2023 13:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C9D10E69A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 13:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971075; x=1724507075;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R/cln/pVe558fAWM5mDUFwwE7a7qReURbt8ncw47wRo=;
 b=cyqx3dZPkbgm7LGcNe9qyTEaoGDfSSBCClULn5qpxqlu3XcVPEhmhlCL
 pBj42qOiJ2papQ3fWhWO9rM0T3JOHPqpD0KMULCgcNJ9/4KHmAwdM8q6f
 bNavYwNWQr2QZ5JJh7DJNykTYIrAlYbJWA2yU33+laSSfWEre8jt41bIW
 Brzd4okvXhBYBizPr1tcZyoGV52P7AhBUTytsrYEoQfFg0HLN/tco4xIL
 +Rbh3DVqtsn/RjneZLMlWGAz8kDT3wEuHtn58q/KQYjyHFLGhHJUcFUs4
 Q1SFIIcHEwTGhlbGXSit/Sfx8DOe0vpNW+lOJ+6svLrq4DjNQ1LDxNxkL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="359714280"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="359714280"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:44:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="984123020"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="984123020"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga006.fm.intel.com with SMTP; 25 Aug 2023 06:44:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Aug 2023 16:44:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:44:25 +0300
Message-ID: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915/sdvo: DDC rework and fixes
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I have plans to switch the whole driver over to using
drm_connector_init_with_ddc(), and thus populate the
sysfs "ddc" consistently. The biggest hurdle is the
SDVO DDC handling, so start by cleaning that up.

I also found some other issues with the SDVO code so
some additional fixes are also included.

v2: Bunch of stuff alreadey merged
    Fixed the error path in the init code (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>

Ville Syrjälä (6):
  drm/i915/sdvo: Nuke attached_output tracking
  drm/i915/sdvo: Initialize the encoder earlier
  drm/i915/sdvo: Nuke the duplicate sdvo->port
  drm/i915/sdvo: Get rid of the per-connector i2c symlink
  drm/i915/sdvo: Rework DDC bus handling
  drm/i915/sdvo: Print out the i2c pin and slave address

 drivers/gpu/drm/i915/display/intel_sdvo.c | 311 +++++++++++-----------
 1 file changed, 155 insertions(+), 156 deletions(-)

-- 
2.41.0

