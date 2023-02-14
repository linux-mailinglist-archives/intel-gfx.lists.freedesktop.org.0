Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4981695F69
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 10:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8294F10E837;
	Tue, 14 Feb 2023 09:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B608910E843;
 Tue, 14 Feb 2023 09:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676367631; x=1707903631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hpb6fhHsC6I9pMZPiNy984MUjJoy1J2xsTXCyptZXFw=;
 b=Bo4DoQLzDMoJ7+Y2Ux8eiYrkQflYFHHqXhY7QZzSuroTpZbKWvUq2HQE
 sk3/SqVfhvCqXELyohnNEN4S3aQYKqIdtyn7OjLzil47ll/X4byGd2iSw
 bqI7cB8G+Ds9Ut07kyw222Lu7QJG0dDrm8sD0CJE1mEK8IcjgImf0Ocb4
 dqdRoP5EZ1kuJ4OrJv31apCWrSAHbsJSl+YCPzTHahESXQFg8NH72yfvw
 Kb66z5a8iX8/1FpkxG0xSmgeUboNLv+3AN8TQp3+JrXBawjaRn06P9gRa
 wqvCbYFuISA8A0wOtNeV54BJ8hZBHAbzQ0m771jLY38kSR6yZMosbP4f0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="328831617"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="328831617"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:40:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757924050"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="757924050"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Feb 2023 01:40:24 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com
Date: Tue, 14 Feb 2023 15:04:57 +0530
Message-Id: <20230214093459.3617293-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3 0/2] DP2.0 SDP CRC16 for 128/132b link layer
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

*** BLURB HERE ***

Arun R Murthy (2):
  drm: Add SDP Error Detection Configuration Register
  i915/display/dp: SDP CRC16 for 128b132b link layer

 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++++++++
 include/drm/display/drm_dp.h                         |  3 +++
 2 files changed, 15 insertions(+)

-- 
2.25.1

