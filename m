Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5unZE3fzJ2rR6AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 13:05:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAE065F458
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 13:05:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b="Vy/A20Fi";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9831010E28D;
	Tue,  9 Jun 2026 11:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B2410E271;
 Tue,  9 Jun 2026 11:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hdXIQx3O8t+5fRWRaEGrsm+4NQb2B1dwQl8vnIUQGso=; b=Vy/A20FiViObB/9ILejxwRsAat
 9kcmO+oqxoCf4FCdsQrKOaQkFqEGQ0hVxMXO2E8dd1pdUlQ82f7Y9vgepJmjmiX5bbXeQEdGYZD1U
 TNmhn7pm1GOG6SB0m+PrEQtVpkSWfrysYpQzxk/EntKjuQzhyWy+gQy4xTGr29jpZ6sFGdgMW54nS
 tTSYxaKGTdw6YjDWUfwGxQXZEDRGjDeh5GBAsDasm0SN35ewON4aDqbPh8ujZt9Yv3F0ea2kFlX4i
 Pxlyl3RIdo+IbHuPXZE4nct30Cok1h5F3ReijtGvP4KDIVzzKzBDvjNTRQs41lPcklHIMryzlPXFS
 xMQE8zeg==;
Received: from [79.117.146.159] (helo=killbill.home)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wWuG2-00Etww-8q; Tue, 09 Jun 2026 13:04:34 +0200
From: Melissa Wen <mwen@igalia.com>
To: airlied@gmail.com, alexander.deucher@amd.com, alex.hung@amd.com,
 christian.koenig@amd.com, contact@emersion.fr, daniels@collabora.com,
 harry.wentland@amd.com, louis.chauvet@bootlin.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, mwen@igalia.com,
 sebastian.wick@redhat.com, simona@ffwll.ch, siqueira@igalia.com,
 sunpeng.li@amd.com, tzimmermann@suse.de
Cc: Uma Shankar <uma.shankar@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Xaver Hugl <xaver.hugl@kde.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 amd-gfx@lists.freedesktop.org, kernel-dev@igalia.com,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v9 1/4] drm/colorop: Remove read-only comments from
 interpolation fields
Date: Tue,  9 Jun 2026 12:20:18 +0200
Message-ID: <20260609110420.1298352-2-mwen@igalia.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260609110420.1298352-1-mwen@igalia.com>
References: <20260609110420.1298352-1-mwen@igalia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,emersion.fr,collabora.com,bootlin.com,linux.intel.com,kernel.org,igalia.com,redhat.com,ffwll.ch,suse.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EDAE065F458

From: Alex Hung <alex.hung@amd.com>

The lut1d_interpolation and lut3d_interpolation fields and their
associated properties were marked as read-only, but userspace
can set them via drm_atomic_colorop_set_property().

Fixes: 7fa3ee8c0a79 ("drm/colorop: Define LUT_1D interpolation")
Fixes: db971856bbe0 ("drm/colorop: Add 3D LUT support to color pipeline")
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Alex Hung <alex.hung@amd.com>
Fixes: 9ba25915efba ("drm/amd/display: Add support for sRGB EOTF in DEGAM block")
Signed-off-by: Melissa Wen <mwen@igalia.com>
---
 include/drm/drm_colorop.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
index bd082854ca74..61cc8206b4c4 100644
--- a/include/drm/drm_colorop.h
+++ b/include/drm/drm_colorop.h
@@ -309,7 +309,6 @@ struct drm_colorop {
 	/**
 	 * @lut1d_interpolation:
 	 *
-	 * Read-only
 	 * Interpolation for DRM_COLOROP_1D_LUT
 	 */
 	enum drm_colorop_lut1d_interpolation_type lut1d_interpolation;
@@ -317,7 +316,6 @@ struct drm_colorop {
 	/**
 	 * @lut3d_interpolation:
 	 *
-	 * Read-only
 	 * Interpolation for DRM_COLOROP_3D_LUT
 	 */
 	enum drm_colorop_lut3d_interpolation_type lut3d_interpolation;
@@ -325,7 +323,7 @@ struct drm_colorop {
 	/**
 	 * @lut1d_interpolation_property:
 	 *
-	 * Read-only property for DRM_COLOROP_1D_LUT interpolation
+	 * Property for DRM_COLOROP_1D_LUT interpolation
 	 */
 	struct drm_property *lut1d_interpolation_property;
 
@@ -353,7 +351,7 @@ struct drm_colorop {
 	/**
 	 * @lut3d_interpolation_property:
 	 *
-	 * Read-only property for DRM_COLOROP_3D_LUT interpolation
+	 * Property for DRM_COLOROP_3D_LUT interpolation
 	 */
 	struct drm_property *lut3d_interpolation_property;
 
-- 
2.53.0

