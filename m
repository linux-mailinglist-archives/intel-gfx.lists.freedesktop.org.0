Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D8B95EDDD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 11:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E52610E167;
	Mon, 26 Aug 2024 09:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E30D10E178
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 09:58:56 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v5 0/2] drm/xe: Align all VRAM scanout buffers to 64k physical
 pages when needed.
Date: Mon, 26 Aug 2024 11:50:39 +0200
Message-ID: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
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

Introduce a second patch to move the changes to intel_fb instead.

Maarten Lankhorst (2):
  drm/xe: Align all VRAM scanout buffers to 64k physical pages when
    needed.
  drm/i915/display: Add function for checking 64k physical alignment
    workaround

 drivers/gpu/drm/i915/display/intel_fb.c  | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fb.h  |  2 ++
 drivers/gpu/drm/xe/display/intel_fb_bo.c |  6 ++++++
 drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
 drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
 5 files changed, 44 insertions(+), 2 deletions(-)

-- 
2.45.2

