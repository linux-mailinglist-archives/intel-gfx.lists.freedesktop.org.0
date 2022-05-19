Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8D052CBA7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 07:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DCBF11A59D;
	Thu, 19 May 2022 05:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5859011A58C;
 Thu, 19 May 2022 05:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652939492; x=1684475492;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=fanG2Gwoafyt4s3gbR1R7KWpo0kbkLYo2jGIYF0qyfc=;
 b=nWKA9pKzjWAZu5IBez4cByYj68am4SW2o+Xj+Q6gX40o8dlsBB+E96/+
 OSjVauFklPNWYNTZbhX6lNzb5LGsATE7zEXpzRX3Sfj146o112vzXVHhO
 SUiVYeHTgJ+u2LcCU7xo4l4yL65jGEhJyE+RANv10SNirZQPiTXdcZS3+
 bG+2eRIGqC8AzAOuBFUhHoaM9Z5gph0SUKp/Gz6EMhC89vMwl6daGfeA8
 iyQ3tB92dmI33QsKHBHtRH5uadJCktIwmBUlNtyRUlDNSJv7hXtufzjxs
 C7fk+hzFm1Zv1gy9tNnyTUZwdLrMLLPwuvMVnWvAEFdQWFFKeRUG0vsrD w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="269621180"
X-IronPort-AV: E=Sophos;i="5.91,236,1647327600"; d="scan'208";a="269621180"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 22:51:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,236,1647327600"; d="scan'208";a="598324047"
Received: from edgarisx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 22:51:28 -0700
Date: Thu, 19 May 2022 08:51:25 +0300
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YoXa3YdfqiJNNo2W@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave & Daniel,

Two final -fixes for v5.18.

One is to reject DMC with out-of-spec MMIO (Cc: stable) and another
to correctly mark guilty contexts on GuC reset.

Regards, Joonas

***

drm-intel-fixes-2022-05-19:

- Reject DMC firmware with out-of-spec MMIO addresses.
- Correctly mark guilty context on GuC reset

The following changes since commit 42226c989789d8da4af1de0c31070c96726d990c:

  Linux 5.18-rc7 (2022-05-15 18:08:58 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2022-05-19

for you to fetch changes up to 89e96d822bd51f7afe2d3e95a34099480b5c3d55:

  i915/guc/reset: Make __guc_reset_context aware of guilty engines (2022-05-16 10:13:39 +0300)

----------------------------------------------------------------
- Reject DMC firmware with out-of-spec MMIO addresses.
- Correctly mark guilty context on GuC reset

----------------------------------------------------------------
Anusha Srivatsa (1):
      drm/i915/dmc: Add MMIO range restrictions

Umesh Nerlige Ramappa (1):
      i915/guc/reset: Make __guc_reset_context aware of guilty engines

 drivers/gpu/drm/i915/display/intel_dmc.c          | 44 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_reset.c             |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 16 ++++-----
 drivers/gpu/drm/i915/gt/uc/intel_uc.c             |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h             |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                   | 16 +++++++++
 7 files changed, 72 insertions(+), 12 deletions(-)
