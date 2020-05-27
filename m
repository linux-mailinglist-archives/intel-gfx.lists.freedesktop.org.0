Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1851E3F8A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 13:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0C16E2D6;
	Wed, 27 May 2020 11:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD656E2D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 11:06:40 +0000 (UTC)
IronPort-SDR: d9rCin9wOVQkXb7nJ2iZ/M4Zk5Bjy9fH7TH+Vk4yUyIXqjtLLK4ruFAcXxZIqGA511pu2JpFH8
 /Ca6YnQgOMIQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 04:06:40 -0700
IronPort-SDR: iSja/xGQn0mCJGAJYuJ7qEqQQVNxBl864yHsNsSCa/54DvnGkF6COpniiYi/KBSpHNdoypdTS5
 y91oxPpmVUrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="375994955"
Received: from unknown (HELO linux-akn.iind.intel.com) ([10.223.34.148])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2020 04:06:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 16:31:30 +0530
Message-Id: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC 0/2] i915: Add debugfs for requesting HDCP version
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

To make the design simpler, the debugfs for requesting the HDCP
version can be only set when the content-protection is disabled.
In case, the test tries to write the debugfs while a request for
content-protectiont is ongoing, the write will be failed.
So the test needs to make sure that the content-protection is disabled
before requesting for an HDCP version via debugfs.


[1] https://patchwork.freedesktop.org/patch/358240/

Ankit Nautiyal (2):
  drm/i915: Add support for considering HDCP ver requested via debugfs
  drm/i915: Add a new debugfs to request HDCP version

 .../drm/i915/display/intel_display_debugfs.c  | 98 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    | 10 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 +-
 3 files changed, 114 insertions(+), 2 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
