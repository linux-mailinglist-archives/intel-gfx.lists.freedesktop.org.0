Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 984194DE519
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 03:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D93C10E1E6;
	Sat, 19 Mar 2022 02:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03BD110E1E6
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Mar 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647655254; x=1679191254;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uXBEPKFfU5JWRyLuJTYDt/dLOXLzCXUUAL5a+uJu8WU=;
 b=EjlxNgRp4ReiWnD8A2ARThWHgV987sMDhH19v6IuBj2VMbAANC11EjUI
 9WiDHQgtDK/4p8r/PyUoPsdFHAAcxkFTt1uRKcFodre+S1f80neJWui1P
 lsltmQzt2RnoQtWCFzhPMu1vNWs2dShvO5Z0j9Bxdi6tElvr1GftIh3JZ
 P3m1bliOqj7e0IaxxR60JA60cyLgWbe1CShCwWi80cdCnrhXqIf9bGjQA
 1D+pg+AuItFuyqeYcoRggqwmeOD5BjhU/N04DhIdpIggqNd6si4zR1Rj3
 JimHvUc5kMrSQEFd1xIvGX+RN5LH5FGqOlbzfLfbk6bo+7EoztMWpmswU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="254834919"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="254834919"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 19:00:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="514188097"
Received: from lovefred-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.251.13.69])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 19:00:52 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Mar 2022 19:00:40 -0700
Message-Id: <20220319020042.306649-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Splitting intel-gtt calls for non-x86
 platforms
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The intel-gtt module defines some functions used by i915, but they are
only supported by x86 platforms. In order to bring i915 to a more
arch-neutral state, we split out these functions and provide stubs in
the case of non-x86 builds.

There may be a better filename choice for the files used in splitting
the calls, it's very much open to discussion.

Casey Bowman (2):
  drm/i915: Require INTEL_GTT to depend on X86
  drm/i915/gt: Split intel-gtt functions by arch

 drivers/gpu/drm/i915/Kconfig                |   2 +-
 drivers/gpu/drm/i915/Makefile               |   2 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c        |  97 +----------------
 drivers/gpu/drm/i915/gt/intel_gt.c          |   6 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h         |  10 ++
 drivers/gpu/drm/i915/gt/intel_gtt_support.c | 113 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt_support.h |  39 +++++++
 7 files changed, 172 insertions(+), 97 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gtt_support.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gtt_support.h

-- 
2.25.1

