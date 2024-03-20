Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FB9881274
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 14:42:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0D710FC51;
	Wed, 20 Mar 2024 13:42:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fumXDOUy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50E010FC1D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 13:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710942161; x=1742478161;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FZ5FEHhuMnteJhrwNWzIqVuitFF7mzV7eg6m2Z1JmnQ=;
 b=fumXDOUyUw3u0WBG95z4z/k9jUw5JHxTCX9yevY95bB1JbHujTtY3IOW
 4evhxX888lBgrw4o225CaCJL2BcoqlGuKGD0AddZUO3ohlbbEelm1znF+
 9AJU8N0WbCzN7ZkFm049X18CDq3HoiBOg2yxWQF94bJ2oFgS9sOVT6AMR
 z+twjlTb8Y6tNLuMBOoZEnn85PwkOVSWc2xpSIA4RXOt1Q6TY9SWezliH
 AyhffnVlB0glvGk34N5WFixtzlkE/V4hV6VpQnUOfzJFeebw9t7lwNSWo
 N6sM9FzqnI8g7BJwxICki/A5Kk+fHtcgqsM6G0bOkO5R73ggby30YZCfc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5702161"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5702161"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 06:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="18626338"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 06:42:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Julia
 Lawall <julia.lawall@inria.fr>
Cc: cocci@systeme.lip6.fr, intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
In-Reply-To: <ZfrlLw3W00-cnH1U@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZfrYc_rKGETrJsE4@intel.com>
 <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr> <ZfrlLw3W00-cnH1U@intel.com>
Date: Wed, 20 Mar 2024 15:42:21 +0200
Message-ID: <87y1adm342.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 20 Mar 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Mar 20, 2024 at 02:24:08PM +0100, Julia Lawall wrote:
>>=20
>>=20
>> On Wed, 20 Mar 2024, Ville Syrj=C3=A4l=C3=A4 wrote:
>>=20
>> > Hi Julia et al,
>> >
>> > In Linux drm/i915 driver (drivers/gpu/drm/i915/display/intel_pps.[ch])
>> > we have a magic macro like this:
>> >
>> > #define with_intel_pps_lock(dp, wf) \
>>=20
>> Did you try declaring:
>>=20
>> iterator name with_intel_pps_lock;
>>=20
>> up with the metavariables?
>
> Nope, didn't know about that one.
>
> Seems to work fine with that. Thanks.

Okay, I have another one wrt macros. :)

I'm trying to add a completely new variadic macro, but it fails at
"...". I've tried all sorts of things, but can't seem to be able to add
a literal "...".

I've tested that my cocci patch works with x's:

+ #define fn(p, xxx) foo(__VA_ARGS__)

but when I try to make it actually variadic like:

+ #define fn(p, ...) foo(__VA_ARGS__)

it gives me error. Is there a way to escape? Even tried to use a fresh
identifier vararg =3D "..."; but cocci made them unique with numbering
"...0" and "...1" etc.

BR,
Jani.


--=20
Jani Nikula, Intel
