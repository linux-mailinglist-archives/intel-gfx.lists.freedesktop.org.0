Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9810598FEFF
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 10:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D470C10E05E;
	Fri,  4 Oct 2024 08:45:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="4hBaOt+w";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="t47JWeMy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F8D10E05E;
 Fri,  4 Oct 2024 08:45:29 +0000 (UTC)
Date: Fri, 4 Oct 2024 10:45:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1728031527;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8x34rOCooANx2CPvYC38nvaHeQEbkpE7k94cNn5Q8YA=;
 b=4hBaOt+wN5hziqFJheIDNnAETxllALoZiIFlj5hXelmaHn7LKTo/NZ6mFTjYO6g1yh0gEU
 KD0lCD3J1z42qVIvK+peg5ESyyaovEKMi/vI5Pa9IrjCZrURnxnpLj+v+1wUEBduaTGo8R
 VmBBJH2pgaHyx2jD40X6jg39iYzRo4lGWBw4py94NM6fDbBZM3Ag1RdFW4yKxPxWOvoIVo
 g/0eo/6cshrpI01zILFEuwIm31306t8Aeiy2fWOEplPmX7CzQRKckGnV4QJXUTwno0oZ/5
 nfkUOxmMFPQg6P2Rw4HAPfKCpkIFJffVupbnXzAUwdX3em9PvWFmp6655AdsJg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1728031527;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8x34rOCooANx2CPvYC38nvaHeQEbkpE7k94cNn5Q8YA=;
 b=t47JWeMyo03rrOWFzkvfe/7iBNILhQ41LMAtE7aTsQnG/oJXRMMvE+JlhNI5lCCAviZhbQ
 GQ/nzeu3BP0TRfDw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v3 0/8] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20241004084525.333iWV-t@linutronix.de>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
 <20241002162543.TKbd-8g0@linutronix.de>
 <Zv17oKlIImyfg_KI@intel.com>
 <20241004064951.XLw7TFbS@linutronix.de>
 <Zv-n2h0gsquKOvXu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zv-n2h0gsquKOvXu@intel.com>
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

On 2024-10-04 11:31:22 [+0300], Ville Syrj=C3=A4l=C3=A4 wrote:
>=20
> So once vblank evasion has declared things to be safe we might have
> as short a time as VBLANK_EVASION_TIME_US to write all the registers.
> If the CPU gets stolen from us at that point we can no longer guarantee
> anything. The magic value has been tuned empirically over the years,
> until we've found something that seems to work well enough, without
> being too long to negatively affect performance.

what happens if this gets delayed? Just flicker or worse?

Is this something that affects all i915 based HW or only old ones? As
far as I remember, there is a register lock which is only required on
older HW.

Sebastian
