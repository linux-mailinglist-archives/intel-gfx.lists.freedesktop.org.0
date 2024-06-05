Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB03E8FC88F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFAEB10E047;
	Wed,  5 Jun 2024 10:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="A7LaGks3";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="P+Uuw97L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A66110E739;
 Wed,  5 Jun 2024 10:01:58 +0000 (UTC)
Date: Wed, 5 Jun 2024 12:01:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1717581713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SjeiKECQq9mFAqunvTzdx92LcngadfwCdxfkB06RIuo=;
 b=A7LaGks3LweM1Yju347iuLqgmnqvo0yq0fvJvyy4QrZu6rvF+ynfpd5RhSw5+EEnBMtANG
 2RSnnZUS1UMcMKZoJasWoFQShBDCb7uxQswCRzfnYHif/kfuX5qWJe1WoZVNLQvGbyQQT3
 uBo3hJ+y1E6wAkUFtdU49hFsl8hTODhVtrI5J9G0mnv5otE0s6TeviBl8iKNt/fzgfCkig
 tDLDr7JpZwJI9qB0uocL5YwJcm7HJaf2ChIwNc7KUYUATHItJaeA6Czs2j5UlgV73bwzIr
 cvaT39FQdZqmfPwWmbUeG3Hp3OFb8XNJCCEMxmxckaAOgNq8wJxrpOwa7NwsCg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1717581713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SjeiKECQq9mFAqunvTzdx92LcngadfwCdxfkB06RIuo=;
 b=P+Uuw97LZXQA7Ap2N5pqy6vFs2nAr25/84kUkmI0Rk7Q9ah9ILaW46OP2mW0uZAszYRfqS
 xeRqaOiSSLDklKDw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 00/10] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20240605100152.4q1jSMuI@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240405142737.920626-1-bigeasy@linutronix.de>
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

On 2024-04-05 16:18:18 [+0200], To intel-gfx@lists.freedesktop.org wrote:
Hi,

> The following patches are from the PREEMPT_RT queue.  It is mostly about
> disabling interrupts/preemption which leads to problems. Unfortunately
=E2=80=A6

Could I please get some feedback? I didn't receive anything but
automated mails from bots and I can't tell if this is a problem or not.

As of -rc2 I noticed that I can drop
	[PATCH 06/10] drm/i915/gt: Queue and wait for the irq_work item.

=66rom the series.

Sebastian
