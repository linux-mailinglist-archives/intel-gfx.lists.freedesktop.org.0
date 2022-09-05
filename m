Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D52ED5AD00C
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 12:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A74D10E28A;
	Mon,  5 Sep 2022 10:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1813010E28A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662373462; x=1693909462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cUujdqthqRUm/LYI1eHJMYYXg9bwvZFTGXOUd62Z0oI=;
 b=Uv4KX1yGY8tM5QYWpIdk6WZWQ6O4oopFL1JkAHEpnu2w4p6617Gbn0aC
 CMdUV/tqiEPvkXQuCmOSfmfrgnloW+RhP0ZqroiQkzfKM9S6hT1An8Cb6
 Zs/3W6lNADe/I4s1XffABINiPMKoIAa+GTem+D1jHNvw2dBjtSvczn7Qq
 viFHkuteM1IXIL47nFkp/V5Q8uMki9L7XeEYXHY0s6eJCJmOUVsn2ViuL
 IgF8U8lETCIfrO2/1+qSxuaqKEfcU3eDF9OOLdDohl9wn+IjgWKZeEGQP
 2u1EMFLc9Whv0WtkxGN31v3mEAYExKedsGYRFHANqCbjBbCj4RK1jUwMu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="295097343"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="295097343"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 03:24:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675233884"
Received: from gpliesch-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 03:24:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 13:23:53 +0300
Message-Id: <20220905102355.176622-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/psr: Disable PSR2 when SDP is sent
 on prior line
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

Selective update doesn't work if SU start address is 0 and start/end
SDP is configured to be sent prior to SU start/end lines. PSR2 has to
be disabled in this case for Alder Lake.

Additionally this patch set updates changed equation for sending
start/end SDP prior to the SU region start/end.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>

Jouni Högander (2):
  drm/i915/psr: Equation changed for sending start/stop on prior line
  drm/i915/psr: Disable PSR2 when SDP is sent on prior line

 drivers/gpu/drm/i915/display/intel_psr.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.34.1

