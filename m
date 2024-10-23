Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA689ACD3A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F18110E802;
	Wed, 23 Oct 2024 14:49:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ljxgZK5N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1416C10E800
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 14:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729694943; x=1761230943;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A7ijKCUebL3Kn9CboWjN+DU9U3Px+GCfpQ+d0tNak9Y=;
 b=ljxgZK5Nw+UirdWTwKhM0z9J9B0GcjxLTTF9CrNHq4+0U+k2otw/J/Wi
 Wm3EbcArempaXrnPJZiBU8auQIj4mIPlK/7RCr2BRnR5K3Np68WstrHJt
 87bTiqJJ+9YKjCMYxkq3V5ty3wX2o3ekkXYv7PGm15VirVmXFTgH2VR2t
 BzU/3VhP/fXy1St2cLbRWuPKW6PcKIqn1Z3W57MINVg0wa2XgVPODrV8c
 UN+2+tHEqHa7otjWSLLEZ0Yv+8kYLEUnNWp6AoN3pn7bVYaWiVc9Mqums
 kv7swTMOhUlldWgokQKafmgJg6elftXbWjGVG2MIjH96WuNMvhNdfO+iI A==;
X-CSE-ConnectionGUID: me6hpk+bRXC+gTNol+uJKA==
X-CSE-MsgGUID: H743VKKlQxul8S+dfBpHgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29184649"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29184649"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:49:02 -0700
X-CSE-ConnectionGUID: Pu/uUGR7T2OE+Mi9G2TQGg==
X-CSE-MsgGUID: UpgT7l3kTyKAuorF5bJQRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80160609"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:49:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 0/1] pmu changes with igt
Date: Wed, 23 Oct 2024 07:48:38 -0700
Message-ID: <20241023144839.3140256-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
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

Test-with: 20241023042909.3038309-2-lucas.demarchi@intel.com

Lucas De Marchi (1):
  pmu changes

 include/linux/idr.h        |  17 +
 include/linux/perf_event.h |  35 ++-
 kernel/events/core.c       | 620 +++++++++++++++++++++++++------------
 3 files changed, 455 insertions(+), 217 deletions(-)

-- 
2.47.0

