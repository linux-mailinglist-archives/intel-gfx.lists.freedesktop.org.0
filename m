Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5047D3419B7
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 11:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE1F6E9E0;
	Fri, 19 Mar 2021 10:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC786E9E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 10:17:14 +0000 (UTC)
IronPort-SDR: bXIixYkehzL0izP+Dftfl+U9LHL20FPDGAy51i0waPKuLGjOnq7HnGZDIvrcnZ66GinIjmOhzp
 ZfKSUxIbrnhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274935041"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="274935041"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:17:14 -0700
IronPort-SDR: x8HDPmAr1MolX8kX5lwlstcdGCe/IoWU9QmcJVBo73a8sAj0xVty4ihwWE7QF9SsHGa8nh9dC4
 GqVnkX++b9aw==
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="374911291"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:17:12 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 15:32:05 +0530
Message-Id: <20210319100208.5886-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] HDCP 2.2 MST fixes
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

Rebased.

Anshuman Gupta (3):
  drm/i915/hdcp: HDCP2.2 MST Link failure recovery
  drm/i915/hdcp: link hdcp2 recovery on link enc stopped
  drm/i915/hdcp: return correct error code

 drivers/gpu/drm/i915/display/intel_hdcp.c | 26 +++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
