Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F623A36B3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 23:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136466EE05;
	Thu, 10 Jun 2021 21:52:53 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136CC6EE04;
 Thu, 10 Jun 2021 21:52:51 +0000 (UTC)
IronPort-SDR: UFpL7FmctI3o7d0Hlsv2QnO5G9xz3wlzQcgXFEfQ8Wpgg07PyC9MuYuK3SFrt5T5h+gm6dBFmp
 +iChaU1CgyKQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="269262299"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="269262299"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:52:49 -0700
IronPort-SDR: afN62xh1SnR8LmTKGv+5FMBl5brvG4NugnqdVdhnRS2zokNkcrp3Jj3P7qgpouMzniSkzYU+3a
 tsN00MnvcKeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="450544890"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jun 2021 14:52:48 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 10 Jun 2021 14:52:45 -0700
Message-Id: <20210610215247.2996757-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH i-g-t 0/2] Add tests for new hw info queries
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. New interfaces have been added to the KMD to return
this informatio. So, add some tests for the new interfaces.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (1):
  tests/i915/query: Add test for L3 bank count

Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h |   2 +
 lib/intel_hwconfig_types.h  | 102 ++++++++++++++++++++++
 tests/i915/i915_query.c     | 163 ++++++++++++++++++++++++++++++++++++
 3 files changed, 267 insertions(+)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
