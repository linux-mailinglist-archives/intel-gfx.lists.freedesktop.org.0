Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5544F90CC9E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 14:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0FD10E21D;
	Tue, 18 Jun 2024 12:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="qsQnPaYw";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="dNtFSRD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51EBE10E21D;
 Tue, 18 Jun 2024 12:54:35 +0000 (UTC)
Date: Tue, 18 Jun 2024 14:54:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718715271;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3NCyVAzTVmTZEdqHusiCbGnwJ3hzwWpCH3MjDKPpU+A=;
 b=qsQnPaYwyGWpADXrTpFRV6kVQnPh30eebOM8+S9k0ScHXbApPkn8h/IB7cQi9llnsZX5l+
 w5mS+kpI9fSDLOqKpsKZMOeL+ouoEu4k9B/Lm+1nOVBhWg3xWRY1gQAt8etdLR0CMylV2W
 SsYWHbE+5Qih7Om+AtImCN0+SIzkI9ycKn+VksqCCR8iGqeA6UnJYQ9c9cUzRoaqelKfF+
 QwLnTrHc9af1OmI+GpjSXowb21CwF3qsXnshbqXcniXz3RNyt+Z9LKGIdCmiPobMERTJoz
 G8geC6J5Vg+LnUODEKQYT8e7q8Hs0q4DhS5wMMy5feIFq6E/qfo/1bzd2o82Jw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718715271;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3NCyVAzTVmTZEdqHusiCbGnwJ3hzwWpCH3MjDKPpU+A=;
 b=dNtFSRD2r8wsQQ3ucAEEAyrSZE7d4GR+QXLjljWVYBG92iZyem6Memgc8FRcNo/+Gn+acn
 8un8bneASEm6RmDQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2 3/8] drm/i915: Don't check for atomic context on
 PREEMPT_RT
Message-ID: <20240618125430.9gWIUg9A@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-4-bigeasy@linutronix.de>
 <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
 <20240614110548.m3lloBjv@linutronix.de>
 <fa38f377-a00a-4e0c-b416-54a1c3f15d4d@ursulin.net>
 <20240617100752.9XDTS0R5@linutronix.de>
 <b740d56d-a744-4d35-b3f2-1166b8df2aef@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b740d56d-a744-4d35-b3f2-1166b8df2aef@ursulin.net>
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

On 2024-06-18 10:00:09 [+0100], Tvrtko Ursulin wrote:
> I did a re-test but am not 100% certain yet. CI looks frustratingly noisy at
> the moment.
> 
> igt@debugfs_test@read_all_entries appears to be a fluke which is not new.
> 
> But igt@gem_exec_parallel@engines@basic from the latest run seem new.
> 
> So I queued another re-test.

Okay. If you want me to repost the whole series or just parts of it,
just say so.

Sebastian
