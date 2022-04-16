Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 654B550383D
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 22:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5945B89FA6;
	Sat, 16 Apr 2022 20:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBCE89DD5
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 20:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650142103;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oWxIUT+rH8PESyeqg6StkvsoyVPPRKkMATCJ7S1FFtE=;
 b=Y2m0TMoGYCgyACvLM8djFi4hrc7uo4j1p2vzstBOyUA3m/QMpGtUkpxBV+dWdaKY8qD1xa
 I3w+fgu0QzNcc2zQftMgZ1HlzVGfY7RvYe72ofkfdYALqg4PVuU8VoC3EnH1ed1/kp6/uH
 dqAGJKQxruKog+Qieldnu2lfmgCT6Dg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-25-S3imC971MXuQ_jebVHj8aw-1; Sat, 16 Apr 2022 16:48:19 -0400
X-MC-Unique: S3imC971MXuQ_jebVHj8aw-1
Received: by mail-qv1-f71.google.com with SMTP id
 dd5-20020ad45805000000b004461b16d4caso7914723qvb.16
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 13:48:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=oWxIUT+rH8PESyeqg6StkvsoyVPPRKkMATCJ7S1FFtE=;
 b=8LOoLgDQZeyfofe46bQ6mkC0E1L0LeTCs7f+KYBBcZeUPHFEkkTYqKVG2stsIOly42
 59FVTNtG/Lh+iToTGA3PU2/yrAuquCcTVy5m3k2lH1ogCzWnjUboPJy3A93PGyVEv4H5
 fQ963SVdta4XgPlJR23IdzkQ2yGI+pIb8qRoevXBgdARAztfASIOZY0AnKK5e/9zLrZ0
 LKQrcvTImwc3MUxYrRLKdWoOCSiD7LiDprx92S+h+iiZpUDnyJas9bgLs5R2hCheY9zz
 WEW5AIjsdIelUeK7m7KYLgd1KOi9692IZ31+sqivPqjvMbQeYcwKBc84sG5KeDZjmhFu
 MqBA==
X-Gm-Message-State: AOAM532ISPM9LITZJK0GSJZhAl9lrWbiw/7QZZZFc/59VkQbYaLm7EcL
 THR/xswN0ocshGQWliMJnFA+QIRsQhebCBoRVizlsqgjWKVSPwvg6ADUcBjTxsKPkL+2jpc8zmD
 wWtRvsfOZLtFGfnK3HSu972xhwHkR
X-Received: by 2002:a05:622a:1e85:b0:2f1:129b:99aa with SMTP id
 bz5-20020a05622a1e8500b002f1129b99aamr2993986qtb.339.1650142099348; 
 Sat, 16 Apr 2022 13:48:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwt9KSKQzCO3SL1g6pRUSCiJkWiil0JhaE1lYAF2MNELSIbppyoFZIcehwE0xIBZs8EGr4V4Q==
X-Received: by 2002:a05:622a:1e85:b0:2f1:129b:99aa with SMTP id
 bz5-20020a05622a1e8500b002f1129b99aamr2993979qtb.339.1650142099159; 
 Sat, 16 Apr 2022 13:48:19 -0700 (PDT)
Received: from localhost.localdomain (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 y25-20020a05620a09d900b0069e82fb9310sm619703qky.15.2022.04.16.13.48.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Apr 2022 13:48:18 -0700 (PDT)
To: Joe Perches <joe@perches.com>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
References: <20220416172325.1039795-1-trix@redhat.com>
 <26839195c315eebcd1148d2a3de6a0df9e42dd1c.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <7973fecf-4e51-3ec8-b626-2581e3ad2f26@redhat.com>
Date: Sat, 16 Apr 2022 13:48:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <26839195c315eebcd1148d2a3de6a0df9e42dd1c.camel@perches.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: change node clearing from memset
 to initialization
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/16/22 11:33 AM, Joe Perches wrote:
> On Sat, 2022-04-16 at 13:23 -0400, Tom Rix wrote:
>> In insert_mappable_node(), the parameter node is
>> cleared late in node's use with memset.
>> insert_mappable_node() is a singleton, called only
>> from i915_gem_gtt_prepare() which itself is only
>> called by i915_gem_gtt_pread() and
>> i915_gem_gtt_pwrite_fast() where the definition of
>> node originates.
>>
>> Instead of using memset, initialize node to 0 at it's
>> definitions.
> trivia: /it's/its/
>
> Only reason _not_ to do this is memset is guaranteed to
> zero any padding that might go to userspace.
>
> But it doesn't seem there is any padding anyway nor is
> the struct available to userspace.
>
> So this seems fine though it might increase overall code
> size a tiny bit.
>
> I do have a caveat: see below:
>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> []
>> @@ -328,7 +327,6 @@ static struct i915_vma *i915_gem_gtt_prepare(struct drm_i915_gem_object *obj,
>>   		goto err_ww;
>>   	} else if (!IS_ERR(vma)) {
>>   		node->start = i915_ggtt_offset(vma);
>> -		node->flags = 0;
> Why is this unneeded?

node = {} initializes all of node's elements to 0, including this one.

Tom

>
> from: drm_mm_insert_node_in_range which can set node->flags
>
> 		__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &node->flags);
>
>

