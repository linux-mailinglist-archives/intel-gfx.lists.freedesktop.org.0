Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BE44A6FE7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A6410E67E;
	Wed,  2 Feb 2022 11:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBD810E5F9
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643801154; x=1675337154;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=bwlIRQ9abnO3iuFHhtuQK0fBSObDtve7TqmWOVyg0js=;
 b=Sh25fdAqHCFOMs0t1ZrvzzvJAbCiTzPeBiklYwQ1wdXRQWegH+L/v8NF
 uJBJ8LCtC0lGxmeCq2coZNNq/KxTYymMH3JT4xjr53JDUkgs4zMmRU8ZI
 SkETFNDtG0D0imQ35RY5UeeZmgnoOceE6jPljbyyUni8Air/Zf0LZi4v7
 OlDJyzseHSjMW4cuoWLM8DYoERggE89/3AINBUnMkVY9l8x9cDSgIiJGL
 Ajv6NUV1SR1+vT4sO/FtmAAc3Ah/df/J9Vwdv9j7Hr+6VTA2OGe7Eusiz
 QAwjvTWJ7PTl5pdO9z1qvBveRJWRwtVMFSSvudO00d2jKPYRkOfR37J0E g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="231465700"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="231465700"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:25:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="630889247"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:25:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yfpbceq3zV3qIm3n@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
 <YdxYvXfkOgTFFg+s@intel.com> <87pmoy8xdb.fsf@intel.com>
 <Yd7WmT4naDadKVoh@intel.com> <87iltxtyp4.fsf@intel.com>
 <Yfpbceq3zV3qIm3n@intel.com>
Date: Wed, 02 Feb 2022 13:25:49 +0200
Message-ID: <877dadtsqq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
>> I dropped the ball here a bit. If I respin the same patches, but with
>> the above line changed to one of these, is it okay? Which do you prefer?
>>=20
>> 1)	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I); /* SR01 */
>>=20
>> 2)	#define SR01 VGA_SEQ_CLOCK_MODE
>> 	outb(SR01, VGA_SEQ_I);
>>=20
>> 3)	outb(0x01, VGA_SEQ_I);
>
> 3 seems like the best option of these.

Thanks, v2 on the list.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
