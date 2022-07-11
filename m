Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0606A5707E3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 18:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C1B8F7A8;
	Mon, 11 Jul 2022 16:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03BF8F7A4;
 Mon, 11 Jul 2022 16:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657555548; x=1689091548;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SBLzIrFauXB2dQnubjkJ99TGy/UYrvwLEdU+VykXB/o=;
 b=Nvdi3hk3J0jnlKlApm6l0B9kPeFCbcCrefmZbKSPeijHTQxB5Jqrr1Tn
 8UuTlGcIy2QIY78i77OcYGlBUQxWIm2NMkUNRqkI6SBCgmT5ncUvmy/Xe
 dAW8GyUDp2grkJ2WbMN7LbYW107UNPlQTc2p5b3VWaW4W2yHvAou7tUbc
 Y6FlkXF5v5K0ndob0lvifa8jds17/qDLYQEMPmqJR7Xe3075Ncvytab92
 Rpwy5B6WMWAOYqpKbThbJy898+JzYmbXvILVAG9cB1QFFaB4+ORPeZtFt
 RVwoJehxUQyCmlcdJUfig5UYKkYc3addNRsHQWtP7QnkaMl2olnhP5AYo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="348679103"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="348679103"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 09:05:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="652513632"
Received: from lramir2-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 09:05:06 -0700
Date: Mon, 11 Jul 2022 18:05:02 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YsxKLqbXF1hJlrYm@alfio.lan>
References: <20220624113528.2159210-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220624113528.2159210-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix subtraction
 overflow bug
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
Cc: intel-gfx-trybot@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Fri, Jun 24, 2022 at 01:35:28PM +0200, Andrzej Hajda wrote:
> On some machines hole_end can be small enough to cause subtraction
> overflow. On the other side (addr + 2 * min_alignment) can overflow
> in case of mock tests. This patch should handle both cases.
> 
> Fixes: e1c5f754067b59 ("drm/i915: Avoid overflow in computing pot_hole loop termination")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3674
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

pushed in drm-intel-next-fixes

Thanks,
Andi
