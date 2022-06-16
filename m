Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E54054E2EF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845FF11A449;
	Thu, 16 Jun 2022 14:06:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CB511A40C;
 Thu, 16 Jun 2022 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655388412; x=1686924412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5tjP0PTFsV6tV5zm3s21JaCdVmRiFPp5MgmSTQIw/f4=;
 b=h5Ylj82fECz/rj8E7F53iu9aFBnzThJe7xWxCd6lmNchswLj6a9sUSV1
 IBBGyjGHqm01pJVvGoXtkyS/R21wgeN0s4OecTgZXDjrbNYcq/hGoYMsX
 YDXaI7GHuxgqJKiogLFBREnoKdcn5nO8z+Ir0y9hzIywH6Hn6sr0nfpk0
 9xMusDnON98jAmv4QwXQKcGM8kwMgB3iUjvcKVWo0BmN79/17Yc+fOtMe
 ivk/UqXHTqzYyRusmCSdCweSkN3/gHPsvSJrrvdc8I3keko2JTMN7h8NV
 5nl/FbSWsIxfEA1S2mQtJnvHPEarJ6YKXwzOdDZ06uQ7HJqGitsKpd+P3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="304699157"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="304699157"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:06:43 -0700
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="727907235"
Received: from mstokes1-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.198.82])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:06:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 16 Jun 2022 15:06:29 +0100
Message-Id: <20220616140637.559194-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/8] Vendor agnostic gputop
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Just a re-send having rebased on top of latest tree.

Tvrtko Ursulin (8):
  lib: Extract igt_drm_clients from intel_gpu_top
  libdrmfdinfo: Allow specifying custom engine map
  libdrmclients: Record client drm minor
  libdrmclient: Support multiple DRM cards
  libdrmfdinfo: Track largest engine index
  libdrmclient/intel_gpu_top: Decouple hardcoded engine assumptions
  libdrmclient: Enforce client status sort order in the library
  gputop: Basic vendor agnostic GPU top tool

 lib/igt_drm_clients.c   | 503 +++++++++++++++++++++++++++++
 lib/igt_drm_clients.h   |  87 ++++++
 lib/igt_drm_fdinfo.c    |  50 ++-
 lib/igt_drm_fdinfo.h    |  16 +-
 lib/meson.build         |   8 +
 tests/i915/drm_fdinfo.c |  19 +-
 tools/gputop.c          | 260 +++++++++++++++
 tools/intel_gpu_top.c   | 677 +++++++++++-----------------------------
 tools/meson.build       |   7 +-
 9 files changed, 1113 insertions(+), 514 deletions(-)
 create mode 100644 lib/igt_drm_clients.c
 create mode 100644 lib/igt_drm_clients.h
 create mode 100644 tools/gputop.c

-- 
2.34.1

