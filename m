Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C6F5F2F5F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304D910E304;
	Mon,  3 Oct 2022 11:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEAE010E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795748; x=1696331748;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OIaaWaD145pXFHAxS6ULlwXtCMfy5pJY3W1j4HzvAn8=;
 b=XWfxzbvM2syWUJxPw/8OJxaGn97n74RbIz/JUXUZdEccZbS0CALFVAVK
 fXo3UukeXS9jIrNiiNtk5GhgRqyZ13sCgET0SKe74RAWzdNGKt9F51bN2
 Eg7c+Ho5pNQSf8o1hiBlb0TT8GaaSPh/1/FL5i03TbTjOYoxBNIMQT00B
 jcT12EHxj8T+lvwA6/KrP9osBc5wrS/kLtdKTYAAUv+RNXryW6tJo34kq
 y3So/MC7KdZWr+lXLgUFCxqYxjXSx++JHUApiRAHEl3jNSsK3a6vG9v1s
 XdSHHqeW+MSvhlDe1GMGePjuIP+wudr5u4/LH9jHQ1GgAGpsvneABL5R3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="366650627"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="366650627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:15:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618696678"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618696678"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:15:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:15:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:15:38 +0300
Message-Id: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915: Fix watermark calculations
 with various CCS modifiers
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

We are neglegting to consider all the new CCS modifiers as
Y-tiled in the watermark calculations. So we are incorrectrly
calculation the watermarks as if dealing with a linear surface.

v2: Fix tgl RC CCS vs. MC CCS to separate patches since they
    need separate fixes tags

Ville Syrjälä (6):
  drm/i915: Fix watermark calculations for gen12+ RC CCS modifier
  drm/i915: Fix watermark calculations for gen12+ MC CCS modifier
  drm/i915: Fix watermark calculations for gen12+ CCS+CC modifier
  drm/i915: Fix watermark calculations for DG2 CCS modifiers
  drm/i915: Fix watermark calculations for DG2 CCS+CC modifier
  drm/i915: Simplify modifier lookup in watermark code

 drivers/gpu/drm/i915/display/intel_fb.c      | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++-------
 3 files changed, 17 insertions(+), 7 deletions(-)

-- 
2.35.1

