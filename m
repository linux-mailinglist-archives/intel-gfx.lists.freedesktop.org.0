Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2355885D3C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78ACF10E1B9;
	Thu, 21 Mar 2024 16:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTgDvEJZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2D810E1B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 16:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711037891; x=1742573891;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kauqAjW2dvLOwxK6tKqHaeAIHgH+PBhpc9JF9H59E4U=;
 b=PTgDvEJZTLZi5D8+7kcY6tIPIGzLXYuMKuNQKprip3C6v3con8tD/hLD
 5k4eWP7AdviyqAwOYrN4OPE3oJuYyE1Xm4Moxa6MKzvGPASkOu+YO3o8A
 hr3cIUBUpr3ToEQ0xComdD9HOWWGhZec21R0xgOWe26MHH403CKXdZH4Y
 /4TL9tOk3iFtm9+TZVVvtPCwfqndm7jYW7P8S3mxJZ2qWeHxGc++AJOPy
 gV+CSWuSqFHR61MgVjmT1nJw376vrAAqPIAXvc6C+A6MfCMyBS3WxUEy3
 lh7nMM526YqlBZP2ACJROiTQVzor4RkJwngsq5WZtXtzEgZcpt84bUlwJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5894176"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5894176"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783097"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="827783097"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2024 09:18:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Mar 2024 18:18:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915/bios: Pimp some VBT definitions
Date: Thu, 21 Mar 2024 18:18:01 +0200
Message-ID: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Update a bunch of our VBT defintions based on real world data
and an archaeological dig through some VBIOS ruins.

Ville Syrjälä (5):
  drm/i915/bios: s/dpfs/dfps/
  drm/i915/bios: Update VBT driver feature block version numbers
  drm/i915/bios: Add the old DPST field into VBT LFP power block
  drm/i915/bios: Define the (obsolete) backlight i2c VBT stuff
  drm/i915/bios: Pimp the VBT backlight data BDB version comments

 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 35 ++++++++++---------
 1 file changed, 18 insertions(+), 17 deletions(-)

-- 
2.43.2

