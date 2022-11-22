Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 907A3633C1C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE1510E3F2;
	Tue, 22 Nov 2022 12:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30A710E3E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118944; x=1700654944;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vmIZDyJO8yp7WLqO8mKvpZ+3tUW+YOm0ttL/UhXqADg=;
 b=fF5uMsBJ3QagEE/0A5n10rShPz8GAmkv4S4qp7DpHv1yDG0yWWTCOCbr
 DDIQdUYdLJP+XULDd9Y8WH6ykmbplecHHhxqzKRlVwfjuJMP3N6utKTXW
 XqCv7feV7/WDVOMT7wtqEacAbexr8e8qIlCtRkBUzdRYZaHzGzV1/oyFM
 bXcZ0vWnavA2QzO63MbK9YmounyIb/55IbGd8vb/sEkvyhSMGwNCprGX8
 EEy58UPji+T7OJBtT0v48WNG2OJu/46LFFus3Epy9nxa6+DpoQwo0S2+6
 gWfBv10v7LuVaj8gC4GFwRAqY9f9/exiTaWbyWGAXVyrr6OIzSp2KLbUA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="312501067"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="312501067"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395932"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395932"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:25 +0200
Message-Id: <20221122120825.26338-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/dvo: Log about what was detected
 on which DVO port
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

Currently it's not 100% obvious which DVO encoder chip was
found on which port. Leave a slightly better trace in log.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 4a4b98bfce29..4aeae0f3ac91 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -525,6 +525,10 @@ void intel_dvo_init(struct drm_i915_private *i915)
 			 intel_dvo_encoder_type(&intel_dvo->dev),
 			 "DVO %c", port_name(encoder->port));
 
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] detected %s\n",
+		    encoder->base.base.id, encoder->base.name,
+		    intel_dvo->dev.name);
+
 	if (intel_dvo->dev.type == INTEL_DVO_CHIP_TMDS)
 		connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
-- 
2.37.4

