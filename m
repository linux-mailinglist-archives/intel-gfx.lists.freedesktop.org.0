Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D17C4BBC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 09:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA3810E49D;
	Wed, 11 Oct 2023 07:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E597510E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 07:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697009352; x=1728545352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ATpEoKpO3YSPpXOfbJaXNvB0KxrAU0eMnfX4v5Ua/sI=;
 b=KfchJ/QbAqQRXefbFEd41CWC7P7r/c6tMh9XfuZmBem8/Pwo4L3pCuxB
 E2NbFoCa9BkVOWlgaE0BZS6GURlzOPJ+lNnbbLwa5puG4jYnj8nOCszzm
 dFmPWUdfAyaZZxfVrLyTFJzzsvy+AMZR+PoVCaN11X/yyBRt986a8IWlg
 w13YpSPc6Z7pEbn3h1o+u4UKM9fK7qcnW5zlYhpSOqCON3YFMXiuI8H52
 zNj++pFr0nYmpdKzxpIF4W3QDJ3v1pb4Ul6sLkDnyh0FzpjwHxxuNnKYF
 IJtruPmc8sVQ7KGLs/NrWioeoJ1ZTRometK3zXKQVo02RamrpriEbJ1vv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3191977"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="3191977"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="747352174"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="747352174"
Received: from wprelogx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.229])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:29:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 10:29:02 +0300
Message-Id: <cover.1697009258.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: align with W=1 warnings
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 jani.nikula@intel.com, Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/124718/

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>

Jani Nikula (2):
  drm/i915: drop -Wall and related disables from cflags as redundant
  drm/i915: enable W=1 warnings by default

 drivers/gpu/drm/i915/Makefile | 44 +++++++++++++++++++++--------------
 1 file changed, 27 insertions(+), 17 deletions(-)

-- 
2.39.2

