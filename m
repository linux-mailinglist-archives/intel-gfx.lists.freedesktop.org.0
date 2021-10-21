Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B7D435EBF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3EA6E423;
	Thu, 21 Oct 2021 10:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB39F6E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 10:10:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315200639"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="315200639"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:10:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495064990"
Received: from hdelagas-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.44.189])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:10:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jose.souza@intel.com,
	mika.kahola@intel.com,
	wan-gyeong.mun@intel.com
Date: Thu, 21 Oct 2021 13:10:22 +0300
Message-Id: <20211021101024.13112-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Selective fetch support for biplanar formats
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

These patches are implementing selective update configuration for biplanar
formats. Also workaround to do full fetch for multi-planar formats is reverted.

Jouni Högander (2):
  drm/i915/display: Add initial selective fetch support for biplanar
    formats
  Revert "drm/i915/display/psr: Do full fetch when handling multi-planar
    formats"

 drivers/gpu/drm/i915/display/intel_psr.c | 34 +++++++++++++++++++-----
 1 file changed, 27 insertions(+), 7 deletions(-)

-- 
2.25.1

