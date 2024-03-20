Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00688881256
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 14:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1AA910FB95;
	Wed, 20 Mar 2024 13:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=inria.fr header.i=@inria.fr header.b="RNLhFJgV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 429 seconds by postgrey-1.36 at gabe;
 Wed, 20 Mar 2024 13:31:20 UTC
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942E410FB48
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 13:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=YCl+gPuZLRR7wpUcEQ6p/kqhqENU2n3v8kkldR45F/Q=;
 b=RNLhFJgVWZdF4LA4eFn6duMFng1Wk8YpOTkcD1XHfBSaHsJzlJ5Icth9
 opUmFZFACirob9Smd5gzUwUlteiaGXfK0QZYF6PGkdDtk3Rp//0167iQ6
 6mdgkizFONGNPIFb5gNe47ia2n2sGIilP7qhODJecG9ozHOpHIdPL7STQ s=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,140,1708383600"; d="scan'208";a="82666271"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 14:24:10 +0100
Date: Wed, 20 Mar 2024 14:24:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
cc: cocci@systeme.lip6.fr, Jani Nikula <jani.nikula@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
In-Reply-To: <ZfrYc_rKGETrJsE4@intel.com>
Message-ID: <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr>
References: <ZfrYc_rKGETrJsE4@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1128787487-1710941049=:4655"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1128787487-1710941049=:4655
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Wed, 20 Mar 2024, Ville Syrjälä wrote:

> Hi Julia et al,
>
> In Linux drm/i915 driver (drivers/gpu/drm/i915/display/intel_pps.[ch])
> we have a magic macro like this:
>
> #define with_intel_pps_lock(dp, wf) \

Did you try declaring:

iterator name with_intel_pps_lock;

up with the metavariables?

julia


>         for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
>
>
> which we can then use like so:
> ...
> with_intel_pps_lock(intel_dp, wakeref)
> 	wait_panel_power_cycle(intel_dp);
> ...
>
>
> If I try to modify this code with eg.
>
> @@
> @@
> - wait_panel_power_cycle
> + _wait_panel_power_cycle
>
> spatch fails to parse the macro and won't do the changes here.
>
>
> While experimenting with this I discovered that
> I can make it work by:
> - moving the macro definition into intel_pps.c file from intel_pps.h
> - renaming the macro to contain the substring "for" (doesn't matter
>   where in the macro name the "for" appears)
>
> What on earth is going on here?
>
> --
> Ville Syrjälä
> Intel
>
--8323329-1128787487-1710941049=:4655--
