Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB667BC0AE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 22:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA2610E56E;
	Fri,  6 Oct 2023 20:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from omta36.uswest2.a.cloudfilter.net
 (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA3310E56D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 20:47:23 +0000 (UTC)
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
 by cmsmtp with ESMTP
 id oqrxqktvRMZBkorjHqw7K2; Fri, 06 Oct 2023 20:47:23 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id orjGqsRS3xsQ8orjGqiIH7; Fri, 06 Oct 2023 20:47:22 +0000
X-Authority-Analysis: v=2.4 cv=fZK+dmcF c=1 sm=1 tr=0 ts=6520725a
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=Dx1Zrv+1i3YEdDUMOX3koA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=wYkD_t78qR0A:10 a=QyXUC8HyAAAA:8
 a=pGLkceISAAAA:8 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8 a=NEAV23lmAAAA:8
 a=cm27Pg_UAAAA:8 a=0yL73Cyy68KADmUz8mEA:9 a=QEXdDO2ut3YA:10
 a=AjGcO6oz07-iQ99wixmX:22 a=Vxmtnl_E_bksehYqCbjh:22 a=xmb-EsYY8bH0VWELuYED:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gxo07NLXbFSWfnqQOYpGIbOTWGu4BVeTP7jYHXk3874=; b=JgvHqPHiQMKYNI1XgUZo7Vh4Jd
 lzqNacFRqbSwkSzk2FyX9NNJU/aDOHERlwXSRnHZXIYsgoFxAja3vpwycTCx5G6Yss9QnHwKGkZpY
 as2tH0Qc3DKLw2Z4WpDBbH5MEnp/6euZtMQ+FAAmPvBHlqjrzXPaF5+Q0mDdEklwwKo98WarQQyaE
 qEA5xEP/nw9GVWFgAB575gMdU4X0Dzde4Xl3/6XVVJHr/o3yi909a6bU9wdnx7a3mVCEZzOQ9O29E
 ig63PqVUEbMRKvevRwLYWpXG9+kVynfbyJ4jPZsu7S1+miYK4KzQqkBwj6ZYFtMxdu7Z3eGbyA4mW
 zPOn6Yug==;
Received: from 94-238-9-39.abo.bbox.fr ([94.238.9.39]:47408
 helo=[192.168.1.98])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.1)
 (envelope-from <gustavo@embeddedor.com>) id 1qorjE-001Bge-09;
 Fri, 06 Oct 2023 15:47:20 -0500
Message-ID: <b14bc28d-c9e2-45fe-82b8-e77ffb4f7ecf@embeddedor.com>
Date: Fri, 6 Oct 2023 22:47:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20231006201744.work.135-kees@kernel.org>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20231006201744.work.135-kees@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 94.238.9.39
X-Source-L: No
X-Exim-ID: 1qorjE-001Bge-09
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 94-238-9-39.abo.bbox.fr ([192.168.1.98]) [94.238.9.39]:47408
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 55
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGr0z7onexJEqchvM7nh7tJy9DMy+CsYK1QibM/l5HADonnF5VFkzu+W5MmWsx/3tUiBeviV48zFPjkFFx8zky6GBsf53Mug6OzOXyr9fvRqVDZjBLa4
 ZRD8rVm+v1faXucOV3ejMoH6XcuE8PrebuVaaCOhZUaU5MLycTsBWM6zBveiD07HfZ+P3I/Yc2McnoKdhE4U2n8KwIj2GnnLhIEwiGDEG+2zMbMYr88d7bL8
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Annotate struct
 ct_incoming_msg with __counted_by
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, llvm@lists.linux.dev,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, David Airlie <airlied@gmail.com>,
 Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 Nathan Chancellor <nathan@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10/6/23 22:17, Kees Cook wrote:
> Prepare for the coming implementation by GCC and Clang of the __counted_by
> attribute. Flexible array members annotated with __counted_by can have
> their accesses bounds-checked at run-time via CONFIG_UBSAN_BOUNDS (for
> array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
> functions).
> 
> As found with Coccinelle[1], add __counted_by for struct ct_incoming_msg.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-hardening@vger.kernel.org
> Link: https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci [1]
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks!
-- 
Gustavo

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 6e22af31513a..c33210ead1ef 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -96,7 +96,7 @@ struct ct_request {
>   struct ct_incoming_msg {
>   	struct list_head link;
>   	u32 size;
> -	u32 msg[];
> +	u32 msg[] __counted_by(size);
>   };
>   
>   enum { CTB_SEND = 0, CTB_RECV = 1 };
