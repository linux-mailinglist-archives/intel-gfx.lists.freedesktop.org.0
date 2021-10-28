Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C617443D81C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 02:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA526E584;
	Thu, 28 Oct 2021 00:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 94648 seconds by postgrey-1.36 at gabe;
 Thu, 28 Oct 2021 00:26:58 UTC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22ABF6E584
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 00:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635380817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=9dEZLdb1FUtKC/L2ePKcnQzl7BdCxyWDMDuW2kdugEs=;
 b=YZMeLyBOw6LDS10hSEqyvrAyjo5xFARSK1u4GJGjSCtL4fqseksRs/Afnld367zpGjFoLu
 hJuUbUOn9XMr88sih7wYzTS3pZjmXK62TzUWTr66ao0Jc4iqLWzJbSMxZr30d4fEt/q1Ll
 w1X9HZj9pP2aXdQITZi5QJ/9aIfCPmg=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-GV_FhOf1M_imsuDN279uVg-1; Wed, 27 Oct 2021 20:26:55 -0400
X-MC-Unique: GV_FhOf1M_imsuDN279uVg-1
Received: by mail-qk1-f199.google.com with SMTP id
 j6-20020a05620a288600b0045e5d85ca17so2748386qkp.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 17:26:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=9dEZLdb1FUtKC/L2ePKcnQzl7BdCxyWDMDuW2kdugEs=;
 b=XQtCqzFg2QlKQuryv3vxgm3OmYluJ9/crjv5vpfkDFtpqZZrXshu58zB5m6pjR8POP
 ZFXjNcQ5S70zMWKk4Dgs8bYZ2l9s0ZDVdhEX7LlG+wqTHZrwmt02Ys7B+s483EFSU60U
 gZa0cxjFK403EqF5OSA/VSnzEkGXyOeJdz/MJI4ZTLQAoDdwb/CEhD3dofQzeBxxGnuY
 R91Ld7KH1nj5BhZxQygg9TmEH8hysHsr7HLWWrvj2fBC3Up7aTfRIX203SCHznnYWOl2
 zovC9HyhW9hJnD5+uEplw37pQN1DEA3fQAMprxb6b6l4AFgESWEkQlfno9oErlZoAP/s
 JmzA==
X-Gm-Message-State: AOAM5313MZJ230I4DhtKj5/V0nd42Es3zg1Wxo/KOZdUobuIJ0kEMYZ0
 SZvHbNuxj0Zsx4nAWn3x8eq4MWtqWTSqjK40gkdKWlsNm60DrGrK5wvhkK+b8e5JGkW38TfNLH5
 vOoV1J3DqgZrgOXgJhp+V4A1FzCpJ
X-Received: by 2002:ad4:4443:: with SMTP id l3mr704430qvt.17.1635380815397;
 Wed, 27 Oct 2021 17:26:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGcXfguN67mmSIXqP1WKSOjpNQJCWBQic0MtNoyDj5ycUXgA1+VX68ieDFqK6afpDgdNlxAQ==
X-Received: by 2002:ad4:4443:: with SMTP id l3mr704404qvt.17.1635380815145;
 Wed, 27 Oct 2021 17:26:55 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id t6sm962298qkp.78.2021.10.27.17.26.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 17:26:54 -0700 (PDT)
Message-ID: <bf8e724cc0c8803d58a8d730fd6883c991376a76.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <sean@poorly.run>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org,  intel-gfx@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Date: Wed, 27 Oct 2021 20:26:53 -0400
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

topic/amdgpu-dp2.0-mst-2021-10-27:
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
10-27

for you to fetch changes up to 00f965e700ef5aa2d889e7e65c7458531d2a4bcf:

  drm/amdgpu/display: fix build when CONFIG_DRM_AMD_DC_DCN is not set (2021-
10-27 19:50:26 -0400)

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
Alex Deucher (1):
      drm/amdgpu/display: fix build when CONFIG_DRM_AMD_DC_DCN is not set

Bhawanpreet Lakha (3):
      drm: Remove slot checks in dp mst topology during commit
      drm: Update MST First Link Slot Information Based on Encoding Format
      drm/amd/display: Add DP 2.0 MST DM Support

Fangzhi Zuo (1):
      drm/amd/display: Add DP 2.0 MST DC Support

 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  29 ++
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c  |   3 +
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c  |   7 +-
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
 13 files changed, 425 insertions(+), 16 deletions(-)

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

