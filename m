Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0524948D693
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 12:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA9610E159;
	Thu, 13 Jan 2022 11:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE1310E159
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 11:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642072695; x=1673608695;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IIVLKIcYkF8QkG+vvOfUa7vsmUratY34zK0V9xY1F7w=;
 b=UOrqnOWAd/JPPSqVKY2d8WHfAPmPu+6EAKcP+kDjX+ZhX83UFsw74SGA
 SF+QwAgdvTUYCj/0adxH2d5ZuCUhjCOYjda27nup5DVgi3o6XY1yUSibu
 2akXOnVh4AfAm/qf6IDLvDokMCPLdAnN6lwMhfdeIW2p5X3xbbiwUQ+8w
 94x9/uScHfbRzIglzLGbtWFhz4jW5JLV+cR5+GWdZWFCN4qECX2jiPD6A
 dqX+CNgKFum8alagDjstvapkaJ82Zhv7x4n+0Nn+7Xv1JMVcE80gb9qT+
 lZCbXBSEtQa3vNJgHmBb7O0Rza46+dS6W2JfOWsjiX0gkIVBf0FCkbQxJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="330336179"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="330336179"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="515888271"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 13:18:02 +0200
Message-Id: <cover.1642072583.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/opregion: fixes and cleanups
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the UBSAN reported bit shift out of bounds first, as it's stable
backport material. Clean some stuff up after that.

Jani Nikula (5):
  drm/i915/opregion: check port number bounds for SWSCI display power
    state
  drm/i915/opregion: abstract the check for valid swsci function
  drm/i915/opregion: early exit from encoder notify if SWSCI isn't there
  drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion
  drm/i915/opregion: debug log about Mailbox #2 for backlight

 drivers/gpu/drm/i915/display/intel_opregion.c | 78 +++++++++++++++----
 1 file changed, 62 insertions(+), 16 deletions(-)

-- 
2.30.2

