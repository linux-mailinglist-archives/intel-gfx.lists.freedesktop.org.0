Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD930704E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 08:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD12891D5;
	Thu, 28 Jan 2021 07:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321668908E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 07:56:44 +0000 (UTC)
IronPort-SDR: 4jcSFez0UY2tm611xDYZMfxlqa/700xshfSP7df5Lw/piGjFI1hAIFeWAzQPC2iDpfLthA0z40
 MTBa07Zvby8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="241721729"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="241721729"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:56:41 -0800
IronPort-SDR: kZq5Dx+kt8WRsLGU+FIbllMmI0lFIA1hDpXTviyUw0c5oYoVd7mXbLqB6UUUFnWN8g98UqPFdz
 TheKu4x+Mskg==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="362765563"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:56:39 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 13:12:08 +0530
Message-Id: <20210128074209.16986-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] disable the QSES check for HDCP2.2 over MST
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

Floating a stand-alone patch form the below series in order to 
merge it.
https://patchwork.freedesktop.org/series/86325/

Juston Li (1):
  drm/i915/hdcp: disable the QSES check for HDCP2.2 over MST

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 +-------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
