Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TBffCIoMTmr7CAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:38:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 451BD7233E4
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:38:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ursulin.net header.s=google header.b=xb2P26cQ;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9BD10F05E;
	Wed,  8 Jul 2026 08:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8437B10F05E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2026 08:38:30 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-c126f9c9567so43242566b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2026 01:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1783499909; x=1784104709; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to
 :content-type; bh=35GhzNQivfiRCZTVl3Now4SgwKIpqR1iOQGBo2y1fA4=;
 b=xb2P26cQqSm1unR39BpZCMUNuKD3xHC67fC3Qe/RMUkVZB8JhA891VTp0F003PLSBA
 UabYlL8X9qp1pIf734dKvCW8w6AjQFFzNkDWUPoQ6o95pf+29uMST6iLlu2AnSC+XMUB
 sSvwg1kYzLG7HtWgPn8QE369zvy408f5283dY1caEuCs5zBEfXaxghI0HzpN2DFSgJX8
 00eX08g46dMYdzH5KKeO1IgbWjvscwPwXr4AxDDgt3JthzM5nNya1X2cG0z3wjKpQLt7
 7taZC2lDb07sZAOX6mC+POfImy+yEJ3wMuqAQhLxbw+wSswD0KAqxc/1yUszN+kzwGV8
 lT0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783499909; x=1784104709;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=35GhzNQivfiRCZTVl3Now4SgwKIpqR1iOQGBo2y1fA4=;
 b=moEddLqFaPKoj570UUH9U1BJJzHwIrnlA5/pSH+kvkjSm9+ZjPPmm3ac8uwlqDNd0R
 bMBljTGBXGsg/+quttBnHHnLsb7OFeXsd35ciD4gF9duw4e0KSfEaA8RW54pRUgj/47p
 QRmCO9l0CQJk1bjMhYlBDXndcs1W4V490BMV/xVcHMfBJHADUpEsJPlKQJP0sK5M4ftI
 En6tpj6vbMHcvcYCUq/WypQVlLmZKmoycQSqGP7BnHgZXMmi4gxsksRVugFtbwiOIDf/
 /eGKjc9QSbggkq02styuEPkdY/P/jjsGjJuDWt9gvfGIgn+Z5p5TxoKcluMFH+yAPSYz
 /oEA==
X-Gm-Message-State: AOJu0YzJKKrC9vt9ear2TTcUT/fAbAPRNfFcLwRClPE16Gof8umbhp9f
 X6EG/lgQh1M8zoHFDkxyeYIhtDOcnYL7C4iYbQB3H2IoQRN2nMnSmvXPksPrBh4VYkc=
X-Gm-Gg: AfdE7ckEAT9EdusWhLWDIsi0XXxUlQAwKiEY8PXoghn6m3u1RBGaA52mMaLmRixSwbF
 YHH1mmUNbKoiS8oeGyjcP72p0Okb1u1rXlILGf6LpZM7E5kTqV/+NUedOiUGYs/jJCHzKN7ruMM
 ZCNSbk1Wp46lMe6mGjRsp0sh29cnFUWqDkPhFz3YJ6E5vB0xBjM4Vq91t0UoVABnONQYd9xnu7M
 gfETP6iRq05WA2aCcyQmT8toc86lS7odqDGEvdeUtlmggMoZmifS3iSVPC2ZXbhe+NdCWi4F/Ti
 r/T+hl8C6t070sctAdgTS9K+yd4v/9VAWKN7V3cZFV7++VHAyD6+YcGADMnnsoNdINym79uejyt
 iVeyRHdFiQzm7Xp6nf7Fh6nE0Rg8d8pqce4lRVXp8Z38pCghwW742vgEnGtYjt1+54K8lobWFaB
 Z70Rykhp9uNMgZ47hlPQ/HkCS3FVcexGkaHGjvOyz5Jzf6
X-Received: by 2002:a17:906:f58a:b0:c12:7eeb:d2d5 with SMTP id
 a640c23a62f3a-c15ce0fa416mr78006166b.33.1783499908629; 
 Wed, 08 Jul 2026 01:38:28 -0700 (PDT)
Received: from [192.168.0.116] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-c15bb51af39sm179911666b.29.2026.07.08.01.38.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2026 01:38:28 -0700 (PDT)
Message-ID: <943175dd-afe2-4951-baed-4370f2bf2781@ursulin.net>
Date: Wed, 8 Jul 2026 09:38:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Return NULL for missing multi-lrc parent
To: Linmao Li <lilinmao@kylinos.cn>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andi Shyti <andi.shyti@linux.intel.com>,
 Konstantin Khorenko <khorenko@virtuozzo.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20260706071412.559909-1-lilinmao@kylinos.cn>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260706071412.559909-1-lilinmao@kylinos.cn>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_RECIPIENTS(0.00)[m:lilinmao@kylinos.cn,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:andi.shyti@linux.intel.com,m:khorenko@virtuozzo.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[kylinos.cn,linux.intel.com,intel.com,gmail.com,ffwll.ch,virtuozzo.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 451BD7233E4


On 06/07/2026 08:14, Linmao Li wrote:
> multi_lrc_create_parent() returns ERR_PTR(0) when there are not enough
> engines in the class to create a parallel context.  ERR_PTR(0) evaluates
> to NULL, and the only caller already treats NULL as the non-error
> "not enough engines" case.
> 
> Return NULL directly to make the non-error path explicit.
> 
> Signed-off-by: Linmao Li <lilinmao@kylinos.cn>
> ---
>   drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
> index 28e8a092f4e7..18077801b2e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
> @@ -44,7 +44,7 @@ multi_lrc_create_parent(struct intel_gt *gt, u8 class,
>   	}
>   
>   	if (i <= 1)
> -		return ERR_PTR(0);
> +		return NULL;
>   
>   	logical_sort(siblings, i);
>   

Pushed to drm-intel-gt-next, thank you for the cleanup!

Regards,

Tvrtko

