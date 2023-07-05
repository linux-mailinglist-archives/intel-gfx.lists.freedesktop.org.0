Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4101C748186
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 11:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB3E10E34A;
	Wed,  5 Jul 2023 09:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3363B10E34A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 09:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688550882; x=1720086882;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=gZs5puT8XIu8UqezpunPVtrS+rhk5K8cygXvP7LrZZk=;
 b=EQIUAUgQ+XN3IH42wPQ+C1WjLhWc2nKHd3YFsv3kPIDVwBFfGrS74A4k
 Q3XEbdR9LS0U1VnTu0Cr03Z8yr3xYtp7UVJcsMPsc+4u4Jcr4h3tfBxrn
 1/RX2vc6ptT4WaBSEHgnL44wt26HhzfW/BoX/TVJm+h21MXNfZj1aol51
 IIYxSA5BfrF3/qIw7+gT0m5m68Xx96sDM3WVaCy9SxBigvGa4Vgu7Rwz+
 QynaqRWroBCqeX4pf4tynf5vu0JvUKoywxNWe3nE8zu9D++xA5Q0y/nBp
 UWPFDDWvDseogt2p80vuRyoNhCBBTxo25ATRAra7Qp2Tc6tMEPfmIpmPb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="360774833"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="360774833"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="719166445"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="719166445"
Received: from unisar-mobl.ger.corp.intel.com (HELO localhost) ([10.252.49.23])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:54:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org, workflows@vger.kernel.org,
 linux-kbuild@vger.kernel.org, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 05 Jul 2023 12:54:35 +0300
Message-ID: <87wmzezns4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Intel-gfx] __diag_ignore_all(), GCC < 8, extra warnings,
 and -Werror
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


For a long time now, i915 has enabled a bunch of W=1 style warnings
locally, and we try hard to keep i915 warning free.

One of the warnings is -Woverride-init from -Wextra. We need to bypass
that in a few cases, and used to do this for the relevant files:

	CFLAGS_file.o = $(call cc-disable-warning, override-init)

Recently, we switched from the above to a more localized version in each
file.c:

	__diag_push();
	__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
	...
        __diag_pop();

We now got a report that this fails the build with CONFIG_WERROR=y or
W=e when using GCC version < 8. Indeed, __diag_ignore_all() requires GCC
version 8 or later.

Should we now revert back to disabling -Woverride-init on a file
granularity? Should we consider breaking the build for CONFIG_WERROR=y
or W=e on older compilers a regression?

I'll note that with the current usage of __diag_ignore_all() elsewhere
in kernel, CONFIG_WERROR=y or W=e with W=1 will never pass on older
compilers. But then again, it has never passed on any compiler, so it
can't be a regression.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
