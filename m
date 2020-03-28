Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E015197BC5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE88D6E282;
	Mon, 30 Mar 2020 12:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585D06E282
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:26:14 +0000 (UTC)
IronPort-SDR: FSJLvxMh8MeMoPHa8ZP3z+kDt26WcpKB+PzCc4rsfQ20FKh4cTIdkYOsNS9kMqLQYSSbBxpPKF
 qSBP5fBF669Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 05:26:13 -0700
IronPort-SDR: ioPzs89ZO4o6Nr9M0Tp3WP9gfSVGWguzNdmivOkC3C0vdP85TecEm2XXHIBtKa9RelMZaH7uR+
 WFqEtJ4ryo+w==
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="421910585"
Received: from unknown (HELO localhost) ([10.252.36.25])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 05:26:12 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 30 Mar 2020 15:26:08 +0300
Resent-Message-ID: <87eetaghb3.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl3 with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Mon, 30 Mar 2020 10:02:29 +0300 (EEST)
Received: from orsmga007.jf.intel.com (orsmga007.jf.intel.com [10.7.209.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id DA054580297;
 Sat, 28 Mar 2020 03:42:47 -0700 (PDT)
IronPort-SDR: UI9VpvlPGBuZSov0wXp/9Lqm0l+UrbyhGFoSu0F5F2+cG9itBXn5rsQUt0AbidaOy7nFHnQfVD
 TEFtR4qdJx7FSDIfjafZUlMW7d6ZOwc1c=
Received: from fmsmga102.fm.intel.com ([10.1.193.69])
 by orsmga007-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:42:47 -0700
IronPort-SDR: 9WNoULwhVhRmuI8ImIeZNoiSBZg0tTwkA0MnXVG8LC7/n3MXiwMKt78IlJ6ftEKA0aLv+csTOP
 e2/1mI2uOPPbid0rmbuIc9EeNKz9MOoxI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EhAABVKX9ef0SAVdFmHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWgGAQELAYNpXI0ckWgmdYUKA4lNgXsKAQEBAQEBAQEBBgEBLQI?=
 =?us-ascii?q?EAQEChEKCNCQ1CA4CAwEBCwEBAQQBAQECAQUEAgIQAQEJCwsIJ4VfDINTfgE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkBASAWFQsBDQEbHQEDEhpUEQEFASI?=
 =?us-ascii?q?BEiKDBIJLAQMuBAGeJ4EEPYwnFgUBF4MABYR2ChknDWIDgTICBwkBCIEmAYd?=
 =?us-ascii?q?Mg0aBHoIagRGCZmyEFYYpBIFBAQGMMoJGiQ+XGgEGAQGCGyOXCQwdjxwNjEO?=
 =?us-ascii?q?PGZwDAgoHBg8jgTEBgg8zGiOBboFOUBgNjh2Dc4pWQDN8i1SCQwEB?=
X-IPAS-Result: =?us-ascii?q?A0EhAABVKX9ef0SAVdFmHAEBAQEBBwEBEQEEBAEBgWgGA?=
 =?us-ascii?q?QELAYNpXI0ckWgmdYUKA4lNgXsKAQEBAQEBAQEBBgEBLQIEAQEChEKCNCQ1C?=
 =?us-ascii?q?A4CAwEBCwEBAQQBAQECAQUEAgIQAQEJCwsIJ4VfDINTfgEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBFQKBASkBASAWFQsBDQEbHQEDEhpUEQEFASIBEiKDBIJLAQMuB?=
 =?us-ascii?q?AGeJ4EEPYwnFgUBF4MABYR2ChknDWIDgTICBwkBCIEmAYdMg0aBHoIagRGCZ?=
 =?us-ascii?q?myEFYYpBIFBAQGMMoJGiQ+XGgEGAQGCGyOXCQwdjxwNjEOPGZwDAgoHBg8jg?=
 =?us-ascii?q?TEBgg8zGiOBboFOUBgNjh2Dc4pWQDN8i1SCQwEB?=
X-IronPort-AV: E=Sophos;i="5.72,316,1580803200"; d="scan'208";a="124140475"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:42:44 -0700
Received: by mail-wm1-f68.google.com with SMTP id z5so14273694wml.5;
 Sat, 28 Mar 2020 03:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L56RXpvi3wqLXmQnpnBpkSpCB5vNNpwy0dv1ZPvyNjw=;
 b=ENnLkIplXI7xm0YZb+iJkkFAlyzoFiA9T93FgAzX6+uGUo7lrpo0e2plZ5Hx5Oahc5
 0liTrWu6ZAnt4HqhVsUFaTORvveegqPm18wl5A5xoBceGWyK612Mp0e1CPdxyYcrzWie
 wqfoXnHavQzBhY8scogimllnjihdLNZ1j6Atr3mbI1zx0R+Wf/Xf4aEQZRSSUAEZXi9M
 Dbyzs+MtNe+dzLZn23BvOeqfwcySAJ71l/Tc6NaD8m3DaUPOdwXWevahXgQ2VMmosDZN
 FHkkFh9iNzi7lbPjThI2uKTj3Elwi3hPaLqyWVllkXMixZEWVXItML20Xb/asR89f11r
 vF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L56RXpvi3wqLXmQnpnBpkSpCB5vNNpwy0dv1ZPvyNjw=;
 b=cyhh4Pcb/DNyBIlcAvAoo2VD16eYd3jUruDXUpsr/0SxsaljUc4H77lmsUtz7uYbcJ
 i8Bj92/DufjuhvXchbZ4V+M45KxLuS4VAHz7q9GhzmmURaL2xWrH9oCQzOX7PQgLqb/9
 fxaHbsATPrK8asVw5ujZsxma0PcI9CksNQt26WTpj4jJYBa33WUwagOo2Hms33Ajt33P
 zojMyij8vHHgK6yteJTYFx03+eRcaOKWm3X9JS4kPE+DW46noCXFTPDiBjhTZUSlIxqT
 CQWhhScyFYuNmJm6Qo+wE/CoY/tjybpQ/Qtj3Ra1R0kN6ahPOC4VwdpQ37gVzu3Pzn/+
 TL9A==
X-Gm-Message-State: ANhLgQ3xbu4SKN5B8/O09FnT9XmkDNX4wqLYGVPP2WU+7zCTeMv5UiI4
 HGVaKdE0IM3oo2Wc32aE4mk=
X-Google-Smtp-Source: ADFU+vtRDmCeMKj3R8/Jn7ooxpa6DNsnup+306p3L48gQ45tOqd3G8KubR53mjBj2kerz+EcfHfd3g==
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr3288089wmg.151.1585392102635; 
 Sat, 28 Mar 2020 03:41:42 -0700 (PDT)
Received: from xyz-CELSIUS-H720.fritz.box (x4d0a625a.dyn.telefonica.de.
 [77.10.98.90])
 by smtp.gmail.com with ESMTPSA id j5sm11809962wrr.47.2020.03.28.03.41.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 03:41:42 -0700 (PDT)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: Ramalingam C <ramalingam.c@intel.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Sat, 28 Mar 2020 11:41:00 +0100
Message-Id: <20200328104100.12162-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: HDCP: fix Ri prime check done
 during link check
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Oliver Barta <oliver.barta@aptiv.com>

The check was always succeeding even in case of a mismatch due to the
HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
---
 [v2] rebased on top of latest changes

 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0076abc63851..51a69f330588 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1561,7 +1561,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
+		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		drm_err(&i915->drm,
 			"Ri' mismatch detected, link check failed (%x)\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
