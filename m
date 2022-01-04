Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01682484710
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A49688EA7;
	Tue,  4 Jan 2022 17:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4AE88EA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641317999; x=1672853999;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LHo7GVyKFHzGGk3zahdWTaw0yptft0t49E9rhrXh5Os=;
 b=Yp1RsiWl1cU5oI80s3yi+ftcgBnJnMg1QyMrkZ1l/LGy3dEwaS1CiEDB
 e188YbOi5dp7dIyjtyXN63IV37YtGk8MaeleCW17n/Pcf1DVpTxzsM5Ss
 Fo19s0abrEWh1zsrOkFG12Vs8aq9HkaGqB0NOlErQDt1XgIIR1tcEjsnw
 K5QNNLWuTnLV/jQQkbSAf+W4PP5HNZ4aemGqCKcdLQo7MgjiP6m1oEEak
 S3wLyehrB3mn/COLTF4kt9O0LPWb8TmYt6NaL7apKekdDVZraSb3hiUXl
 YLx9A1aa5eneSv0yFcpqAwO97Sq1bXA/rlPtFi4K5Q0BGG/oHRn/oZByo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="328609314"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="328609314"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:39:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="688648121"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:39:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:44 +0200
Message-Id: <cover.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/mst: DP MST ESI handling
 improvements
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some improvements around the sink irq handling.

Jani Nikula (7):
  drm/i915/mst: fix intel_dp_mst_hpd_irq() indentation
  drm/i915/mst: abstract intel_dp_ack_sink_irq_esi()
  drm/i915/mst: debug log 4 bytes of ESI right after reading
  drm/i915/mst: abstract handling of link status in DP MST
  drm/i915/mst: read link status only when requested by sink in ESI
  drm/i915/mst: ack sink irq ESI for link status changes
  drm/i915/mst: only ack the ESI we actually handled

 drivers/gpu/drm/i915/display/intel_dp.c | 106 ++++++++++++++----------
 1 file changed, 62 insertions(+), 44 deletions(-)

-- 
2.30.2

