Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52263A4367E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 08:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D1110E59C;
	Tue, 25 Feb 2025 07:52:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QdiOf9Td";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6817B10E59C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 07:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740469973; x=1772005973;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TanDi6tpxMlBwAayA/qExv+I3H1KgdxGM5I4vgVaDU4=;
 b=QdiOf9TdLPbqKSgG07wRLnSJAsZi32ptDwSB3RNsrpBfD3X0lTImKbUJ
 m3AMj5aeT8dj4IZodf9YlFgZY6uVc8Xnv4I8GNNF/8MEZtNMMWRNIn4WU
 jk7uQQQxrZ5fgUHsqvmCnzmbhrf15XtKduInR30Sgvna8AFzBq6RylLVT
 GlAjaS2INCHDCTCgmu25Pq6aDDGI/o5KR3Zlok/z2gNXoS85XRefoDwhK
 gCoXVaCanynoSE1sUuWsSW28OgwKjowxS8OBK705NqNnYEOX0/7dUZbP2
 OIdwkkN60pnVV2ivc98yxepsMlM6+K01piQa6wiZGiU36riLtwl4XjeTn g==;
X-CSE-ConnectionGUID: J8PnjBKNRKO8dG8OlTSgjA==
X-CSE-MsgGUID: SGM0NV6kR42yEm/RraFNyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41107344"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="41107344"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 23:52:52 -0800
X-CSE-ConnectionGUID: jNV2unVfT4C/kVkpal/Qlw==
X-CSE-MsgGUID: VjHMY8hLSb63vcY37FqHSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120412564"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 23:52:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Use REG_BIT() & co. for BDW+ EU/slice
 fuse bits
In-Reply-To: <Z7xHVpOEvu7tCn6a@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-10-ville.syrjala@linux.intel.com>
 <Z7xHVpOEvu7tCn6a@ashyti-mobl2.lan>
Date: Tue, 25 Feb 2025 09:52:41 +0200
Message-ID: <87bjuq796e.fsf@intel.com>
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

On Mon, 24 Feb 2025, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Ville,
>
> On Wed, Feb 12, 2025 at 01:19:37AM +0200, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Convert the BDW+ EU/slice fuse bits to the modern REG_BIT()/etc.
>> style.
>
> using REG_BIT() and co. doesn't alway make it more readable. In
> some of the cases below I would have preferred not to use it.

Interesting. I read through the patch and I thought all of it was
good. Care to elaborate?

BR,
Jani.


>
> But on the other hand we keep consistency and bit operations are
> not supposed to be easy-readable, anyway.
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Thanks,
> Andi

--=20
Jani Nikula, Intel
