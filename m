Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3097031ADA7
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 20:05:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E92A6E170;
	Sat, 13 Feb 2021 19:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BB76E170
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 19:05:30 +0000 (UTC)
IronPort-SDR: JepmnYPN8LNEeWRivwx0/ynQg7YTGDSR33BZJiIIFCCFxdVsu0dgQNkRcBh7j6JtLDGNZ/ZLxS
 l50BhAZ1KKTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="267387441"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="267387441"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:29 -0800
IronPort-SDR: 4uqf/RgOQ7J59HoW2WpmW0F9UX6oyWhzHoe02TJMAfQbG5TKaZb/Qv99rd1g84RV5yLGdoRgeG
 qwPMjTqfRc5w==
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="423228675"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 13 Feb 2021 11:05:08 -0800
Message-Id: <20210213190511.1017088-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Simplify intel_setup_outputs()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

First and second patches should be straightforward. Third patch is a
tentative simplification that may break things in the presence of broken
VBTs, but I'm feeling confident.

Lucas De Marchi (3):
  drm/i915/display: move vbt check to intel_ddi_init()
  drm/i915/display: remove FIXME comment for intended feature
  drm/i915/display: remove strap checks from gen 9

 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++
 drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++--------------
 2 files changed, 23 insertions(+), 38 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
