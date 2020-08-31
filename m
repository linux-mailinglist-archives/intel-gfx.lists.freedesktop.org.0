Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4C725847B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 01:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AB06E544;
	Mon, 31 Aug 2020 23:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC576E42C
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 23:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598917144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=n5R+f1PNBorU/jsUkdeV70NC+z+cmxf6ppfqklZypiw=;
 b=P+OzyJ3tlcqIGjHQ555Hlrsra7u8a7arkT/Zszvh5v/G5qgkXWhTBPFDdj5gpsCvbDYb0T
 MefJMVYnLJrFj+KttVf4pwtzE1+G9u5uEOYDjViCwvqhzmW87/l3k7hqcLMEot0GVOSnjq
 ulkUkNqPu53o/XVIm8TSA/URcubsMSY=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-53-KDPp9AorMAOKNyFBrhTRNQ-1; Mon, 31 Aug 2020 19:39:00 -0400
X-MC-Unique: KDPp9AorMAOKNyFBrhTRNQ-1
Received: by mail-qt1-f199.google.com with SMTP id e14so7248659qtm.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 16:39:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=n5R+f1PNBorU/jsUkdeV70NC+z+cmxf6ppfqklZypiw=;
 b=L8sFNb0AZJfc5ooKt2CQovX5rkEWn2RiXz9XAZlnrH3svPDbejdvMZRH3Ill0qNbfA
 9S23K29AAQ371zi8mGJNmqbqVnY45Gehjzz6wUmObD6Gk6f46k2OIrpnCggthkFYwAtl
 kS0xlMwwbknAiJjF8cQqk4NnYdQthv1MZoN74oVfirDn4Fg6I8a1YUNMOYxgLLGSe/2p
 s6VBbHKZ19xfG2Nlk1RRlhQ1yqImAh57E+tLXZuTBA2NZZd87nuS1nX5pUdrRpfLLJDW
 WnDydQsVAlq+BzRgDgM+/dSKvxvyx5l8XGLLeLyuDhvjgEHVe8tsmeuHAOHJ4RaJnt7F
 nl1g==
X-Gm-Message-State: AOAM531klF3UxG93R9qjXJQySjDyxSqN1qQqpyhwlWyJBzM730ho6j34
 AgReh+z78dqtR6RkKYUHYhe7gn84yjZwu9EMSrGjGDd4Fj1cd2i8H8qGYW/Ecpw+NiMfXtdJssK
 xPFYqjaSIUSggV814Y3AAYnzhpYyq
X-Received: by 2002:a37:5703:: with SMTP id l3mr3335473qkb.125.1598917140398; 
 Mon, 31 Aug 2020 16:39:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyh2vGecgFDzmMhCpTudfXK9+M8MKeOUjCbJMZN6KO19xGuqD62k3eaBxVpoVpy94NLr3TYtg==
X-Received: by 2002:a37:5703:: with SMTP id l3mr3335457qkb.125.1598917140142; 
 Mon, 31 Aug 2020 16:39:00 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id v18sm7271596qtq.15.2020.08.31.16.38.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 16:38:59 -0700 (PDT)
Message-ID: <11e59ebdea7ee4f46803a21fe9b21443d2b9c401.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 31 Aug 2020 19:38:57 -0400
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PULL] topic/nouveau-i915-dp-helpers-and-cleanup
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

topic/nouveau-i915-dp-helpers-and-cleanup-2020-08-31-1:
UAPI Changes:

None

Cross-subsystem Changes:

* Moves a bunch of miscellaneous DP code from the i915 driver into a set
  of shared DRM DP helpers

Core Changes:

* New DRM DP helpers (see above)

Driver Changes:

* Implements usage of the aforementioned DP helpers in the nouveau
  driver, along with some other various HPD related cleanup for nouveau
The following changes since commit bfacb84993eb173c0ab53ca4dd6180f76f4dc176:

  drm: virtio: fix kconfig dependency warning (2020-08-31 08:55:02 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/topic/nouveau-i915-dp-helpers-and-cleanup-2020-08-31-1

for you to fetch changes up to 79416e97dda0118b137302575a70a14259a27d7d:

  drm/nouveau/kms: Start using drm_dp_read_dpcd_caps() (2020-08-31 19:10:09 -0400)

----------------------------------------------------------------
UAPI Changes:

None

Cross-subsystem Changes:

* Moves a bunch of miscellaneous DP code from the i915 driver into a set
  of shared DRM DP helpers

Core Changes:

* New DRM DP helpers (see above)

Driver Changes:

* Implements usage of the aforementioned DP helpers in the nouveau
  driver, along with some other various HPD related cleanup for nouveau

----------------------------------------------------------------
Lyude Paul (20):
      drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()
      drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()
      drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in nouveau_dp.c
      drm/nouveau/kms/nv50-: Use macros for DP registers in nouveau_dp.c
      drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in nv50_mstm_new()
      drm/nouveau/kms: Search for encoders' connectors properly
      drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in nv50_sor_disable()
      drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling
      drm/i915/dp: Extract drm_dp_read_mst_cap()
      drm/nouveau/kms: Use new drm_dp_read_mst_cap() helper for checking MST caps
      drm/nouveau/kms: Move drm_dp_cec_unset_edid() into nouveau_connector_detect()
      drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths
      drm/i915/dp: Extract drm_dp_read_downstream_info()
      drm/nouveau/kms/nv50-: Use downstream DP clock limits for mode validation
      drm/i915/dp: Extract drm_dp_read_sink_count_cap()
      drm/i915/dp: Extract drm_dp_read_sink_count()
      drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT
      drm/nouveau/kms: Don't change EDID when it hasn't actually changed
      drm/i915/dp: Extract drm_dp_read_dpcd_caps()
      drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()

 drivers/gpu/drm/drm_dp_helper.c             | 187 ++++++++++++++++-
 drivers/gpu/drm/drm_dp_mst_topology.c       |  22 ++
 drivers/gpu/drm/i915/display/intel_dp.c     | 124 +++--------
 drivers/gpu/drm/i915/display/intel_dp.h     |   1 -
 drivers/gpu/drm/i915/display/intel_lspcon.c |   2 +-
 drivers/gpu/drm/nouveau/dispnv04/dac.c      |   2 +-
 drivers/gpu/drm/nouveau/dispnv04/dfp.c      |   7 +-
 drivers/gpu/drm/nouveau/dispnv04/disp.c     |  24 ++-
 drivers/gpu/drm/nouveau/dispnv04/disp.h     |   4 +
 drivers/gpu/drm/nouveau/dispnv04/tvnv04.c   |   2 +-
 drivers/gpu/drm/nouveau/dispnv04/tvnv17.c   |   2 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c     | 305 ++++++++++++++++------------
 drivers/gpu/drm/nouveau/nouveau_connector.c | 132 +++++-------
 drivers/gpu/drm/nouveau/nouveau_connector.h |   1 +
 drivers/gpu/drm/nouveau/nouveau_display.c   |  72 ++++++-
 drivers/gpu/drm/nouveau/nouveau_display.h   |   3 +-
 drivers/gpu/drm/nouveau/nouveau_dp.c        | 210 +++++++++++++++----
 drivers/gpu/drm/nouveau/nouveau_drm.c       |   4 +-
 drivers/gpu/drm/nouveau/nouveau_drv.h       |   2 +
 drivers/gpu/drm/nouveau/nouveau_encoder.h   |  48 ++++-
 include/drm/drm_dp_helper.h                 |  15 +-
 include/drm/drm_dp_mst_helper.h             |   3 +-
 22 files changed, 779 insertions(+), 393 deletions(-)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
