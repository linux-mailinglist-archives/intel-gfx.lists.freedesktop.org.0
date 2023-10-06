Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C937BBA57
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 16:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B94F10E503;
	Fri,  6 Oct 2023 14:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9C910E503
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 14:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696602925; x=1728138925;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O8C5AauBUvN2DwfoHmZBqZ0Iwta4cfbVkHqRQqRDiqk=;
 b=gBLa8Ct+stk0XQ2Lxn2ZkbIqVUUVi2X0O83DrGLvzeT86sZy1QvUJ23s
 6truy2xhOdpWITw2HJoxi0Q+4nVjxlaV0WnLhcugc2gqKIpsMJPswf5zm
 NDXVPMBPzMo7PeY1oomRIMNCd9zsgXqBEjwspxHyB1pxOUdlq/QSbPM+K
 cKANJUluP09fj3QMSnohXivkvVj96yH8YlpdPom5kMLM44bWOk5mhLWly
 sQEGUcyCUUDfMHXj8wLZclYBt/CTvn6k9rPSGq/SnCSKQa9eOO+sapSQB
 iv7I+EcD0Vt2kcrq7c/Q6Rh7JsWXvDiyEiApiiFpI0ah0MSdTGM7+Fuqe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="386587111"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="386587111"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 07:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="868369931"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="868369931"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2023 07:35:24 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 07:34:58 -0700
Message-ID: <20231006143459.47555-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.12.1
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

The following changes since commit 5105ff4b9f43ba08d0a22260d670120e53c4b667:

  Merge branch 'mlimonci/upstream-packaging' into 'main' (2023-10-04 12:35:17 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.12.1

for you to fetch changes up to 22fb3576f39769162c5da556159b72745b8570a8:

  i915: Add GuC v70.12.1 for DG2, TGL, ADL-P and MTL (2023-10-06 01:52:14 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.12.1 for DG2, TGL, ADL-P and MTL

 WHENCE               |   8 ++++----
 i915/adlp_guc_70.bin | Bin 297984 -> 342528 bytes
 i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
 i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
 i915/tgl_guc_70.bin  | Bin 285888 -> 329984 bytes
 5 files changed, 4 insertions(+), 4 deletions(-)
