Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86214AFF1FD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 21:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0500A10E09E;
	Wed,  9 Jul 2025 19:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="4mMJzgB3";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="dW/vjvKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2557E10E09E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jul 2025 19:44:48 +0000 (UTC)
Date: Wed, 9 Jul 2025 21:44:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752090285;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YHoOTaEcM7ajLztHEUilHo8GRkm1itG9TaX4e0uEIiM=;
 b=4mMJzgB3ZYFoYa58PwQnNDFFy69Mqgmowu8meHS0hgzlxykU1mMRWSbSPHCUa3orQN32NW
 g0m/IQuyc89/3SBLRFzHWaddP1Rjr+TIylfPE6e+JIROTpEI0AlfDjFzFR9CZfHymLEy4W
 5o9OlHCOco6TsQHn3jbVYM8rTUQ33q+05EEJWVM+iGIYIUS2w9IC2NHcg+JRip6ceYkbb3
 0bY8lGkC07fmjk1H7jluU4HZK/xw6RkDiW8SiAiQcCyT2KmZesaqEolMfpp1zt9Hp6/SIy
 pbZf4F4qd60ezL2J3HvErZ7VHD15id5Z/Mu37PeqLM3oJxxIzhA+ZsWDYmP1OA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752090285;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YHoOTaEcM7ajLztHEUilHo8GRkm1itG9TaX4e0uEIiM=;
 b=dW/vjvKLKxXOozUk6A6mqkAE9MMMR923W7eSUUEiEGX7lVfV8bDMo0+YjZKLzOC91Arel2
 yuQxqjL9Uf7hGAAA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <20250709194443.lkevdn6m@linutronix.de>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aG6nMhimN1lWKAEP@intel.com>
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

On 2025-07-09 20:30:26 [+0300], Ville Syrj=C3=A4l=C3=A4 wrote:
> >=20
> > It seems like the critical uncore lock is currently held in a lot of
> > places and potentially for a long time.
>=20
> It shouldn't be held for that long. I think it should just be
> a raw spinlock.

What about I resubmit the series and we look again? I don't think the
lock should be made raw just to be done with it.

Sebastian
