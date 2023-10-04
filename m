Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B12277B8648
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 19:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C8910E3A9;
	Wed,  4 Oct 2023 17:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF11410E3A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696439934; x=1727975934;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=782fy0/zLYncngfkwDXlrySxa7EnbUBM8e8Q8o9i2Jk=;
 b=ZdY2HAsePXbI6y4G/a+9Xu9b3WyFvA/gGF9L+mepO/V29kHVz1xuNmRu
 u/9sX4VDM6EH8tKVrEu85IgOlWzKSuhV872QLhYrPai46JMslBswYBcNG
 AvQfOtCRLE/JzJCkojWHXiNr3GgKvHQVBNNwkord9PzalfG+o06P1SqGG
 J2ygBU+X4ymalo3CIKsWXJIFpY9O8AvhMeCtaPTtovJrlCH+6eIH227sB
 ZUHThCBYpByfu7QsD3GZbztTUO5glUoqrOqviJJFi1rEH//vvi/ncM+3x
 t9kcOMYZRji6E+L7wXL6FLpJVoAzJZBWczMv3EKAc/1BNSnehsUulB5qq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="373579146"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="373579146"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 10:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="821770075"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="821770075"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 10:18:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 10:18:42 -0700
Message-ID: <20231004171842.3254063-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for PVC GuC 70.9.1
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

  git://anongit.freedesktop.org/drm/drm-firmware xe_pvc_guc_70.9.1

for you to fetch changes up to ca4d55fbc3feca49f097afc86bbdfe88a8aa82d9:

  xe: add PVC GUC 70.9.1 (2023-10-04 09:31:44 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      xe: add PVC GUC 70.9.1

 WHENCE                |   8 ++++++++
 xe/pvc_guc_70.9.1.bin | Bin 0 -> 533312 bytes
 2 files changed, 8 insertions(+)
 create mode 100644 xe/pvc_guc_70.9.1.bin
