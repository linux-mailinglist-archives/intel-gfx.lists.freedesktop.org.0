Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sQOxN0uUS2qEVwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:40:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E93B70FFC1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:40:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=V8HaHo3o;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD18E10E8E0;
	Mon,  6 Jul 2026 11:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF4410E8DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 11:40:56 +0000 (UTC)
Received: by mail-qv1-f48.google.com with SMTP id
 6a1803df08f44-8f23e851626so23559686d6.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2026 04:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783338055; x=1783942855; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BlzqRtlXbabh3QQlkX9Qesj3eyFizaZyJAzX8b4cN6E=;
 b=V8HaHo3oHgaJLTbyVGd1gMUqG8LFHPyGt7rHwV3VRRIxbGVBSDvkzM7AVm6YUdXhQH
 UEicFYsVbAq5U9XOqMGR8LFKaLE6AZVGzmQxSUq7kDPQWEUEJ1b+NiyzZhNmi11a5/ic
 Xww0eoa6InstLQqP4OoeSInjpNnyCrCPpSrEUEdel66hDmXDiFlN5WtfjsKqJIeDNcVm
 Efa0O6LGlGbVaBGIKuF73y8wpCjcuMTRPgIYG0R4Uyo/WNhOrDTTFb7bDty4l7ZIlDFa
 +DQG95q7N3dT6poi3rnV0V9jHX4K0gI+phDPRI+Sv0SOt/zA03xcAFazQHrB1/adJz1E
 jcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783338055; x=1783942855;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BlzqRtlXbabh3QQlkX9Qesj3eyFizaZyJAzX8b4cN6E=;
 b=dv/jyjxH4orQUvU7mIDdOr8BL9nuzp/tG1YW1BjhbNoPi1w+6crNtQpUh8rXPshl+W
 V3ZpdmIILNLH0IcHEmfRKbgTv60kGVYpNBoldi+IvxaBlTg0NHBwwOhqLnzivnCCoNc9
 6bGHuLL6cLpHrMz1VT3fAHjbFK/+qaVVyNxw71wYDRksDhkXcTogX1nx+O5V1FJKaS9A
 Qm+EEPh6x+Kz9CzeNMLTcn3rW92eRlnqApt+pjYzfV4K1WHB3r46XhuMrxaujp4mA+pY
 RaKnna58hE4gBDprNa3zGXC2+RL2ypqrzvP5r7orGYXZI9xzOuMAgmNONFfWWOavQjTb
 qABQ==
X-Forwarded-Encrypted: i=1;
 AHgh+RqWyWpddboHfiR6zJuCsmu3eEmvLOw4PjvMEvdABlpCthn+SbuoEzmNh/aCjUbAyERZDiNiEOgsEUY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwartdfV/tXw/Xj7Ovqcb/qrP+mdRdbnnjgYIvebm2x4D9QyHm6
 tb5m2eQXTWa7nnwLLIvOTCjCZehi2lhu/rvCj98wbctEUcsxfKQbdoka
X-Gm-Gg: AfdE7clcsmOGQFiSHjidBWWeirhqWF3Jv78pSmiYB+C1HdRVjNwU263cAwNOxBO8WHn
 n32Q8W86eaXrnz6HJZuz+q0m++fYoSxWghMr/C6hnA1+EdFIfnYV2QjNtq0vi47chBmhaDkwyRO
 hZpMp7zV/AJpBNI5FQrU1A2AEC2osXswu0P0BJJc4Dha0gR9kfsz4zEL/xR0cY97NAMOXMX6aDl
 KGwUOhNOhKHQJZKio8fq3tyrnbA5cwtaFImc7DnZAvaBXx7EPj/f1q3Tx5b39N5pCzknfSHPR1J
 tK66AC3VDYl3KbcuTWr/Jh+KmrJtC8SRa+sCCAhzYe3xm8HPxE7nEnlqi8lkHz9ldn7/l1S82Rr
 EIuDVpJ8CkYACnHRppeneikjTJPGLw2ciVvRaMfbgqpQER7FQdBFV6KXGcxrxkC9zw2tGhUcoEd
 zgmUpCxBifyIa+u+B5y+FgBYHFuvgNkPA+WQgTJAbItzzf
X-Received: by 2002:a05:6214:5348:b0:8ed:b644:c03c with SMTP id
 6a1803df08f44-8f74d1b9807mr138872566d6.55.1783338055225; 
 Mon, 06 Jul 2026 04:40:55 -0700 (PDT)
Received: from [10.254.122.221] (mkmvpn.amd.com. [165.204.54.211])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8f471813d49sm131848996d6.27.2026.07.06.04.40.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jul 2026 04:40:54 -0700 (PDT)
Message-ID: <5acb8994-3076-452e-a95a-d3b0159c21b7@gmail.com>
Date: Mon, 6 Jul 2026 13:40:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES
 flag
