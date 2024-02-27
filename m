Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6701F868E8B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 12:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EC210E6E4;
	Tue, 27 Feb 2024 11:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=alien8.de header.i=@alien8.de header.b="AO/xkNcV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.alien8.de (mail.alien8.de [65.109.113.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9857510E7DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 11:14:03 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTP id 348FE40E019E; 
 Tue, 27 Feb 2024 11:14:01 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.alien8.de
Authentication-Results: mail.alien8.de (amavisd-new); dkim=pass (4096-bit key)
 header.d=alien8.de
Received: from mail.alien8.de ([127.0.0.1])
 by localhost (mail.alien8.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AgoBXzs2zQv7; Tue, 27 Feb 2024 11:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=alien8;
 t=1709032438; bh=99TMyWukII079j6mPAdkD+OQGFzvrXC2zWsz+T4V/+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AO/xkNcVx0vGn6QhDuF7PuTPIbOCxbZb84R59KxJGH7Pk5SptW8/bspueiZAxPcmj
 DTqzs+9+cKNzJFbOcZDfLoF9xyzkUN4PfWEMm/MsJsZsNFJcMwByPbB0DMYOhLdT7J
 CAnJBAdf8Ktrb3C+fzQ9WeL2+5kovQw+4RoIQkTb2Wdxa3hogrhk6cciEntvQp9Uin
 CUvv2nHpLbx9yzPfEwA1KAVlmqc+KWFlUq2C5JaUhI8hhomeE9CYZeHm523z0kSJMH
 L4GRXz59JYyOwYy1G9QEIwG1dvwzPrkyb59TxdjSt8f+yfXCunU4uQiOT1EAGjDfeG
 I8mdGBFrW/cdaHfj/5y7VQKKFhda/quH+sKWtaF8rqcmJpd6ApGrx4ZJ+JC9d7YEdh
 uFbo3akQ270OH5Fy72yYUCTPq7mPudr78L//5qy726ueJoRjCDnBb/GA8hZJSwBvNu
 cs6l0jLOS4Yi4mHwpBT073RdCawk+5tSxkfnCkpBFLuf+3XBF48UAd/JrG5E8XmEpE
 T6VAi65XYPZqOKUlbsg8OvBDLf2Z1LMMxqkgHECwwpvMgf9Ul3mUKkW+MRjzb1CkS3
 7wuBO9u+MM/uZgt5zGs0YPdnK39cTe/8Qs6Ww8nAwIj7hjRmwv9EAX/Dt1vv/H7n17
 tZMmRjLBu79QfGtZvRVzNJes=
Received: from zn.tnic (pd953021b.dip0.t-ipconnect.de [217.83.2.27])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest
 SHA256) (No client certificate requested)
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B2E7740E016B;
 Tue, 27 Feb 2024 11:13:49 +0000 (UTC)
Date: Tue, 27 Feb 2024 12:13:44 +0100
From: Borislav Petkov <bp@alien8.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 lkml <linux-kernel@vger.kernel.org>
Subject: Re: BUG: sleeping function called from invalid context at
 drivers/gpu/drm/i915/gem/i915_gem_pages.c:526
Message-ID: <20240227111344.GCZd3D6CibmN8KLWgl@fat_crate.local>
References: <20240227100342.GAZd2zfmYcPS_SndtO@fat_crate.local>
 <87jzmqjir5.fsf@intel.com>
 <20240227105356.GBZd2_RL9hjC_LupZB@fat_crate.local>
 <87h6hujhrz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87h6hujhrz.fsf@intel.com>
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

On Tue, Feb 27, 2024 at 12:58:08PM +0200, Jani Nikula wrote:
> Let's see what Ville says, but in the end bisection might be the
> quickest way to find the regression. Though I understand it can be
> tedious for you personally.

Ha, I can do it in parallel with the gazillion other things. :-)

It'll take a lot longer, though.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
