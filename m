Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A34751FBDA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 14:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E19B10E487;
	Mon,  9 May 2022 12:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5073C10EE2A;
 Mon,  9 May 2022 12:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652097811; x=1683633811;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8saS7JDO8K6eGroCBStX7ciZDnMf8jTiPv6ZjRW+yKg=;
 b=FFEUClUAHJBwskFbxpsU1MoeM+E6Cur1To+vOdDNDp/BgQ9xf9pzIeRH
 VHgA5UJ1gWbDib8N6wV0T5TkEMqGWzyt6+UAvDehsyIProfOIQOEEX0xf
 yqMWisHpKzxWHNJj5QWvYmEhsv27vevJQFSNtwW+q0lmCQqVQiAicgzpi
 kj72dO2MJ82YIsgIlqtqWYNeHyVCvw/XeGs2cw1vvlekDMx6GxtKJXMDB
 UNqLcZ1BLcd3T8DwzcZpNGJXqTDO6Jpp+xTYla1ibP/GLRYV+6pq8zU2W
 rnJOZ9lr+MVqcbK8RolQSCk+yq/tuY7NdOAOb6u2+7DbttwYQM43gOS1p w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="355456490"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="355456490"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:03:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="592054412"
Received: from csawicki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.129.3])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:03:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  9 May 2022 15:02:59 +0300
Message-Id: <cover.1652097712.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/25] drm/edid: introduce struct drm_edid
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of [1] with some NULL deref bugs and checkpatch/sparse warnings
fixed.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/103665/

Jani Nikula (25):
  drm/edid: use else-if in CTA extension parsing
  drm/edid: convert drm_for_each_detailed_block() to edid iter
  drm/edid: add struct drm_edid container
  drm/edid: start propagating drm_edid to lower levels
  drm/edid: keep propagating drm_edid to display info
  drm/edid: propagate drm_edid to drm_edid_to_eld()
  drm/edid: convert drm_edid_connector_update() to drm_edid fully
  drm/edid: convert struct detailed_mode_closure to drm_edid
  drm/edid: convert drm_mode_detailed() to drm_edid
  drm/edid: convert drm_dmt_modes_for_range() to drm_edid
  drm/edid: convert drm_gtf_modes_for_range() to drm_edid
  drm/edid: convert drm_cvt_modes_for_range() to drm_edid
  drm/edid: convert drm_mode_std() and children to drm_edid
  drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to
    drm_edid
  drm/edid: convert get_monitor_name() to drm_edid
  drm/edid: convert drm_for_each_detailed_block() to drm_edid
  drm/edid: add drm_edid helper for drm_edid_to_sad()
  drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
  drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
  drm/edid: add drm_edid helper for drm_detect_monitor_audio()
  drm/edid: convert cea_db_iter_edid_begin() to drm_edid
  drm/edid: convert drm_edid_iter_begin() to drm_edid
  drm/edid: add drm_edid helper for drm_update_tile_info()
  drm/displayid: convert to drm_edid
  drm/edid: convert version_greater() to drm_edid

 drivers/gpu/drm/drm_displayid.c |  16 +-
 drivers/gpu/drm/drm_edid.c      | 540 +++++++++++++++++++-------------
 include/drm/drm_displayid.h     |   6 +-
 include/drm/drm_edid.h          |   6 +-
 4 files changed, 335 insertions(+), 233 deletions(-)

-- 
2.30.2

