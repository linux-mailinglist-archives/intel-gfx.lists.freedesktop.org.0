Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6F92FB543
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821AC6E0D2;
	Tue, 19 Jan 2021 10:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8E86E0DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:22:11 +0000 (UTC)
IronPort-SDR: b2WVMJ1NwwOsTG+BkTN7WFORThjnsUSli3Kjoa5YJeEVAHgZP7qH2NlWzJmKjz+UIhJRmrC7CH
 f/0QUr+7IBJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="175403364"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="175403364"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:22:07 -0800
IronPort-SDR: VxdZJXX7kK3Y3LDH0fbh+skPT0TUUbmqna6EAw88Tbq7hqnIyTdv6Igxxcrs+QBPGj4WwMWXk/
 +C6p/Z52OttA==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="383876517"
Received: from obaracos-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.44.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:22:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:21:59 +0200
Message-Id: <cover.1611051543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/dp: read eDP sink MSO configuration
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Read and debug log the eDP sink MSO configuration, though we have no MSO
driver implementation.

Jani Nikula (2):
  drm/dp: add MSO related DPCD registers
  drm/i915/dp: read sink MSO configuration for eDP 1.4+

 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
 include/drm/drm_dp_helper.h             |  5 +++++
 2 files changed, 34 insertions(+)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
