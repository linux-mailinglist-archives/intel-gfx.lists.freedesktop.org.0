Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3526A4439B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 15:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4723510E6EC;
	Tue, 25 Feb 2025 14:55:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="OHjds/VK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17E710E6EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 14:55:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 36CF95C4307;
 Tue, 25 Feb 2025 14:54:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22ED6C4CEDD;
 Tue, 25 Feb 2025 14:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1740495302;
 bh=cEr6TrMgGkppuvKMS/H8hpW8RW6Dd+JV+38gs6nABAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OHjds/VKXANOFY5Y+NwuYr3Fg5zVcOaR4tgeE935qQBvrxavKEy8OuHI6VTyqpwFB
 j77hKdmj1rSMIypIVDTnafnEuDwhpqcILluNGs16xF/z5t57xvh4ZZF6OWKCsheQ5c
 xgBnbBihLMUcsiWN7P84fvIHaEdhOP+6KfsEN+gG2oio4B3nVd8D3qa0C0HOCTFpJK
 uzxuq9og9lauhrygKgE7nunb8gvumy2YGkVWNwXO+bXiKXoyY1aEBUggom9i9UYtVK
 WLdysUwI2wGQaMqE+k/x3isFDdaQ5JLKEMrmV+wMNPjkV5WfcUlZjIO8d+fCW4E/8T
 DuZ8Z5vziQjgQ==
Date: Tue, 25 Feb 2025 15:54:57 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, 
 Ville Syrjala <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Use REG_BIT() & co. for BDW+ EU/slice
 fuse bits
Message-ID: <2ueianfplrtjermhu47wufhrmws355ycleyarwagcxvyiqk5ic@t2gn7juxcqph>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-10-ville.syrjala@linux.intel.com>
 <Z7xHVpOEvu7tCn6a@ashyti-mobl2.lan> <87bjuq796e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bjuq796e.fsf@intel.com>
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

Hi Jani,

On Tue, Feb 25, 2025 at 09:52:41AM +0200, Jani Nikula wrote:
> On Mon, 24 Feb 2025, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > Hi Ville,
> >
> > On Wed, Feb 12, 2025 at 01:19:37AM +0200, Ville Syrjala wrote:
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> 
> >> Convert the BDW+ EU/slice fuse bits to the modern REG_BIT()/etc.
> >> style.
> >
> > using REG_BIT() and co. doesn't alway make it more readable. In
> > some of the cases below I would have preferred not to use it.
> 
> Interesting. I read through the patch and I thought all of it was
> good. Care to elaborate?

yes you're right, I should have given an example, but I had
already edited the e-mail and I was lazy to get it back.

In any case, this is an example:

-       s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
-               GEN11_GT_S_ENA_MASK;
+       s_en = REG_FIELD_GET(GEN11_GT_S_ENA_MASK,
+                            intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE));


The removed line to me is clearer than the added line.

I'm not saying that it's not good (otherwise I wouldn't have
r-b'ed it), I'm just saying that not always using the REG_*
macros makes the code clearer.

For consistency with the rest of the patch is anyway fine.

Thanks,
Andi
