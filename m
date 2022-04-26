Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3675510B8A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 23:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE9110E0D0;
	Tue, 26 Apr 2022 21:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A9D10E0D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 21:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651009972; x=1682545972;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZZspD1TKFfsbOOpsJ0BcXFfzGc2zMpvBW+AdlFdThCk=;
 b=FCJiGY/ozZN/+hzw9gENej4DcfLqZ7uluM/0XUnFc9VjLLUilw8MRUPy
 4bwf9Mhbk0ZK0B4oOfbgCpW7Saz+d6t9w/zrw23v4U+AjSLSOHEBlHHCQ
 RzJfwC69DPFzaBgA37N2ZO6rdQvmfrQUJ2klAF7aCBVLVkamLeczfduUz
 MtqNAz//sT7eTlH9Ek3jyg7LDbOF7PfB88DL8RjcEAY0NEs+lyJvjlAgx
 t0sv1BtBZZGNSuhJQAaW/m5w6RT3XzaodsmUCMzSDVz6RapuylG1JiD9o
 IKjIaig01Vhhe41P59o8fLk+JzPjl4kx+Am2AlbyKAjjTS8ALMMaWHmIt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="328673678"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="328673678"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 14:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="539079469"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 26 Apr 2022 14:52:52 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 14:52:52 -0700
Message-Id: <20220426215252.3492643-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.1.2 for DG2
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

The following changes since commit ac21ab5d1de0de34201c90d32eee436f873d1e5b:

  Mellanox: Add lc_ini_bundle for xx.2010.1006 (2022-04-25 07:36:16 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v70.1.2_dg2

for you to fetch changes up to 89ae5eb20f65752db6a3e38b9a69144f19540567:

  i915: Add GuC v70.1.2 for DG2 (2022-04-26 13:27:47 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.1.2 for DG2

 WHENCE                  |   3 +++
 i915/dg2_guc_70.1.2.bin | Bin 0 -> 365568 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_guc_70.1.2.bin
