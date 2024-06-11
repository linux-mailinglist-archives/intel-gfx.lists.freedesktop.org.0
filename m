Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68629903FCE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 17:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F6910E678;
	Tue, 11 Jun 2024 15:14:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="D0EcbFxH";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="WWdXczns";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1176E10E1AB;
 Tue, 11 Jun 2024 15:14:30 +0000 (UTC)
Date: Tue, 11 Jun 2024 17:14:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718118868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=omhnYLj0oQ8gnF+NT4o7zzZWdeRUWxKsmgQoIt+3BLc=;
 b=D0EcbFxHBGd9fwUHXvEqVc+aVDpEB6PK7DF1AkQ6RfYBvUCzLFMaVegkGd76tzSRkjUklf
 MJqD57K9yBoH4TrUzdeO3KJA9xH3hj9osAKCYZ1N3gevHUr4gEw0ARlk7RsQ7WEGMlCseK
 Idh+GkPtSYB5tReCRCRTSS9uetW4JQGXlR2cxiXfL7eop86MXbulhfBx5iT11S07ucb+Uv
 NTZKs3M2d/pFyQt7UCjtyst4jwHfjzliWMcPliwL72/hSBMhA+CvqdS9jVJgISvF+exRkG
 4lp8fszICMgcITPpUlbWHyEy3PlytbaoAi+5vCGBia+Yi0WDz4as+krY3q42+Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718118868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=omhnYLj0oQ8gnF+NT4o7zzZWdeRUWxKsmgQoIt+3BLc=;
 b=WWdXcznsV06MWyIsb+/rSq0GU1xK5Gzd2l2/3cw+itTXYhuBhfkeOtp8o2LizlnxSsEj9R
 ViEvo5zLwNfAyFCQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 00/10] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20240611151426.cRRDv0cq@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240605100152.4q1jSMuI@linutronix.de>
 <4228aef4-1d26-4a92-ab4c-5d6b96284b4b@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <4228aef4-1d26-4a92-ab4c-5d6b96284b4b@ursulin.net>
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

On 2024-06-11 14:06:00 [+0100], Tvrtko Ursulin wrote:
> 
> Hi Sebastian,
Hi Tvrtko,

> Previous CI results have unfortunately expired by now. I have tried
> re-queuing it but it also does not apply any longer so I'm afraid you will
> have to respin before anyone can see the results.

No worries, I rebased it for latest RT release, I can respost them.

> And this is not to say that I can promise someone will look at it or when.
> Maybe Jani you could ask for volunteers regarding the display related
> patches (head of the series) and Rodrigo you about the GuC change in 9/10?

9/10 looks easy but okay. I'm going to Cc Jani for series and hope for
the best.
2/10 is needed for the XE driver since it shares code with i915. It
seems fine otherwise. I can post them one-by-one if this makes it easier
for CI. Patches like 2/10 or 8/10 should make no impact on CI.

Thank you for the sign of life ;)

> Regards,
> 
> Tvrtko

Sebastian
