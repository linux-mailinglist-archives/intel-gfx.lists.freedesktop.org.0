Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FA834236C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 18:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42866EA5F;
	Fri, 19 Mar 2021 17:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B876E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 17:36:34 +0000 (UTC)
IronPort-SDR: iL9rMU0LpPSvZthnj6xG9BxGljk6CfwMO2hfHykUVhmgWuCX+/7B3iPn1XhtgLx2VzCevf56KV
 HQgnTjkH/3Bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="177522282"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="177522282"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
IronPort-SDR: tAe9nMMZdLQAHHgB+eiQLDybI3ntwHTC/0TtGLdfIQFcrgu7vDrrsZkap0MscJDzso/BpVbSiB
 xnQpLHpRXypw==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="450943580"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 10:36:00 -0700
Message-Id: <20210319173603.521779-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] Simplify intel_setup_outputs()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

First and second patches should be straightforward. Third patch is a
tentative simplification that may break things in the presence of broken
VBTs, but I'm feeling confident. Also, GLK should cover the case for
display version 10.

Lucas De Marchi (3):
  drm/i915/display: move vbt check to intel_ddi_init()
  drm/i915/display: remove FIXME comment for intended feature
  drm/i915/display: remove strap checks from gen 9

 drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++--------------
 1 file changed, 16 insertions(+), 38 deletions(-)

-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
