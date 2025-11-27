Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC29C8DD22
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 11:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686AD10E7C7;
	Thu, 27 Nov 2025 10:43:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="dK+/9oVV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5318810E7C7;
 Thu, 27 Nov 2025 10:43:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 572D360141;
 Thu, 27 Nov 2025 10:43:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A40EC4CEF8;
 Thu, 27 Nov 2025 10:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764240204;
 bh=siBELSLEcBl/Tbnz3+2BJ0FDAgJoaLvrVZYY5RCxB3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dK+/9oVVDnpDqT+HaqtgLELvZjgZuSoAoYfmD00Af8A1sMm3lasV3ALbUNstRiqBS
 PTCeIUXtY0sJFNDJnc1fZd4GQ51A4vFmRjs/GzoiNjmJDBb4/7otNngAwgBEj8pX2k
 QCJRLqASR8qO/ZSXgV3IBNuZaXtjnc2w0zMVWw0GCRH80H4b26BMRq8bcT0wigKq7D
 UwIgPx60aa0ZoFESq1+7MwF4kS+jPU1gXC47czXdccPDlsSuZH4zLUh1EItXXlIxc1
 JpbAOc/qPf5QqjI9zglXKUDNZT+6tylzoq7RrhyglQ4/9ATw6xufWMGqlAKwUcoLqv
 kyr8kgZyly+5w==
Date: Thu, 27 Nov 2025 11:43:19 +0100
From: Christian Brauner <brauner@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-fsdevel@vger.kernel.org
Subject: Re: REGRESSION on linux-next (next-20251125)
Message-ID: <20251127-kaktus-gourmet-626cff3d8314@brauner>
References: <a27eb5f4-c4c9-406c-9b53-93f7888db14a@intel.com>
 <20251127-agenda-befinden-61628473b16b@brauner>
 <5ffeb0af-a3c9-4ccb-a752-ce7d48f475df@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5ffeb0af-a3c9-4ccb-a752-ce7d48f475df@intel.com>
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

On Thu, Nov 27, 2025 at 03:03:27PM +0530, Borah, Chaitanya Kumar wrote:
> 
> 
> On 11/27/2025 2:57 PM, Christian Brauner wrote:
> > Pushing out the fix now. Can I trigger a new test myself somehow?
> 
> Thank you Christian!
> Not really. Once it makes it to linux-next, our CI will pick it up. Till
> then let us validate locally.

I just pushed:

https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git vfs-6.19.fd_prepare

If you want to test that, please.
