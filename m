Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4FB7B019A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9479A10E4C4;
	Wed, 27 Sep 2023 10:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0675910E4C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 10:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695809865; x=1727345865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QOnAanrcCK6CRJEMUCHRw3ZLxu7+eg+aCjq0O6ZL02s=;
 b=gB8OuoC3A9DnuqNDJQgYCS1HknwikMQaNEYE8pltHwWbCSl33bTTi2w2
 stVjSTa5DnUzogViewTteRz9lHlH5W4Jux3b7SZIbogPq+RMXvOereRjP
 +nJTtpEG6l6aIvWlhMyhL7hzXg4YXjy8gXGgN0EqqswcHusxzu7FmwRLG
 nPo04H05JMQCoI3MX6FFkUAX6Qd1HJaSBavbE46Cr3IO0jdtEDoxDtWV9
 45N7rHKNqRwaefS5Ijb97O2Yui074XtxR1CI1mIB+EA2jffbdovBf8WhX
 /ObU/7QFgwQY4MIDm04U/W0/qsv6KnGL2iHpMDs3SPqbyMDRHkt8QW+ek Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="372130161"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="372130161"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778488157"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="778488157"
Received: from akorotox-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.52.218])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:41 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 13:17:26 +0300
Message-Id: <20230927101729.18681-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] scalable display feature configurations
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

Get the reported device capabilities and update DSC and scaler 
feature support

Vinod Govindapillai (3):
  drm/i915/xe2lpd: display capability register definitions
  drm/i915/xe2lpd: update the dsc feature capability
  drm/i915/xe2lpd: update the scaler feature capability

 drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_reg.h                     |  5 +++++
 2 files changed, 18 insertions(+)

-- 
2.34.1

