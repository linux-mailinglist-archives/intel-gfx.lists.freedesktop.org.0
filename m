Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2219563E6E0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E5510E51E;
	Thu,  1 Dec 2022 01:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236E710E51E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 01:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856737; x=1701392737;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZUvydgMSpIYP2Ook7JoUgni0zJX6nn9Q5usvNrcUs44=;
 b=kKJa4QWRZE2klnJqjg0OUm+5kd4Lh+bf0troJQNrz18GGXE/VbwHwKwD
 LK9FjfyZtSc+q3ls/zgUfQ6k9bifTWHIo1ycY8amhbY7n4RyxjCi1w9KP
 xtOgGKXFQIC0i/Cux8s0e/N757AXWvSbmjxoNNjfWcm+pUVhNZDeAU4w6
 cIqbKlIAJlpYKtkoBT9cCmJVQ2n8dq4ac10JPIFCVFwaukL+3INfa8A/x
 5nCd5MvGqXowg+qwfdPaz81nEzGdR+2lyH9PsUrLov60lRo0HFPJjffHr
 MCvzw7EeYEKC367edksXC37vU2gCTuiDoG38jvxtnXlBrLQDCs6sv/KeT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="377718677"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="377718677"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973322673"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973322673"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 17:05:31 -0800
Message-Id: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/mtl: Add OAG 32 bit format
 support for MTL
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

Enable OA for MTL by adding 32-bit OA format support and relevant fixes.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20221129010522.994524-1-umesh.nerlige.ramappa@intel.com

Umesh Nerlige Ramappa (4):
  drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs
  drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
  drm/i915/mtl: Update OA mux whitelist for MTL
  drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL

 drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
 drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
 2 files changed, 38 insertions(+), 17 deletions(-)

-- 
2.36.1

