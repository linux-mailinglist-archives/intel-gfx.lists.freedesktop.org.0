Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DF4AFF9DE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 08:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8E110E051;
	Thu, 10 Jul 2025 06:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="cYpcZujD";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="CCAkeryw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BC110E051
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 06:30:17 +0000 (UTC)
Date: Thu, 10 Jul 2025 08:30:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752129015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sRdUqJjRDXKQa6NQYpQE+ckcA6YtCcbj5vZJklfRA18=;
 b=cYpcZujDbNh9B6/NbLvQQw1Kht+CgA/cSlkZ2L1MIopf++un9VlvT35zeEix7QUG+uwC3H
 qCOChh2K6EggkM4k5Lu+Stbf7o1MwV7e5eyP1M7RPETg+I8lNRrEZVTp6wC2hb2eFxuWQG
 OSC/aT9PtnRBv80hkWsCBV29sNxaTjxb2euNezy3uzmil5adzaJLyEECHACFLPh/T2TDOm
 lKY+MT2axbIOYGZCowmg9mB98Rqo9j/VYMzrjTzkzvXtF1XyENYFSFHBuvNLxKgOeVR0nz
 bmpz3G7AsVrc71e3kCs6lorD3VttKmv6yhT6Fep5HFIykS7CW0wDzfCrFXS5tQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752129015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sRdUqJjRDXKQa6NQYpQE+ckcA6YtCcbj5vZJklfRA18=;
 b=CCAkerywn1eJ+UnJPqqXMR7WTXCCc39pEF8gTfbmEH3iso4ETorQyY50+ogKLvJvZlWt3b
 HGLWPAXCRFUtnwDA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <20250710063014.eOrcpX6Y@linutronix.de>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <aG7na/6m/IcrJ3xx@lstrano-desk.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aG7na/6m/IcrJ3xx@lstrano-desk.jf.intel.com>
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

On 2025-07-09 15:04:27 [-0700], Matthew Brost wrote:
> > And IIRC the other remaining problem with RT was the spinlocks used
> > inside tracepoints (which is uncore lock, and probably some vblank
> > locks). So that too needs some kind of solution because it's going to
> > very hard to debug the timing sensitive parts without the tracepoints.
> 
> A bit of a drive-by comment, but taking locks inside tracepoints seems
> like a pretty horrible idea in general. We've managed to write an entire
> driver (Xe) from scratch and bring it up without doing this. I'd be very
> surprised if this is truly necessary in i915.

Steven made suggestions how to get around it make it work but my
impression was that this was not appreciated by the i915 side.
The general unwritten rule is to not to take any locks but simply assign
variables.

> Matt

Sebastian
