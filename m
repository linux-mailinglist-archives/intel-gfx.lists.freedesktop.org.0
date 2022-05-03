Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAEF5180E5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C8910E646;
	Tue,  3 May 2022 09:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722B910E646
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569851; x=1683105851;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n3wf47AudIEDFl7MgLRbyWzaIMiAsgB2M8PkQNtCNns=;
 b=HZUztU6s3P2Y82ZjEpSdH7wPRqkyBUlaJkWfuQF3klXLkSTs3OuIrtka
 tLMGpnhBK8h2QXaphoHET04WUaFfuMHB7WrZhID/WSlAcnFTb34DI5e7u
 A30gnr3O4YUKLToNldt+LIgHdGtG8bJMZOtoEfSrAVc0s1BewhfKYVA7H
 a8mohp/Qdfg7HeV+rPK/i7vkvr9L0ykpT9Sifeb8YyOByLed5Rzq6cIch
 6VWt0VtTbHl4Y6nqSUR17MXi1Z43NuS6YZiizMjjFUp36Npazv2Rxwu8Z
 +sCY3ZdAfFG9FhDBoEoRms55mbjSD6q/uGf1gniEIR3TaK1NFcAj3aE9a w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="254898552"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="254898552"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="562142036"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:45 +0300
Message-Id: <cover.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/20] drm/edid: CEA data block iterators,
 and more
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've kind of lost track of the version numbers on some of the iterator
patches, but this is the next version (or mostly a resend) of
[1]. There's an additional rename patch for SCDS.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/102703/


Jani Nikula (19):
  drm/edid: reset display info in drm_add_edid_modes() for NULL edid
  drm/edid: rename HDMI Forum VSDB to SCDS
  drm/edid: clean up CTA data block tag definitions
  drm/edid: add iterator for EDID base and extension blocks
  drm/edid: add iterator for CTA data blocks
  drm/edid: clean up cea_db_is_*() functions
  drm/edid: convert add_cea_modes() to use cea db iter
  drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
  drm/edid: convert drm_edid_to_sad() to use cea db iter
  drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
  drm/edid: convert drm_detect_monitor_audio() to use cea db iter
  drm/edid: convert drm_parse_cea_ext() to use cea db iter
  drm/edid: convert drm_edid_to_eld() to use cea db iter
  drm/edid: sunset the old unused cea data block iterators
  drm/edid: restore some type safety to cea_db_*() functions
  drm/edid: detect basic audio in all CEA extensions
  drm/edid: detect color formats and CTA revision in all CTA extensions
  drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA
    rev
  drm/edid: sunset drm_find_cea_extension()

Lee Shawn C (1):
  drm/edid: check for HF-SCDB block

 drivers/gpu/drm/drm_edid.c | 799 +++++++++++++++++++++----------------
 1 file changed, 458 insertions(+), 341 deletions(-)

-- 
2.30.2

