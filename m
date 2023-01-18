Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E428671690
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 09:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC2910E1E6;
	Wed, 18 Jan 2023 08:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83CC010E1E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 08:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674031963; x=1705567963;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8oAKi8HWdhnTXeAgDZyVlqPKKCgK48ggduU3E01Drek=;
 b=Wk6sCRUoeaFZDkr0uGZTyEZDGDGu82W1lu06HzMWHB3PzusqzBzlv8ae
 EQ9jlwIIajOXCnIBvVC7U4oMUHzbOqd5RRkxUoXWVfItJarRyjJ+P8V6V
 kfkJIbXYD5VhWG+mjkxO9/WIaGvlFNMNLeKqnp1GYlkbozL/+Gdc6E+ce
 sx/27ZeTyflTrZqdl4nBlbg1VhO3yqLq9Pegd20i1q99DBq8WmK5I2scp
 A7SsQJao5vQUSbjFYOAEcQ3OiuKgGN0C8To48hhtGYT3Jb0iCBWIoO8ml
 f8c//Do7fP6QvB7EkP5/TpOqrKQPuJMXyTa/UXUamPXOy3Bp0DIUsDtF8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="387284455"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="387284455"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:52:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637195658"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="637195658"
Received: from kleve-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.53.237])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:52:40 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 10:51:58 +0200
Message-Id: <20230118085200.1017626-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/psr: PSR related workarounds
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

Implement Wa__14014971492 and apply Wa_14013475917 for all MTL steppings

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Implement Wa_14014971492
  drm/i915/mtl: Apply Wa_14013475917 for all MTL steppings

 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +---
 drivers/gpu/drm/i915/display/intel_psr.c  | 5 +++++
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.34.1

