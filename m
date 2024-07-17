Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD349342DE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 22:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958CC10E3E4;
	Wed, 17 Jul 2024 20:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="N+sHKc17";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFC710E409
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 20:00:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 33891CE1827;
 Wed, 17 Jul 2024 20:00:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30FFCC32782;
 Wed, 17 Jul 2024 20:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1721246431;
 bh=snv3uo7dlSvsI4pryvUtANpWj1I2FdlRdC9lDbRx5C4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=N+sHKc17jImNta8f+Ksh4IWFx+c/9l6FIsv/oiWeoMHKb60W31gwWOxzTNHXCI3DY
 w84G83wKMGrP3KYgGlOcYs8tLxwZ/2lLry70osEhcxJ2yxzJERxKhizb9EIxn/R/jN
 sfujIpJztDTx/kyEtXquPtpl2OxYgEjBmAfm3OZs=
Date: Wed, 17 Jul 2024 13:00:30 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: David Hildenbrand <david@redhat.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "peili.dev@gmail.com" <peili.dev@gmail.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: Regression on linux-next (next-20240712)
Message-Id: <20240717130030.09a778a38aae6a23a193b357@linux-foundation.org>
In-Reply-To: <e3c17dad-a93f-4885-8f14-69874be76482@redhat.com>
References: <SJ1PR11MB6129A77D51B206E29E242B95B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <e3c17dad-a93f-4885-8f14-69874be76482@redhat.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Wed, 17 Jul 2024 13:00:58 +0200 David Hildenbrand <david@redhat.com> wrote:

> > Could you please check why the patch causes this regression and provide a fix if necessary?
> 
> This is know.
> 
> There is a discussion along the original patch [1] on how to do it 
> differently. But likely we'll tackle it differently [2]. So this patch 
> should be dropped for -- which I think already happened because I cannot 
> spot that patch in mm-unstable anymore.

Yes, I dropped it on July 15.
