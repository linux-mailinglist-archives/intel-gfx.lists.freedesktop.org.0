Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A71BA340A1B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 17:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32876E91F;
	Thu, 18 Mar 2021 16:24:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8C106E91E;
 Thu, 18 Mar 2021 16:24:12 +0000 (UTC)
IronPort-SDR: m1Plev6ru0lwuRGx0WmuSUJWtvyWAvLnit/p75JeP5ILLUMyfgMe+QeF2EilW5RDeXI/loRE68
 oTmQQxJEKzyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="189760733"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="189760733"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:24:11 -0700
IronPort-SDR: hSd8OnjXHRDIFYhGsO+OFh2xxDxhBMjcXpCt7jjZx4/msTuPZlv9lI3X9fksAMXFt1asfVbrRc
 ZRZMi3cl1eHg==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="413149649"
Received: from syeghiay-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.51.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:24:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Mar 2021 16:23:57 +0000
Message-Id: <20210318162400.2065097-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/3] Default fence expiration test
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

See patch 2.

Tvrtko Ursulin (3):
  lib: Add helper for reading modparam values
  tests/i915: Default fence expiry test
  tests/i915/gem_watchdog: Exercise long rendering chains

 lib/igt_params.c          |  26 ++
 lib/igt_params.h          |   2 +
 tests/Makefile.sources    |   3 +
 tests/i915/gem_watchdog.c | 686 ++++++++++++++++++++++++++++++++++++++
 tests/meson.build         |   1 +
 5 files changed, 718 insertions(+)
 create mode 100644 tests/i915/gem_watchdog.c

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
