Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72346172B9D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:41:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506706E98B;
	Thu, 27 Feb 2020 22:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B383E6E98B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:41:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:41:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="411197101"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 27 Feb 2020 14:41:52 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:41:43 -0800
Message-Id: <20200227224143.19188-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for TGL HuC v7.0.12
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

The following changes since commit efcfa03ae6100dfe523ebf612e03c3a90fc4c794:

  linux-firmware: Update firmware file for Intel Bluetooth AX201 (2020-02-24 07:43:42 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware tgl_huc_7.0.12

for you to fetch changes up to 72ba41e2b986704f69e87759a43712bdc164996a:

  i915: add HuC firmware v7.0.12 for TGL (2020-02-27 14:03:33 -0800)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add HuC firmware v7.0.12 for TGL

 WHENCE                  |   3 +++
 i915/tgl_huc_7.0.12.bin | Bin 0 -> 530368 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/tgl_huc_7.0.12.bin
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
