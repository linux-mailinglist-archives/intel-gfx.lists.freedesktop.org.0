Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCD9748945
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 18:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE4010E3A0;
	Wed,  5 Jul 2023 16:32:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B165D10E185;
 Wed,  5 Jul 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688574725; x=1720110725;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fPW5+44exUlhfF79mHFbyf39zZ0oJUkvM1+8K/Fepfk=;
 b=ex9yMAUzsXEiWR/hrb1OeVU34jtSRnDQx2fbdweGo5Cwhp96Ts14efP0
 LHydGLFZk9CnPTZPu+MFKQ1QbgWLV5oIX4DVJLJkXYPThlGnQ7tT+JCAx
 Tmsu1aGjbfayv3xU5JYDA9RUekosUXreryUr+55N6+4dobjTFTrCzCfnC
 /q3H12q4QAfZr7825RNU7K15glaaa167JxUahWLjV3vjosSsqKcUb8WI/
 SK+eTcYgWix6/ikCIokRr0C49mQVbzTyZGmgOORPaIP0lKJpjxu7H6b1s
 rkusBKyDTeXRYbI63PTxQ8kgpzoNILAHGND/JU9t0Bo+hBoITBBGVzX/N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="362255308"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="362255308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754412954"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="754412954"
Received: from jputsman-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 17:31:02 +0100
Message-Id: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/3] gputop memory usage
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
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Same general approach as with engine utilisation, adding parsing of the relevant
fdinfo fields and plumbing to client discovery helpers to finally present some
of the available data in gputop:

DRM minor 0
 PID      MEM      RSS  render    copy     video   NAME
8098     124M     124M |███████||       ||       ||       | neverball
 888      76M      75M |▊      ||       ||       ||       | Xorg
 966      12M      12M |       ||       ||       ||       | xfwm4

There is probably scope to consolidate some of the igt_drm_fdinfo code and to
improve on the presentation but this is a start.

For now, out of the available memory categories, only total and resident are
displayed, and also all discovered memory regions are summed up and shown under
a single heading.

Cc: Rob Clark <robdclark@chromium.org>

Tvrtko Ursulin (3):
  lib/igt_drm_fdinfo: Parse memory usage
  lib/igt_drm_clients: Store memory info in the client
  gputop: Add memory information

 lib/igt_drm_clients.c   |  34 +++++++++-
 lib/igt_drm_clients.h   |  11 ++++
 lib/igt_drm_fdinfo.c    | 142 ++++++++++++++++++++++++++++++++++++++--
 lib/igt_drm_fdinfo.h    |  24 ++++++-
 tests/i915/drm_fdinfo.c |   8 +--
 tools/gputop.c          |  34 +++++++++-
 tools/intel_gpu_top.c   |   2 +-
 7 files changed, 240 insertions(+), 15 deletions(-)

-- 
2.39.2

