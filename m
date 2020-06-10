Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E911F5D2F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 22:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 660736E85C;
	Wed, 10 Jun 2020 20:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [IPv6:2002:c35c:fd02::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A5F6E85C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 20:28:46 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jj7Kv-006d70-IQ; Wed, 10 Jun 2020 20:28:37 +0000
Date: Wed, 10 Jun 2020 21:28:37 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200610202837.GV23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [git pull] uaccess i915
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

	Low-hanging fruit in i915; there are several trickier followups,
but that'll wait for the next cycle.

The following changes since commit b44f687386875b714dae2afa768e73401e45c21c:

  drm/i915/gem: Replace user_access_begin by user_write_access_begin (2020-05-01 12:35:22 +1000)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git uaccess.i915

for you to fetch changes up to 7b3f0c4c56b08a86f890cad3599242c78c683aa9:

  i915:get_engines(): get rid of pointless access_ok() (2020-05-01 20:35:42 -0400)

----------------------------------------------------------------
Al Viro (5):
      i915: switch query_{topology,engine}_info() to copy_to_user()
      i915: switch copy_perf_config_registers_or_number() to unsafe_put_user()
      i915 compat ioctl(): just use drm_ioctl_kernel()
      i915: alloc_oa_regs(): get rid of pointless access_ok()
      i915:get_engines(): get rid of pointless access_ok()

 drivers/gpu/drm/i915/gem/i915_gem_context.c |  5 ---
 drivers/gpu/drm/i915/i915_ioc32.c           | 14 +++----
 drivers/gpu/drm/i915/i915_perf.c            |  3 --
 drivers/gpu/drm/i915/i915_query.c           | 62 ++++++++++-------------------
 drivers/gpu/drm/i915/i915_reg.h             |  2 +-
 5 files changed, 28 insertions(+), 58 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
