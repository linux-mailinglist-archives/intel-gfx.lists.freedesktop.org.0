Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77323B1F4DD
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Aug 2025 15:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605FB10E1F1;
	Sat,  9 Aug 2025 13:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="tnnXmTta";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F17E10E1F1
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Aug 2025 13:57:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4DE1CA54FA6;
 Sat,  9 Aug 2025 13:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EE8DC4CEE7;
 Sat,  9 Aug 2025 13:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754747857;
 bh=sKxSAPR/XlbHuG/Q7z7Cm6u1OkLGng2HNh63NFP0Q54=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tnnXmTtau2Y136+lNSSUb/f+7kJdeT1W5d+CrNnmUFqkSdmSDDykfANSKeirMMxnk
 2eMJUYjCPMOstHSai2mGiMu5fZ4G2IzrJwNPG4GKB54T6Xqg3UVJos467QGjiv9KnR
 NewYrz98cqM1AJI+CWOBzx8+KmkcQuLJojyjFAMGN37qGikEkysEcl8O25TtVK2jjd
 3azl5kO4EX5HsJhuYCgRR180Ukf2U4m+26cIINOw84XYOiCsmTkiA4q/Hbq6pREVqx
 FgCvhFVXKD90bmfdvChH2Vk+wUyk9puFh2ul9w6lvSS47KiZGGQ2uPX59+QjpZrIPh
 AByh0T9qY1TYA==
Date: Sat, 9 Aug 2025 12:57:33 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/gt: Protect against overflow in
 active_engine()
Message-ID: <rkqjtltxbpxpmz5s432p6qpi5k2jvgiqvm2qndc7ezcrdmmryy@omj7doe25si5>
References: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
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

Hi Krzysztof,

On Tue, Aug 05, 2025 at 11:41:42AM +0000, Krzysztof Karas wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
> 
> Protect from overflowing the variable by checking for 0 value
> of "count" before entering the loop.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

merged to drm-intel-gt-next.

Thanks,
Andi
