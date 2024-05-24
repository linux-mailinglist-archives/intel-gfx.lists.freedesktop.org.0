Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD9C8CE8BF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 18:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E03310E2BE;
	Fri, 24 May 2024 16:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="ObRtqmTi";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="E4S1CsEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C0510EAC3;
 Fri, 24 May 2024 16:35:14 +0000 (UTC)
Date: Fri, 24 May 2024 18:35:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1716568512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vh8OUsqfOVObVAmBElVwuem5J/AvIqnTJ7LXgHjEXVc=;
 b=ObRtqmTiNA+fkmfaobrPpG6mtnC92YerUlSAxtjYH3Y84jOjJAauag1Zrfhy/Y/Vh7AnNY
 HcOtBK4PKeS/KYYaADC/pMxMNp/xzJevnGVgkOAXS9SScXEE2aTZ9v19eaF7hNHPEpLpNp
 k+WeydifUrRRAL7rZf6d+sg+5cHGl64fcbjTnKgBI+O5ifLVTIART5Cyg5nK0wEnrpWbN1
 Zz4jTwSbQ+FW2BMOI3buspKb9boTmw7I69kwTKDRwYrOPXOqPIu1nbok+6PGKcQaRE4WJ9
 pihsTH17WyWjkcAAySvYixOAbgL4C5sNjyojlGI1tRAQP9K3UQnABhh87xLKyg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1716568512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vh8OUsqfOVObVAmBElVwuem5J/AvIqnTJ7LXgHjEXVc=;
 b=E4S1CsEp61sK3pxUa0j91sOIx9oMjYvR6eurciPEwzrv79GbQk76NhID2slkC1xx75LMak
 dXIW6xKnJm9oCKCw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: XE tests on Tiger Lake
Message-ID: <20240524163510.B_1yWz1h@linutronix.de>
References: <20240522141822.bJcQDijH@linutronix.de> <87bk4wq2td.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87bk4wq2td.fsf@intel.com>
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

On 2024-05-23 12:45:34 [+0300], Jani Nikula wrote:
>
> Thanks for testing! I suggest filing an issue at [1], attaching dmesg
> from boot with drm.debug=14 module parameter set.
> 
> Cc: xe driver maintainers.

Thanks. Submitted as [0]. No idea how to Cc someone there.

[0] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1947

> BR,
> Jani.

Sebastian
