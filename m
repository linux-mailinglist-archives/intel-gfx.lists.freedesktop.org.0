Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOXtNDoW3mlBmwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 12:26:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FEA3F8A72
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 12:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8705D10E06D;
	Tue, 14 Apr 2026 10:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="CwwKUyli";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9367510E06D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2026 10:25:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4950243045;
 Tue, 14 Apr 2026 10:25:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78AEFC2BCB4;
 Tue, 14 Apr 2026 10:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1776162359;
 bh=zfUclQwCQMcTFGwQkm93CYEfEeaHT9/PFou3kTysz/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CwwKUyli5Bxcv0Pi2b0TO4voxXpqtT3KK6ow3OuHL6E/U7RnTU3uVfTkv2tEE8Dq6
 i0RjPv6JZK+e+P1W9nDADj8qQ7Qu0z7ojmjZYCaID5lVi0J8IEFm/KQfLurCXx/wFr
 gFA0GDS2PhE9nEJO4gDYNhAkndZRQCek6mN0g7PXFc+afEy7MsbDLDJqha+1ToZplX
 hzNQh9yumII0Sz/8fXQjA+1Bn1eKCFVmRIW7cjKBz/vHcBB6HY2NgATCAxy4/obXTE
 ZZGCD1ovcRhZ0LSWYL9S2lSdgT+0g4tfofbZ2ShyOObFYdNRLMiZXV+nChdc+o4zwj
 kmuBtBA70Ufnw==
Date: Tue, 14 Apr 2026 12:25:54 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jia Yao <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org, 
 Shuicheng Lin <shuicheng.lin@intel.com>, Matt Roper <matthew.d.roper@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Maciej Plewka <maciej.plewka@intel.com>
Subject: Re: [PATCH v2] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Message-ID: <ad4V09-JiU4kH2BW@zenone.zhora.eu>
References: <20260410140619.736008-1-jia.yao@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410140619.736008-1-jia.yao@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:matthew.d.roper@intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:maciej.plewka@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 61FEA3F8A72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jia,

...

> +	case I915_CONTEXT_PARAM_WA_22013059131:
> +		if (args->size)
> +			ret = -EINVAL;
> +		else if (args->value)
> +			pc->user_flags |= BIT(UCONTEXT_WA_22013059131);
> +		else
> +			pc->user_flags &= ~BIT(UCONTEXT_WA_22013059131);
> +		break;

Should we check here for the platform type?

Andi

> +
>  	case I915_CONTEXT_PARAM_RECOVERABLE:
>  		if (args->size)
>  			ret = -EINVAL;
