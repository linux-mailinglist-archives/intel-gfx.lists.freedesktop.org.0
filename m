Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1AE7BB92A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF86F10E4E9;
	Fri,  6 Oct 2023 13:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EFF810E4E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599429; x=1728135429;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KuIV0lFMUZOAMiK93e/sAg9lAqCS/MRdYS+8SRIwM7c=;
 b=AnO9ekifJtH/mbxnuAhfvp040ppF7R8+onE84czHm2E2bHik4kugs88h
 Cay3pF6mdJU4OvFH+/44PqlzrKcNZ9z/aRlcKnlxJEhAIm3oaOcKO4DwI
 9A3LFQmexvfG2jlmTmihYp9cA+sd0Q0M8JetS9nPRIE5aDI5A5F4bRl8S
 E6Z5p5oMd5iM0bOY9SGbV55jKO2aBNe9UJuoTLAYCC3c5JsPJst+RaaZw
 VjK3tQem9ksIfP9pA88VHxQX3Nex3MnrlATjPINnGjI1TjFT081IfRNN+
 AF+Rgx39IaK/qepeRYm8MNh2OaNZGPp/IjfHmlZmEjgyY3Y+k7SgZZHdi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019073"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019073"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841338"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841338"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:08 +0300
Message-Id: <20231006133727.1822579-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/19] drm/i915: Store DSC DPCD capabilities in
 the connector
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

This patchset moves the DSC DPCD capabilities from the encoder
(intel_dp) to the connector. This is required since in an MST topology
each connector has its own version of these capabilities, allowing
to configure/enable the DSC decompression for each stream separately.

The changes are needed for a follow-up patchset, fixing the MST DSC
functionality, making it also possible to enable the BW management on
MST links. The follow-up changes are based on patches 12-25 in

https://lore.kernel.org/all/20230914192659.757475-1-imre.deak@intel.com

Imre Deak (19):
  drm/i915/dp: Sanitize DPCD revision check in
    intel_dp_get_dsc_sink_cap()
  drm/i915/dp: Store DSC DPCD capabilities in the connector
  drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX
  drm/i915/dp: Use i915/intel connector local variables in
    i915_dsc_fec_support_show()
  drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()
  drm/i915/dp: Use connector DSC DPCD in
    intel_dp_dsc_max_sink_compressed_bppx16()
  drm/i915/dp: Pass connector DSC DPCD to
    drm_dp_dsc_sink_supported_input_bpcs()
  drm/i915/dp: Pass only the required i915 to
    intel_dp_source_dsc_version_minor()
  drm/i915/dp: Pass only the required DSC DPCD to
    intel_dp_sink_dsc_version_minor()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()
  drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()
  drm/i915/dp_mst: Use connector DSC DPCD in
    intel_dp_mst_mode_valid_ctx()
  drm/i915/dp: Remove unused DSC caps from intel_dp

 .../drm/i915/display/intel_display_debugfs.c  |  22 +--
 .../drm/i915/display/intel_display_types.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 154 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  35 +++-
 5 files changed, 136 insertions(+), 91 deletions(-)

-- 
2.39.2

