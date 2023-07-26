Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B5E763778
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 15:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDC510E1CF;
	Wed, 26 Jul 2023 13:25:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FE910E484
 for <Intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 13:25:23 +0000 (UTC)
Date: Wed, 26 Jul 2023 15:25:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1690377918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ti9VEyW4QlvXCsnz8unEBUgcGnWy/vOy6+ICo1vdyXI=;
 b=2/9MI2uGyUGuciPuWAMdVS8l+kj2AsWOYaZt8+eNxHxdvDd9bgozNaxOFtMLAEiaLf/egw
 qNE29noCIqieIIoq/T2INQclGBBYOkfDB2XSLx5jdw5ZCE5jAtuY+rR2uI1p7WZYAw/si2
 vTIvy6FHWOJ/RqCJOlEwgb0CuVftoT5qzR0AmVYAnF+pe9PdGOd6UusCfeNa86Fnw6T2wy
 +z66uUY3jh1kLMIZ884/ysnXVJegUa/CQFI0hWh/454kdd8qkJEAYgBrKpJjtl5kfQo87X
 jgRF65Nn0TPRCkcWfupdbUy7L/q/r3UOcW+Mo/TlWpFWQh+wh939esZxXlCOAg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1690377918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ti9VEyW4QlvXCsnz8unEBUgcGnWy/vOy6+ICo1vdyXI=;
 b=xio8hUFvkuz/ayd4s07zRvYHBeq6Z/71doAKyb+bdNcNadidc/Eb4Xa1Dpf2mkYHoD3w7a
 Tz7WVRvezUF2VYDg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230726132516.1lnoCfTh@linutronix.de>
References: <20230705093025.3689748-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230705093025.3689748-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not disable preemption for
 resets
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
Cc: Paul Gortmaker <paul.gortmaker@windriver.com>,
 Intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-07-05 10:30:25 [+0100], Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20
> Commit ade8a0f59844 ("drm/i915: Make all GPU resets atomic") added a
> preempt disable section over the hardware reset callback to prepare the
> driver for being able to reset from atomic contexts.
>=20
=E2=80=A6

This looks like what I tested previously. So

Acked-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thank you.

> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Paul Gortmaker <paul.gortmaker@windriver.com>
> Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Sebastian
