Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF2C881377
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 15:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E74410EE71;
	Wed, 20 Mar 2024 14:39:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=inria.fr header.i=@inria.fr header.b="Pj/vbNJv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3AC210EE71
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 14:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=eZSDlRFHQ3Zmap8oG347uG2RENlyQO6HlbrVFRWEqd4=;
 b=Pj/vbNJvjtsHxBJNAAkA8fiqD0+V0AkbOi7xLhsnySQGClYba508LUzG
 MsmeDAkJ8L0FMlVny4fHHoWZAhGxbQjFWOF94dMvzjunV80o7GqJdkKEh
 tO8nkmiCSbuCqK9kx/Ae8RRdINz/0otGaSdKBDfGaa0KsBD+Bknkfhwnq A=;
Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,140,1708383600"; d="scan'208";a="157632502"
Received: from wifi-eduroam-84-135.paris.inria.fr ([128.93.84.135])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 15:39:24 +0100
Date: Wed, 20 Mar 2024 15:39:23 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Jani Nikula <jani.nikula@linux.intel.com>
cc: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 cocci@systeme.lip6.fr, intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
In-Reply-To: <87y1adm342.fsf@intel.com>
Message-ID: <dd1399cc-d968-41f-b41b-7ca6d6a2d044@inria.fr>
References: <ZfrYc_rKGETrJsE4@intel.com>
 <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr> <ZfrlLw3W00-cnH1U@intel.com>
 <87y1adm342.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-911008355-1710945563=:37363"
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

--8323329-911008355-1710945563=:37363
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Wed, 20 Mar 2024, Jani Nikula wrote:

> On Wed, 20 Mar 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Mar 20, 2024 at 02:24:08PM +0100, Julia Lawall wrote:
> >>
> >>
> >> On Wed, 20 Mar 2024, Ville Syrjälä wrote:
> >>
> >> > Hi Julia et al,
> >> >
> >> > In Linux drm/i915 driver (drivers/gpu/drm/i915/display/intel_pps.[ch])
> >> > we have a magic macro like this:
> >> >
> >> > #define with_intel_pps_lock(dp, wf) \
> >>
> >> Did you try declaring:
> >>
> >> iterator name with_intel_pps_lock;
> >>
> >> up with the metavariables?
> >
> > Nope, didn't know about that one.
> >
> > Seems to work fine with that. Thanks.
>
> Okay, I have another one wrt macros. :)
>
> I'm trying to add a completely new variadic macro, but it fails at
> "...". I've tried all sorts of things, but can't seem to be able to add
> a literal "...".
>
> I've tested that my cocci patch works with x's:
>
> + #define fn(p, xxx) foo(__VA_ARGS__)
>
> but when I try to make it actually variadic like:
>
> + #define fn(p, ...) foo(__VA_ARGS__)
>
> it gives me error. Is there a way to escape? Even tried to use a fresh
> identifier vararg = "..."; but cocci made them unique with numbering
> "...0" and "...1" etc.

Put 6 dots.  It's silly, but ... is a Coccinelle thing, so we had to use
something else.

julia
--8323329-911008355-1710945563=:37363--
