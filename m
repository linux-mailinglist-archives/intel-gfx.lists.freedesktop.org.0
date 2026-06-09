Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M+sPGSkbKGot+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0477C660C2D
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=kQ+kUgOr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=linux.dev
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD9210E34C;
	Tue,  9 Jun 2026 13:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 323 seconds by postgrey-1.36 at gabe;
 Tue, 09 Jun 2026 06:20:48 UTC
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com
 [91.218.175.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2F010E070
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 06:20:48 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1780985712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=i2jpIDCVnNVhXSYDVvdDiQ1s+6wApppzolFVa3ePcBA=;
 b=kQ+kUgOrV6W6Jc16Kii3uxt27H6tnGH4ZT13H/tGloTnC2pxAr0+1e0lN87mGDlSsCwwUT
 byRLJdWy+OF38KcDXWI7VaMSELJjoswljJztiskoxvxrLRlYswbpJIeHHZA8qm2XiuHT4d
 nSyAaMFF4R+0aR7kWu7ve4uMSn0m2lc=
From: Kaitao Cheng <kaitao.cheng@linux.dev>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Muchun Song <muchun.song@linux.dev>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?UTF-8?q?Christoph=20B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 Eddie James <eajames@linux.ibm.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Davidlohr Bueso <dave@stgolabs.net>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Josh Triplett <josh@joshtriplett.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Waiman Long <longman@redhat.com>,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Christian Brauner <brauner@kernel.org>,
 David Howells <dhowells@redhat.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Kaitao Cheng <kaitao.cheng@linux.dev>, Kaito Cheng <chengkaitao@kylinos.cn>
Subject: [PATCH v2 00/14] list: Prepare entry iterators to cache cursor state
Date: Tue,  9 Jun 2026 14:13:33 +0800
Message-ID: <20260609061347.93688-1-kaitao.cheng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 09 Jun 2026 13:54:41 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,intel.com,redhat.com,lists.linbit.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org,linux-foundation.org,infradead.org,kernel.org,bootlin.com,linux.dev,kylinos.cn];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:muchun.song@linux.dev,m:philipp.reisner@linbit.com,m:lars.ellenberg@linbit.com,m:christoph.boehmwalder@linbit.com,m:axboe@kernel.dk,m:o-takashi@sakamocchi.jp,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:eajames@linux.ibm.com,m:broonie@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:ldewangan@nvidia.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:skomatineni@nvidia.com,m:dave@stgolabs.net,m:paulmck@kernel.org,m:josh@joshtriplett.org,m:peterz@infradead.org,m:mingo@redhat.com,m:will@kernel.org,m:boqun@kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:Laurent.pinchart@ideaso
 nboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:longman@redhat.com,m:drbd-dev@lists.linbit.com,m:linux-block@vger.kernel.org,m:linux1394-devel@lists.sourceforge.net,m:dri-devel@lists.freedesktop.org,m:linux-spi@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-tegra@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akpm@linux-foundation.org,m:rdunlap@infradead.org,m:brauner@kernel.org,m:dhowells@redhat.com,m:luca.ceresoli@bootlin.com,m:kaitao.cheng@linux.dev,m:chengkaitao@kylinos.cn,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,linux.dev,linbit.com,kernel.dk,sakamocchi.jp,intel.com,linaro.org,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,amd.com,linux.ibm.com,foss.st.com,nvidia.com,stgolabs.net,joshtriplett.org,infradead.org,redhat.com,perex.cz,suse.com];
	FORGED_SENDER(0.00)[kaitao.cheng@linux.dev,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kaitao.cheng@linux.dev,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	RCPT_COUNT_GT_50(0.00)[63];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,kylinos.cn:email,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0477C660C2D

From: Kaito Cheng <chengkaitao@kylinos.cn>

This series prepares for, and then updates, the list_for_each_entry()
family so the common entry iterators cache their next or previous cursor
before the loop body runs.

The first 13 patches open-code loops that intentionally depend on the
old "derive the next entry from the current cursor at the end of the
iteration" behaviour.  These loops append work to the list being walked,
restart traversal after dropping a lock, skip an entry consumed by the
current iteration, or otherwise adjust the cursor in the loop body.

The final patch changes include/linux/list.h to keep a private cursor in
the common entry iterators while preserving the public macro interface.
The safe variants remain available when callers need the temporary
cursor explicitly or have stronger mutation requirements.

Changes in v2 (Muchun Song, Andy Shevchenko):
 - Drop the list_for_each_entry_mutable*() helpers from v1 and make the
   cursor change directly in the existing list_for_each_entry*() helpers.
 - Open-code special list walks that rely on updating the loop cursor in
   the body, preserving their existing traversal semantics.

Link to v1:
https://lore.kernel.org/all/20260529082149.76764-1-kaitao.cheng@linux.dev/

Kaitao Cheng (14):
  drbd: Open-code transfer log list walk
  firewire: core: Open-code topology list walk
  drm/bridge: Open-code bridge chain list walks
  drm/i915/gt: Open-code active timeline walk
  drm/i915: Open-code DFS dependency list walk
  drm/ttm: Open-code reservation list walk
  spi: fsi: Open-code message transfer walk
  spi: stm32-ospi: Open-code message transfer walk
  spi: stm32-qspi: Open-code message transfer walk
  spi: tegra210-quad: Open-code message transfer walk
  locking/locktorture: Open-code ww mutex list walk
  locking/ww_mutex: Open-code stress reorder list walk
  ASoC: dapm: Open-code widget invalidation walk
  list: Cache cursors in entry iterators

 drivers/block/drbd/drbd_debugfs.c      |  4 ++-
 drivers/firewire/core-topology.c       |  4 ++-
 drivers/gpu/drm/drm_bridge.c           |  7 ++--
 drivers/gpu/drm/i915/gt/intel_reset.c  |  4 ++-
 drivers/gpu/drm/i915/i915_scheduler.c  |  4 ++-
 drivers/gpu/drm/ttm/ttm_execbuf_util.c |  4 ++-
 drivers/spi/spi-fsi.c                  |  5 ++-
 drivers/spi/spi-stm32-ospi.c           |  4 ++-
 drivers/spi/spi-stm32-qspi.c           |  5 ++-
 drivers/spi/spi-tegra210-quad.c        |  4 ++-
 include/linux/list.h                   | 46 ++++++++++++++++++++------
 kernel/locking/locktorture.c           |  4 ++-
 kernel/locking/test-ww_mutex.c         |  4 ++-
 sound/soc/soc-dapm.c                   |  4 ++-
 14 files changed, 78 insertions(+), 25 deletions(-)

-- 
2.43.0

