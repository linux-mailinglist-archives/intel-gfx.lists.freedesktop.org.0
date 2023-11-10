Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D87A7E7AE8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 10:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D563210E958;
	Fri, 10 Nov 2023 09:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45FBC10E958
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 09:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699608761; x=1731144761;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9T8muNAu47ZJ/UonsSlGYWvU5vDYVnZSl8ESPSaRI8U=;
 b=fi+Wm5MwJD7FSjoEHr3Fg31mnezl1G9tcig/DYjiGFsa2aSMnxJbLLdh
 uJNczUxvkdNR0OQkmRmWB4X8bqGgZq1s0y1fhtxXbtJ4AotKzayQJ0Ld5
 7Z+xeZspCGiDF9P7Cxh/lESMQJmtp2139GAn7RxNFy3ZK5rAz/bDa93S/
 XewYZZlBbX2eJ49BegqebBUVpJJHDAQ2eSyMo/OTwQi/cCMjuTtUxKyzM
 /WbYMR57WEdJk2q/Z/ESOWHmKHlxO3tuesA+ALddboL6V54ELPYVVvVKH
 ii72d+BxnJAGpo1874NP46eKlIUk7KjoGRm34XNHynYWL3YfalXP3uKv+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="476387262"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="476387262"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 01:32:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="937128971"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="937128971"
Received: from slysokob-mobl1.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.38.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 01:32:38 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Nov 2023 11:32:24 +0200
Message-Id: <20231110093225.39573-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/1] drm/i915/xe2lpd: remove FBC restriction
 if PSR2 is enabled
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC restriction when PSR2 is enabled can be removed in xe2lpd

Vinod Govindapillai (1):
  drm/i915/xe2lpd: remove the FBC restriction if PSR2 is enabled

 drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.34.1

