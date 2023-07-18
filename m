Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C474F7571E5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 04:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297D310E2C9;
	Tue, 18 Jul 2023 02:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F076810E058
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 02:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689648205; x=1721184205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8P3067xHIYxvXiwkzgUTNwjpsT0qqT0j3X4OSV42q5E=;
 b=mpLE2ad3Nv3gMGYVrSfJxC3zKPYxYvQw0jh0IQf1lDJ7Edp8TOL8pD3i
 kovPbrDuKNHCkXr+qIGmt5uYCbcTKf6ydcA91TP01s2lzu4EEhcYf8aLy
 7qcwVLvgzVELjM5RU2n3jz1iUpxL1iyzQ20hmXAKB6EQ8NbfTEHytgbU/
 CXmLTq8Xr5moneFACefx+Hw9AB7BNSpr+KVCbrQ//0h9DqTqTWXPMpKpr
 fFDa2xlIX+/ufuNQFdleCUA5+6j5C2UARxfw6QoFxl7tsGRxWryxBCx7p
 EhrhfIEURrlyaLGxJSM67Yi7Pyl6Dpyo5iDptkX88m2MAHJCC8eoRtAd9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="364963435"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="364963435"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 19:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723420866"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723420866"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 19:43:25 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 19:43:16 -0700
Message-ID: <20230718024318.2911899-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] gtt_offset and OA buffer cached head/tail
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

Ashutosh Dixit (2):
  drm/i915/perf: Subtract gtt_offset from hw_tail
  drm/i915/perf: Remove gtt_offset from stream->oa_buffer.head/.tail

 drivers/gpu/drm/i915/i915_perf.c | 52 ++++++++------------------------
 1 file changed, 13 insertions(+), 39 deletions(-)

-- 
2.41.0

