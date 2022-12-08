Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CB06472B5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E12789109;
	Thu,  8 Dec 2022 15:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EB689109
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670512818; x=1702048818;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=22NLhconkjfYS26msErG6CvWfadGAEY2hBCvFZdxESA=;
 b=TcsdV4qavnEuz/m8fiToTEjMwRppOM0VEquoY7qLgBUDV5gNYDxQ/H+2
 IHx2cb2Y6ererPyIT4JHNzb3JX3N+PE/T04ZFb3foltu9Ai4/gfLMvIGR
 I4nOQZRKSwnLCNmi8abIxNJc8QjNPkEJ43uc31fpvbc/R4ah6BlRSK/fY
 7DUHHq0iJzQVc/PH8E32S/5eeUn3NG5pyW/iOuBjmP3af4vYFtm9J8Oxd
 hd3C2Y7r0w13WbWeRUR1r95262NkJ6kIniB/Ex9y79Nf0BH1rbCNXeEdY
 Uhf9Wg7TRScnukWdgfn5C9KvFV9xblAcwQ4+dZmkCXs1SoALp++B1QkCE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="300623198"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300623198"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:02:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="771506705"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="771506705"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:02:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Hajda, Andrzej"
 <andrzej.hajda@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
 <877cz213fa.fsf@intel.com>
 <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
Date: Thu, 08 Dec 2022 17:02:06 +0200
Message-ID: <87tu26ym4x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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

On Thu, 08 Dec 2022, "Vivi, Rodrigo" <rodrigo.vivi@intel.com> wrote:
> On Thu, 2022-12-08 at 14:32 +0200, Jani Nikula wrote:
>> On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> > Simplify the code.
>> 
>> Personally, I absolutely hate fetch_and_zero().
>> 
>> I understand the point, but there are two main traps:
>> 
>> First, the name implies atomicity, which there is none at all.
>> 
>> Second, the name implies it's part of a kernel core header, which it
>> isn't, and this just amplifies the first point.
>> 
>> It's surprising and misleading, and those are not things I like about
>> interfaces in the kernel.
>> 
>> I would not like to see this proliferate. If fetch_and_zero() was
>> atomic
>> *and* part of a core kernel header, it would be a different matter.
>> But
>> I don't think that's going to happen, exactly because it won't be
>> atomic
>> and the name implies it is.
>
> +1 here.
>
> Please let's go the other way around and try to kill macros like this.
>
> we either kill or we ensure this gets accepted in the core kernel
> libraries.

Agreed. I'd be fine with either:

1) Get something like this accepted in core kernel headers:

#define fetch_and_zero(ptr) xchg(ptr, 0)

2) Do this in i915:

@@
expression E;
@@

- fetch_and_zero(E)
+ xchg(E, 0)


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
