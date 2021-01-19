Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 720F62FB23A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:01:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E33C96E82A;
	Tue, 19 Jan 2021 07:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3526E826
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:01:34 +0000 (UTC)
IronPort-SDR: /KGAFtx+PE7TeHzUuV8Gdb3z4hUu7R5W5spzWxMFmt73tcMhiiqsGWbKKIacUBEFFwzcI6GdcW
 Wvq032R99yMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="178108406"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="178108406"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:01:30 -0800
IronPort-SDR: CvTIlfmTQszrYQbJCxNkNwWNTKbp/vcXge//OJTMfOhdqIYwHsQY6GQGBYnQ/r4aiNm0Fbgi89
 29UL7Y2f0LWg==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="500853927"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:01:29 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:16:54 +0530
Message-Id: <20210119064655.1605-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210119064655.1605-1-anshuman.gupta@intel.com>
References: <20210119064655.1605-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/hdcp: Fix WARN_ON(data->k >
 INTEL_NUM_PIPES)
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

Initialize no. of streams transmitted on a port to zero
such that intel_hdcp_required_content_stream() can
prepared the content stream after subsequemt attmept to
enable hdcp after a HDCP failure.

v2:
- Initialize k at top level instead of else branch. [Jani]

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index db8dff2eeb0a..581ccb038b87 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -53,6 +53,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	bool enforce_type0 = false;
 	int k;
 
+	data->k = 0;
+
 	if (dig_port->hdcp_auth_status)
 		return 0;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
