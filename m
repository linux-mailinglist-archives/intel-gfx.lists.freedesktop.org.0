Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BB62283E1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 17:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D74B6E40F;
	Tue, 21 Jul 2020 15:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03C26E40F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 15:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id A3E4D3F873;
 Tue, 21 Jul 2020 17:34:00 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=rKYv4YXb; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCc7_liTk7Zs; Tue, 21 Jul 2020 17:33:59 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 772A03F8A9;
 Tue, 21 Jul 2020 17:33:59 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 34E5236010A;
 Tue, 21 Jul 2020 17:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595345640; bh=XrDTEXV7CZ+HV14hX5vOpaiOP244vZkpbBWdK7Rdhnw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rKYv4YXbG+IQE9U8kqosPiJySvSTLKi/18QcGh2kqiAzU6hqYkQ55G0GMjcWGYOso
 6RQtstKHHf2JoYRSzfSB2YaMwXzZBMP5EDYXhMJatQtxFJwdGXHuO3v48JpLaXXgMc
 PVBXbz6mQd5UlFDZwygwB4wZVliMFCrxFIeMOyJg=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-6-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <d7a1a3f8-9a1f-350d-55a4-c16fa6c35a66@shipmail.org>
Date: Tue, 21 Jul 2020 17:33:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/66] drm/i915: Export a preallocate
 variant of i915_active_acquire()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2020-07-15 13:50, Chris Wilson wrote:
> Sometimes we have to be very careful not to allocate underneath a mutex
> (or spinlock) and yet still want to track activity. Enter
> i915_active_acquire_for_context(). This raises the activity counter on
> i915_active prior to use and ensures that the fence-tree contains a slot
> for the context.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
>   drivers/gpu/drm/i915/gt/intel_timeline.c      |   4 +-
>   drivers/gpu/drm/i915/i915_active.c            | 136 +++++++++++++++---
>   drivers/gpu/drm/i915/i915_active.h            |  12 +-
>   4 files changed, 126 insertions(+), 28 deletions(-)
>
...
>   	/*
>   	 * We track the most recently used timeline to skip a rbtree search
> @@ -230,8 +260,8 @@ active_instance(struct i915_active *ref, struct intel_timeline *tl)
>   	 * after the previous activity has been retired, or if it matches the
>   	 * current timeline.
>   	 */


In addition to Tvrtko's comments, Should this comment be moved to 
__active_lookup() ?

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
