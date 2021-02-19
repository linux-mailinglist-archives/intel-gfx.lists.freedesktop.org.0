Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 227B83201E7
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Feb 2021 00:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA8E6E113;
	Fri, 19 Feb 2021 23:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from merlin.infradead.org (merlin.infradead.org
 [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B099E6E113;
 Fri, 19 Feb 2021 23:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=drUX1L4FnwH0YXuvppFKi9GxlvGkvlyFOpyqxV7ospU=; b=kVBW0CdoLkRlt2hEbQWYfv2W7F
 qywJb4NqFj1MEIoxFf/FIDlD0ihlfCXEFvJ/YVBndHGVL1/fkEnvqn9wLd2rR+mdJXUnJY836wp/s
 Hn1M7/tZ8zfCwsQJ75C3eLE5kAOBX/NsJ+obrjXBc2euLdWItMzrER/HeqMXz17wKkvTyqWiMM5k5
 xqiGBj3Gdk62QpgQyhWbXWiNapjIWN12UQFoXMtOvZMLK7JDbZFngtqRPlkxv3cKaBZT853+K3wlR
 I1tSkcPcZPsa6ZgV9YZD72LZROzNN/dGjDYy3Qy9ikyzdRXdO17DFXYo4QakR/15DQ33G6x++U5NC
 UC5ekJJQ==;
Received: from [2601:1c0:6280:3f0::d05b]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lDFNF-00083v-Iy; Fri, 19 Feb 2021 23:39:49 +0000
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-3-lyude@redhat.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <6f4c606f-684a-4d17-e978-2d414e07e73b@infradead.org>
Date: Fri, 19 Feb 2021 15:39:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210219215326.2227596-3-lyude@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/30] drm/dp: Fixup kernel docs for struct
 drm_dp_aux
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
Cc: David Airlie <airlied@linux.ie>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/19/21 1:52 PM, Lyude Paul wrote:
> * Make sure that struct members are referred to using @, otherwise they
>   won't be formatted as such
> * Make sure to refer to other struct types using & so they link back to
>   each struct's definition
> * Make sure to precede constant values with % so they're formatted
>   correctly
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  include/drm/drm_dp_helper.h | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> 


-- 
~Randy

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
