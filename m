Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E586ABD6D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 11:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0EF10E220;
	Mon,  6 Mar 2023 10:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C5810E220;
 Mon,  6 Mar 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678100108; x=1709636108;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/TIgeCfWFJlJ6em1rKJ0RE3ltK53jlMLsH29ltUGH68=;
 b=b1rBFV8v1TTZOcSS5OMO3Sj680vDyOVv8o3i7apOBFOIJk6PSXQnAQZy
 MRAjBgsM3UemBEcGi1bHcOYt7IGuW8v/K4oTEJ30FfCKXsTEaiIz2xchk
 7dyyj30B6wMgOojtg9Dq0xwlcKyZnD9SSBNAubcIKT0NBxVQPjHPnUuIq
 GxtXXL76KHUIBdOAy2iVV55eJJmVWgR/PGfhnhkfB3kDmaYAKeHhHxjQM
 4p08xWgGEPmgTWORxgiwZeXpMRMHcEvdvhn8UECtm0MnWCmYm9y6pRkSz
 8O29JXgX60i0DUtXJB0kzuj+b8+ddvT2UM+PhEOWngeIFIavuWev2zOtK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="337042615"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="337042615"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 02:55:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="653567874"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="653567874"
Received: from bholthau-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.77])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 02:55:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>, Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
Date: Mon, 06 Mar 2023 12:54:59 +0200
Message-ID: <87v8jetaik.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] Linux 6.2.1 hits a display driver bug (list_del
 corruption, ffff88811b4af298->next is NULL)
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 05 Mar 2023, Ammar Faizi <ammarfaizi2@gnuweeb.org> wrote:
> On Fri, Mar 03, 2023 at 03:06:18PM +0700, Bagas Sanjaya wrote:
>> Can you please try v6.1?
>
> It's reproducible in v6.1.9. I finally can reliably reproduce it, it
> only happens when I start a VM with qemu.
>
> Specifically adding this device to the qemu instance:
>
>   <hostdev mode="subsystem" type="pci" managed="yes">
>     <source>
>       <address domain="0x0000" bus="0x00" slot="0x02" function="0x0"/>
>     </source>
>     <address type="pci" domain="0x0000" bus="0x04" slot="0x00" function="0x0"/>
>   </hostdev>
>
> And that slot is used by this hardware:
>
>   0000:00:02:0 Intel Corporation TigerLake-LP GT2 [Iris Xe Graphics]
>
> Removing it from the qemu instance solves the issue. But it's still a
> kernel bug anyway.

Please file a bug at fdo gitlab:

https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
