Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F16F5B6CB9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 14:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A01F10E6B6;
	Tue, 13 Sep 2022 12:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686AB10E6B3;
 Tue, 13 Sep 2022 12:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663070704; x=1694606704;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r4YVqVbxKtxbldhRAbIlX10eWT7vA8Er7xE+N6cE62k=;
 b=kmqTUTvzH4B3gGi0+pVIHrlOk7t4nVDOIzi3fomcvl8K3y8iGZSrf5MP
 UuiJOmz6ezxZHGPgUJoJhUbdDsnQZBZgapnWbOa9F2rMY+tCNklA7+epQ
 pipqvhczQ2Uj3gLSD8PMAjrblUp4Zb6ugxv1pZUPZ11PR0+uA/fab9BqE
 yVxllRzQx4V+MXPSksoOHxFpgfPM7nLKdJCRWzt2gzj3Ecw4ZYZ6IHN2X
 irj1iucWj4oILDOVuvCbm/Jv7GItYz7mQh8ViGsROaxmwMiPfVFTm90TF
 fIgX/kHeUfnSSfzvBKuhdI5cRkbV0NIBQZELoWsEySkxi6365fUqIwPS+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="281136797"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="281136797"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678538720"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 13 Sep 2022 14:04:37 +0200
Message-Id: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/4] tests/core_hotunplug: A couple of
 fixes and enhancements
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Janusz Krzysztofik (4):
  tests/core_hotunplug: Free mem allocated by igt_audio_driver_unload
  tests/core_hotunplug: Also unload audio before device unplug
  tests/core_hotunplug: Don't apply i915 workarounds on other platforms
  tests/core_hotunplug: Select health checks for initially detected
    chipset

 tests/core_hotunplug.c | 57 +++++++++++++++++++++++++++++++-----------
 1 file changed, 43 insertions(+), 14 deletions(-)

-- 
2.25.1

