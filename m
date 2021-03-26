Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2848D34B03F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 21:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733D76E2D5;
	Fri, 26 Mar 2021 20:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543F96E2DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 20:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616791102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xb68m6KYGsgV6NvCjxxiHT+qQgrhy2yzkYL+vgeSMLM=;
 b=d0ww9fXRwwCtj3FHXN7KLZcg7iHCo4fk6GiGJ1DxFeD0BfgM4asi6Jk0nSjmJ4LYTwnxpg
 kUYVzELWR5EJ0H+z5MyUYMwIXLCw1izAqA/Q7tck/ZGpnoBRs4PFlh/RWGdo9AtIDew7Wz
 gZ1fOludY5/oi35QGrCjfLSxAB1gpSk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-T2YmfEyaOdSX-aCh9p485A-1; Fri, 26 Mar 2021 16:38:20 -0400
X-MC-Unique: T2YmfEyaOdSX-aCh9p485A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2230A501EF;
 Fri, 26 Mar 2021 20:38:19 +0000 (UTC)
Received: from Whitewolf.lyude.net (ovpn-114-133.rdu2.redhat.com
 [10.10.114.133])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 728165DDAD;
 Fri, 26 Mar 2021 20:38:18 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Fri, 26 Mar 2021 16:37:47 -0400
Message-Id: <20210326203807.105754-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH v2 00/20] drm: Use new DRM printk funcs (like
 drm_dbg_*()) in DP helpers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since it's been asked quite a few times on some of the various DP
related patch series I've submitted to use the new DRM printk helpers,
and it technically wasn't really trivial to do this before due to the
lack of a consistent way to find a drm_device for an AUX channel, this
patch series aims to address this. In this series we:

* Clean-up potentially erroneous usages of drm_dp_aux_init() and
  drm_dp_aux_register() so that actual AUX registration doesn't happen
  until we have an associated DRM device
* Clean-up any obvious errors in drivers we find along the way
* Add a backpointer to the respective drm_device for an AUX channel in
  drm_dp_aux.drm_dev, and hook it up in every driver with an AUX channel
  across the tree
* Add a new ratelimited print helper we'll need for converting the DP
  helpers over to using the new DRM printk helpers
* Fix any inconsistencies with logging in drm_dp_helper.c so we always
  have the aux channel name printed
* Prepare the various DP helpers so they can find the correct drm_device
  to use for logging
* And finally, convert all of the DP helpers over to using drm_dbg_*()
  and drm_err().

Series-wide changes in v2:
* Address most checkpatch issues ('most' as in all except for one line
  going two chars over 100 in "drm/dp_mst: Pass drm_dp_mst_topology_mgr
  to drm_dp_get_vc_payload_bw()" as this was the style in use
  previously, and 2 chars over the limit looks nicer then trying to
  line-wrap this
* Don't rewrap comments

Lyude Paul (20):
  drm/dp: Fixup kernel docs for struct drm_dp_aux
  drm/tegra: Don't register DP AUX channels before connectors
  drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
  drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late
    register/early unregister
  drm/dp: Add backpointer to drm_device in drm_dp_aux
  drm/dp: Clarify DP AUX registration time
  drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
  drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
  drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
  drm/dp: Always print aux channel name in logs
  drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
  drm/dp_dual_mode: Pass drm_device to
    drm_dp_dual_mode_set_tmds_output()
  drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
  drm/dp_dual_mode: Pass drm_device to
    drm_dp_dual_mode_get_tmds_output()
  drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
  drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
  drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
  drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using
    drm_err/drm_dbg_kms()
  drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in
    drm_dp_mst_handle_up_req()
  drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()

 drivers/gpu/drm/amd/amdgpu/atombios_dp.c      |   5 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   1 +
 .../drm/bridge/analogix/analogix-anx6345.c    |   1 +
 .../drm/bridge/analogix/analogix-anx78xx.c    |   1 +
 .../drm/bridge/analogix/analogix_dp_core.c    |   1 +
 .../drm/bridge/cadence/cdns-mhdp8546-core.c   |  12 +-
 drivers/gpu/drm/bridge/tc358767.c             |   1 +
 drivers/gpu/drm/bridge/ti-sn65dsi86.c         |   1 +
 drivers/gpu/drm/drm_dp_aux_dev.c              |   6 +
 drivers/gpu/drm/drm_dp_dual_mode_helper.c     |  68 ++--
 drivers/gpu/drm/drm_dp_helper.c               | 181 +++++----
 drivers/gpu/drm/drm_dp_mst_topology.c         | 381 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   1 +
 .../drm/i915/display/intel_dp_link_training.c |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   7 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   |  17 +-
 drivers/gpu/drm/msm/dp/dp_ctrl.c              |   6 +-
 drivers/gpu/drm/msm/edp/edp.h                 |   3 +-
 drivers/gpu/drm/msm/edp/edp_aux.c             |   5 +-
 drivers/gpu/drm/msm/edp/edp_ctrl.c            |   8 +-
 drivers/gpu/drm/nouveau/nouveau_connector.c   |  27 +-
 drivers/gpu/drm/radeon/atombios_dp.c          |   5 +-
 drivers/gpu/drm/tegra/dpaux.c                 |  12 +-
 drivers/gpu/drm/xlnx/zynqmp_dp.c              |   5 +-
 include/drm/drm_dp_dual_mode_helper.h         |  14 +-
 include/drm/drm_dp_helper.h                   |  61 +--
 include/drm/drm_dp_mst_helper.h               |   3 +-
 include/drm/drm_print.h                       |  20 +-
 29 files changed, 478 insertions(+), 384 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
