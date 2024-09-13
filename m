Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC16977BC7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 11:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CC310E17F;
	Fri, 13 Sep 2024 09:01:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="bOGz9jF+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012ED10E17F
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 09:01:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D55375C5A26;
 Fri, 13 Sep 2024 09:01:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961ECC4CEC0;
 Fri, 13 Sep 2024 09:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726218107;
 bh=ne3/lPb5s73DtAdItEMZbVACQRuOOjemRJnEAZRzmfg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bOGz9jF+dRedtjIJYQrM9/nNjSLzrnbez9jHkryepaMj0FlbPihpqxJH9WGWc9EQ+
 BQGnTGF7CBuvETXPCa0Hs9x+CDmm44J3hK4eRLbSqsb0RXmBpqvei509xcapmXDkav
 n8zepfNbOCjyx0Dx0tbJ7Hmk0pilfAZwX9EN/ZvgeZxf9NGjOpxYyDbdP0OGD9bJuj
 89krw1c7FdqBykh4JF80sh3e0JmShXhrbf8paCxLs9V9IJKNUghtYTH11uHy6aCZ47
 NPzPpf7eG/IhC7YuYn4O3B7Mz9WIGiLM2dYQ2r0gwqPFaJi/3B0/SG+ikhvBja87Nq
 rGZ8bMAkDzc2Q==
Date: Fri, 13 Sep 2024 11:01:43 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/irq: Remove duplicated irq_enabled variable
Message-ID: <i46x7jl6pa4yuugrur3irchdafg2h4lbxs3avfx7lgo7wwa4dd@fjtli3ngwkca>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240912172539.418957-1-rodrigo.vivi@intel.com>
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

On Thu, Sep 12, 2024 at 01:25:37PM GMT, Rodrigo Vivi wrote:
> Let's kill this legacy iand almost unused rq_enabled version
> in favor of the real one that is checked at
> intel_irqs_enabled().
> 
> The commit 'ac1723c16b66 ("drm/i915: Track IRQ state
> in local device state")' shows that this was a legacy
> DRM level irq_enabled information that got removed.
> 
> But the driver one already existed under a different

But the driver has already one under a different name (and
perhaps specify which one and which location :-))

I don't think you need to send a v2 for commit log changes.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
