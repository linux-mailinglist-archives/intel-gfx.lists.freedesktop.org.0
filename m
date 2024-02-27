Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C8F869F23
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 19:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117CC10E36B;
	Tue, 27 Feb 2024 18:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNerlRoW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAAD010E341
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 18:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709058738; x=1740594738;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QxMC8lWIN6vJn152m1rPforyXWdFMHJtVlYfboqMgWE=;
 b=LNerlRoWlRcULwSCzW7DE6Xla7kjdXOtyMirexvJbtWrHrBfuIDsSO5r
 lTnmjkbCAn+70jxhOSnsbGXdiVnhGL9rNemcKG6Jrqp/CbKNgHN4VGEyQ
 fggYKfapw3q+0bbmScXiZDM+rnrUnRWNhTEOOUyTDj+NiOeACH9nDaJTe
 wr1FuCLEFpth0wcB/KNPh5dGaIM8WnpxiHc+9Av0wrMMjYaK1u7C+4BNI
 beo9mpve3NSArgDmSqrqUmErG2J9isfwc9y/ZXA35/0AC2ODMyKCRnbs+
 ssJg62y5e/TtrZjW30PVAssKtjVCmiV0J5JVOwsFvUCD7uh318EAb5li3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14858913"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14858913"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 10:32:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770836"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="827770836"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Feb 2024 10:32:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Feb 2024 20:32:12 +0200
Date: Tue, 27 Feb 2024 20:32:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gfx@lists.freedesktop.org, Petr Mladek <pmladek@suse.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/12] drm/i915: Indicate which pipe failed the fastset
 check overall
Message-ID: <Zd4qrLVWcacza747@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-2-ville.syrjala@linux.intel.com>
 <ZdfApN1h97GTfL1t@intel.com> <Zdj2ONs8BZ6959Xb@intel.com>
 <87bk83mfwp.fsf@intel.com>
 <1013ff2d-76b2-41f9-a5d4-39a567a3b0cc@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1013ff2d-76b2-41f9-a5d4-39a567a3b0cc@rasmusvillemoes.dk>
X-Patchwork-Hint: comment
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

On Tue, Feb 27, 2024 at 10:38:10AM +0100, Rasmus Villemoes wrote:
> On 26/02/2024 15.57, Jani Nikula wrote:
> 
> > Personally I suck at remembering even the standard printf conversion
> > specifiers, let alone all the kernel extensions. I basically have to
> > look them up every time. I'd really love some %{name} format for named
> > pointer things. And indeed preferrably without the %p. Just %{name}.
> 
> Sorry to spoil the fun, but that's a non-starter.
> 
> foo.c: In function ‘foo’:
> foo.c:5:24: warning: unknown conversion type character ‘{’ in format
> [-Wformat=]
>     5 |         printf("Hello %{function} World\n", &foo);
>       |                        ^
> 
> You can't start accepting stuff that -Wformat will warn about. We're not
> going to start building with Wno-format.

Are there any sensible looking characters we could use for
this? Ideally I'd like to have something to bracket the
outsides, and perhaps a namespace separator in the middle.

Or are we really forced into having essentially a random set
of characters following just a %p/etc.?

> 
> > And then we could discuss adding support for drm specific things. I
> > guess one downside is that the functions to do this would have to be in
> > vsprintf.c instead of drm. Unless we add some code in drm for this
> > that's always built-in.
> 
> If people can be trusted to write callbacks with the proper semantics
> for snprintf [1], we could do a generic

Yeah, I was at some point thinking that having a version of
register_printf_function() for printk() might be nice. The dangers
being that we get conflicts between subsystems (*), or that it gets
totally out of hand, or as you point out below people will start
to do questionable things in there.

(*) My earlier "include a subsystem namespace in the format" 
idea was basically how I was thinking of avoiding conflicts.

> 
> typedef char * (*printf_callback)(char *buf, char *end, void *ctx);
> 
> struct printf_ext {
>   printf_callback cb;
>   void *ctx;
> };
> 
> #define PRINTF_EXT(callback, context) &(struct printf_ext){ .cb =
> callback, .ctx = context }
> 
> // in drm-land
> 
> char* my_drm_gizmo_formatter(char *buf, char *end, void *ctx)
> {
>   struct drm_gizmo *dg = ctx;
>   ....
>   return buf;
> }
> #define pX_gizmo(dg) PRINTF_EXT(my_drm_gizmo_formatter, dg)
> 
>    printk("error: gizmo %pX in wrong state!\n", pX_gizmo(dg));
> 
> Then vsprintf.c doesn't need to know anything about any particular
> subsystem. And if a subsystem breaks snprintf semantics, they get to
> keep the pieces. With a little more macro magic, one might even be able
> to throw in some type safety checks.
> 
> Rasmus
> 
> [1] You can't sleep, you can't allocate memory, you probably can't even
> take any raw spinlocks, you must attempt to do the full formatting so
> you can tell how much room would be needed, but you must of course not
> write anything beyond end. Calling vsnprintf() to format various integer
> members is probably ok, but recursively using %pX to print full
> subobjects is likely a bad idea.

-- 
Ville Syrjälä
Intel
