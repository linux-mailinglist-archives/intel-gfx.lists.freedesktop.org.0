Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E5A95F751
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 19:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D4710E25D;
	Mon, 26 Aug 2024 17:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953A810E267;
 Mon, 26 Aug 2024 17:01:20 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v6 0/2] drm/xe: Align all VRAM scanout buffers to 64k physical
 pages when needed.
Date: Mon, 26 Aug 2024 19:01:14 +0200
Message-ID: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Another spin.

Maarten Lankhorst (2):
  drm/i915/display: Plane capability for 64k phys alignment
  drm/xe: Align all VRAM scanout buffers to 64k physical pages when
    needed.

 drivers/gpu/drm/i915/display/intel_fb.c  | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fb.h  |  2 ++
 drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
 drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
 drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
 5 files changed, 47 insertions(+), 2 deletions(-)

-- 
2.45.2

