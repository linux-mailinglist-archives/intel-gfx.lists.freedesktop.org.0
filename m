Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED99F7C27
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E985010ED08;
	Thu, 19 Dec 2024 13:17:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSM0+uRG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0297A10ED08;
 Thu, 19 Dec 2024 13:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734614274; x=1766150274;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=4m6NQnKDiKrPS1NzfvFnP+25V1YDRLLVKYJRExD/Q80=;
 b=HSM0+uRG2My4a0TE2f4tFMbZgrszBviMeeW2Ukx8BbXYIyb5IyusuPMy
 niwXBaNitTXuHFM5r4ts6MissFbSKYotJNA5GX8ypMQ1mo0IQ/3WUDMwI
 BUUXWUuXPbLpe7/ydoCwqVe6kxm9TcF7dQ7ko2f8SlE+atId8JaBQWGG7
 n6gXHi43VPvdqLo95R2POHOX4v9CFMOhZA4VttI79FhTqOfo5UVdku5s/
 ks+jup1JsZBCnhhbu3qXrq0CTCDa/7in7cj81V6PnwPTKmhnawH4qXTde
 vRShXqH0UsQuTuha3Ptt50TrpVTYg5eL9p6f+dBAqX6u0LgY39PAjP2dr g==;
X-CSE-ConnectionGUID: 5EkpT0XJSYKR3bBDsnl9kw==
X-CSE-MsgGUID: x3LZbDC/Q5OivjxO9Lk3Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46541348"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="46541348"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:17:53 -0800
X-CSE-ConnectionGUID: iCNsq6QLS8C99BscafOoaQ==
X-CSE-MsgGUID: Lg4uO8YtQx2dPxQSZITTSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="103175815"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:17:52 -0800
Date: Thu, 19 Dec 2024 15:18:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: UHBR rates for Thunderbolt
Message-ID: <Z2QdKA2hlum-XNEQ@ideak-desk.fi.intel.com>
References: <20241217143440.572308-1-mika.kahola@intel.com>
 <Z2LirmqeUmqLw17A@ideak-desk.fi.intel.com>
 <MW4PR11MB7054A983FD2C1B68E6DCB357EF062@MW4PR11MB7054.namprd11.prod.outlook.com>
 <871py3rjm8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871py3rjm8.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 19, 2024 at 01:35:11PM +0200, Jani Nikula wrote:
> On Thu, 19 Dec 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
> > Thanks for the review! Patch is now merged with the change of naming
> > to XE3_*. This is used elsewhere in the driver so maybe it's ok to use
> > here as well.
> 
> Nag, I don't really like modifying patches while applying. Personally, I
> try to avoid it altogether, occasionally changing whitespace or
> comments, but hardly ever anything functional.

Ok, noted, will ask for a resend in the future in such cases.

> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
