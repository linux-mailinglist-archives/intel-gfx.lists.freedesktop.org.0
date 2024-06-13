Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F7F9066F1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 10:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ADFA10E98F;
	Thu, 13 Jun 2024 08:36:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="jPCLI+g1";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="UomWEVsU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E4410E98F;
 Thu, 13 Jun 2024 08:36:18 +0000 (UTC)
Date: Thu, 13 Jun 2024 10:36:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718267775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KOBdIr/J8ZJTusxspLTL4YMY4JeLkLp9mDvpBpr0bY0=;
 b=jPCLI+g1O/A3Gs7Ni1c3BfqWiEpHci/eJGY2jOBbQafWgpryH0CoIGrJc1QMN1dEuOMjxa
 k9yE+J3HW13/yA/J88p26QAOL7wOn+yi2MFYC77JnVVCruyfwyJLFe1wXphzVRV9UfhTxU
 Ulo1YKxUhw4P9qeC9VBVYHi8fA3nVVIX9VbiGL1peFYUunxMG0ZhczrLwbxNv7hUW1Pm54
 PGi2pTNc9JewskNDsvz3Cx1lbjhOAfz4wst7MC23uZ7btgihTTZuVdBY0iGWyfySMga+Kp
 hPwiBeCB/LoBn8yDiX5Vbrlo/DB/6FYwgcS362eBtQj5DGAef0CFPbBvjx4jrw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718267775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KOBdIr/J8ZJTusxspLTL4YMY4JeLkLp9mDvpBpr0bY0=;
 b=UomWEVsUg9fgyFChQ7DRSkUQtJ+bO34JTVuk3Fv2j/xamj5clQK2q5B9u0LANBn0C72/+A
 jL6LBvxpgSEg7FDA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 00/10] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20240613083614.A2dCovYW@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240605100152.4q1jSMuI@linutronix.de>
 <4228aef4-1d26-4a92-ab4c-5d6b96284b4b@ursulin.net>
 <20240611151426.cRRDv0cq@linutronix.de>
 <ZmjOw7m1X0EvRDBu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZmjOw7m1X0EvRDBu@intel.com>
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

On 2024-06-11 18:25:07 [-0400], Rodrigo Vivi wrote:
> > 2/10 is needed for the XE driver since it shares code with i915.=20
>=20
> I believe you meant patch 1 right?
> We are trying to eliminate the
> #if I915
> for the shared display code with Xe... we probably need to think
> more deeply about that.

Maybe, my notes say otherwise but I could have slipped in the patch
number while looking up=E2=80=A6 I remember I noticed that the uncore lock =
isn't
used, it was only used on my "older" hardware.
Anyway, I could double check if this becomes urgent for some reason.

Sebastian
