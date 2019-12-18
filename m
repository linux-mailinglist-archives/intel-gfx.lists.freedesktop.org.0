Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFB4123C99
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 02:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17A36E215;
	Wed, 18 Dec 2019 01:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5625E6E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:43:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 17:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247697558"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 17:43:16 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:42:03 -0800
Message-Id: <20191218014208.7916-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] display: prefer 3-letter acronym
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

This bothered me for a while so I decided to give it a try: let's
normalize on using the platform acronym for function prefixes.

This does the conversion for some platforms. There are others missing,
but I'm sending this early for the case the idea is shot down.

Lucas De Marchi (5):
  drm/i915/display: prefer 3-letter acronym for haswell
  drm/i915/display: prefer 3-letter acronym for skylake
  drm/i915/display: prefer 3-letter acronym for cannonlake
  drm/i915/display: prefer 3-letter acronym for icelake
  drm/i915/display: prefer 3-letter acronym for ironlake

 drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 278 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  34 +--
 .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
 6 files changed, 163 insertions(+), 167 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
