Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD6CAEAE7D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 07:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4D710E106;
	Fri, 27 Jun 2025 05:39:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="JPmCrWPv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1981410E106
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jun 2025 05:39:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 411426111F;
 Fri, 27 Jun 2025 05:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17892C4CEE3;
 Fri, 27 Jun 2025 05:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1751002747;
 bh=radBIPZ+Q9tEbaTzLNTkiDfM2fIoaeGtMbcUovvRrvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JPmCrWPvK0qh6+R8QUybmYYjPyzGT3u0fNsAfMAXRnY5WXRGNXsPoWaxS+O/aatBR
 IcwPp4tAwjpFj5vRLS82PMSlUM//7PSZHUuz3H5uhM+t6+fWQsD6IzSeezW/FXLIdk
 JzvDTMdgfQ7Ldp0Ij83TLaVNTr7LlTjBFsaLqfB8eEw+ATg18DADToWsGTALoW3NKy
 ycQvvU//SwXVvtzwgnrBvyT5F2PKMtDNWSnpWePPXfr3g9YdsAtfAvqD8Zf0LOGWzb
 AHdKq1v8gofQI1rEYAU9zv7JDfbByzEnR8vL6LHIqegTTcPRaror4slhlv1FeAjWEA
 9zT9/Zod4+9yw==
Date: Fri, 27 Jun 2025 07:39:01 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH 1/2] drm/i915: Move out engine related macros from
 i915_drv.h
Message-ID: <wzjny5t4kcd22jwji3l4gsayduyaoyjmrfwy4aum743oqnjgad@iefpb5saddzz>
References: <cover.1750251040.git.krzysztof.karas@intel.com>
 <9b9ed5bbdb37470fa679c5baf961424c9cfbad11.1750251040.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b9ed5bbdb37470fa679c5baf961424c9cfbad11.1750251040.git.krzysztof.karas@intel.com>
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

On Wed, Jun 18, 2025 at 01:51:30PM +0000, Krzysztof Karas wrote:
> Move macros related to engines out of i915_drv.h header and
> place them in intel_engine.h.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
