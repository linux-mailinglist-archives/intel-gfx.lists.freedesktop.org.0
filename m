Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5077A6BB30
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFFB10E0BC;
	Fri, 21 Mar 2025 12:52:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=zx2c4.com header.i=@zx2c4.com header.b="SWEnqRYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588CB10E79F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 12:52:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 694015C6BA1;
 Fri, 21 Mar 2025 12:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66E8DC4CEE3;
 Fri, 21 Mar 2025 12:52:23 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="SWEnqRYe"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1742561541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iBEsa6g1RBoSR0J0Kh1JDeWbWAeUk9HC8KUOCLyfPJc=;
 b=SWEnqRYezPlf1E+iZomGlmtJq8Gz+rfAumlre6h7c18OJEcuJ4KtkGml//SFMb2XME2nNm
 HSXdKIdcS9scfPpO1trtdon3a+KYMkSIlGNj04dk46QWfMuxFyMAfKQJTfmoLjvl4vEAjU
 DRtuBxODEY438a851a6a+dzfHYMp1cI=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 991796b3
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Fri, 21 Mar 2025 12:52:21 +0000 (UTC)
Date: Fri, 21 Mar 2025 13:52:19 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Markus Theil <theil.markus@gmail.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, tytso@mit.edu
Subject: Re: [PATCH v2 1/3] drm/i915/selftests: use prandom in selftest
Message-ID: <Z91hA0q-uC04asw2@zx2c4.com>
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
 <20250211063332.16542-1-theil.markus@gmail.com>
 <20250211063332.16542-2-theil.markus@gmail.com>
 <Z64pkN7eU6yHPifn@ashyti-mobl2.lan> <Z9r7ORwztMxsNyF4@zx2c4.com>
 <874izmd0g4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <874izmd0g4.fsf@intel.com>
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

On Fri, Mar 21, 2025 at 02:37:15PM +0200, Jani Nikula wrote:
> On Wed, 19 Mar 2025, "Jason A. Donenfeld" <Jason@zx2c4.com> wrote:
> > Hi Andi,
> >
> > On Thu, Feb 13, 2025 at 06:19:12PM +0100, Andi Shyti wrote:
> >> Hi Markus,
> >> 
> >> On Tue, Feb 11, 2025 at 07:33:30AM +0100, Markus Theil wrote:
> >> > This is part of a prandom cleanup, which removes
> >> > next_pseudo_random32 and replaces it with the standard PRNG.
> >> > 
> >> > Signed-off-by: Markus Theil <theil.markus@gmail.com>
> >> 
> >> I merged just this patch in drm-intel-gt-next.
> >
> > This is minorly annoying for me... What am I supposed to do with patches
> > 2 and 3? Take them through my tree for 6.16 in like half a year? Can I
> > just take the v1 into my tree and we can get this done with straight
> > forwardly? Or do you have a different suggestion for me?
> 
> Feel free to apply it to your tree too. It's not ideal to have two
> commits for the same thing, but oh well.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Oh that's a good idea. Thanks!

Jason
