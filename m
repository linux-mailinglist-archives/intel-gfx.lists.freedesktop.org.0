Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B56976EAC03
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 15:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B33D10EE1F;
	Fri, 21 Apr 2023 13:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA8710EE1B;
 Fri, 21 Apr 2023 13:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682084839; x=1713620839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1HhtCLng92GrgcUoxBiOg6l1TOi7DBBvXy+nn6Ql/cY=;
 b=WfdfBKVrieGFBAGHBWidY/hGCa6kzIaYpGf0emIi0DNS2/miEBfwYk6e
 FFbboZ64MtrUU0+FV/ERH0DAAjiPEUVhBhLT/kxa/ofezwQvzfu7UUf9m
 bGbKr40hHb+jAyq2+WkYkebErvLUBi8A0ftxGqj3Qof095L0DtT0W4rrY
 H4CTnhV+iT9YQQaQFG2BuYm/1rRtAE6c2Xxj3lqnofqxeMpzcs7EEucSN
 AQ7m8o/MyUjrWPZuCw7CYRsl/rIIG94g4y/7sWpdxZ+3q8E+kwHu6uIG0
 cf3ZJlRK51qXFW7CPKh7TmpA8+pBEXd2zemvI2+7vwlXflllqGIwkx9M1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432271989"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432271989"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 06:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="938483456"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="938483456"
Received: from ppuente-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 06:47:14 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Apr 2023 15:46:52 +0200
Message-Id: <20230421134654.273182-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Use i915 instead of dev_priv
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
Cc: Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

just another "Friday patch". While reviewing some patches from
Tejas I found a bit confusing the use of dev_priv__ inside the
for_each_engine(), perhaps it should be moved inside the gt/?

As I was at it I made the /dev_priv/i915/ change which is still
harmless. Next in queue is to change the i915_irq.h, which is a
bit tricky (but not much) as the "dev_priv" is hardcoded inside
some defines.

Andi

Andi Shyti (2):
  drm/i915/i915_drv: Use proper parameter naming in for_each_gt()
  drm/i915/i915_drv: Use i915 instead of dev_priv insied the file_priv
    structure

 drivers/gpu/drm/i915/i915_drv.h | 462 ++++++++++++++++----------------
 1 file changed, 231 insertions(+), 231 deletions(-)

-- 
2.40.0

