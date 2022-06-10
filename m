Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37352546811
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B5E112730;
	Fri, 10 Jun 2022 14:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CB3112730
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654870232; x=1686406232;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BTGSN3cW5Vrgxm2/GosCmDZNKsR0BrMu/ujtYwTPSwA=;
 b=ki1Dn2/jW57O6zQDLMVtQWeOaLgMDVNYqpGmwZjD1nbbh44TopQZ6dYg
 i78gN7TcJwOw0d52IrxOsjzkECNWOFD6bCtf4GRUeFQbO7uF7W5451oDR
 V/OTQXGH4lqwQC7kBFi0C5Qj3E+iiB6RddRMkUMP7/HbBazQb49hf1a80
 Ebttef5HP3CSbfPrlmtYrGCUhHcnwxMlWo/NSIubr8NNgsBXWDUsJ4MzU
 QmjBhjIkXqY5zbtkMNJrMQNcyL9BZvIfWVcCZIia2Z3Da2bQFUCiVkL/N
 7SOOVwL2T16mk1ROMQmX2ZvHu1X14iQ7M9ghwmeFV/rTx/gfigO3BacsJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="339391857"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="339391857"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="638156712"
Received: from vrao2-mobl1.gar.corp.intel.com (HELO localhost) ([10.252.58.80])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 17:10:24 +0300
Message-Id: <cover.1654870175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/bios: minor cleanups
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

Just a few cleanups.

Jani Nikula (3):
  drm/i915/bios: use dvi and hdmi support helpers
  drm/i915/bios: no need to pass i915 to parse_ddi_port()
  drm/i915/bios: split ddi port parsing and debug printing

 drivers/gpu/drm/i915/display/intel_bios.c | 73 +++++++++++++----------
 1 file changed, 41 insertions(+), 32 deletions(-)

-- 
2.30.2

