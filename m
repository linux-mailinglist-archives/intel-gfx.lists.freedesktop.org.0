Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84258977BD1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 11:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E16110ECCB;
	Fri, 13 Sep 2024 09:05:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="LqYA54m3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4445010ECCB
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 09:05:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 946CFA45BC7;
 Fri, 13 Sep 2024 09:05:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74476C4CEC0;
 Fri, 13 Sep 2024 09:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726218318;
 bh=i+jkLvsxOa+k81l+UvNJdIdHEWPOrhM5S7XYqspA9e0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LqYA54m3DctvFOa+f0Em5pKis7Kwo/wQqPRV7WsVKvHoyhw/HnMPbVevTF7dt0RM1
 qdYUi1yZFzvbHV5hc522OxWcBwNWCaqhXFzc7jaERCidZcJ5VOqTOaYcfexBKZwGfQ
 AbDKbpqj4XGd00n0tfiZITl2FOBp5TbVY6Z3Ad6LzAarcD3eqhBpPAFJ/J3yTwBE2O
 tUT37iMfeo6R486wjLrzXFNIxnu+aYlWpFV5cY+VNE26E5gZRwMOZV4zfQf+xBC/kT
 a6rq/rSjJ92Lg4j6lksC0aHH5kQZXA/hyDdUFqIS/Z/p3cenhjLs4s89mSkaUqsxlt
 MHP2YCcbSJ/GA==
Date: Fri, 13 Sep 2024 11:05:15 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/irq: Move irqs_enabled out of runtime_pm
Message-ID: <zmbzkbvt7kchriak2bmdhbg34ppmnbxqqhhdi6vcob4ioab5sn@jg2c63usr4ie>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
 <20240912172539.418957-2-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240912172539.418957-2-rodrigo.vivi@intel.com>
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

On Thu, Sep 12, 2024 at 01:25:38PM GMT, Rodrigo Vivi wrote:
> This information is used in many places and it doesn't have
> anything to do with runtime_pm directly. Let's move it to
> the driver, where it belongs.
> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
