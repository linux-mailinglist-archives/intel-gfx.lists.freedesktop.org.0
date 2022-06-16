Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925C054E5EF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 17:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C703510E784;
	Thu, 16 Jun 2022 15:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A8B10E2DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 15:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655392986; x=1686928986;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xu7TXyF67M2GfYXpdWxe30TaA+FcdSgAO0gVqBfRngo=;
 b=by0B5tB9RZGuLqHb1RLk7QlfJ3xXkXzApm7cPPqHXL8wP0Hz6wkiwzdA
 rNGyS9z0y+Oyh0V6rxPi7PD9XlkzDlsAViV8LFvOMYh+ilSwWgO+MFChg
 UNKAtL3xRlWn9R+IO5OpzcsLnOGZp7joDzf6rRbqSHwOAOs5kGrxMxvZL
 7tkuJANvnQa6cyW+eetHvll6d/QDsABkHGjieWARnD1ncCqPgeb/Cws9S
 PSInoExJtmiWo4qIIzmii6KFa1Iw4uES/+c2KPbXJyJFPUbJ1oMlDnoez
 KyE0ixeJgM76kU4mQqovcvBdTRijIj1S0m0KoAYnWb/C+wLKbvk4MWRl8 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259734229"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="259734229"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 08:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="687862180"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2022 08:23:02 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 20:42:45 +0530
Message-Id: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Add support for LMEM PCIe resizable bar
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

From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>

Added support to resize the bar to maximum supported.
Also, added new modparam lmem_bar_size which can resize the bar to one of the supported sizes.

Akeem G Abodunrin (1):
  drm/i915: Add support for LMEM PCIe resizable bar

Priyanka Dandamudi (1):
  drm/i915: Add lmem_bar_size modparam

 drivers/gpu/drm/i915/gt/intel_region_lmem.c |   4 +
 drivers/gpu/drm/i915/i915_driver.c          | 118 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_params.c          |   2 +
 drivers/gpu/drm/i915/i915_params.h          |   1 +
 4 files changed, 125 insertions(+)

-- 
2.25.1

