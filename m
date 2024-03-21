Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32FD8856CC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 10:48:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABFA10E4EB;
	Thu, 21 Mar 2024 09:48:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j988Dp7Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4F010E500
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 09:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711014515; x=1742550515;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EReJ7zvMovgkDhXZFV8szAhD21jKL2BmxpmtnGoVQcQ=;
 b=j988Dp7Zz6TBKXF/DPFXC3LnXnX7LdawzO/yM7ln/mrGD5GVHr1P3oy+
 55FdKHq255oeZTUGP4b2QYOQaDkZCuoOddDKfMS2zfmojMHWavooe0IWN
 lOBDuxt6Vdcp2n9f3z2DDSdO97dkOf/vaWKdiJtcqOHnV64YJwQTbsams
 uFkGaqmqkVjojgAdcIqCEGBUQb3HuJQUb9I8TBUFNsy2yPsx8650LJDFk
 /EjJu1Xv0X6LQjxsWDA9I7eXLTJyaxu1lHk2WDzMN/wA1PQM7lYX7SgC5
 iMWstvS1z7W+78H84n6yqLywy7s6Tinhodo43VUErBbVp2X9lq9PqJNVj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="17439991"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="17439991"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 02:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="18932077"
Received: from amaslenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.141])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 02:48:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 cocci@systeme.lip6.fr, intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
In-Reply-To: <5abd6b1c-773d-94e7-da0-59393c7caeea@inria.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZfrYc_rKGETrJsE4@intel.com>
 <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr> <ZfrlLw3W00-cnH1U@intel.com>
 <87y1adm342.fsf@intel.com> <dd1399cc-d968-41f-b41b-7ca6d6a2d044@inria.fr>
 <87sf0knbnh.fsf@intel.com> <5abd6b1c-773d-94e7-da0-59393c7caeea@inria.fr>
Date: Thu, 21 Mar 2024 11:48:29 +0200
Message-ID: <87h6gznceq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 21 Mar 2024, Julia Lawall <julia.lawall@inria.fr> wrote:
> On Wed, 20 Mar 2024, Jani Nikula wrote:
>
>> On Wed, 20 Mar 2024, Julia Lawall <julia.lawall@inria.fr> wrote:
>> > On Wed, 20 Mar 2024, Jani Nikula wrote:
>> >> Okay, I have another one wrt macros. :)
>> >>
>> >> I'm trying to add a completely new variadic macro, but it fails at
>> >> "...". I've tried all sorts of things, but can't seem to be able to add
>> >> a literal "...".
>> >>
>> >> I've tested that my cocci patch works with x's:
>> >>
>> >> + #define fn(p, xxx) foo(__VA_ARGS__)
>> >>
>> >> but when I try to make it actually variadic like:
>> >>
>> >> + #define fn(p, ...) foo(__VA_ARGS__)
>> >>
>> >> it gives me error. Is there a way to escape? Even tried to use a fresh
>> >> identifier vararg = "..."; but cocci made them unique with numbering
>> >> "...0" and "...1" etc.
>> >
>> > Put 6 dots.  It's silly, but ... is a Coccinelle thing, so we had to use
>> > something else.
>>
>> I've tried, but it doesn't seem to work in the + side:
>>
>> plus: parse error:
>>   File "/tmp/tmp.clvvc812Qe", line 20, column 2, charpos = 254
>>   around = '#define fn(',
>>   whole content = + #define fn(p, ......) __fn(__to_intel_display(p), __VA_ARGS__)
>
> A patch is below.  I haven't tested it.  It's working its way through the
> CI at the moment, but I'll be offline for the rest of the day, so I don't
> think I will be able to make it public today.  But let me know if it
> works.

Thanks for looking into it!

I'm afraid setting up an environment to try cocci patches is a bit too
involved for me right now.

BR,
Jani.


>
> In particular, I don't think it would work for matching or removals, but
> it should work for additions.
>
> julia
>
> ---
>
> commit 8a637290a87ca86ca75a216ef1a7ac07c6a1fd57
> Author: Julia Lawall <Julia.Lawall@inria.fr>
> Date:   Thu Mar 21 09:16:07 2024 +0100
>
>     allow ...... as a #define param in SmPL
>
> diff --git a/parsing_cocci/parser_cocci_menhir.mly b/parsing_cocci/parser_cocci_menhir.mly
> index afba9e8f..4f9be9a6 100644
> --- a/parsing_cocci/parser_cocci_menhir.mly
> +++ b/parsing_cocci/parser_cocci_menhir.mly
> @@ -1614,6 +1614,12 @@ defineop:
>
>  dparam: mident { Ast0_cocci.wrap(Ast0_cocci.DParam $1) }
>  | TMetaDParamList { Parse_aux.meta_dparam_list $1 }
> +| TVAEllipsis
> +    { let id = ("...",$1) in
> +      Ast0_cocci.wrap
> +	(Ast0_cocci.DParam
> +	   (Ast0_cocci.wrap
> +	      (Ast0_cocci.Id(Parse_aux.id2mcode id)))) }
>
>  define_param_list_option:
>      empty_list_start(dparam,TEllipsis)

-- 
Jani Nikula, Intel
