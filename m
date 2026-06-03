Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ONYjJjntH2oVsgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 11:00:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCE3635F0B
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 11:00:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=CSwxv78H;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0302D113C6C;
	Wed,  3 Jun 2026 09:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1FB113C6E;
 Wed,  3 Jun 2026 09:00:34 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 6F850C62216;
 Wed,  3 Jun 2026 09:00:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 8E2B05FD24;
 Wed,  3 Jun 2026 09:00:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 819EC10888413; 
 Wed,  3 Jun 2026 11:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1780477229; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding; bh=7Ps8c5Pf/q4KonzIzGtVuavWdKey0/RYtJqxkkHgYGE=;
 b=CSwxv78HfY6ST3O/alIYSifZe4N40KbAE3LXpQ8APQkvfgfR5BVLlrC38t4B4jPnspJhyu
 ZWmjvNYZ0991xzLE6T7ZEH3iRx/7FeW1n0vk5dZ0/SQD8C+bXUF6iVVs10bAPG5vKp92/C
 9YiEhDWbQQm+aKS1vyEiskHx1Of7JEB0F/ge9Qnd3LUZYGHqYi6Dk+uJzdn/2D0torHUP9
 UFUJiEq+CTvXezu+z1HGsRO9jNjLWAUDKrJ+FX0KAAgCgSGy98xMLaZgn2tHwy29iAWm7E
 cTDyMhBvO+8+2ggTqEyDQ9ikNQmvkBAwqiFPbWgBEAF0GBNaTmOFTxFOH7tg2g==
From: Kory Maincent <kory.maincent@bootlin.com>
Subject: [PATCH 0/3] drm/i915: Fix double cleanup in error paths
Date: Wed, 03 Jun 2026 10:59:51 +0200
Message-Id: <20260603-fix_i915-v1-0-7479ff64e705@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAftH2oC/yXM3wpAMBQH4FdZ59pqtiy8iqSZg+NitCGlvbvh8
 uv354aAnjBAzW7weFKg1SXkGQM7GzchpyEZpJBaaKH4SFdHVV7wwqqhtKLSWhpI9c1jyr6rpv0
 djn5Bu797iPEBpzmSw2wAAAA=
X-Change-ID: 20260603-fix_i915-5c3d8c09662a
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>, 
 Eric Anholt <eric@anholt.net>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Kory Maincent <kory.maincent@bootlin.com>, stable@vger.kernel.org
X-Mailer: b4 0.15.0
X-Last-TLS-Session-Version: TLSv1.3
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,chris-wilson.co.uk,anholt.net,redhat.com,virtuousgeek.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[kory.maincent.bootlin.com:query timed out];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:from_mime,bootlin.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6BCE3635F0B

Several error paths in the i915 driver incorrectly invoke cleanup
functions multiple times, potentially causing double-free errors.
This series corrects these paths to ensure cleanup is performed
only once.

Testing note: Only the DisplayPort fix has been hardware tested due
to lack of available hardware for the other components.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
Kory Maincent (3):
      drm/i915/display/intel_sdvo: Fix double connector destroy in error paths
      drm/i915/display/intel_lvds: Drop redundant manual cleanup on init failure
      drm/i915/display/intel_dp: Drop redundant intel_dp_aux_fini() on init failure

 drivers/gpu/drm/i915/display/intel_dp.c   |  4 +---
 drivers/gpu/drm/i915/display/intel_lvds.c | 14 ++++----------
 drivers/gpu/drm/i915/display/intel_sdvo.c | 16 ++++------------
 3 files changed, 9 insertions(+), 25 deletions(-)
---
base-commit: e1696f1fc99dc0ff761a012230587b23dec064fb
change-id: 20260603-fix_i915-5c3d8c09662a

Best regards,
--  
Köry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

