Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF6B4E7356
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4224010E207;
	Fri, 25 Mar 2022 12:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392E510E207;
 Fri, 25 Mar 2022 12:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211138; x=1679747138;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W9NaEovf6Z+3RuT8Gv3TwR/zJZPHufXLiEy0lCLgBAc=;
 b=KkknNaySQFJJ2tobzaAWJ0tZ/9H79/ATB5Ir1HvAH7M7J71mHQIWplZJ
 QFjmLOXhbxPnSsdmAjFsNxZ/H/GvqfePjqTRvIcv2V/yzegDqZzfA7fV3
 Drbsx09K4gPPrh+G2UOoqT016BA5GsCkyn/smeJeG3hQCUrE9cV0njNP1
 +vHJ6LDVdHFzKWLsTuH/vlz8IgrTDp5IM5X7T6bay9Uner2Ma5nyPNbw/
 b0osgpcNFtgdH03HJaO/+ZzeSZ6If0o6392+7PK6mT+m1Zr5RRpNaQcdX
 sye3HzCkeR8GwtnG67JYIBYBkLpcuXuDOrk1eFT8apms6w1GaTy1CApMM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="240778010"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="240778010"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:25:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="545063685"
Received: from avgorshk-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.35.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:25:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:25:22 +0200
Message-Id: <cover.1648210803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/edid: constify EDID parsing
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

Remove accidental (?) EDID modification while parsing, and constify EDID
in most places during EDID parsing.

In the future I'll want more clarity on who modifies the EDID and where,
and I'll want the compiler to help.

The EDID is still mutable in places that do validity checking and try to
fix it in the process. I'll probably want to split the two into separate
check and fix steps too, but that's for another series.

This is based on current drm-tip, without the CEA iterators work.


BR,
Jani.


Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Jani Nikula (9):
  drm/edid: don't modify EDID while parsing
  drm/edid: pass a timing pointer to is_display_descriptor()
  drm/edid: use struct detailed_timing member access in is_rb()
  drm/edid: use struct detailed_timing member access in gtf2 functions
  drm/edid: constify struct detailed_timing in lower level parsing
  drm/edid: constify struct detailed_timing in parsing callbacks
  drm/edid: constify struct edid passed to detailed blocks
  drm/edid: constify struct edid passed around in callbacks and closure
  drm/edid: add more general struct edid constness in the interfaces

 drivers/gpu/drm/drm_edid.c | 272 ++++++++++++++++++++-----------------
 include/drm/drm_edid.h     |  10 +-
 2 files changed, 153 insertions(+), 129 deletions(-)

-- 
2.30.2

