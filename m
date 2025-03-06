Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E331A569B5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2CA10EB8B;
	Fri,  7 Mar 2025 13:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="lU5rMSu6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA11B10E9FF;
 Thu,  6 Mar 2025 16:44:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 59DCF5C58DF;
 Thu,  6 Mar 2025 16:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D33BCC4CEE0;
 Thu,  6 Mar 2025 16:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1741279471;
 bh=Wng5H8fUyX0zmymCbJHtpqhlGMVgqBVQyqJrLsrQqPI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lU5rMSu6LcD6/n9uR3jReYniIhIn3KBk/xKq66dxPNZ/10dcE+0q9MC1DSKia3Chk
 tW8yv5zcZyETYSzaJQyLfUD0FMFhHxaPvrHNZY/okOnTM7nPqH0lWxJzBekPhDTaSP
 vnTE7gJ6XaKtAo68CdAUGN2FUi/PrtFL8EtugzCY=
Date: Thu, 6 Mar 2025 11:44:29 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Knop, Ryszard" <ryszard.knop@intel.com>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "rk@dragonic.eu" <rk@dragonic.eu>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "daniel@fooishbar.org" <daniel@fooishbar.org>, Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
Message-ID: <20250306-guillemot-of-nonstop-honeydew-aed30a@lemur>
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com>
 <20250305-nonchalant-fresh-stoat-61ea0a@lemur>
 <87frjqwidc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87frjqwidc.fsf@intel.com>
X-Mailman-Approved-At: Fri, 07 Mar 2025 13:57:54 +0000
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

On Thu, Mar 06, 2025 at 12:42:07PM +0200, Jani Nikula wrote:
> Side note, I often pipe messages from my MUA (notmuch-emacs) to b4, as
> it nicely parses the mails and picks up the message-id from
> there. Overall it works great. However, b4 seems to err on the side of
> writing color codes to pipes, and I get this as output:
> 
> ---
>   [32m✓[0m [PATCH v5->v6 1/6] drm/i915/hpd: Track HPD pins instead of ports for HPD pulse events
>     + Reviewed-by: Jani Nikula <jani.nikula@intel.com> ([32m✓[0m DKIM/intel.com)
>   [32m✓[0m [PATCH v5->v6 2/6] drm/i915/hpd: Let an HPD pin be in the disabled state when handling missed IRQs
>     + Reviewed-by: Jani Nikula <jani.nikula@intel.com> ([32m✓[0m DKIM/intel.com)
>   [32m✓[0m [PATCH     v6 3/6] drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin
>   [32m✓[0m [PATCH v5->v6 4/6] drm/i915/dp: Fix link training interrupted by a short HPD pulse
>     + Reviewed-by: Jani Nikula <jani.nikula@intel.com> ([32m✓[0m DKIM/intel.com)
>   [32m✓[0m [PATCH     v6 5/6] drm/i915/dp: Queue a link check after link training is complete
>   [32m✓[0m [PATCH v5->v6 6/6] drm/i915/crt: Use intel_hpd_block/unblock() instead of intel_hpd_disable/enable()
>   ---
>   [32m✓[0m Signed: DKIM/intel.com
> ---
> 
> I haven't had the time to dig into b4 source on this, but it would be
> great if it could automatically detect whether sending colors is the
> right thing to do or not. Basically only emit color codes to interactive
> terminals, unless forced also for pipes.

Yes, it should do that automatically. Please send a bug report to
tools@kernel.org and I'll work an automated switch to "simple" attestation
marks when we don't have a terminal.

-K
