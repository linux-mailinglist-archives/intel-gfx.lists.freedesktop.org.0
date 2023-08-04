Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097917703E4
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 17:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1169F10E71E;
	Fri,  4 Aug 2023 15:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62EA10E71E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 15:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691161541; x=1722697541;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K+FGl4ADB5mCLQXYeCRL3D2w8Ff1FBLmnYs9GxrBjfo=;
 b=JvppQXhjMW92v6g6ixuHs4OHjrvMX4fnHgP1FZqKz1MkqWOBFOcgDcdY
 r9XhL+0hGcDYWp5GAg5CR7DjCLg9Wq1tcdWL+lXqMohs1QLK8JU+hjJRt
 7A12dZQxrj5mZpYjIk+3TuXopuMEctM/pP49bIo1xx5GzjdNvyfjgf1Yj
 r14xjMHJmzyIEX5kWu7Ou27fgObNVdS0bT1U6i3tdof9YApmUg0X6HE2A
 kvsJ85u/QqaB/9JHReTZhm6nnSLjjM9+u5xuIHJtYlRtbxyAMBxwY63Ay
 6WN7Ql6UCArr7mnMUufWrbxW+IGuo4dNy8+KAap6pZRMMbNxzrwqUsJwa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="355107157"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="355107157"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="733277036"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="733277036"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:05:12 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 08:05:01 -0700
Message-ID: <20230804150501.899486-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for PVC FWs for Xe
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

Re-sending because the CI scripts had an issue with the xe folder the
first time around.

The following changes since commit 253cc179d849fc82489773b2b553a49858d8725f:

  amdgpu: Update DMCUB for DCN314 & Yellow Carp (2023-07-31 11:22:02 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware xe_pvc

for you to fetch changes up to 3b72a71413f8ef76c76e1dbff0273ac3b77f68da:

  xe: add PVC guc 70.6.4 and 70.8.0 (2023-07-31 14:16:51 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      xe: add PVC guc 70.6.4 and 70.8.0

 WHENCE                |  11 +++++++++++
 xe/pvc_guc_70.6.4.bin | Bin 0 -> 525120 bytes
 xe/pvc_guc_70.bin     | Bin 0 -> 533312 bytes
 3 files changed, 11 insertions(+)
 create mode 100644 xe/pvc_guc_70.6.4.bin
 create mode 100644 xe/pvc_guc_70.bin
