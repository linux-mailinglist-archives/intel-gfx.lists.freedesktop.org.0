Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A942C4A9E4B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 18:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB11410EF17;
	Fri,  4 Feb 2022 17:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384C810EF0C;
 Fri,  4 Feb 2022 17:48:15 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  4 Feb 2022 18:48:06 +0100
Message-Id: <20220204174809.3366967-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/3] drm/helpers: Make the suballocation
 manager drm generic.
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
Cc: Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The suballocation manager itself is not dependent on any implementation detail,
and can be made generic. I want to potentially use it inside i915, as it looks
like a clean implementation to do so. :)

Looking for feedback and some testing, as I don't have a amdgpu/radeon myself.
Only compile tested so far, so some stupid bugs may remain.

Maarten Lankhorst (3):
  drm: Extract amdgpu_sa.c as a generic suballocation helper
  drm/amd: Convert amdgpu to use suballocation helper.
  drm/radeon: Use the drm suballocation manager implementation.

 drivers/gpu/drm/Makefile                   |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu.h        |  29 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c     |   5 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.h |  21 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c     | 320 +---------------
 drivers/gpu/drm/drm_suballoc.c             | 424 +++++++++++++++++++++
 drivers/gpu/drm/radeon/radeon.h            |  55 +--
 drivers/gpu/drm/radeon/radeon_ib.c         |  10 +-
 drivers/gpu/drm/radeon/radeon_object.h     |  23 +-
 drivers/gpu/drm/radeon/radeon_sa.c         | 314 ++-------------
 drivers/gpu/drm/radeon/radeon_semaphore.c  |   6 +-
 include/drm/drm_suballoc.h                 |  78 ++++
 12 files changed, 595 insertions(+), 694 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_suballoc.c
 create mode 100644 include/drm/drm_suballoc.h

-- 
2.34.1

