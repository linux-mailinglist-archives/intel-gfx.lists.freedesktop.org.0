Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 130AF1D7F0D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 18:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC74B89CF8;
	Mon, 18 May 2020 16:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0794889CF8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 16:47:58 +0000 (UTC)
IronPort-SDR: w0vSE7niUnFtPEIREHVPyqgmRtRKisd+MCXyV6hPPbJKWzss7MuIZO3f7S2SPQ+An200zWq3/7
 gT7FQOtXMpGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 09:47:58 -0700
IronPort-SDR: 8/4kGwWCtYC+FGCBQLppDUCE/iJnCrt4I/N+44HdrHBwZ5U7YNirVOiL0CrOGOE6P6JuskdX4p
 HNpDGTw+O0aQ==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439284039"
Received: from ahermans-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.209])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 09:47:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 19:47:47 +0300
Message-Id: <20200518164750.11113-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] drm/i915: device params part 1
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

This is the first 3 patches of [1], because apparently patch 4 breaks
the world. I've yet to pinpoint the issue, but these could move forward
in the meanwhile.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/77272/



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
