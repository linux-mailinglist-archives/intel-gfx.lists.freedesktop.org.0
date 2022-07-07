Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9A556AA5A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 20:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9451134C7;
	Thu,  7 Jul 2022 18:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE6D7112EA2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 18:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657218010; x=1688754010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1IRYj92c7iA6j6jg622/o9mYiJZMzLF8IolL7w+kzVs=;
 b=RxjZNZqj2GJf0MmMZq/dpjgQDGLryxmRa3Elxli2IMRAZUdurLY3RoKn
 ZXCguIxw5XMqyaOm3TfY+5vWojdXnI+SUW65FoFkxYF3h8Xrp0MszzflE
 WkvsIQY5mJcmihN6cfvne0yiFGZxrLW8MUQQbpFUwVJTgPgQ3Ot2eSm6G
 uUkbTQCJEkFEyAoua70C7Ej1XQ91MIrv7cRMdHS+5XtiiAYcFqhUbg6wF
 8mkLCc7+TmWCvjjsnadFac+FH5clyd6fejuMASAuokbkbWG6uek0N1C/L
 p5H5gg0LW6rEBcq+0wJjcrpUZHh+VcxrITkleWzjAAdoTQ3k5oEvMkq/e g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="272887607"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="272887607"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:20:10 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="598117540"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:20:09 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jul 2022 11:19:58 -0700
Message-Id: <20220707182000.2794078-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] i915: Introduce Meteorlake
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Meteorlake is a new client platform following RPL S. Meteorlake
introduces version 14 for Display, version 13 Media and version
12.70 for Graphics.

This is the basic platform definition series to introduce Meteorlake.

Radhakrishna Sripada (2):
  drm/i915/mtl: Add MeteorLake platform info
  drm/i915/mtl: Add MeteorLake PCI IDs

 drivers/gpu/drm/i915/i915_drv.h          |  5 +++++
 drivers/gpu/drm/i915/i915_pci.c          | 26 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c | 15 ++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  5 +++++
 include/drm/i915_pciids.h                | 19 +++++++++++++++++
 5 files changed, 70 insertions(+)

-- 
2.25.1

