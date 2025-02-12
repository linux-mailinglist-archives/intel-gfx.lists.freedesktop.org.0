Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1066CA322E3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FE810E835;
	Wed, 12 Feb 2025 09:53:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nUsyk3aO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7626510E835
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 09:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739354013; x=1770890013;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=37rP4TPl1RVbdd+Q2u0ki8zaBKxO/Bfa4oOOCc71/t0=;
 b=nUsyk3aOkGAqivuCAzR+9sFE1ClWtSENoCqEb6b+oAYbDYI6sYCSVF2I
 masdAHQwtKCczdy14U+8wtCfFRd51YshNgYZLlzvqrRZLagDJdoYFOgQn
 vlmtPNntgZE07Cr2VF1nrs9E8RC1PNE3Nn+pxn9baD6arST80QJpUpD1f
 h4hXe45YEjRsbTlEunoIB3Q6ddAUHaK+wnk+v6mA+0DZ9I238hlKAAVs0
 Egxnd1FMt6bnsaTP1wVwMD4CWLntMZvU9trNHmla/xEphZfDy4JjXmbd2
 kSbIHQhR3sSrdoCDuEKbRyxS173c282I8LGBIsLG1PWEPx7xjcc7egy+o w==;
X-CSE-ConnectionGUID: O0JnzMNhTbi1zPeLm6Xs+A==
X-CSE-MsgGUID: F+IpNAq3QO2uKWyRy4drcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50986064"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50986064"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:53:32 -0800
X-CSE-ConnectionGUID: ENmLl72rSemmXfxcSJZlnA==
X-CSE-MsgGUID: ngDFlb+rRfu9SkI0qUUA+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117398738"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:53:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/pcode: Fix the coding style
In-Reply-To: <SJ0PR11MB58672CCB29FDDEF79D897C5BD0FC2@SJ0PR11MB5867.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250210140924.1364158-1-nitin.r.gote@intel.com>
 <Z6oLeQjRUatMGgAs@ashyti-mobl2.lan> <87ed041ulj.fsf@intel.com>
 <SJ0PR11MB58672CCB29FDDEF79D897C5BD0FC2@SJ0PR11MB5867.namprd11.prod.outlook.com>
Date: Wed, 12 Feb 2025 11:53:27 +0200
Message-ID: <87pljnzdyg.fsf@intel.com>
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

On Wed, 12 Feb 2025, "Gote, Nitin R" <nitin.r.gote@intel.com> wrote:
> Hi,
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Tuesday, February 11, 2025 6:56 PM
>> To: Andi Shyti <andi.shyti@linux.intel.com>; Gote, Nitin R
>> <nitin.r.gote@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [PATCH] drm/i915/pcode: Fix the coding style
>> 
>> On Mon, 10 Feb 2025, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> > Hi Nitin,
>> >
>> > On Mon, Feb 10, 2025 at 07:39:24PM +0530, Nitin Gote wrote:
>> >> Prefer binary operator at the end of the previous line instead of
>> >> putting operator at the start of the next line as per coding style.
>> >
>> > I'm not finding any documentation for this change, where did you take
>> > it?
>> 
>> If not documented, it's the prevalent style, anyway.
>
> Yeah, My bad I thought it is a standard coding style but it is not so.
> But still, I feel the more correct way is to use binary "|" operator in continuation of first line
> instead of second line.

Yes, that's what I said, that's the prevalent style.

>
> Thanks,
> Nitin
>> 
>> BR,
>> Jani.
>> 
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
