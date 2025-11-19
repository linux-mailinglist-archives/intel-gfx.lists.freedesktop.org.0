Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DA7C6E298
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 12:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB0610E5D5;
	Wed, 19 Nov 2025 11:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ly3JZCoi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8D710E5D9;
 Wed, 19 Nov 2025 11:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763550793; x=1795086793;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sNWwKS01tibWB6lvxGGhn6LgLIp789IfZk3PKgr16XM=;
 b=Ly3JZCoiRd0AvAe0QJWtGlMO7JoM0mF9m8ExV//R3DxltIeAq5SDIbmy
 gFjyK2nVrS7hfp9avfDyzQiVRUtpiGW0xAf3lSQd5B/S1kQjFerS8CWUT
 7PBKfEtX7RqowPlhQcmS89IWXvatEK1+fFBjSmH1V1FYwlu5v4TqKQJj6
 w/LGxuBYSC2rxWiHHU6mmVEuSVrbpNXAXPRxbPgqA56WXX86PpfDqxVkc
 yEVGUjpHwzMsPJvXeO955ULRki8mWKT1MbFUah9YAvpzelMGOMxehcala
 ++YB+K8jkNIMV30G5a886YWYe1GY14zQwlnaCwsyd191jFWpYSwVAUZQk A==;
X-CSE-ConnectionGUID: 6f9eMdskTk6RaffDla7t7w==
X-CSE-MsgGUID: NmxcVzAZQs+jDnheUkUFqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88241618"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="88241618"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:13 -0800
X-CSE-ConnectionGUID: CNwlfBeFS6iMRgRhikOkfA==
X-CSE-MsgGUID: x3+7kaGETM+1dGJV/5JnGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191816400"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.203])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:13:10 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 0/3] tests/intel/gem_eio: Avoid skips in stress subtests
Date: Wed, 19 Nov 2025 11:57:19 +0100
Message-ID: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Trying to avoid expiration of per-test timeouts, we are still getting
SKIPs from stress subtests executed in CI on some machines.  That can be
avoided by converting those subtests to dynamic and still extending the
limit of time dedicated to collection of resume after reset time
mesurements.

Also, fix recently introduced mistyped symbol while being at it.

Janusz Krzysztofik (3):
  tests/intel/gem_eio: Fix mistyped symbol
  tests/intel/gem_eio: Convert stress subtests to dynamic
  tests/intel/gem_eio: Avoid skips in stress subtests

 tests/intel/gem_eio.c | 39 +++++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 18 deletions(-)

-- 
2.51.1

