Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F1662F307
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C197B10E233;
	Fri, 18 Nov 2022 10:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECF010E233
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768929; x=1700304929;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b/fqEhvK0aGLZseRbiIAC6NnNkrZh5tXWvSb1RLDhfw=;
 b=OJE20eTVM29cwGlm73dWNLD+5H6J9SNcBdz5yBAJjdD35Q319i1I/ymt
 3jWwCyNh+RNSxVtyvRn/WTSwuxzs5NugCaItgh8cJdSMnXvUO5nLsSvCX
 sUh0sR2L/G1dj76R/VfXr8gqGEXlrpmHgsBlhNEUjeXsuxiU47Q0+3pW9
 jjRfqVIMyYvIqKMKnKWee7IeQruRT1RMXZx7ZX/RAg/3xCALNtGqOty90
 b1MGgai8IYyzh+qBVJ8crkS19n48JuQv49qnBUbmxSJ0oX7DmpxdcCZbG
 9H7PH2ZPahcP6qDVxa9a2nBCe/8WDO9//xygnuua3rKWxVzKb21NHj4q9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741694"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741694"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994379"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:16 +0200
Message-Id: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/dvo: DVO init fixes/cleanps
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

The DVO encoder init code is meesy. Try to clean it
up a bit, and fix a few buglets while at it.

Ville Syrjälä (9):
  drm/i915/dvo: Remove unused panel_wants_dither
  drm/i915/dvo: Don't leak connector state on DVO init failure
  drm/i915/dvo: Actually initialize the DVO encoder type
  drm/i915/dvo: Introduce intel_dvo_connector_type()
  drm/i915/dvo: Eliminate useless 'port' variable
  drm/i915/dvo: Flatten intel_dvo_init()
  drm/i915/dvo: s/intel_encoder/encoder/ etc.
  drm/i915/dvo: s/dev_priv/i915/
  drm/i915/dvo: Use per device debugs

 drivers/gpu/drm/i915/display/intel_dvo.c | 375 ++++++++++++-----------
 1 file changed, 201 insertions(+), 174 deletions(-)

-- 
2.37.4

