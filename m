Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BD859E403
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 15:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D2B10EEB9;
	Tue, 23 Aug 2022 13:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B3010EEB9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 13:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661260127; x=1692796127;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gBwlo3zDD7PNnu7/SdKXzSjyr6peX7TpU3awFqdYK/g=;
 b=FMzTtrKY9ckExhgJnGZO36inekaFZ9aejn4RQEXrSyMIvKRXUC3Jc9+o
 Ykds30GiK4fwfSyQlYvRaIduFjGsEcj7o6PX1ZyeKhywZKdLr5vrY9sjV
 Rh88BUi31VQqRYDLwFnrbIEgZkJfb9IHi45TZMS5sGlksGXdOPxwvIees
 j7j4bM56Lg3cnWxYErixnddf3ZeBjIFNPHs+lkwHjVH6MdhiQWBQkTVmm
 gjgcUWEr4aAvS/VPfm47S57xoJT7WFVrbg0Y2kN27Wb/HpHoOOc8FXg8m
 Y8NmzeNLJbpb4CghOU67uoAQECXa5c3JAwOU3hkgjvvhzKwEK/lDiASxo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="292426071"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="292426071"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:08:47 -0700
X-ExtLoopCount2: 2 from 10.237.72.59
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="612400816"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by fmsmga007.fm.intel.com with SMTP; 23 Aug 2022 06:08:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Aug 2022 16:08:44 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Tue, 23 Aug 2022 16:08:44 +0300
Resent-Message-ID: <YwTRXAFT8+CRG9mL@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.stink.local with IMAP (fetchmail-6.4.27)
 for <vsyrjala@localhost> (single-drop); Thu, 18 Aug 2022 22:23:48 +0300 (EEST)
Received: from orsmga008.jf.intel.com (orsmga008.jf.intel.com [10.7.209.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 1D4E7580C95
 for <ville.syrjala@linux.intel.com>; Thu, 18 Aug 2022 12:22:26 -0700 (PDT)
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="636960089"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga008.jf.intel.com with SMTP; 18 Aug 2022 12:22:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Aug 2022 22:22:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 22:22:21 +0300
Message-Id: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/bios: Rethink LFP data pointer
 generation
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

Turns out the current code for generating the LFP
data pointers doensn't work with certain VBTs, so
switch to just hardcoding the fp_timing table size,
and make the validator a bit more strict just to be
extra safe.

Ville Syrjälä (2):
  drm/i915/bios: Validate fp_timing terminator presence
  drm/i915/bios: Use hardcoded fp_timing size for generating LFP data
    pointers

 drivers/gpu/drm/i915/display/intel_bios.c | 106 ++++++++++------------
 1 file changed, 50 insertions(+), 56 deletions(-)

-- 
2.35.1
