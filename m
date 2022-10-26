Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBD260DFB5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C77D10E34E;
	Wed, 26 Oct 2022 11:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A7110E34E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784349; x=1698320349;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S+9wMjxygZjqirXRbKFzlgkVxy599/HcLxus0oN25YY=;
 b=glladTQARJD9NXz40SeabJEEAJsHTbYLQ9lrRAbE/BkF0gfaaWowVbCz
 8154ZijzPNuNng5406BeI1fJB8IgPVEG/gBQX7FeD07sU3AgGae0w11JC
 0HUsUkT853XC3BTCD32tyEYW7OXOzSimgm/Eq1RsmPeVZl8yWCcx47pgn
 PpAoBdDkUKdYlP8RXUnmt/QMfvr3I3xLHj2AiYZi4xg6RsBNcJnoZ9qt1
 1v4HUVJsb4h5nGc8yf0KxYSh55VUs4ruahxdECvgo5SNWYa5Uk7LKipVG
 kd05KwGog/JlvQMRyVALVgrq4Pg2CE2Uvu/eMjAAa79bnzrjhcoNb2NQ/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614181"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614181"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164316"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164316"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:38:55 +0300
Message-Id: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: More gamma work
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

Another serires of (mostly) cleanups to the color management
code.

The one functional thing in there is the last patch that
reworks how we handle the split gamma mode now that we
have a way to cook up internal LUTs.

Still not full readout+state check I'm afraid. That will
be in the next series.

Ville Syrjälä (11):
  drm/i915: Use sizeof(variable) instead sizeof(type)
  drm/i915: Use _MMIO_PIPE() for SKL_BOTTOM_COLOR
  drm/i915: s/dev_priv/i915/ in intel_color.c
  drm/i915: s/icl_load_gcmax/ivb_load_lut_max/
  drm/i915: Split ivb_load_lut_ext_max() into two parts
  drm/i915: Deconfuse the ilk+ 12.4 LUT entry functions
  drm/i915: Pass limited_range explicitly to ilk_csc_convert_ctm()
  drm/i915: Reuse ilk_gamma_mode() on ivb+
  drm/i915: Reject YCbCr output with degamma+gamma on pre-icl
  drm/i915: Share {csc,gamma}_enable calculation for ilk/snb vs. ivb+
  drm/i915: Create resized LUTs for ivb+ split gamma mode

 drivers/gpu/drm/i915/display/intel_color.c | 529 ++++++++++++---------
 drivers/gpu/drm/i915/i915_reg.h            |   3 +-
 2 files changed, 302 insertions(+), 230 deletions(-)

-- 
2.37.4

