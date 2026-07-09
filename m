Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vQOtIVRoT2qigAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 11:22:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA25372EDBE
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 11:22:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=0V9iBXXJ;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=ooVLJmJ0;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="CtA5mnc/";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=MLavP7Q8;
	dmarc=pass (policy=none) header.from=suse.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393A410E056;
	Thu,  9 Jul 2026 09:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0F610E67A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2026 09:22:25 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 629A675D87;
 Thu,  9 Jul 2026 09:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1783588942; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=hfZMskM5sDDVFZ3OuxK0c2st+AvczEMqa0UUs0H1OVw=;
 b=0V9iBXXJxARuBQk0rxVQW3nzcVZlMh+3OtqBVA9aepNnDcCgOhdpziWotECgtWzTVbIVNQ
 +oAizS1oGQ1sBWmQwWbg43088nlYeKnxo/a/iduSfTwIuyO9juITICc33Ao0cNXaSIq/oX
 +GFw8XAZvX95tSrhWkQmnuKEgk8KmSw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1783588942;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=hfZMskM5sDDVFZ3OuxK0c2st+AvczEMqa0UUs0H1OVw=;
 b=ooVLJmJ0OSHqj2o91uyRISk765GsIrKdWgfmbzM20MdQyjDec8cotP6UirzebVKt05HerM
 tvUIyk+F90u3OGBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1783588941; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=hfZMskM5sDDVFZ3OuxK0c2st+AvczEMqa0UUs0H1OVw=;
 b=CtA5mnc/bcgop6qAG8QWVw5NETlRrPeLSyYXi/HeHLXdvHNm8tBMgIO+Jrv+Xdp3h4gO9Z
 5Voybwp+7PZbRbLnx93lbZYScs20cbN9gbwT+7Ot67BajgSV7tg3iBKkGcGZYLdWC20Njg
 Vv7484bWA9QyoXXZO928SXwV77F6x8c=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1783588941;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=hfZMskM5sDDVFZ3OuxK0c2st+AvczEMqa0UUs0H1OVw=;
 b=MLavP7Q8wOIO/HAQvDa861exigfXJbSrHjqdtSxK8Zn3RxRJXyfK3h74BHmk8Jplq7oLF/
 Pn2ruVs7e5ybF7CA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C9C8D779AA;
 Thu,  9 Jul 2026 09:22:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id Ht0JMExoT2q6OQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 09 Jul 2026 09:22:20 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: lukas@wunner.de, jfalempe@redhat.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, lyude@redhat.com,
 dakr@kernel.org, deller@gmx.de
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, sashiko-reviews@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v2 0/7] vga_switcheroo,
 drm: Push fbcon handling into DRM clients
Date: Thu,  9 Jul 2026 11:15:56 +0200
Message-ID: <20260709092215.168172-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.01
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lukas@wunner.de,m:jfalempe@redhat.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:lyude@redhat.com,m:dakr@kernel.org,m:deller@gmx.de,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:sashiko-reviews@lists.linux.dev,m:tzimmermann@suse.de,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[wunner.de,redhat.com,amd.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,intel.com,ursulin.net,gmx.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:from_mime,suse.de:dkim,suse.de:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA25372EDBE

Vga_switcheroo currently invokes fb_switch_outputs() to inform fbcon
about switching of the physical outputs among framebuffer devices. But
new DRM clients to not use fbdev/fbcon and might require their own
vga_switcheroo support. Let's strictly separate them from each other.

Remove fbdev/fbcon from vga_switcheroo. Introduce a pre_switch callback
for vga_switcheroo clients to do the fbcon update. Allows for removing
all direct interactions between vga_switcheroo and fbdev/fbcon.

There are only four drivers that support vga_switcheroo: amdgpu,
radeon, i915 and nouveau. Update each of them with the new callback.
When vga_switcheroo now invokes pre_switch, each DRM driver forwards
to aquire_outputs and lets the DRM clients handle the new outputs.

At the same time, push the fbcon update into DRM's client for fbdev
emulation. Do this with the new DRM client callback acquire_outputs,
so that other clients can have their own handling of vga_switcheroo.

Also replace the existing reprobe hook with post_switch for symetry.
For nouveau, this is merely a rename of the helper function. The other
drivers dor not implement reprobe.

Tested with radeon on a notebook with Radeon HD 4225 and HD 5430.

v2:
- implement all of pre_switch in a single commit to avoid possible
  deadlock in intermediate state (Sashiko)
- fix erroneous docs (Sashiko)

Thomas Zimmermann (7):
  drm/edid: Include <linux/fb.h>
  drm/client: Add acquire_outputs callback; implement for fbdev
    emulation
  vga_switcheroo: Add pre_switch callback to client ops
  vga_switcheroo: Add post_switch callback to client ops
  drm: Implement struct vga_switcheroo_client_ops.pre_switch
  drm: Implement vga_switcheroo_client_ops.post_switch
  vga-switcheroo: Remove unused interfaces

 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c |  9 ++++-
 drivers/gpu/drm/clients/drm_fbdev_client.c | 23 ++++++++----
 drivers/gpu/drm/drm_client_event.c         | 18 ++++++++++
 drivers/gpu/drm/drm_edid.c                 |  1 +
 drivers/gpu/drm/i915/i915_switcheroo.c     | 11 +++++-
 drivers/gpu/drm/nouveau/nouveau_vga.c      | 28 +++++++++------
 drivers/gpu/drm/radeon/radeon_device.c     |  9 ++++-
 drivers/gpu/vga/vga_switcheroo.c           | 41 +++++-----------------
 drivers/video/fbdev/core/fbcon.c           |  8 -----
 include/drm/drm_client.h                   | 14 ++++++++
 include/drm/drm_client_event.h             |  3 ++
 include/linux/vga_switcheroo.h             | 29 ++++++++-------
 12 files changed, 121 insertions(+), 73 deletions(-)


base-commit: 88c6be63ac7e9238c7791977d3f496ce6623afe4
-- 
2.54.0

