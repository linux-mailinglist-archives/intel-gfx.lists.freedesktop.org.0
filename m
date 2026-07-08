Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id anccBDYNTmoiCQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:41:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCD472344B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:41:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ursulin.net header.s=google header.b=scAz6oOz;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7AA210E414;
	Wed,  8 Jul 2026 08:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441BD10E5AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2026 08:41:22 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-69a50189d25so736373a12.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2026 01:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1783500080; x=1784104880; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to
 :content-type; bh=3DZTTXE9BUksJ1j2NPuZCs/kRS4hcs1yGW38pGmaPVA=;
 b=scAz6oOzO1iCQNmfvqA/02qAzWlsaIO6ABK/pWAjVgHEsQAzSuZBprcdPpTOirzdCX
 ygpo6hgRxR6IK2BKOpQ+zop+OQViC2wtFBz/LW3eG2zK4c4NgoRmTW4V8//fii9KdnkV
 KvR+Mm7ipDnOQ2QK2QJuqN8SxLSKsBnDZkzvOH79ZJK6PbFt8qPpYfDNQQrwSnoDBTTF
 yDLVgsUIXt7eT+kfmccNeMkZvXevG55m0PSbmAQX/9gVyN1DpHt7LVjXr69VGbrovgKO
 YC3AHXdBXZJY7yATdLP9B/6hzFA9Ys+rccOCRFsujWNV7wJYybmzOPv8BOquqBiIvptw
 GLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783500080; x=1784104880;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=3DZTTXE9BUksJ1j2NPuZCs/kRS4hcs1yGW38pGmaPVA=;
 b=eSN6+4AuzsbFSWIi5MgEbN7IzcLWKAK0WnnJa2lkOo405Y8oeFe3EEJjooGJ2lOvfm
 WaAEHwEcVHa9Eamtr4RrkPAX4lfuey3ly9JbGVYilsge6adv+HRI701mAduHMIqLOw7q
 p5LNTqtFLAGMzXAHHcEY365Gpp9m51hqr/1fLB3PaVho5cDqRC0dUaNXAMNRESFrMC/t
 YzW61k6XXLD8HrSuKZBe55yfDtr587c8B5r4ZHteVh4uIBupFBd7R5sCungXe9jBOTwD
 9s4pEVvccKDOPL5UaxMuJad8vTyTwE1wos/DrOJE0S4hD9vN4G91QWqWcb0QPd9kyzA6
 KvZA==
X-Forwarded-Encrypted: i=1;
 AHgh+RrcjAbGNsfdgBOvv7VX7Xg2zREmmLgmBWWKU1laekiTh1hPlCbfSDWCynDDpz2+UbGImT51JKb4BgI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwNtR32cteUE7CqUOfzBUUnhRLCMIApHRbNUhnKeeaXkEutLbE8
 6scQmPVbYSOTOrSI8q81rPHEJe2Lty1BTOfLtb0fvtla5Z/85oGDbIOBaF+UACoaXAk=
X-Gm-Gg: AfdE7ckixoLX1un3fF0QzQb94YqioG2IimMDm0EyTqS5KUBYDQDO45opGdFQ24F3e49
 YZXymL7res0Q4sOtDTOQPIcTohWt2QzWQZF1tpRmWRkcgzNtML9x+rPnHPRNP2pbmS3lxNoaDEo
 xQVUfMHc1czJ/1GfSe/r4OOzv6l1z8Ru3Ku0Q3rfEKRZqILCiQsOobGwX69SbyN0ugsJDZ1wRHS
 YsGY41JZhhgb7E2gSL6cEw8tJHoLZr3OkClxZkmHFH+nzdGOObW9oB9wJniF5DR4ra5CjwZsday
 dyI0mbD+qQwJAQrC9CI/ukpT7XVwtPDxplDWAM/g01p4sFy0Edock37btcwoNSXrcFg9lV7JV/P
 ZP0ABe/gSSMZeH5lWNKzTAUOmKmsf4RBLO5quF3NK8KwbwSdlMzO21QhED+NVeL8ilQj8vrjEiz
 ZBEHEQmtFKnlRfE/NpQQRNP30FsUWJRmYkxg==
X-Received: by 2002:a05:6402:2755:b0:697:5140:a146 with SMTP id
 4fb4d7f45d1cf-69ab445334cmr563051a12.5.1783500080309; 
 Wed, 08 Jul 2026 01:41:20 -0700 (PDT)
Received: from [192.168.0.116] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-69ac41d7ceesm160654a12.23.2026.07.08.01.41.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2026 01:41:19 -0700 (PDT)
Message-ID: <6b551a44-96fe-4429-a337-9e6a32ac5156@ursulin.net>
Date: Wed, 8 Jul 2026 09:41:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gt: use correct selftest config symbol
To: Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20260705080225.436-1-pengpeng@iscas.ac.cn>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260705080225.436-1-pengpeng@iscas.ac.cn>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_RECIPIENTS(0.00)[m:pengpeng@iscas.ac.cn,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:tzimmermann@suse.de,m:daniele.ceraolospurio@intel.com,m:chris@chris-wilson.co.uk,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[iscas.ac.cn,linux.intel.com,intel.com,gmail.com,ffwll.ch,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ursulin.net:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,ursulin.net:from_mime,ursulin.net:dkim,ursulin.net:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,iscas.ac.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BCD472344B


On 05/07/2026 09:02, Pengpeng Hou wrote:
> intel_engine_user.c checks CONFIG_DRM_I915_SELFTESTS before running
> the engine UABI isolation check. Kconfig defines DRM_I915_SELFTEST,
> without the trailing "S", and the rest of i915 uses
> CONFIG_DRM_I915_SELFTEST.
> 
> Because CONFIG_DRM_I915_SELFTESTS is not backed by any Kconfig symbol,
> the IS_ENABLED() test is always false. Use the existing selftest symbol
> so the debug/selftest guarded path can be reached when selftests are
> enabled.
> 
> This is a source-level fix. It does not claim dynamic hardware
> reproduction; the evidence is the Kconfig definition and the inconsistent
> guard in intel_engine_user.c.
> 
> Fixes: 750e76b4f9f6 ("drm/i915/gt: Move the [class][inst] lookup for engines onto the GT")
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index be4bbff1a57c..d5190e11b270 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -259,7 +259,7 @@
>   		p = &prev->rb_right;
>   	}
>   
> -	if (IS_ENABLED(CONFIG_DRM_I915_SELFTESTS) &&
> +	if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST) &&
>   	    IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) {
>   		struct intel_engine_cs *engine;
>   		unsigned int isolation;

Looks correct but we need to have a test run done to see that the checks 
this guards actually pass. Please stay tuned for results and please do 
ping us in a week or so if we forget.

Regards,

Tvrtko

