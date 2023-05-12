Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4519170071E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF8B10E690;
	Fri, 12 May 2023 11:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359F410E690;
 Fri, 12 May 2023 11:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683891928; x=1715427928;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dYYNFnS0C9MVpLeh+UPAsMuKqp0z8z6OdbK4OMSu5kk=;
 b=HZvq4GVbBpLc+IM/K7hyPC/uho01irAHptYRCIInecKN2nkPVILhAjR6
 BrTj0nCl9AnPsKjxyxyk36xbL0uHLVIg3u+NLmYNSjmJdb20JaXPi1VtJ
 +rr7eXEznzDjuPhDFvOqWmzMTNqD0JSFezQeIdG+uRal4l2S6zoS12ExQ
 0LO8VcxiXnVd2f1FpVvZ1m4F5NB0m1p5Q+q3vu9VB4YsOn8edADLAk9NE
 okb+J5HuT7Qi1phWGRKQTbu3lPJHEBCTjXYQvkwHPkoRSNYjAkQ2affvk
 5Ail3M/bbU+i2RbB9TZTieNZw+EhBr4T8m1pKAiGLBgjg/djB6gO6bYDf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="340084837"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="340084837"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:45:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="733017118"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="733017118"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:45:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
In-Reply-To: <ZF4j0NPoBGMBT8CO@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230509051403.2748545-1-lucas.demarchi@intel.com>
 <20230509051403.2748545-3-lucas.demarchi@intel.com>
 <ZF4fi5B7PPlgZBOI@smile.fi.intel.com> <87pm75kd0h.fsf@intel.com>
 <ZF4j0NPoBGMBT8CO@smile.fi.intel.com>
Date: Fri, 12 May 2023 14:45:19 +0300
Message-ID: <87mt29kc34.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] linux/bits.h: Add fixed-width GENMASK
 and BIT macros
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
Cc: Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Thomas Gleixner <tglx@linutronix.de>,
 Masahiro Yamada <masahiroy@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 May 2023, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> On Fri, May 12, 2023 at 02:25:18PM +0300, Jani Nikula wrote:
>> On Fri, 12 May 2023, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
>> > On Mon, May 08, 2023 at 10:14:02PM -0700, Lucas De Marchi wrote:
>> >> Add GENMASK_U32(), GENMASK_U16() and GENMASK_U8()  macros to create
>> >> masks for fixed-width types and also the corresponding BIT_U32(),
>> >> BIT_U16() and BIT_U8().
>> >
>> > Why?
>> 
>> The main reason is that GENMASK() and BIT() size varies for 32/64 bit
>> builds.
>
> When needed GENMASK_ULL() can be used (with respective castings perhaps)
> and BIT_ULL(), no?

How does that help with making them the same 32-bit size on both 32 and
64 bit builds?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
