Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C50A54492
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 09:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D28010E91A;
	Thu,  6 Mar 2025 08:20:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2+oz6j7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE30210E91D;
 Thu,  6 Mar 2025 08:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741249229; x=1772785229;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5EqrV1DyiMIJUuDlvSVyxIaoaDVctsOiTgcMjmrr2/k=;
 b=h2+oz6j7JZ8wA6TulyQpmwBylx9E+dO44nSdCubq+wu+Vk1udJwvAYTt
 xpZOLlTkPhn0qDg/sj2uXgl9NwNdy5inBvAvIJoz+H/9m32Con5dkpg9d
 lFCPw+CGMJRjN4tHLG5tDDjH4sB+/QGLhedV8vrEbH/Nj8NJ4IR2LLiGv
 a7uYboshg35npr1NAxyXHOZIkH9fbnu2HN+Ey/gU6Suh+sxH6syg8+oVK
 BSnXxxmvvu3gxkqecYvyurG0eqD43Tpvzeu6Zr9HllJNsOxMzz0K/KBLg
 jltyJjuN5CA0K/w7Wz7ycG5TWPpFNe0fHh4Ytktx/TMaXi+EfKOYV24A2 g==;
X-CSE-ConnectionGUID: XKsXkMC3TgqOy4ZlYhYnRQ==
X-CSE-MsgGUID: oXSdczB2QlGOxN8K9Minxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="67617363"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="67617363"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 00:20:28 -0800
X-CSE-ConnectionGUID: BU+Akgf2TcqEolRvtEoOLA==
X-CSE-MsgGUID: RKjcdJ55SOC+WLu6u0x1OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="149726872"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 00:20:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "rk@dragonic.eu" <rk@dragonic.eu>, "daniel@fooishbar.org"
 <daniel@fooishbar.org>, Sima Vetter <sima@ffwll.ch>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <qiilvo4yumvostcmeehx3ifolg5e7jt5h363c4tninmttaxk4c@hpgpbwdb4e2j>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com>
 <qiilvo4yumvostcmeehx3ifolg5e7jt5h363c4tninmttaxk4c@hpgpbwdb4e2j>
Date: Thu, 06 Mar 2025 10:20:22 +0200
Message-ID: <87pliuwoxl.fsf@intel.com>
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

On Wed, 05 Mar 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Mar 05, 2025 at 07:52:31PM +0200, Jani Nikula wrote:
>>There's a small catch here. Patchwork is currently more clever about
>
> for some notion of clever. Try giving this kind of feedback in the
> mailing list:
>
> "oh, in addition to what you did, you also need this:
>
> ----8<----
> <diff>
> ----8<----"
>
> It will a) mangle the author for the entire series b) not do right thing
> with the patch and the series won't apply anymore (afair it tries to
> replace the patch with what you gave as diff). Also, what should go in
> the subject? Is it v{n}, v{n+1} or v{n}.1? There may be an answer, not
> documented anywhere, but for me relying on "this is what b4 does" rather
> than a specific behavior in this forked patchwork instance is much
> better.  At least with b4 we can set expectations or have hope of
> eventually tweaking it.

Agreed.

And as Konstantin noted, b4 already does better than what I claimed
(maybe I need to upgrade).


BR,
Jani.


-- 
Jani Nikula, Intel
