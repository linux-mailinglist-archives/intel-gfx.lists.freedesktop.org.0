Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6558815DE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29EA10E614;
	Wed, 20 Mar 2024 16:45:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=inria.fr header.i=@inria.fr header.b="kWJorHm7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59B510E614
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=Qfvv/mwPeZPxKtxfBcB1SFf935/08ZCgrtGHijJznTo=;
 b=kWJorHm7Y2/7fbxM3z0shk8S9HtR98jiFe1DEz3OXTzCu2jI/BkcM+ua
 Tc0nbXnuKK/5FMBDRVXCZHtKEzPfPDLgsqz0rJspFMqIyNwM0Dhhb8j1b
 jpIXpSn/j0W6XuDILIzrRxglEnVL/s7cjp2b6k9tdu+QsUjl/4dcjTwG6 8=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,140,1708383600"; d="scan'208";a="82691294"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 17:45:00 +0100
Date: Wed, 20 Mar 2024 17:44:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Jani Nikula <jani.nikula@linux.intel.com>
cc: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 cocci@systeme.lip6.fr, intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
In-Reply-To: <87sf0knbnh.fsf@intel.com>
Message-ID: <377e49cc-b4b8-f9a2-6234-a7cefbc2903@inria.fr>
References: <ZfrYc_rKGETrJsE4@intel.com>
 <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr> <ZfrlLw3W00-cnH1U@intel.com>
 <87y1adm342.fsf@intel.com> <dd1399cc-d968-41f-b41b-7ca6d6a2d044@inria.fr>
 <87sf0knbnh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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



On Wed, 20 Mar 2024, Jani Nikula wrote:

> On Wed, 20 Mar 2024, Julia Lawall <julia.lawall@inria.fr> wrote:
> > On Wed, 20 Mar 2024, Jani Nikula wrote:
> >> Okay, I have another one wrt macros. :)
> >>
> >> I'm trying to add a completely new variadic macro, but it fails at
> >> "...". I've tried all sorts of things, but can't seem to be able to add
> >> a literal "...".
> >>
> >> I've tested that my cocci patch works with x's:
> >>
> >> + #define fn(p, xxx) foo(__VA_ARGS__)
> >>
> >> but when I try to make it actually variadic like:
> >>
> >> + #define fn(p, ...) foo(__VA_ARGS__)
> >>
> >> it gives me error. Is there a way to escape? Even tried to use a fresh
> >> identifier vararg = "..."; but cocci made them unique with numbering
> >> "...0" and "...1" etc.
> >
> > Put 6 dots.  It's silly, but ... is a Coccinelle thing, so we had to use
> > something else.
>
> I've tried, but it doesn't seem to work in the + side:
>
> plus: parse error:
>   File "/tmp/tmp.clvvc812Qe", line 20, column 2, charpos = 254
>   around = '#define fn(',
>   whole content = + #define fn(p, ......) __fn(__to_intel_display(p), __VA_ARGS__)

OK, maybe it doesn't work for macros.  I will take a look.

julia
