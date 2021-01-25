Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8483023FF
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCF989AE6;
	Mon, 25 Jan 2021 11:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7559789CD8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:00:24 +0000 (UTC)
IronPort-SDR: lqp+7+P5CIOI23D79Y/1zEySjvNA6E0DP2Ns5GPf7if5XgVyLey6uWBq/qO2+3mcdvzPh3QU7E
 A1PJgAFxqc6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="176195128"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="176195128"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 03:00:24 -0800
IronPort-SDR: JQQ+7sKm14sm0g7K50Uv6w9cOQRDQu/mUv4ETQNMIwrlcXx9GPSySy4q0zSWnsP+aVT797qpm7
 TrUfAxIfjJ0A==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="472024395"
Received: from iduggana-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.81.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 03:00:23 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 02:59:30 -0800
Message-Id: <20210125105931.268977-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Add Alderlake-S stolen memory changes.
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
Cc: Borislav Petkov <bp@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>,
 x86@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Based on Borislav Petkov's feedback, fix commit message so that it
describes the change properly. 

Bspec is an Intel specific programming spec and as such drm/i915 patches
filtering in from Intel branches like drm-intel contain this information. 

For example commit:
693260cf23f9 drm/i915/rkl: Add new cdclk table

It helps in tagging commits with spec changes as there might be updates
or provides info to the person trying to fix an issue arising from the
commit.

This patch has already been reviewed and needs an ack from x86/gpu
maintainers.

Cc: Borislav Petkov <bp@suse.de>
Cc: x86@kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Caz Yokoyama (1):
  x86/gpu: Add Alderlake-S stolen memory support

 arch/x86/kernel/early-quirks.c | 1 +
 1 file changed, 1 insertion(+)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
