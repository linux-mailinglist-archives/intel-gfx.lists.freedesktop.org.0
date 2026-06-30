Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uihsOKWBQ2r9ZQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 10:43:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BCC6E1C14
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 10:43:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=MzZetzls;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1074A10E1C0;
	Tue, 30 Jun 2026 08:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF1510E196;
 Tue, 30 Jun 2026 08:43:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782808986; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=itvu64uyYDeMZL5jzFV+h038rpP9b3MkBA8N47ZMCA7xS2YYwl7FFK2WnD/kPVQhRCmUX/jsoNSLyKtmzx34cZ6reEVIowBVU4B22kGNJ3mCGMt4Lob7vZY2r4Q8jXhkymPEIKbVojB+4RFaPgVEyGt9SvZxTzWkfHEj4LorJD4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782808986;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=dufAXSONUwo/B9hS1GnhZeSx257k/pmdLJDYuxXDvCc=; 
 b=QZgEsvn0VE3uoZuIphmBFi89Cbbl/JoTq/nLeW8HfnnS3XShSQ6ADn0aiHToyJFuTxDW8vhXcKTaTEQI5w9lOWjSVR6mJL1xAkN0xP+gAVO8r34jRNeyvD6T0Uu4I1oGMCfMlHXsd37Qo7Nh8SqxeSya0NpeLBx5+k8w9P8DgUo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782808985; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=dufAXSONUwo/B9hS1GnhZeSx257k/pmdLJDYuxXDvCc=;
 b=MzZetzlskmETFH06K+ecriOu87fICJBQrWKR1OWABCK4v7/nF8extnbCiNS4DUDW
 4vIXjFytFi5Oe8b8m+H+UlBNsClZ72VH3muSkZV/46dkUj1bAemEDPFeQA0jE3R2asx
 eMPxXtWtqmIp9+sA19w0LBAAsQI13nF5tAezeNbg=
Received: by mx.zohomail.com with SMTPS id 1782808984200397.6004567094453;
 Tue, 30 Jun 2026 01:43:04 -0700 (PDT)
From: Robert Mader <robert.mader@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 Daniel Stone <daniels@collabora.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>,
 Robert Mader <robert.mader@collabora.com>
Subject: [PATCH v1 0/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE behind
 driver feature
Date: Tue, 30 Jun 2026 10:42:25 +0200
Message-ID: <20260630084229.529682-1-robert.mader@collabora.com>
X-Mailer: git-send-email 2.54.0
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.mader@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:url,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0BCC6E1C14

From the main commit:

The client cap is currently advertised unconditionally, even for drivers that do
not support plane color pipelines. If clients supporting the later, like Wayland
compositors and drm_info, enable the client cap on sich drivers they will be
left without both color pipeline and the legacy properties COLOR_ENCODING and
COLOR_RANGE, effectively breaking YUV->RGB conversion support.

Add a new driver feature and guard the client cap behind it, allowing
plane color pipeline and legacy YUV->RGB support to co-exist.

In case of VKMS make the client cap depend on the enable_plane_pipeline.

The series can be easily tested with drm_info >= v2.10.0 and VKMS. Without the
enable_plane_pipeline option - currently the default - the legacy flags
COLOR_ENCODING and COLOR_RANGE should be advertised, just like older drm_info
versions.

---

Related series actually implementing the color pipeline replacement for the
legacy flags:
https://lists.freedesktop.org/archives/dri-devel/2026-June/575655.html


Robert Mader (4):
  drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE behind driver feature
  drm/amdgpu: Add DRIVER_PLANE_COLOR_PIPELINE driver feature
  drm/i915: Add DRIVER_PLANE_COLOR_PIPELINE driver feature
  drm/vkms: Add DRIVER_PLANE_COLOR_PIPELINE driver feature

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 2 +-
 drivers/gpu/drm/drm_ioctl.c             | 2 ++
 drivers/gpu/drm/i915/i915_driver.c      | 2 +-
 drivers/gpu/drm/vkms/vkms_drv.c         | 6 +++++-
 include/drm/drm_drv.h                   | 6 ++++++
 5 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.54.0

