Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CED175B98DA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 12:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC8910E19F;
	Thu, 15 Sep 2022 10:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B646C10EAD3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 10:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663238003; x=1694774003;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j3VPyvfPcio2dwIzwYUzRgDxYHjmdF0QJfhNZDjGtXI=;
 b=ddq7lPR/i1WsHVVxMEaJjKYOwwv1dOArqRHPZK7OkcrWjWgvtXMXzS8U
 7gJ5mgUpuZWDZ5m6tj+EOXnvbPETNCSd+8/8AtHLe873ApPuyUb87evaz
 cpdDzeWueCCHU0XyY1VIS+tEzu9Qk4LfBRqR8EeKt+JE9cu3RqgY4QJC8
 GC5mGUky2kRBsdMihlx48rkkcd0p2eM7dfrKfCpq7sZDFOO+2r/wF9pTi
 xzG9AA3CH/zVRHhI3JeIZV/3EmMg1qKHW+jhFmiFoy5SNWonaLoMBfagY
 t5xH/WxfwOYGvYYL+Xjp74nbgx5m+Fp/LIWnjEy3jqQgVcvjLjcRbUekG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281707346"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="281707346"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 03:33:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="617223377"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 03:33:20 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Sep 2022 16:03:10 +0530
Message-Id: <20220915103311.5634-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/1] DGFX pin_map with rpm
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per PCIe Spec Section 5.3.1.4.1
When a PCIe function is in d3hot state, 
Configuration and Message requests are the only TLPs accepted by a 
Function in the D3hot state. All other received Requests must be 
handled as Unsupported Requests, and all received Completions
may optionally be handled as Unexpected Completions.

Therefore all PCIe iomem transaction requires to keep the PCIe endpoint
function in D0 state.

This RFC proposal is depends on the assumption with my understanding of code,
we can't partially pin_map the lmem gem object, with considering 
that every caller of i915_gem_onject_pin_map() does not need to grab 
the wakeref. We can embedded the wakeref inside the gem object itself.

Requesting community to provide the feedback on this proposal.

Anshuman Gupta (1):
  drm/i915/dgfx: Handling of pin_map against rpm

 drivers/gpu/drm/i915/gem/i915_gem_object.c       |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.h       |  5 +++++
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 14 ++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_pages.c        |  8 ++++++++
 4 files changed, 29 insertions(+)

-- 
2.26.2

