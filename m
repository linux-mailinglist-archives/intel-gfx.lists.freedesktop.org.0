Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD98AEAF1F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 08:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B655010E315;
	Fri, 27 Jun 2025 06:44:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="TaV9wmU0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9533010E315
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jun 2025 06:44:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 6299EA52250;
 Fri, 27 Jun 2025 06:44:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B411C4CEE3;
 Fri, 27 Jun 2025 06:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1751006655;
 bh=EueD+q7k7IgJ54ibKFLNt/pRdk27xpa4PxE5679ohI8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TaV9wmU06hrWBUFLn8h+dgyv1uVus0SlBLx4DYh2zmtW6DUFtsJbOurwpiBuy4wDk
 5As9eE0NQ3vNTC8vPGEEYudH+w9Es1aRuqKfa8oCUiZNgKi2YJImF6tjkNLVmNzX0k
 IZrrn0+eV+0s1Tm8BY7ZDea00DlEMu3m4ewJLE9Cl3B6wvL1l+SGt3BRSMrrJivWzt
 MxXidfkOvFKHhRyFH9bbmqQMNsASMqvl1vZS0wE6diLI3hPGgL9lR3BMeshTXwF9yw
 nD3xG7ur+WQXILiK1lyxqKXHwLUt79vk8SRsxP2/78XXDOJUBjGySCOhILlj7EQVH9
 rGnRN4s6y7chg==
Date: Fri, 27 Jun 2025 08:44:09 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH 0/2] drm/i915: Miscellaneous clean up changes around
 i915_drv.h
Message-ID: <6kgamiujdpwazpvcb6zvxpmqqtxinjaf7om6d3bjpgpowjseiq@4hsy2cm4ol72>
References: <cover.1750251040.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1750251040.git.krzysztof.karas@intel.com>
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

Hi,

On Wed, Jun 18, 2025 at 01:50:47PM +0000, Krzysztof Karas wrote:
> Krzysztof Karas (2):
>   drm/i915: Move out engine related macros from i915_drv.h
>   drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to i915_gem.h

merged to drm-intel-gt-next.

For some reasons dim didn't pick up Jani's Ack and Sebastian's
RnB and it doesn't show up in the commit. Sorry, I should have
checked better. There was also a rebase conflict that needed to
be fixed and some manual work on the commit log.

Thanks,
Andi
