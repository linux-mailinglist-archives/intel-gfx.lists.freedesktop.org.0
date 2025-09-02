Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983C7B3FA1F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 11:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CFB10E60C;
	Tue,  2 Sep 2025 09:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="FvRDXiq5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DEA10E60E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Sep 2025 09:22:12 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-45b804ed966so15860035e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Sep 2025 02:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1756804931; x=1757409731;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0Be300C9M54HN2j6qqn3KzILYOn0Dm/rUn/s4aJntRQ=;
 b=FvRDXiq5YinIsGc3VhHvX39TN56wdw26wOXxdPcWcnwCFV89QlY+33b/19ToKqkvwq
 6AmLMOv1rFleQ71vWvWBqdFZkMcRhc4fJN1IzwfO+++UcGZjusAa7AavlbwZ+et5BXV0
 bOxT38uB3MOK460NEN8FUkM5jCloEcSLzagG8bxC1uds1+cjp81bMh+ykCUm3jQeYnmy
 vONXQAqv66nU/JZA5t6LsBPRHP0x3BEmkKLo9uij88Y0/HHVplB46PiaVkLSNSxIv3NH
 320bNdtmrihkL6Os8sPCuS8z5KIjpp7w+G3JOFnxem3UJV15U31EzljMshONWW0AZn2o
 hsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756804931; x=1757409731;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0Be300C9M54HN2j6qqn3KzILYOn0Dm/rUn/s4aJntRQ=;
 b=dc08j3m22YSNQaS6TXntmZpFjLwwyEvqS0R4kbbEgBeSKshH4cNuyzPhnshMaNUfDW
 fRENHO+ykyBG3g6bz2n4lGYLdBbS7YRf5jhHedkogkoQd1KfwZhXD3wbhTb7jpnF5Km1
 K85dPsde7fOXAL7KRORGdL2IhHv37qCi0US9qkUJXwiwdDW4qrAsnwf0lOIX0NI7x80v
 n9didRIH63J/GvroWZ/q4/xOKVNojIWwySTaBdgdS/jBbQDbRHeNxmGs21Ic0dRpNQK8
 MDcU79rHmKULX6lZWU3jlbt6RDhBz7LXq92gCuFEMmmhVI9HZ5/I57foQPNSaj82AQRf
 tyiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXikij9s3LHlFk0+lZL49x6suipLu7zOwfbksgZ4DakYHdN1eQLgHqwQayARRA+qiXxGyn7Qt0f10A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyIj/pmOOTChYXs2V4CXsDCMtv9L/6Jh/2rPzd1ZXX+OxAtMekL
 UUHtU1AMBrJnxLocZ0Q1FQCkUw+Fd6sbLz5UfQkE5PNGvCRdg+wJ1OJ8lWYfJTk4MF0=
X-Gm-Gg: ASbGncsRjHjOjaMWR27Q++cMQxe8XgI21+cYdfjG4HY9i6XkA2bJOk3OkDa9FZHivfG
 ufD0CRg/KQdAxg0du0eWvJ+OrsWrYi06rxoJBGHpn13U5DVyjox200FjKOyUYNBBpg057xbPDZb
 sdU5reUk2pcnt5jismTcPLHpcNOlt9Q4rxzE/KZmL12F6b6nLwudHrsY1Jb+FNZXRbZu/eE9cDi
 c97amjWNFLV/n5UGWip5Pp2uRNQBNnzHlqqk5315yL/thIgUas8fi8wvokTXrcbI1k7ZvdKu4vJ
 jay9NItj0YlQF2BbuuyZP013uv21bmagJQ5VpjQKFp+uYAbl1YUEXY1+5euyzLBMOe7SflPm9aB
 jbcRv1MCDl/G2zxZ2oQ5pv1zXgJuKy3wWGqk=
X-Google-Smtp-Source: AGHT+IFjGWdM7r4OC2xPYq10JBW42QzIVS9ISDbv655toZnOdc57tKWSkMByc2ni755H7QY3mBnVYA==
X-Received: by 2002:a05:600c:a04:b0:45b:7d24:beac with SMTP id
 5b1f17b1804b1-45b8553335amr94619035e9.10.1756804930815; 
 Tue, 02 Sep 2025 02:22:10 -0700 (PDT)
Received: from [192.168.0.101] ([84.66.36.92])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3d0b9402299sm17994846f8f.18.2025.09.02.02.22.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Sep 2025 02:22:10 -0700 (PDT)
Message-ID: <4bbf5590-7591-4dfc-a23e-0bda6cb31a80@ursulin.net>
Date: Tue, 2 Sep 2025 10:22:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 26/37] drm/i915/gem: drop nth_page() usage within SG
 entry
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org
Cc: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Brendan Jackman <jackmanb@google.com>, Christoph Lameter <cl@gentwo.org>,
 Dennis Zhou <dennis@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 iommu@lists.linux.dev, io-uring@vger.kernel.org,
 Jason Gunthorpe <jgg@nvidia.com>, Jens Axboe <axboe@kernel.dk>,
 Johannes Weiner <hannes@cmpxchg.org>, John Hubbard <jhubbard@nvidia.com>,
 kasan-dev@googlegroups.com, kvm@vger.kernel.org,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-arm-kernel@axis.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Marco Elver <elver@google.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Michal Hocko <mhocko@suse.com>,
 Mike Rapoport <rppt@kernel.org>, Muchun Song <muchun.song@linux.dev>,
 netdev@vger.kernel.org, Oscar Salvador <osalvador@suse.de>,
 Peter Xu <peterx@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 Suren Baghdasaryan <surenb@google.com>, Tejun Heo <tj@kernel.org>,
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
References: <20250901150359.867252-1-david@redhat.com>
 <20250901150359.867252-27-david@redhat.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250901150359.867252-27-david@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 01/09/2025 16:03, David Hildenbrand wrote:
> It's no longer required to use nth_page() when iterating pages within a
> single SG entry, so let's drop the nth_page() usage.
> 
> Reviewed-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Simona Vetter <simona@ffwll.ch>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index c16a57160b262..031d7acc16142 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -779,7 +779,7 @@ __i915_gem_object_get_page(struct drm_i915_gem_object *obj, pgoff_t n)
>   	GEM_BUG_ON(!i915_gem_object_has_struct_page(obj));
>   
>   	sg = i915_gem_object_get_sg(obj, n, &offset);
> -	return nth_page(sg_page(sg), offset);
> +	return sg_page(sg) + offset;
>   }
>   
>   /* Like i915_gem_object_get_page(), but mark the returned page dirty */

LGTM. If you want an ack to merge via a tree other than i915 you have 
it. I suspect it might be easier to coordinate like that.

Regards,

Tvrtko

