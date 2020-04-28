Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7831BC059
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 15:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FD48930E;
	Tue, 28 Apr 2020 13:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91518930E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 13:56:56 +0000 (UTC)
IronPort-SDR: LZfICCsC3Pj6/nG7CR0O9PKihX4GOvkFxgF1eg48W06+e1z+Rgo3QnGbuUK3dfKgv8odsgPTu7
 QBXmm8E8p7Cw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 06:56:56 -0700
IronPort-SDR: 0LmLh+4nkjA/0dD/A+SNRvXtFcoJhwUeED5bQmfLfXlo/bSj1YZg8GBXfXBHWZq27Xl2DL8FfV
 ISAXgm8cTLGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="459240084"
Received: from pbooyens-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.37.143])
 by fmsmga006.fm.intel.com with ESMTP; 28 Apr 2020 06:56:54 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Apr 2020 16:56:46 +0300
Message-Id: <20200428135650.956161-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/4] drm/i915/perf: Add support for multi
 context perf queries
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

A quick fix to configure the kernel context and removing the useless
timeline creation.

Cheers,

Lionel Landwerlin (4):
  drm/i915/perf: break OA config buffer object in 2
  drm/i915/perf: stop using the kernel context
  drm/i915/perf: prepare driver to receive multiple ctx handles
  drm/i915/perf: enable filtering on multiple contexts

 drivers/gpu/drm/i915/i915_perf.c       | 930 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |  47 +-
 include/uapi/drm/i915_drm.h            |  21 +
 3 files changed, 661 insertions(+), 337 deletions(-)

--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
