Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859CF787F81
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 08:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1C410E5FC;
	Fri, 25 Aug 2023 06:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1C710E5FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 06:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692943418; x=1724479418;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=o+tAxqG6OUpyfy9SZw3EJBHA8zUtz8efNj/9LoVkgmw=;
 b=aSNuXe6ju9x/UuHNcqvZ9pg0CGOzj47Vpl8nuUSAwTuKZ63oZpEpdR3t
 fwdmv5Ba1+rDwkZkklPPa3TROsnJRBDCzGeEhr8qdAlbG/rCz2Ig15dB2
 BuXnkpqXaDrEmx3CBXndWCvi+MSPGYgYD9YEo99ZR1ajcvwrNd+mKGKfd
 qzTBsEg9/sz4d9wV88cTp2pJFvLx9tjPogR2BaB5S4D2HbcG/X9Hx/1Cg
 HuhJO8RWt04MO3SZYAIV7dezXndZNRzFMjlgY28eZgsrZ3f1cybuUGw1k
 JIQTBZgsaxUgZGOCJUZtvvK2t9L6ZoNV7DYIkvuzgVft2PI4btkQ+t0Zq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="373511979"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="373511979"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 23:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802847520"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802847520"
Received: from ogbrugge-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 23:03:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <b7e8f31cf1dbf6f234e6e8836c4a24aef0f5ad1e.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230818112758.3586545-1-jani.nikula@intel.com>
 <b7e8f31cf1dbf6f234e6e8836c4a24aef0f5ad1e.camel@intel.com>
Date: Fri, 25 Aug 2023 09:03:32 +0300
Message-ID: <87zg2f3bgr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vma: constify unbind_fence_ops
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

On Wed, 23 Aug 2023, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Fri, 2023-08-18 at 14:27 +0300, Jani Nikula wrote:
>> unbind_fence_ops can be const and placed in rodata.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_vma_resource.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c
>> b/drivers/gpu/drm/i915/i915_vma_resource.c
>> index 6ba7a7feceba..53d619ef0c3d 100644
>> --- a/drivers/gpu/drm/i915/i915_vma_resource.c
>> +++ b/drivers/gpu/drm/i915/i915_vma_resource.c
>> @@ -94,7 +94,7 @@ static void unbind_fence_release(struct dma_fence
>> *fence)
>>         call_rcu(&fence->rcu, unbind_fence_free_rcu);
>>  }
>>
>> -static struct dma_fence_ops unbind_fence_ops =3D {
>> +static const struct dma_fence_ops unbind_fence_ops =3D {
>>         .get_driver_name =3D get_driver_name,
>>         .get_timeline_name =3D get_timeline_name,
>>         .release =3D unbind_fence_release,
>

--=20
Jani Nikula, Intel Open Source Graphics Center
