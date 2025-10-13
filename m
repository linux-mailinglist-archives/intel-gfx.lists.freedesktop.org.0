Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745A1BD6B7B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 01:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABB810E09A;
	Mon, 13 Oct 2025 23:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Bd+s/tMR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7185A10E09A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 23:19:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B366A6051B;
 Mon, 13 Oct 2025 23:09:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7113C4CEE7;
 Mon, 13 Oct 2025 23:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760396990;
 bh=czcqEAQbLL0NXyD+ktVbQAimcVsC7/GlGqMPxLDetiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bd+s/tMRdydOfUGBWZ0qXdJvBItOoCac9ukdVwoHkVFpwYlQRGkuqTKUBveU8QP3s
 jYNC5o4hF4AFNtG1hGmIxMtFOJPfQxnje4eCH6Zx9MW8P4Gxs+yE75/0SOgyX4CKCr
 FW2A+GDzw5CQdvqZf4Zo6aeQJmzlountMVoFublS1mJJRXOAL36Ntkl9C2YYg37ZVL
 qFE4ZNLmSlaDejCVFN63isQauK7ZgS5YKZWviL65JKHHmIH6A7Y174q+MPHoh1/Vgc
 lziaotEGS51umOWZGTHq6M+I+ZpoBEl0s0yk5CLdvg03FWT8FdoFddbYubsiQ46A/J
 lDgwT8/zdjSbQ==
Date: Tue, 14 Oct 2025 01:09:46 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <cgnb24g7cpg4lrsneyfijfe4i7d6p47hahtsrewhaos6vsqm6t@joehsc2htikb>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
 <aOkH3NsPp8B0dTUl@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aOkH3NsPp8B0dTUl@intel.com>
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

On Fri, Oct 10, 2025 at 09:19:24AM -0400, Rodrigo Vivi wrote:
> On Fri, Oct 10, 2025 at 12:55:02PM +0300, Jani Nikula wrote:
> > On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > > reg_in_range_table is a useful function that is used in multiple places,
> > > and will be needed for WA_BB implementation later.
> > >
> > > Let's move this function and i915_range struct to its own file, as we are
> > > trying to move away from i915_utils files.
> > >
> > > v2: move functions to their own file
> > > v3: use correct naming convention
> > 
> > Okay, Message from the Department of Bikeshedding and Nitpicking.
> > 
> > There's really nothing mmio specific about the functionality being
> > abstracted. You have a range represented by two u32's in a struct, and a
> > function to check if another u32 is within that range.
> > 
> > The struct could just as well remain i915_range, the files could be
> > i915_range.[ch], and the function could be, say,
> > i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.
> 
> hmm, I'm really sorry about that... That is my bad. I'm so bad with naming.
> 
> I suggested mmio in the name because i915_range is way to generic.
> The other extreme side.
> 
> Perhaps i915_addr_range ?

If we use it only for mmio, why should we make it generic? If we
want to keep things generic we could well use things from in
range.h, as Jani has suggested in one of his reviews and add our
function directly there.

Andi
