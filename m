Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CE69789DF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 22:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F33810EAF6;
	Fri, 13 Sep 2024 20:21:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="mZO9WPmw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B54010E840;
 Fri, 13 Sep 2024 20:21:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B87345C5B3B;
 Fri, 13 Sep 2024 20:21:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41C23C4CEC0;
 Fri, 13 Sep 2024 20:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726258906;
 bh=n0j4YH2mUrcxhnNRuCLqL5TwnBzYttL++h8XR5dVEbg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mZO9WPmwEMBi2CCWYFc3Zg6LJcB/DncowGE9OoHCK1tS8uTG0bejglxkOKKu+wsfp
 3KRWQXZ2pnGRytxShOWIj6a754O7PXmdstxz0vc5Gj6XlyvgEXy2wkiRaQMvYNKjV7
 0lzcbrgEgpNPqMLrK5MEiZmaCCtj3RErEn5rDRmpMXGjc7Dny+d6BwX5TOJJvBHm5Q
 LwCCiph0tCaz+Zo/IBHh8u1PBZmHMbP3m8QWgPR5a/oRYwRIkuVc99GQpMai9AUXvt
 Q4CrGgqK8bV7wHI9ejB6mpYWu/+6xZQqhXyFM7j634jvFW59OavUsuN8uC5ylAuRLy
 E2w0Fhw1xu5fw==
Date: Fri, 13 Sep 2024 22:21:42 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/debugfs: remove superfluous
 kernel_param_lock/unlock
Message-ID: <acpjyoflnq4xp6luoxncqwf65rnby3f4x6tdszpygljbtepbbb@pnbm52imsy54>
References: <cover.1726231866.git.jani.nikula@intel.com>
 <330360c3b27aaff1cdb132f1500ba68de9300508.1726231866.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <330360c3b27aaff1cdb132f1500ba68de9300508.1726231866.git.jani.nikula@intel.com>
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

On Fri, Sep 13, 2024 at 03:51:54PM GMT, Jani Nikula wrote:
> We're not actually accessing the module params here anymore. The locking
> is completely unnecessary.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
