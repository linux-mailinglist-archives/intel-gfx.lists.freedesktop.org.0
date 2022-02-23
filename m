Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4284C1E70
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 23:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2203310E13E;
	Wed, 23 Feb 2022 22:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45D310E13E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 22:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645655307; x=1677191307;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w/lHJuayQm6wFW/5QHWw2iwXxUDX8QSlKqxmV6Qo8C8=;
 b=kP3928FFDkErx327sU6JnZeDxwGH4XxhKggnVuGsPS+hSmCZgjpFeZkm
 K+c919qjfLVliAafUH3s/hTdNUN80zohCAVhcvuUVztmRTtJuQQj68QPT
 TpVn4s3RqVKuYjSJCwpyHHbyM5KhWgTjw/eNoF/tx65bOHrvjhU/ERAvJ
 VcfDyfrX5wq89wDA+RYKZN1azz7v0tJK+9se3GTWPs9qWc/FmpiCoEGWZ
 cmn84rkfk1++xXX7TuYiDAr639v2IW9yXP7dAblKaWd+QyCzU+LQoRdSI
 ay2gW7quc5snFkx0Zp2WhPNe2pnJ5WjygjlzeDmyJYtpPHHIUn+hnU65q Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="235603085"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="235603085"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 14:28:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="639491396"
Received: from wladeau-mobl.amr.corp.intel.com (HELO mtolakan-mobl1.intel.com)
 ([10.255.230.72])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 14:28:27 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 14:28:00 -0800
Message-Id: <20220223222801.397632-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Bump DMC to v2.16 on ADL-P
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

Resending the patch to load the latest version of DMC
on ADL-P as the previous one had false CI fail postives.

Madhumitha Tolakanahalli Pradeep (1):
  drm/i915/dmc: Update DMC to v2.16 on ADL-P

 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.35.1

