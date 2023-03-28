Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BD06CBFE0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F2210E8A5;
	Tue, 28 Mar 2023 12:54:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6363D10E457;
 Tue, 28 Mar 2023 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680008079; x=1711544079;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dNRn3cDmKjvRWYWuP0H+vh04G6CNvm1GCDqSGy615cE=;
 b=OUkxFs+Q5pAtzfeVA/VsimRhoUh5//KF787DEuilr+ZV4ti0bFoKZdsm
 xImnl/tMLWtTec8HOAZ2Kz0x/gcV1hn8pvF5LrSETrPalMCRQxgy8ygH5
 lyC2MIUzNyJM7bCaBJYbLAaiElnuHXBQLbpDL+1wilIyZq06Sq82dn4T2
 i/q+hZn65qsduti+tBv9wvTAHPOnP960B9Q2hUep5JEtPLbOaNd3wEbYR
 cd5FI9lMu978/yKHIRDwO0Gy20W8xt7l8Vya/+4SJS2kT4SLPIJ0OTlzF
 WREbXUHpSWXpvnP3RLjruUPz2KNQVDyZSwbxi0qZ7X/FeVsxU4Hzlapk6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342141784"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="342141784"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="794793261"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="794793261"
Received: from wheelerj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.213.242])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:37 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 13:54:26 +0100
Message-Id: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/3] Assorted intel_gpu_top tweaks
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Just some display formatting and display tweaks and fixes.

Tvrtko Ursulin (3):
  intel_gpu_top: Display large pids nicely in interactive mode
  intel_gpu_top: Use full console width for global metrics
  intel_gpu_top: Show non-normalized client usage in numeric mode

 tools/intel_gpu_top.c | 90 +++++++++++++++++++++++++++++++++----------
 1 file changed, 70 insertions(+), 20 deletions(-)

-- 
2.37.2

