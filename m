Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F10F2CA488
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 14:57:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFF96E53E;
	Tue,  1 Dec 2020 13:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074FD6E53E
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 13:57:06 +0000 (UTC)
IronPort-SDR: 6/gvEg00y5an+9ORTNfo/JL25oK+4V4qUzadSWpZEHqs46W/tbqvlhTaCOQGmtza+v7GSodjAG
 47sp49nNOBZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169325798"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="169325798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 05:57:05 -0800
IronPort-SDR: BbM4lvWa1UbbtpFq6Iqp7eLe8XIPuyPyoOEuO2v5B2TaGnwujSdY31X7mPdqIpJ/52i3lHYKN2
 GHrpVDIuzd5g==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="539027254"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 05:57:03 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:00:40 +0530
Message-Id: <20201201143042.22188-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 0/2] Re-enable FBC on TGL
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

FBC was disabled on TGL due to random underruns. It has
been determined that FBC will not work reliably with PSR2.
This series re-enables fbc along with taking care of the
PSR2 limitations for TGL.

Bspec: 50422 HSD: 14010260002

v2: Addressed review comments and added bspec links

v3: Addressed Ville's review comments

v4: Change the WA as per Jose's recommendation.

Uma Shankar (2):
  drm/i915/display/tgl: Disable FBC with PSR2
  Revert "drm/i915/display/fbc: Disable fbc by default on TGL"

 drivers/gpu/drm/i915/display/intel_fbc.c | 36 +++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_drv.h          |  1 +
 2 files changed, 30 insertions(+), 7 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
