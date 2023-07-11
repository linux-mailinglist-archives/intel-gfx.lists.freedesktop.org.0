Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E5974F858
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 21:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D5D10E0CA;
	Tue, 11 Jul 2023 19:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C42D410E0CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 19:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689103421; x=1720639421;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y/Tqlp3zHlkwI/JSUW84Oir9CBllUdNOkfFadvX85Zc=;
 b=LhOyOYWCIxA1xx4qXooT6f8inVc2o8uJAtsITBGyDzbKNF1/As27z3yO
 WeREk9MITqlHQwv6N0OmIVqWKTngGPhZYPZLqZGk3rM2svYydjO2qD6NB
 n92L9Q37ilHdiD+N0066G8yQJ8Nr8zIeMP9VoTaGmnsmH1GXfE+XcA7FT
 kBCZiC1cgWSczilJy1qakQr5Nuj49403UyeHWFenPvwT5xTjtVCEPTxen
 qxzT+NsmNhRcpArnOQm9LpRWbvMq8OLY1nLLrDZ0jRI1FjAroQsQ+raGu
 0y95Yw866628AFN6SqIk1av1XYKyV4A37Eg661K8/8+ULlaQgxf3muuwx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="345028187"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="345028187"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 12:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="834825387"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="834825387"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 12:23:40 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jul 2023 12:23:31 -0700
Message-ID: <20230711192331.4137073-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GuC 70.8.0 and HuC 8.5.1 for MTL
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

The following changes since commit d3f66064cf43bd7338a79174bd0ff60c4ecbdf6d:

  Partially revert "amdgpu: DMCUB updates for DCN 3.1.4 and 3.1.5" (2023-07-07 15:24:32 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_guc_70.8_huc_v8.5.1

for you to fetch changes up to e05f81327fdf25f8c5508afdc1b0d3e2862a1663:

  i915: update to GuC 70.8.0 and HuC 8.5.1 for MTL (2023-07-11 12:01:10 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: update to GuC 70.8.0 and HuC 8.5.1 for MTL

 WHENCE               |   4 ++--
 i915/mtl_guc_70.bin  | Bin 303936 -> 308032 bytes
 i915/mtl_huc_gsc.bin | Bin 565248 -> 569344 bytes
 3 files changed, 2 insertions(+), 2 deletions(-)
