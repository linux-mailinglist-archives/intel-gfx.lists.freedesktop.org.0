Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6616B34398D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F87689E7B;
	Mon, 22 Mar 2021 06:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3777689E7B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:38:17 +0000 (UTC)
IronPort-SDR: /D3p7wCrOEAr787FOxLjNgaE9SY8Kzl3GhAXgR4VQWcXHXv1Hs1NsTi27XPmW1YTdiSxRn7aB+
 Wx8Eq4j6Taig==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190238701"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190238701"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:17 -0700
IronPort-SDR: tFlSf0pdsoAD6SjHx76VhYdSRJR9+ZUFLZdWpPU30u97zdHL7LOWpIa7u0GBq8+3OQgLO2Chvc
 a9dZcByUObLw==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451627098"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:15 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 20:00:01 +0530
Message-Id: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Add state checker for CSC coeff
 values
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In this patch series, added state checker to validate CSC. This reads
hardware state, and compares the originally requested state(s/w). This
is done for chv, ilk, glk and their variant platforms. Rest of
the platforms will be enabled on top of this later.

Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

Bhanuprakash Modem (7):
  drm/i915/display: Introduce vfunc read_csc() to create hw ctm
  drm/i915/display: Add func to compare hw/sw CSC matrix
  drm/i915/display: Add macro to compare hw/sw CSC matrix
  drm/i915/display: Extract chv_read_csc()
  drm/i915/display: Extract ilk_read_csc()
  drm/i915/display: Extract icl_read_csc()
  FOR_TESTING_ONLY: Print coeffs of hw and sw CTM

 drivers/gpu/drm/i915/display/intel_color.c   | 209 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_color.h   |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  31 +++
 drivers/gpu/drm/i915/i915_drv.h              |   1 +
 4 files changed, 239 insertions(+), 5 deletions(-)

--
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
