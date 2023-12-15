Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13246814661
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6CE10E339;
	Fri, 15 Dec 2023 11:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A71610E339
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638577; x=1734174577;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nNVZucjKkLLuF/qI1jdiiVfnE88UKLn+0p7CQ2NXpng=;
 b=bidlzMbdJj/NLP8qw5kjdXmthcNPFOF+SIJMhZ4KATp1wnD5U8gsFBOa
 6OCxiT5rO6xg+3RBkHuMWoqRRohAHLYvIJuDJwvi4M63h2fGrP8GiwB1N
 2VK0+oGZzO2GAvZUxbAVm9/b75TU/xWbLIjUq179ZFNSmBW1yWXufnx97
 ild75ZWtmUQi0ba4KDx/XyUaJMftlBQhEsgJ7yDTqLrK4VhgNuL/PB13G
 3vAZKYTEkgb7vs0u2UZpa/s2GougvaVYFEJuPErMlAlAIMhyJoQqF1XA0
 5w2wngex7D2tGm0LAA0wErJHKsfU8knT9aaLH6llSiAaGm+oeuFOJnfrc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394138114"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394138114"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:09:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767946000"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767946000"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:09:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:09:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: Eaerly ggtt pinning stuff
Date: Fri, 15 Dec 2023 13:09:30 +0200
Message-ID: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix up an order issue with HDCP code that tries to clobber the
ggtt way too early. And try to optimize where in the ggtt we
place permanently pinned stuff.

Ville Syrjälä (3):
  drm/i915/hdcp: Do intel_hdcp_component_init() much later during init
  drm/i915/hdcp: Pin the hdcp gsc message high in ggtt
  drm/i915: Pin error_capture to high end of mappable

 drivers/gpu/drm/i915/display/intel_display_driver.c | 9 +++++++--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c       | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c                | 2 +-
 3 files changed, 9 insertions(+), 4 deletions(-)

-- 
2.41.0

