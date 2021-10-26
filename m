Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7B043A9BC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 03:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC936E1F2;
	Tue, 26 Oct 2021 01:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B3E6E1F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 01:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635211817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=tgXMA3BrRhOniqxXRIBV1pJtvUVvtvT46cVR8aAsSEQ=;
 b=aUafzLPwDYab+bat/3L3EUbqbaXeZsXTBKyYLxpY2/EsNTe4rGcOBhSfPyoKxx0J9rlCwF
 t6ed2xO5IO/d92Phcw39//35n0fC4TMe+Q8L2BF+PFymImvA2S+Bc4l1menbkWGa1Hsopn
 DggasnXAtGoMNDYvSRvFCpqk7UgYWCM=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-551-nY6_5XKsOsWImRQYJuaLmA-1; Mon, 25 Oct 2021 21:30:16 -0400
X-MC-Unique: nY6_5XKsOsWImRQYJuaLmA-1
Received: by mail-qt1-f198.google.com with SMTP id
 l14-20020ac8458e000000b002a7829805b8so6758281qtn.22
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 18:30:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=tgXMA3BrRhOniqxXRIBV1pJtvUVvtvT46cVR8aAsSEQ=;
 b=7N5eTOaVZb0+jGTKiVqV8xeqzpx+M3+q81n4MfGDw5iANGFner9Ct0svnKWfr7ZFk4
 GV5nLy0ll/xPYvN/nY2UGbc22kIQp3ZmmziMnpqykVswD4ZuST4/vWGik8jJfpTAXFMd
 lwFS4QYQ8UY8ZjC47CvpOZpb2723Gw7pDRRkR/ZZFeHZEtQsWHQI815i+WQIgAvonQc5
 lQeDbA3SQgNsOg0Jfs7QOWyUIseGSkhUo44vYOWV6Daem5SRd1xmAipnOkzL9MGJhIHb
 ZwBzu5eazZGqyAi1boJBsD0Sspm/STLhfp5c9Hs6LtkR4I3+rF0m62PvP3+nQjFz3d2x
 oRvg==
X-Gm-Message-State: AOAM530ckWkfOa1Tx2UbmyBFK2seluRBS9m6cLV7ldY7ogqIjVbcp1m0
 1Tz0+Fx8j5eSxe6Zvb69ACNoQgaUSy/kod423HeDTUt9E1Ypd4i3k9Y2IHCjxB9+2TxElryaJ7E
 FqgtmR2e1MlTVpGxPnz3mlOFJFtCl
X-Received: by 2002:a05:620a:4621:: with SMTP id
 br33mr14286637qkb.436.1635211815865; 
 Mon, 25 Oct 2021 18:30:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFScchRf0T8WqzucShcSUH6rIDZE5L50dgnvYrs/YJkClN+IHMF49zWA6iuJF9H4xehg+inA==
X-Received: by 2002:a05:620a:4621:: with SMTP id
 br33mr14286612qkb.436.1635211815617; 
 Mon, 25 Oct 2021 18:30:15 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id h25sm9390294qkk.65.2021.10.25.18.30.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Oct 2021 18:30:15 -0700 (PDT)
Message-ID: <e0e3cb4ea8b6f2d08e8d07a2ad3b25a2dca4570e.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <sean@poorly.run>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org,  intel-gfx@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Date: Mon, 25 Oct 2021 21:30:14 -0400
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PULL] topic/amdgpu-dp2.0-mst
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

topic/amdgpu-dp2.0-mst-2021-10-25:
UAPI Changes:
Nope!

Cross-subsystem Changes:
drm_dp_update_payload_part1() takes a new argument for specifying what the
VCPI slot start is

Core Changes:
Make the DP MST helpers aware of the current starting VCPI slot/VCPI total
slot count...

Driver Changes:
...and then add support for taking advantage of this for 128b/132b links on DP
2.0 for amdgpu
The following changes since commit 6f2f7c83303d2227f47551423e507d77d9ea01c7:

  Merge tag 'drm-intel-gt-next-2021-10-21' of
git://anongit.freedesktop.org/drm/drm-intel into drm-next (2021-10-22 06:30:34
+1000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/topic/amdgpu-dp2.0-mst-2021-
10-25

for you to fetch changes up to 41724ea273cdda5261db4fabd6bfb1375fbc96b2:

  drm/amd/display: Add DP 2.0 MST DM Support (2021-10-25 21:21:09 -0400)

----------------------------------------------------------------
UAPI Changes:
Nope!

Cross-subsystem Changes:
drm_dp_update_payload_part1() takes a new argument for specifying what the
VCPI slot start is

Core Changes:
Make the DP MST helpers aware of the current starting VCPI slot/VCPI total
slot count...

Driver Changes:
...and then add support for taking advantage of this for 128b/132b links on DP
2.0 for amdgpu

----------------------------------------------------------------
Bhawanpreet Lakha (3):
      drm: Remove slot checks in dp mst topology during commit
      drm: Update MST First Link Slot Information Based on Encoding Format
      drm/amd/display: Add DP 2.0 MST DM Support

Fangzhi Zuo (1):
      drm/amd/display: Add DP 2.0 MST DC Support

 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  29 ++
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c  |   3 +
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c  |   5 +-
 drivers/gpu/drm/amd/display/dc/core/dc.c           |  14 +
 drivers/gpu/drm/amd/display/dc/core/dc_link.c      | 292
+++++++++++++++++++++
 drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c   |  19 ++
 drivers/gpu/drm/amd/display/dc/dc_link.h           |   7 +
 drivers/gpu/drm/amd/display/dc/dc_stream.h         |  13 +
 drivers/gpu/drm/drm_dp_mst_topology.c              |  42 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |   4 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c            |   2 +-
 drivers/gpu/drm/radeon/radeon_dp_mst.c             |   4 +-
 include/drm/drm_dp_mst_helper.h                    |   5 +-
 13 files changed, 423 insertions(+), 16 deletions(-)


