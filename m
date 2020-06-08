Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EEB1F164E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 12:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E263A6E149;
	Mon,  8 Jun 2020 10:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85A446E149
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 10:06:02 +0000 (UTC)
IronPort-SDR: sVn7ug80Mw+k3150ZXiymPPj/ZKOLJc6FkZtqmNNbpReni5dd3yNqJwHSr7wvRhRbswG7TWLIA
 szDFbNHeVIUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 03:06:02 -0700
IronPort-SDR: Slc29KzOLUyCrkYCkqKgWwG2pqQLLZCbp8UBmJJnrsEVRTpjaPmKILOmiBzhX7rMPGvORCfMub
 5a4NsrA+5nrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="270462090"
Received: from unknown (HELO linux-akn.iind.intel.com) ([10.223.34.148])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2020 03:05:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 15:31:01 +0530
Message-Id: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2 0/2] Add debugfs for requesting HDCP version
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
Cc: jani.nikula@intel.com, martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, for a given content-protection request, the kernel selects
the highest version of HDCP supported by the panel and the platform.

This makes the testing/debugging difficult for lower versions of HDCP.
E.g. In case both the lower and the higher HDCP versions are supported 
then the higher version of HDCP will always be selected and the
lower HDCP version cannot be tested without changing the setup.

A solution for this was proposed in an IGT patch [1] by removing
"mei_hdcp" module, but a need for a generic future-proof solution was
identified.

As suggested by the community members, this patch attempts to add a
new debugfs per connector for requesting a specific version of HDCP
for debug/testing environment.

The test can request for a specific HDCP version and set the
appropriate content-protection connector properties to test the
required version. The kernel will consider the request if the HDCP
version is sufficient for the requested content-protection.

[1] https://patchwork.freedesktop.org/patch/358240/

Ankit Nautiyal (2):
  drm/i915: Add support for considering HDCP ver requested via debugfs
  drm/i915: Add a new debugfs to request HDCP version

 .../drm/i915/display/intel_display_debugfs.c  | 68 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    | 10 +++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 ++++-
 3 files changed, 92 insertions(+), 2 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
