Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D05D8814F3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6101410FD98;
	Wed, 20 Mar 2024 15:52:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k5rmR4hV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E76B10FD96
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949960; x=1742485960;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=q61NwD695o0UVXn0SB+OjQEdog7BQMnif4W6eOf2kTQ=;
 b=k5rmR4hVpUtuXiAkiSxM915XjREw98jAy6gbPaOQqnVDz3k3HvOGBk7e
 G5bGAREYPOUaKow3iu1ynaTttZqGB17iwwp/Bs10f98JIJpa3+LzLUrWh
 /6LgPXeZUCHUQRNQsg9vRrjOb+rtfe9bffUoc3YJXu0cC5lSBjGOt6gGc
 u4FJTrBgvvjHIIC8QLSqOjIvbP/MGPHTAcqKNQLfbX5cPHxokELvgVycX
 WObiqeMWu4hJqdSklAbzmZVXckH13LMi3Xqww1umP9qGhOj9ucbkjPt1N
 b3RMEbudCqAjBx1eP59zAb0GIoE45Z8ybfUyVpd01pwnyZ+nwb/UBXRcR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6006916"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="6006916"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="45166893"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:52:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 cocci@systeme.lip6.fr, intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
In-Reply-To: <dd1399cc-d968-41f-b41b-7ca6d6a2d044@inria.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZfrYc_rKGETrJsE4@intel.com>
 <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr> <ZfrlLw3W00-cnH1U@intel.com>
 <87y1adm342.fsf@intel.com> <dd1399cc-d968-41f-b41b-7ca6d6a2d044@inria.fr>
Date: Wed, 20 Mar 2024 17:52:34 +0200
Message-ID: <87sf0knbnh.fsf@intel.com>
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

On Wed, 20 Mar 2024, Julia Lawall <julia.lawall@inria.fr> wrote:
> On Wed, 20 Mar 2024, Jani Nikula wrote:
>> Okay, I have another one wrt macros. :)
>>
>> I'm trying to add a completely new variadic macro, but it fails at
>> "...". I've tried all sorts of things, but can't seem to be able to add
>> a literal "...".
>>
>> I've tested that my cocci patch works with x's:
>>
>> + #define fn(p, xxx) foo(__VA_ARGS__)
>>
>> but when I try to make it actually variadic like:
>>
>> + #define fn(p, ...) foo(__VA_ARGS__)
>>
>> it gives me error. Is there a way to escape? Even tried to use a fresh
>> identifier vararg = "..."; but cocci made them unique with numbering
>> "...0" and "...1" etc.
>
> Put 6 dots.  It's silly, but ... is a Coccinelle thing, so we had to use
> something else.

I've tried, but it doesn't seem to work in the + side:

plus: parse error: 
  File "/tmp/tmp.clvvc812Qe", line 20, column 2, charpos = 254
  around = '#define fn(',
  whole content = + #define fn(p, ......) __fn(__to_intel_display(p), __VA_ARGS__)

BR,
Jani.


-- 
Jani Nikula, Intel
