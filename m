Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E658893B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 11:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E1511A6B5;
	Wed,  3 Aug 2022 09:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E9F11A325;
 Wed,  3 Aug 2022 09:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659518370; x=1691054370;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=O2RWXOyQbCHw094fygQkTJRWCFZm1J7VsOY45hRzZ3g=;
 b=Evjvx8Lr807HEh8Ulcy9cZIfQFyoz46tUQ9uJ8KXolfFc1j49KOGL3Lk
 NpihKWWjc5HmlcGS+LX8Vkq5nmuOJvwckeUKbI7r6GVI7xVS+/NU9Aapm
 sXD+Ir58hkwm7EYZrVzGr7oc7q9pcCo8FSf+5pmp68MjsLsqPwyBUwypi
 WSIvqAq4sbAniChAD/J/xWjtV7DCtCujBurEg61sojgpwD2o3aACXL1H0
 uqMGLzsoxb/r/qcXGLPlZx/q2z9hMLXxS2hCJWGG9VzUZ0jslyyFiBy/Q
 gXQghz/hrcQa9qEq3//UjtO21Bhytb6hsAYz82cGSsluo63otgKjqCedE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290400067"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="290400067"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 02:19:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="662004375"
Received: from alubinsk-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.61.200])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 02:19:24 -0700
Date: Wed, 3 Aug 2022 11:19:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <Yuo9ixhBLYztz6CI@alfio.lan>
References: <cover.1659077372.git.mchehab@kernel.org>
 <f4d7b534511b57336eaea0ce696afdf675cf5892.1659077372.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4d7b534511b57336eaea0ce696afdf675cf5892.1659077372.git.mchehab@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/gt: Move TLB invalidation
 to its own file
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
Cc: Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mauro,

On Fri, Jul 29, 2022 at 09:03:54AM +0200, Mauro Carvalho Chehab wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Prepare for supporting more TLB invalidation scenarios by moving
> the current MMIO invalidation to its own file.
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>

I already reviewed this patch... anyway I checked it again and
it's all correct.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
