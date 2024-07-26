Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A841693CFBD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 10:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E330D10E2E0;
	Fri, 26 Jul 2024 08:40:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kayzF2FU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F5710E027;
 Fri, 26 Jul 2024 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721983255; x=1753519255;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e5HDWfK75n8ldhnunzYf7ucR+4PZzz48kcl3COq3LGE=;
 b=kayzF2FU+22BMqK/cGuvoGEs4Q56BwrSHrrCAN3tWhQjsywwm02KG4q1
 IoJAZsJksZVUl0PmW+JxoSqRt4h/ZfF0I/UBBxSltMSTVSLHNijZ23u3d
 wbz8zaFuoWI6IIlc7u1QLR7Ekrw4Aigpkuwojtla+RRApFCUNS6VQdNAe
 WRJO8kJbeWwd3PR0TVdFbzXRkBsiKn8fmfICyPOcLpmF6yYSQ0+Br4soc
 MUt8ntSwL+/JBhm2/iTdzxp5+K+oxxYcPsgjmesSqTxZOYm5BqAcOTK9s
 h+uspv4I8DCu8q4BGFBVJDB0IWcilUDgZlmf1jhR0uH+TmiiEshW9c660 A==;
X-CSE-ConnectionGUID: NOwB17wGQRaEAfP9hPru7Q==
X-CSE-MsgGUID: ntTBhfw2R5W4iFJI8Fq/fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19951832"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19951832"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:40:54 -0700
X-CSE-ConnectionGUID: I1qEI4XDQSidtg/F0iYDNw==
X-CSE-MsgGUID: ZFBO7/a1Ts68ZhG01J/Dow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="57477868"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.60])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:40:52 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t 0/2] tests/device_reset: Wait for device nodes to
 re-appear
Date: Fri, 26 Jul 2024 10:34:55 +0200
Message-ID: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

CI sporadically reports the following issue:

(device_reset:1335) DEBUG: rebind the driver to the device
(device_reset:1335) DEBUG: reopen the device
(device_reset:1335) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:00/0000:00:02.0
(device_reset:1335) drmtest-DEBUG: Filter matched  | /dev/dri/renderD128
(device_reset:1335) drmtest-WARNING: No card matches the filter! [sys:/sys/devices/pci0000:00/0000:00:02.0]
(device_reset:1335) CRITICAL: Test assertion failure function healthcheck, file ../../../usr/src/igt-gpu-tools/tests/device_reset.c:393:
(device_reset:1335) CRITICAL: Failed assertion: dev->fds.dev >= 0
(device_reset:1335) CRITICAL: Last errno: 22, Invalid argument
(device_reset:1335) CRITICAL: file descriptor dev->fds.dev failed

After rebinding a DRM device driver, we now immediately start looking for
DRM devices that match our PCI filter established before unbind.  The
above messages indicate that occasionally not all device nodes are ready
by the time we are doing that.

Introduce a delay to give the kernel a chance to re-create in devtmpfs all
device nodes we are going to scan for.

While being at it, fix an inline comment above an equivalent solution
introduced before to core_hotunplug test.

Janusz Krzysztofik (2):
  tests/device_reset: Wait for device nodes to re-appear
  tests/core_hotunplug: Fix inline comment on missing device nodes

 tests/core_hotunplug.c | 2 +-
 tests/device_reset.c   | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

-- 
2.45.2

