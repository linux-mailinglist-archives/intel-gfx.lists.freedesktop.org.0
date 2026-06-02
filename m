Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JfzAJBBSH2o3kQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 23:58:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA89632448
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 23:58:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=dIIxaNJm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FEB113B50;
	Tue,  2 Jun 2026 21:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04983113B47;
 Tue,  2 Jun 2026 21:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O8PrixyJlh3bL7brTHTRmC6t8kgBXRWn3cbWulgmC44=; b=dIIxaNJmzt6o+tpzvyj7QjK/es
 R+DDw8S9HoXOg5mK/loo885OggIbcMO5vw1/Ahi73dYJm9JbUhDmjEY8laFraZej5V+tVoN45j4ii
 bnm0ModbfP7k8adkLDIg2cjx4hMnIL9UfxQOnL04u2aZsU9Ya1Y2XsGenur5gDEhm8owIvkd55a75
 6dGYd71E3afovYRBKUA0dmeNkA1aQCGrvbrMf/95gu0+dBITsglc7vw8f1I4hyqs7zCI9PXMJiT+o
 7q0AC44TX1J74ntDfqKFI8Iq4Ke+6ihWLqdbFIk2BJpYzEIXLEK7WpanjHOqCm2OHiCkjlKPnkLca
 NAVT1jNA==;
Received: from [79.117.146.159] (helo=killbill.home)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wUX7R-00BuCE-Vn; Tue, 02 Jun 2026 23:57:54 +0200
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
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v8 0/4] drm/atomic: track individual colorop updates
Date: Tue,  2 Jun 2026 23:53:52 +0200
Message-ID: <20260602215743.914265-1-mwen@igalia.com>
X-Mailer: git-send-email 2.53.0
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
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,emersion.fr,collabora.com,bootlin.com,linux.intel.com,kernel.org,igalia.com,redhat.com,ffwll.ch,suse.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,kde.org,collabora.com,linux.dev,lists.freedesktop.org,igalia.com,oss.qualcomm.com,kernel.org,gmail.com,poorly.run,somainline.org,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3EA89632448

This is a partial of [1], only with patches related to individual
colorop update tracking. I.e., I'm detaching from here fixes regarding
attempts of changing colorops that are not part of an active color
pipeline, or in the transition between active and inactive color
pipelines.

This series focus on tracking updates for each individual color
operation, allowing the driver to react accordingly. This new version
just adds r-b and Fixes tag accordingly. During the Display Next
Hackfest we also agree that it should be applied to drm-misc-fixes and
it can be backported by AMD after.

- Patches 1 and 2 make lut1d_interpolation and lut3d_interpolation
  colorops correctly behave as mutable, handling their changes via
  drm_colorop_state.

- Patches 3 and 4 track colorop updates of a given plane color
  pipeline by setting plane `color_mgmt_changed` flag, similar to what
  is done for tracking CRTC color mgmt property changes with CRTC
  `color_mgmt_changed` flag. The flag also tracks when a different color
  pipeline is set to a given plane, but doesn't consider as a change
  when the same color pipeline value is set to the plane COLOR_PIPELINE
  prop. That way, the driver can react accordingly and update their
  color blocks. As interpolation properties become mutable, they are
  also tracked here.

It also fixes shaper/3D LUT updates when changing night mode settings on
gamescope with a custom branch that supports `COLOR_PIPELINE`:
- https://github.com/ValveSoftware/gamescope/pull/2113

v1: https://lore.kernel.org/dri-devel/20260318162348.299807-1-mwen@igalia.com/
Changes:
- include linux types for function's bool return type (kernel bot on MSM
  driver)
- add Harry's r-b tags

v2: https://lore.kernel.org/dri-devel/20260323131942.494217-1-mwen@igalia.com/
Changes:
- [NEW] two patches to only consider colorop updates from active color
  pipelines (Chaitanya)
- [NEW] make lut interpolation properties mutable + Alex H patch for
  kernel docs
- track lut(1/3)d_interpolation updates (Chaitanya)
- rebase changes according to new patches

v3: https://lore.kernel.org/dri-devel/20260403135909.214378-1-mwen@igalia.com/
Changes: rebase on drm-misc-next

v4: https://lore.kernel.org/dri-devel/20260501132527.522320-1-mwen@igalia.com/
Changes: fix kernel doc (kernel bot)

v5: https://lore.kernel.org/dri-devel/20260506192633.16066-1-mwen@igalia.com/
Changes:
- rebase on drm-misc-next
- fix kernel-doc and correctly reword (atomic) state to plane_state (Chaitanya)
- reject inactive colorop updates in atomic check time, instead of
  during property's setup, to avoid ordering dependency as pointed out by Chaitanya
- use `|= replaced` for consistency (Chaitanya)
- add Chaitanya's r-b tags to patches 1,3-5

[1] v6: https://lore.kernel.org/dri-devel/20260519211111.228303-1-mwen@igalia.com/
Changes:
- detach patches that implement individual tracking from those related
  to inactive colorop updates.

v7: https://lore.kernel.org/dri-devel/20260525100524.304263-1-mwen@igalia.com/
Changes:
- add Fixes and r-b tags

Alex Hung (1):
  drm/colorop: Remove read-only comments from interpolation fields

Melissa Wen (3):
  drm/colorop: make lut(1/3)d_interpolation props correctly behave as
    mutable
  drm/atomic: track individual colorop updates
  drm/amd/display: use plane color_mgmt_changed to track colorop changes

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  6 +-
 drivers/gpu/drm/drm_atomic.c                  |  4 +-
 drivers/gpu/drm/drm_atomic_uapi.c             | 68 +++++++++++++++----
 drivers/gpu/drm/drm_colorop.c                 | 16 ++++-
 include/drm/drm_atomic_uapi.h                 |  4 +-
 include/drm/drm_colorop.h                     | 34 +++++-----
 6 files changed, 93 insertions(+), 39 deletions(-)

-- 
2.53.0

