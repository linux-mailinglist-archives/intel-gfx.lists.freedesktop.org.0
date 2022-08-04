Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1C2589881
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 09:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB228FD6D;
	Thu,  4 Aug 2022 07:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107408FD47;
 Thu,  4 Aug 2022 07:37:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B3716612F4;
 Thu,  4 Aug 2022 07:37:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19BCDC433D6;
 Thu,  4 Aug 2022 07:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659598649;
 bh=WCCCi7+K04HSk34cpQtOannRRuatd2BnFuBrKl96JQY=;
 h=From:To:Cc:Subject:Date:From;
 b=iXEh8yK5mnllftkRpyNpPnBhdIyexLOhqftRLlEu/JYtYLlQ9oXjqiBFbB/bAQfZZ
 kmQjCEoNtgTu+dhzCVc703jzve/2M8cRaK5XqCp29U7dE6UvAkQNAmTzVQDsB2yCfQ
 zSCeXWbfTQWVwUL2RNDbHqUcPcwcAQDuFumSbisxy37/At0lpMv3S44RnUO1hTlhkE
 ZiHCcc1VNRr6/ND7llMF1nub3mDzfoqsjMKpM8gHwBlJktsvtlKxK/EcR0KT6pxJyC
 6e6DLggeDRkgkpWRQQBq6AnlcoN+cYyui4IRe9fe31jzo/XHoTX5xFum2LrmG9Jnfm
 6TS/PGXgw7jGw==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oJVQ6-0017HL-L8;
 Thu, 04 Aug 2022 09:37:26 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Thu,  4 Aug 2022 09:37:21 +0200
Message-Id: <cover.1659598090.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] Move TLB invalidation code for its own
 file and document it
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
Cc: Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are more things to be added to TLB invalidation. Before doing that,
move the code to its own file, and add the relevant documentation.

Patch 1 fixes vma_invalidate_tlb() logic to make it update the right var;

Patch 2 only moves the code and do some function renames. No functional
change;

Patch 3 adds documentation for the TLB invalidation algorithm and functions.

---

v3: 
  - Added a fix for an issue from the last TLB patch series;
  - included a better description about the changes on patch 2;
  - did some minor fixes at kernel-doc markups;

v2: only patch 2 (kernel-doc) was modified:

  - The kernel-doc markups for TLB were added to i915.rst doc;
  - Some minor fixes at the texts;
  - Use a table instead of a literal block while explaining how the algorithm works.
    That should make easier to understand the logic, both in text form and after
    its conversion to HTML/PDF;
  - Remove mention for GuC, as this depends on a series that will be sent later.



Chris Wilson (1):
  drm/i915/gt: Move TLB invalidation to its own file

Mauro Carvalho Chehab (2):
  drm/i915: pass a pointer for tlb seqno at vma_invalidate_tlb()
  drm/i915/gt: document TLB cache invalidation functions

 Documentation/gpu/i915.rst                |   7 +
 drivers/gpu/drm/i915/Makefile             |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c        | 168 +----------------
 drivers/gpu/drm/i915/gt/intel_gt.h        |  12 --
 drivers/gpu/drm/i915/gt/intel_ppgtt.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_tlb.c       | 208 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_tlb.h       | 128 +++++++++++++
 drivers/gpu/drm/i915/i915_vma.c           |   7 +-
 drivers/gpu/drm/i915/i915_vma.h           |   2 +-
 10 files changed, 355 insertions(+), 184 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_tlb.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_tlb.h

-- 
2.37.1


