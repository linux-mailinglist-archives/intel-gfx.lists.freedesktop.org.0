Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86539659B5D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 19:25:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F62B10E478;
	Fri, 30 Dec 2022 18:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F6A10E478
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672424705; x=1703960705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uqzhZPTviWcMO7kdesbFMVWsBKt4F8pzXf1UOcTD5tY=;
 b=Po3PnZSYiwqd6RBRbANRkZHv7pCQjtdfkqNzcUiiMd2NV64enpmB6L9O
 6K2mV75yQCm5QdfAhHxU3ECtz2zuwYY31AjOgDnwR2VoMvNMwQlF/NqgC
 AypRNixPaNmp8rHaxbzsc7i2tmR1xTw0ZQ7YCsqdIw12cyRIteQtFqlci
 xJZ7mcQTrofeUjeGOkQPWabaJVjAeMecxaiV0cjkFQE5P/JnshpJKL18e
 z6FVqiG4Aoujvvoev1EazPgBFy3nNoeu2L41cK8aob1YBA28OQRl9pIYt
 Ao9rlghu9Gqo8bXxi+KJ5V0gqkFS5B95bKhHTQiTD1DGZVmrhDwt60D7l g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="300929448"
X-IronPort-AV: E=Sophos;i="5.96,288,1665471600"; d="scan'208";a="300929448"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 10:25:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="828024085"
X-IronPort-AV: E=Sophos;i="5.96,288,1665471600"; d="scan'208";a="828024085"
Received: from vramamur-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.115.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 10:25:01 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Dec 2022 15:24:21 -0300
Message-Id: <20221230182422.29680-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/1] drm/i915/dmc: Make firmware loading
 backwards-compatible
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series changes DMC loading to be partially backwards-compatible by
removing version checking. Future patches in linux-firmware should start using
unversioned filenames and we will gradually adapt i915 to use them.

For platforms already supported, the change to unversioned paths will require a
fallback mechanism (alternatively load from versioned paths) to avoid
regression. Let's do that when the time comes.

This version differs from v3 in that we are postponing reorganization of macros
and implementation of the fallback mechanism to when we need it.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Gustavo Sousa (1):
  drm/i915/dmc: Do not require specific versions

 drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
 drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
 2 files changed, 36 deletions(-)

-- 
2.39.0

