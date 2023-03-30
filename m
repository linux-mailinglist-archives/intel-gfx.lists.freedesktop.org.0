Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBD86D0F59
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 21:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2A710F00F;
	Thu, 30 Mar 2023 19:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C20310F00E;
 Thu, 30 Mar 2023 19:50:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CE50F6217A;
 Thu, 30 Mar 2023 19:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 102B0C433EF;
 Thu, 30 Mar 2023 19:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1680205842;
 bh=RrELxMFNuf4dLlJIG3ONCd0cfpSBkkVInFuMvO4j2qY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=N6IUXBx+FkLpsPUyMXZ3D2e24NPET3PSVdDCzUNuuIFJZswqdKi/uTFoGxfToOv6c
 WElGpC7bqWp2vMxns3mGcmVMY78p3oj+t7hWTQrJN/Gq9Xnsi0zm79afB5MzoWsTuM
 YK1OK3B5LLlsiERNAfyIlqVRWSzOk/Oikf46GP5g=
Date: Thu, 30 Mar 2023 12:50:41 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-Id: <20230330125041.83b0f39fa3a4ec1a42dfd95f@linux-foundation.org>
In-Reply-To: <20230330104243.2120761-1-jani.nikula@intel.com>
References: <20230330104243.2120761-1-jani.nikula@intel.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/4] log2: make is_power_of_2() more generic
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
Cc: David Gow <davidgow@google.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 30 Mar 2023 13:42:39 +0300 Jani Nikula <jani.nikula@intel.com> wrote:

> is_power_of_2() only works for types <= sizeof(unsigned long) and it's
> also not a constant expression. There are a number of places in kernel
> where is_power_of_2() is called on u64, which fails on 32-bit
> builds. Try to remedy that. While at it, make it a constant expression
> when possible.

Yes, the current `is_power_of_2(unsigned long n)' isn't very general.

But wouldn't all these issues be addressed by simply doing

#define is_power_of_2(n) (n != 0 && ((n & (n - 1)) == 0))

?

(With suitable tweaks to avoid evaluating `n' more than once)


