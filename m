Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9681735D7BD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 08:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606B06E214;
	Tue, 13 Apr 2021 06:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75C16E214
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 06:09:51 +0000 (UTC)
IronPort-SDR: 4cG5XdyL/aQ+j0ErmbUZ7gwaOCAYJJBEq9qgvZIf9jc3Ox0o1ukAu/tsUE2EmrrNCrMoVDpeYm
 1Y7vtRPs4FWQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="192215137"
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="192215137"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 23:09:50 -0700
IronPort-SDR: O1sxfefRpIAPJmbdl9lfCCo4ETSpXaRTNiNfkc9ZlR0n/3ktPKrJbOZmadZGdpAERHZ0Ndagft
 yu62x1/ES2Lw==
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="532160581"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 23:09:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 23:09:24 -0700
Message-Id: <20210413060927.114342-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Simplify intel_setup_outputs
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

 drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++--------------
 1 file changed, 16 insertions(+), 38 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
