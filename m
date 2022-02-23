Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86694C15A6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 15:47:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADA410EB56;
	Wed, 23 Feb 2022 14:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4244110EB56;
 Wed, 23 Feb 2022 14:46:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DA492B81FE8;
 Wed, 23 Feb 2022 14:46:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 868AEC340E7;
 Wed, 23 Feb 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645627614;
 bh=vpgwV1R5ym8F2CoToh9UIP31zXnshBp9Dq+OGFK5Z/8=;
 h=From:To:Cc:Subject:Date:From;
 b=gVyUDvCICsCNnrnMNypi1UPFXpITuN6dKZLPYItiHFpSIYVAZvQgT35cM8c7++MDY
 Tqxh+st74Bskw7JxPGjXIgyH4k/R8vT4DXEiBnszZsJP+6/A/C0c1wA5iGfjma9Avv
 AGS6tuwRMd5P/dLtpMfOxT1SWmwueOPS56sL8vyEaLVFtmKOwhaiRajSLG1Ias7HAG
 7aMpcokII15HeIXgTdftXUKnDZUfiHJo+77l0F3v7JMHIbH0usc+pv4tDvSLsUk+Ic
 cnFH/gEzrsPXSeKACOClrH5Ztx6roDEZI+W6CLYbYzKN15Wz3nOCKOkpkUQIi5NYMD
 KcuXxTvucLfvg==
From: broonie@kernel.org
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Date: Wed, 23 Feb 2022 14:46:49 +0000
Message-Id: <20220223144649.254884-1-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] linux-next: manual merge of the drm-intel tree with the
 drm-intel-fixes tree
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Today's linux-next merge of the drm-intel tree got a conflict in:

  drivers/gpu/drm/i915/display/intel_bw.c

between commit:

  ec663bca9128f ("drm/i915: Fix bw atomic check when switching between SAGV vs. no SAGV")

from the drm-intel-fixes tree and commit:

  6d8ebef53c2cc ("drm/i915: Extract intel_bw_check_data_rate()")

from the drm-intel tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

(took the drm-intel version)
