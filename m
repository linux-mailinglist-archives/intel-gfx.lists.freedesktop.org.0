Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9EC9A686B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D700C10E4B9;
	Mon, 21 Oct 2024 12:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCuPGRWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E4210E4B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2024 12:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513831; x=1761049831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aL1xU7WU28PY+A/UmcmMerq9AwWT76JyktoxtroZh5g=;
 b=MCuPGRWMEJ8YEFoPeqcC9zze5tVtCtoMnpKjx2l/+G9N18hr6t1TjpFO
 UR2P1m0N8hobETp8BD1sH0/4ic5DuRo3EmF9S9zkHJJWc8+un7XMiP1z3
 LDOwQsFhPqOPRnITrxd96tZC4txNSOKaZHR2iTg122g5MeMxKjzs9ZZGD
 D/i5uC+gE8YLlu/7UDJPbkHzTx0/sv8ZRQqV9VwhBpM8KQgQVqbG4kB12
 61a6MBtFsV0ygVKzY5q4+0K4Zztj5mfQU+F3w3ia7R2H7olGOiRdZKrXN
 TJ++Udv03MuuGutIxYH/PdZJe1ShOEmRVR2Lm4bmg5FS9l/kG3WJn5/KL Q==;
X-CSE-ConnectionGUID: N5XlNgTkSvaQ2pyB+PKTXQ==
X-CSE-MsgGUID: 7fnHqagVRVKCsytTOAd/Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28447931"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28447931"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:30:30 -0700
X-CSE-ConnectionGUID: 8pcIHc5uTW6vmja5fOtr9A==
X-CSE-MsgGUID: gxpnuLVsQ0iJ541SfgowWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="84574482"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.218])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:30:28 -0700
Date: Mon, 21 Oct 2024 14:30:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Fix irq related documentation
Message-ID: <ZxZJYD_wDTPoGokX@ashyti-mobl2.lan>
References: <20241011214111.98128-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011214111.98128-1-rodrigo.vivi@intel.com>
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

Hi Rodrigo,

On Fri, Oct 11, 2024 at 05:41:10PM -0400, Rodrigo Vivi wrote:
> Also update the function names in the documentation.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes:
> https://lore.kernel.org/intel-gfx/20241001134331.7b4d4ca5@canb.auug.org.au/
> Fixes: 3de5774cb8c0 ("drm/i915/irq: Rename suspend/resume functions")
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
