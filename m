Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D34373030F1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 01:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2166E3C4;
	Tue, 26 Jan 2021 00:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52A489F73
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 00:18:00 +0000 (UTC)
IronPort-SDR: u1wFh7xCVj330XbQGgRTLCDa2oNFZCWIeXrt92C58Tv9iv77564ZXDv+Qm9LQ8uJzlHc0iTLIW
 YVobM2krnVNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="179046902"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="179046902"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 16:18:00 -0800
IronPort-SDR: 8yHeQx+7QKVEPAdMx14EKsJInRgL/7Hc+2aFcXig6BwEtQAvE4wTUVaRnh69CgABJk3CZheez6
 YiQya3XRWz+g==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387598138"
Received: from bmmauck-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.126.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 16:18:00 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 16:17:43 -0800
Message-Id: <20210126001744.29442-1-aditya.swarup@intel.com>
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
Cc: bp@suse.de, x86@kernel.org
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

Note that this patch depends on commit 0883d63b19bb
("drm/i915/adl_s: Add ADL-S platform info and PCI ids")

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
