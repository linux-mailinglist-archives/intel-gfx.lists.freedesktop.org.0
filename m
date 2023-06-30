Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C93D2743F5C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5423B10E4AF;
	Fri, 30 Jun 2023 16:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9860A10E4A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688140867; x=1719676867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+yptDg8cXTVm52Rqp9XhcopudANrsa6e05EtxvjhEg=;
 b=XDTZRdLvUxQpZQ6QE1tcuesIBurH7bTP9Y0rcKpLrbfp6+W5pkPKfofF
 tTrYm4KnDdPj/cMMfoWL0+6NvWXpMqQjRUcnU+l255KNkQvRbR7nMAE8d
 sHf1PUiW0deARdr8YyVwQKALFTuHOIWbUXc5cXk5TyyEbb0XBNkijE0sR
 eN9HVKpJzVWUqO9g+q2hE1exuSoaGYiWUmYhZLeDVxt8LFDr6qLc/Eqd0
 mfqED36eplujxxSeGAkM7LS+kLskqnpAZPlkXaq897GePs+QRjJ5htaKO
 3qKNkVvAbBFNLgEhoQOeHpU/80g35B9xDW+bQwGmM5l1aPGb4pjSHZ5Ci g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="365912597"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="365912597"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="695059469"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="695059469"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2023 08:59:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 18:59:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:58:45 +0300
Message-Id: <20230630155846.29931-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/bios: Extract
 intel_bios_encoder_port()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll have a few places where we need to do the full (incl. ICL+ DSI)
DVO port->port conversion, so extract the code for that into a helper.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ae83788177ce..c96bbbe4448e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2374,6 +2374,19 @@ dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
 	}
 }
 
+static enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *devdata)
+{
+	struct drm_i915_private *i915 = devdata->i915;
+	const struct child_device_config *child = &devdata->child;
+	enum port port;
+
+	port = dvo_port_to_port(i915, child->dvo_port);
+	if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
+		port = dsi_dvo_port_to_port(i915, child->dvo_port);
+
+	return port;
+}
+
 static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
 {
 	switch (vbt_max_link_rate) {
@@ -2613,12 +2626,9 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 {
 	struct drm_i915_private *i915 = devdata->i915;
-	const struct child_device_config *child = &devdata->child;
 	enum port port;
 
-	port = dvo_port_to_port(i915, child->dvo_port);
-	if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
-		port = dsi_dvo_port_to_port(i915, child->dvo_port);
+	port = intel_bios_encoder_port(devdata);
 	if (port == PORT_NONE)
 		return;
 
-- 
2.39.3