To: Natalie Vock <nat@pixelcluster.dev>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Christian Koenig <christian.koenig@amd.com>,
 Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
 <20260706-ttm_2_drm_exec-v2-1-4bf6bfc0d320@pixelcluster.dev>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20260706-ttm_2_drm_exec-v2-1-4bf6bfc0d320@pixelcluster.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [2.69 / 15.00];
	SEM_URIBL_FRESH15(3.00)[pixelcluster.dev:email];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:nat@pixelcluster.dev,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	FREEMAIL_TO(0.00)[pixelcluster.dev,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E93B70FFC1

On 7/6/26 12:07, Natalie Vock wrote:
> TTM is about to switch to drm_exec for locking objects
> in the LRU list. When we're done processing the object, we want to
> unlock it only if the caller doesn't already hold that lock. If
> DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which callers may
> require for unrelated reasons), we have no way of knowing whether the
> lock is already held.
> 
> To remedy this, add a separate helper that forcefully bypasses the
> IGNORE_DUPLICATES flag for only a single locking operation.
> 
> Signed-off-by: Natalie Vock <nat@pixelcluster.dev>

Reviewed-by: Christian König <christian.koenig@amd.com>

> ---
>  drivers/gpu/drm/drm_exec.c | 54 ++++++++++++++++++++++++++++++++++------------
>  include/drm/drm_exec.h     |  2 ++
>  2 files changed, 42 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
> index 7988f5e7d56a3..ec33ed4a523cc 100644
> --- a/drivers/gpu/drm/drm_exec.c
> +++ b/drivers/gpu/drm/drm_exec.c
> @@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct drm_exec *exec)
>  	return ret;
>  }
>  
> -/**
> - * drm_exec_lock_obj - lock a GEM object for use
> - * @exec: the drm_exec object with the state
> - * @obj: the GEM object to lock
> - *
> - * Lock a GEM object for use and grab a reference to it.
> - *
> - * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
> - * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
> - * flag), -ENOMEM when memory allocation failed and zero for success.
> - */
> -int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
> +static int __drm_exec_lock_obj(struct drm_exec *exec,
> +			       struct drm_gem_object *obj,
> +			       bool ignore_duplicates)
>  {
>  	int ret;
>  
> @@ -226,8 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
>  		return -EDEADLK;
>  	}
>  
> -	if (unlikely(ret == -EALREADY) &&
> -	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
> +	if (unlikely(ret == -EALREADY) && ignore_duplicates)
>  		return 0;
>  
>  	if (unlikely(ret))
> @@ -243,8 +233,44 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
>  	dma_resv_unlock(obj->resv);
>  	return ret;
>  }
> +
> +/**
> + * drm_exec_lock_obj - lock a GEM object for use
> + * @exec: the drm_exec object with the state
> + * @obj: the GEM object to lock
> + *
> + * Lock a GEM object for use and grab a reference to it.
> + *
> + * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
> + * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
> + * flag), -ENOMEM when memory allocation failed and zero for success.
> + */
> +int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
> +{
> +	return __drm_exec_lock_obj(exec, obj,
> +				   exec->flags & DRM_EXEC_IGNORE_DUPLICATES);
> +}
>  EXPORT_SYMBOL(drm_exec_lock_obj);
>  
> +/**
> + * drm_exec_lock_obj_report_dup - lock a GEM object for use, but always report duplicates
> + * @exec: the drm_exec object with the state
> + * @obj: the GEM object to lock
> + *
> + * Like drm_exec_lock_obj, lock a GEM object for use and grab a reference to it.
> + * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is ignored and duplicates are
> + * always reported.
> + *
> + * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
> + * already locked, -ENOMEM when memory allocation failed and zero for success.
> + */
> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
> +				 struct drm_gem_object *obj)
> +{
> +	return __drm_exec_lock_obj(exec, obj, false);
> +}
> +EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
> +
>  /**
>   * drm_exec_unlock_obj - unlock a GEM object in this exec context
>   * @exec: the drm_exec object with the state
> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
> index 8725ba92ff916..ff80dd2b72240 100644
> --- a/include/drm/drm_exec.h
> +++ b/include/drm/drm_exec.h
> @@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned nr);
>  void drm_exec_fini(struct drm_exec *exec);
>  bool drm_exec_cleanup(struct drm_exec *exec);
>  int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
> +				 struct drm_gem_object *obj);
>  void drm_exec_unlock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
>  int drm_exec_prepare_obj(struct drm_exec *exec, struct drm_gem_object *obj,
>  			 unsigned int num_fences);
> 

