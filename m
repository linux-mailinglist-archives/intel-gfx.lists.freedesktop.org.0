Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6S72CznwR2p2hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89427049F0
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b="gvi/ch6t";
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F4C10F86F;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DB310F85E;
 Fri,  3 Jul 2026 16:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096719; x=1783701519; i=natalie.vock@gmx.de;
 bh=dOiEmPjqRcrjGrVzsNnvOBpOdQqIv/F4ix5tJlX0Tms=;
 h=X-UI-Sender-Class:From:Subject:Date:Message-Id:MIME-Version:
 Content-Type:Content-Transfer-Encoding:To:Cc:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=gvi/ch6tzX74pDDYqk7+TXrQWI8es2eAYfxtDh/mAUHUdHoftFVBjEfhDYiingT/
 uO19Wqtkpp+KWlG7yvWt5sOfOrqZumlPFCKGQdbKtsbs1m3wGh+DVqINdqN7n/cNx
 UQw2mjMrvz3QZWQFgH+h7CLtFpYX/JkgYcRToaU9nxgHstbWUmeXepdYwsZEPayAj
 g+aKFNHEMqPeR/SWZzBF0kBCbdL3rIqTtkUJG/dMdIoKgngS4p4kTfz4SewcuC823
 zr0OlMEHvpb84QAiJNnxCOr+VhkCVU6jbCbrJAm4xqlhaVRgf4dJP6oGT3MybfB/j
 ds+4Ib5b4HTQCe2SEw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8ykg-1wiSF61HFu-007wDA; Fri, 03
 Jul 2026 18:32:46 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Subject: [PATCH 00/10] Use drm_exec to lock TTM buffers, respin
Date: Fri, 03 Jul 2026 18:31:20 +0200
Message-Id: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0auEWTcQo1TqVaQEkxntCMYySYsg3
 t3YLt/i/x0SCVOCTu0g9OXEayyobgrCa4gTacZisMbeTWtqnfPirENZHG0UtEWPvhr9A5saSvQ
 WGnn7Dfvn3+njZwr5usBxnKMa8ShyAAAA
X-Change-ID: 20260703-ttm_2_drm_exec-2dbdb1fb9d43
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, 
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Provags-ID: V03:K1:qAcwaYTUzWuvjmKxyscHk11KPq/0Jr4tRMlVI42NCs1I6tXD9dE
 4Q/d5xZZ2Spg+xnIyLbBYCRImZuEX0E4zNif27P98LSDLMNElAmxY9t7DLh87I+BXyku7Br
 HQaV5UVlWZSWw+Uzf0MQmc02ZFRLMuhc7Tb+FUeyx/YNa3gkuEVHpN3yVoSkObdzbejyOS3
 iktqxVFK5eue8A/dqeZnA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:MLQNKNlu0j4=;nMD8cEi60ZUp7kHi5fU3Qzeyx/f
 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
 oikLXhmjP9Z1kwHjOmUdL+1wFX0=
X-Mailman-Approved-At: Fri, 03 Jul 2026 17:24:06 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[gmx.de,quarantine];
	R_DKIM_ALLOW(-0.20)[gmx.de:s=s31663417];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[natalie.vock@gmx.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmx.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C89427049F0

Hi all,

this is a respin of Christian's patchset to make TTM use drm_exec for
evicting buffers.

I've been investigating VRAM management for amdgpu quite a bit in recent
times, and under really strong VRAM contention I observed frequent
instabilities/random crashes that I traced back to TTM being unable to
evict buffers properly. The typical failure case was one game squatting
more or less all of VRAM while also being rather spammy with submits.
In that case, trylocking fails because concurrent submits from the game
already hold buffer locks, and since there isn't much else to evict,
allocation just fails.

The original patchset ended up fizzling out in previous attempts to
upstream it, but I think it's worth retrying to upstream this, so I took
over and rebased it on top of current drm-misc-next. Aside from
that, while testing the patchset I found two bugs causing rather random
issues ranging from kernel crashes to random GPU hangs in it, which I fixe=
d
for this respin. The two bugs were:
1. The ttm_buffer_object duplication in ttm_buffer_object_transfer did
   not alter the GEM object's driver function pointers, so the
   transferred object erroneously inherited the free() function of the
   source buffer. When the transferred object was freed, the driver's
   free function was invoked and treated the transferred TTM bo as if it
   was a driver BO. Hilarity ensued.
2. drm_exec LRU walks were missing handling for already-locked objects.
   If the incoming exec object was created without
   DRM_EXEC_IGNORE_DUPLICATES, drm_exec_lock_obj would return -EALREADY
   and the buffer would be skipped even if ctx->allow_res_evict was set
   (funkiness level: moderate).
   If the exec did have DRM_EXEC_IGNORE_DUPLICATES
   set, the buffer would be processed, and then unlocked, silently
   dropping the lock of some random object that the caller expected to
   stay locked (funkiness level: off the charts).

With those two bugs fixed, VRAM overcommit works considerably more
stable - there are no random eviction failures and related fallouts at
all anymore.

Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
Christian K=C3=B6nig (9):
      drm/ttm: replace TTMs refcount with the DRM refcount v4
      drm/ttm: remove ttm_lru_walk_ops
      drm/ttm: grab BO reference before locking it
      drm/ttm: switch to ttm_bo_lru_for_each_reserved_guarded for swapout
      drm/ttm: move zombie handling into ttm_bo_evict
      drm/ttm: use ttm_bo_lru_for_each_reserved_guarded in evict_all
      drm/xe: remove workaround for TTM internals
      drm/ttm: support using drm_exec during eviction v4
      drm/amdgpu: use drm_exec during BO validation

Natalie Vock (1):
      drm/exec: Add helper to bypass IGNORE_DUPLICATES flag

 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c           |  80 +++----
 drivers/gpu/drm/drm_exec.c                       |  52 +++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 ++-
 drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
 drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
 drivers/gpu/drm/ttm/ttm_bo.c                     | 272 +++++++-----------=
=2D----
 drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 +-
 drivers/gpu/drm/ttm/ttm_bo_util.c                |  58 +++--
 drivers/gpu/drm/ttm/ttm_device.c                 |  19 +-
 drivers/gpu/drm/ttm/ttm_resource.c               |  22 +-
 drivers/gpu/drm/xe/xe_bo.c                       |  32 +--
 include/drm/drm_exec.h                           |   2 +
 include/drm/ttm/ttm_bo.h                         |  50 ++---
 13 files changed, 296 insertions(+), 353 deletions(-)
=2D--
base-commit: 44d19b8a7548aa25cbc6ebd5f27e958f7142c36b
change-id: 20260703-ttm_2_drm_exec-2dbdb1fb9d43

Best regards,
=2D- =20
Natalie Vock <natalie.vock@gmx.de>

