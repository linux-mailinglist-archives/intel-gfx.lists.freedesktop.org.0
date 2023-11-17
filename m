Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8BC7EEFA5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 11:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF7B10E737;
	Fri, 17 Nov 2023 10:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 487CA10E737
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 10:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700215365; x=1731751365;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O+QAdz/CCVcwlSKhMVTaRKQFHJhX1qhF0pICx9Bz7zE=;
 b=XhbQLk0N9em5GkxtZG9k6gJG2ir/EWvC3KaoIdq2hDtSZJynZpK3x1Dh
 WIASR7sE/mWZoi38p+ic6wqTvnH3/Ra7QnazZGJig72ziqgQGaCzi8Cab
 AgJa3EbxTt5yuHdJinL9oeZiIBpRhPsevfVjOVjUwUnID1S9JOg/gizyn
 0vqkX4yzS1WRpYWSqBBjXVohlWdOq33Nh9tkM4sYOY5LNjbJ7wplPvCXb
 Mm1w+JPEwT37UW8o9NrUx5IgTqezc4XbaMcQeXXo7i+lWnUQUUrxr8j8G
 /iEklSOHzkKkgOL1JCwmYQcXsYqpodbAhEu3LtEcF0E++SZJgkdJsVJcS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="457770501"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="457770501"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 02:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759127417"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759127417"
Received: from ylysyix-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.219.145])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 02:02:41 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 12:02:25 +0200
Message-Id: <20231117100227.609261-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Implement sel_fetch disable for planes
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

Move plane sel fetch configuration into plane source files and
implement selective fetch disable for planes that are not part of
selective update.

v2:
  - Move some changes from patch 1. to patch 2.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Move plane sel fetch configuration into plane source
    files
  drm/i915/psr: Add proper handling for disabling sel fetch for planes

 drivers/gpu/drm/i915/display/intel_cursor.c   | 35 +++++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 88 +++----------------
 drivers/gpu/drm/i915/display/intel_psr.h      | 10 ---
 .../drm/i915/display/skl_universal_plane.c    | 79 ++++++++++++++++-
 4 files changed, 121 insertions(+), 91 deletions(-)

-- 
2.34.1

