Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AF07ED9D0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 03:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA2510E246;
	Thu, 16 Nov 2023 02:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B857710E246
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 02:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700103538; x=1731639538;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fmPy6Iu2XXrjKVxatvS3LKiX+PHRAXHK+EnsgBwiKdE=;
 b=R/hgQwAykxJHEURTAmywQcV8c73+Sa849gaobe1AlXMqQ/EeWJuOeiUc
 0DhmwGBBRIkkntMASZtcSx20Q/cPy4ifqWIQlyBojxkVXiG/Q2zFJEGEM
 FG30bYhSCnhAiJ+SnhhsZ+T0X7/Af+VDufnmfA/GfzHhVj6ojA3mL0QCf
 qV3bz50ny4vW8WKPJF7eaCdm4d31isYMkOH4aDj5d2BIaQZURfkYT2l52
 hlDyqnho+ms7jdG2OXmidXLivajQyio1mSyHmteUT9zJHd63g9vpw7jYv
 pFR7Aaj4UH/22iJ+tGsnfG6Q7cILb3bki+OA6nbEjV7pEP9q5PBOiXp/P A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="455291850"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="455291850"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 18:58:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="882592725"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="882592725"
Received: from wbardall-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.92.64.35])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 18:58:56 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 23:58:39 -0300
Message-ID: <20231116025840.118378-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Test MTL DMC v2.19
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

The following changes since commit 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa:

  i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34:26 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware 817619ea70a74598b4216dd25c0f49f61b09309b

for you to fetch changes up to 817619ea70a74598b4216dd25c0f49f61b09309b:

  [CI] i915: Add mtl DMC v2.19 (2023-11-15 19:36:22 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] i915: Add mtl DMC v2.19

 i915/mtl_dmc_ver2_19.bin | Bin 0 -> 52476 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 i915/mtl_dmc_ver2_19.bin


