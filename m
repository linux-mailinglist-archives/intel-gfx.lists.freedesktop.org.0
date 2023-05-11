Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A198E6FEF81
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 11:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6D510E5C4;
	Thu, 11 May 2023 09:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154DA10E5C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 09:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799104; x=1715335104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=opwl28g7MH4US/NsM6gYnu5wA8ENC8Uis/2ZpZCRblg=;
 b=F55GOjftOhYVYvRR6MdktHnidMGaxdNIlYMt5h7AxZsrefC3vBUQfYry
 Oa/SgM8YF5SOHVXexMu4S3hylSQxdmv54XeCM3aotqOoww8bi5NMF6Isr
 RulF5JHM9Bn8C9SWMAL/F8rx9If/pJU4owI+tXcR4n123gnWkLA3WQUbV
 Ob2RJ3zNMOerGYIgMQK6FG0fKWAsWVfwjsH4fOEh4cnh0XrEeTq1GVGYt
 fMsOP/UfUhukkcfdtvNFqTHu7w1orgTx9EEY61Mi0dgMQUWmmAlweDo5L
 ZwEWvt6RLOGsZjhPoJjIqObz28Dc9S8IkShdrGLbXaNqh6e+ODDTeTFxX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="349293867"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="349293867"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:58:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="823907390"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="823907390"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2023 02:58:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 15:26:48 +0530
Message-Id: <20230511095650.631387-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Fix modeset locking issue in HDCP MST
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

HDCP MST scenario sees modeset locking issue ever since
topology_state was added to drm_atomic_state and all modeset
locks were being taken for us causing a locking issue to occur
when we iterate over connectors to assign vcpi id, the fix
being to pass acquire_ctx to drm_modeset_lock 

--v2
-call intel_hdcp_prepare_stream instead of intel_hdcp_required_stream
in the beginning [Ankit]
-replace intel_connector argument with intel_encoder [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: add intel_atomic_state argument to hdcp_enable function
  drm/i915/hdcp: Fix modeset locking issue in hdcp mst

 drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 55 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  6 ++-
 4 files changed, 32 insertions(+), 37 deletions(-)

-- 
2.25.1

