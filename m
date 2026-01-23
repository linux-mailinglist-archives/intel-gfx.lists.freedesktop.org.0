Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qG/vOU2Pc2l0xAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 16:10:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38781777EF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 16:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4ED10EB16;
	Fri, 23 Jan 2026 15:10:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgD2HUtM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003BD10EB16
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 15:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769181002; x=1800717002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LNtZ1Qf6tIJe75+LbTNEti1ULJVvR4N4RHtOBr5SMKc=;
 b=KgD2HUtMTvc2NbiIqVvG0LT76VtyWCcGFpNl3OKlazRnltP0AjSFLEcI
 GIvdsligwq1/WczxZ4kDpn26hE/oiskn8qOsmD1lJc1bHKVn1Ul03jWsl
 UDeWSJwiRHmqvwNEMw/ZUMDu+RevtQj6JOnp2dpLtCmIxvxYMuDElY/kU
 DSdprVYLFXR2mg+eHUYZlUoC4NfCvBWPRxJ2QXrZbMCmsmNkDcpq4uubr
 g6b1VY//jO6ey/4Ed+0pNnZ8aHfk41kljpcD9aJNMcKBs8fC5+qjKLTYb
 WDuVKUcerGJ+KAuD59tDAdR2Zp7x5+JNRPBgJbRdR1NnweMxpxJ/40tyJ g==;
X-CSE-ConnectionGUID: BUVLAjJ8Qqukm14bjW5aVg==
X-CSE-MsgGUID: bknT9tSbTFiBVzo1fvkYsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="69454391"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="69454391"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 07:10:02 -0800
X-CSE-ConnectionGUID: rYQnmOa0TlyyCfLxH52G/w==
X-CSE-MsgGUID: GUMY+p09SC2qgFY8wLeaeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="238295466"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.8])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 07:10:00 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
 Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH] drm/i915: Add vgpu.entry list initialization
Date: Fri, 23 Jan 2026 16:09:57 +0100
Message-ID: <117947272.nniJfEyVGO@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
References: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	CTE_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,jkrzyszt-mobl2.ger.corp.intel.com:mid,01.org:url]
X-Rspamd-Queue-Id: 38781777EF
X-Rspamd-Action: no action

Hi Krzysztof,

On Friday, 23 January 2026 11:11:30 CET Krzysztof Karas wrote:
> It was observed that during fault injection testing the
> vgpu.entry remains uninitialized when taking the error path,
> which results in warnings [1]:
> 
> <6> [491.828427] list_del corruption, ffff88812cd2d0c8->next is NULL
> <4> [491.828430] WARNING: lib/list_debug.c:52 at
>  __list_del_entry_valid_or_report+0x6f/0x120, CPU#2: i915_module_loa/2921
> 
> Add initialization step to intel_vgpu_detect().

I do second Sebastian's comment on that.

> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> 
> Example of failure from intel-gfx-ci:
> https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8711/shard-dg2-5/igt@i915_module_load@fault-injection.html#dmesg-warnings385

Is there an issue focused on that problem open on our Gitlab?  If yes then I 
think it's better to provide a link it instead.  The report you refer to may 
disappear soon.  And, a stable link should be better added with a Link: or 
even Closes: tag instead of here.

> 
>  drivers/gpu/drm/i915/i915_vgpu.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
> index d29a06ea51a5..362282b20f7b 100644
> --- a/drivers/gpu/drm/i915/i915_vgpu.c
> +++ b/drivers/gpu/drm/i915/i915_vgpu.c
> @@ -67,6 +67,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_priv)
>  	u64 magic;
>  	u16 version_major;
>  	void __iomem *shared_area;
> +	INIT_LIST_HEAD(&dev_priv->vgpu.entry);

In addition to what Sebastian already stated, please avoid placing executable 
statements in declaration sections.

Thanks,
Janusz

>  
>  	BUILD_BUG_ON(sizeof(struct vgt_if) != VGT_PVINFO_SIZE);
>  
> 




