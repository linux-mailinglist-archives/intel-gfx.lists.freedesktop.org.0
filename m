Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFD46A695E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 10:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999EB10E0B7;
	Wed,  1 Mar 2023 09:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E719510E0B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 09:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677661406; x=1709197406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Em+P88T+EKWMXn1q3nO2qS824HPJ9pmECb0c8n+8PBw=;
 b=T9GFFEHJqdgq4jAVBZ0M6Il57DLjVoqWVcHuezprIHQoI5J1kyWuGlVk
 c8y+VabRsv6yZt/8vFC1u5FOQSXF+maRWM7w56iyyDzR2VFzF79JiRDOB
 Uakuwn1rWpOY5iAX5cadY0z/wD0nSX3Ud/vHVaSpn/jqrl0dm/BK2I8h4
 fHtEnng9afW8i2dRm6jrVs9+X7a9dXZa3j7hnI8PkoY2zpVa8A1krsteY
 MXE30U/Sspj2caunoBKF81Zh7dGPHneDCR0i9QbRwaB9mtg5Yy9FUxlJT
 naoG5XhCUOCFhwpSCM898hol7KvruvE7X4/SvSAuE5bqufFGe4Jr6O0In g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="361936129"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="361936129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:03:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="674483342"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="674483342"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.intranet) ([10.213.8.127])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:03:17 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 10:02:29 +0100
Message-Id: <20230301090230.31404-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230225221218.134254-1-janusz.krzysztofik@linux.intel.com>
References: <20230225221218.134254-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 0/1] drm/i915/active: Fix misuse of non-idle
 barriers as fence trackers
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

Dummy cover letter to prevent CI / patchwork from picking up a previous
one with an outdated Test-with: clause.

Janusz Krzysztofik (1):
  drm/i915/active: Fix misuse of non-idle barriers as fence trackers

 drivers/gpu/drm/i915/i915_active.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

-- 
2.25.1

