Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53132B5021B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 18:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B9F10E247;
	Tue,  9 Sep 2025 16:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="AUc8r9Kg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D8310E247
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 16:06:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A9BE1601AC;
 Tue,  9 Sep 2025 16:06:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD14EC4CEF4;
 Tue,  9 Sep 2025 16:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1757433989;
 bh=sTaCCDMOetgxL/16DR7CYSQfsBkYgTcUJVf9ysfweio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AUc8r9KgeRGZircFyFTymLYYZMHI9cGFTjiKxGFZTm2VQ1WZePUm+XoPhdMiRovpJ
 1E+HCrSlQrusB0o9te8yceFMYalGhFh2DIvuiJYSfWP908IdfRfIohvCPLP36NOODY
 ZrgPswEVgj9MgkCnUexsykjgRwXMxKaUF8mtOfSmNYFiMYQ75LKmPHvia5GdK3ynEe
 uFNL3vYH7L8FYl2vpg0WO+zTdSDgk/YEebfnU8JB2E3zGwtaMzCUDwKpDCACOhtdON
 hK7YEVbL/6HxxS8ooMWiN5xQOWEqArqAbyVE67H3VmzOZHnelGr59iXNrILnxq9npe
 Q3SMqiFLD1roQ==
Date: Tue, 9 Sep 2025 18:06:25 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com, andi.shyti@intel.com, krzysztof.karas@intel.com, 
 sebastian.brzezinka@intel.com
Subject: Re: [PATCH] drm/i915/gt: Fix memory leak in hangcheck selftest
Message-ID: <jr77g42xxaeeid5jeiz7jixxqjt7rp2vl7eozlsn45u2f3mios@fx5bam4xtsus>
References: <20250904193041.12888-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904193041.12888-2-jonathan.cavitt@intel.com>
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

Hi Jonathan,

On Thu, Sep 04, 2025 at 07:30:42PM +0000, Jonathan Cavitt wrote:
> In active_engines, if intel_context_create fails, we need to go
> backwards through all the created contexts to free/put them.  However,
> the way this is currently performed skips the first created context, as
> if count == 1, then --count returns 0 and exits the while-loop
> prematurely without performing the intel_context_put on context 0.
> 
> Fix this by post-decrementing count in the while-loop, rather than
> pre-decrementing it.  This change makes the prior guard against count
> underflowing unnecessary, as the while-loop exits when count == 0.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

reviewed and merged to drm-intel-gt-next.

Thanks,
Andi
