Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 284155E9BE4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 10:22:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24ABB10E64B;
	Mon, 26 Sep 2022 08:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E18510E64B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664180525; x=1695716525;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=8SPfcAkcvWEQR6LjTOW4EzIK/D6kIngLiYhZAPQHsCU=;
 b=I85y0ix5ZPPtilfpwKgZbwCvBcp8hyH//WUSGwDVD2G5XIDQCeALEPuI
 dCSJ4bvsjWbtNWz9FMfaDep3xEN1zmLOlaqeYEsWL31bFbZUSn4logKGB
 d0xPG0iCuqgIUn2ikDILMeunXAlTpev8jIOqxTM1TfcZh+iHwbg+bVduF
 46IHKbsoyG6UNBqA5Wsfc1m6fTcUjV43j7ZWQ7qEoj3yZhSpToU/W0B7u
 fpMf+Q+0Vr6MiESwptfUMKPHNYGAeMYiyKdfE0vZz+se/qt4ef5D0059g
 EX7zVYJo4/pVeXsgwahzhtEHdiMZiMWjiAgDvTB+OaMoydPqo85OmkUE8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="301872695"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="301872695"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 01:22:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="598646995"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="598646995"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.20.190])
 ([10.252.20.190])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 01:22:03 -0700
Message-ID: <2b5906f6-cdf7-fe25-0aaf-c19434987fda@linux.intel.com>
Date: Mon, 26 Sep 2022 10:22:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220922233112.243677-1-alan.previn.teres.alexis@intel.com>
 <20220922233112.243677-2-alan.previn.teres.alexis@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220922233112.243677-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/pxp: Add firmware status when
 ARB session fails
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

LGTM Acked-by: Nirmoy Das <nirmoy.das@intel.com>

On 9/23/2022 1:31 AM, Alan Previn wrote:
> Add firmware status using a drm_warn when ARB session fails
> or else a drm_dbg when the ARB session register slot bit did
> get set.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 2 ++
>   2 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 1bb5b5249157..c4f5c994ca51 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -77,6 +77,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
>   		drm_err(&gt->i915->drm, "arb session failed to go in play\n");
>   		return ret;
>   	}
> +	drm_dbg(&gt->i915->drm, "PXP ARB session is alive\n");
>   
>   	if (!++pxp->key_instance)
>   		++pxp->key_instance;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 4b6f5655fab5..b388c9e77b59 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -174,6 +174,8 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
>   
>   	if (ret)
>   		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
> +	else if (msg_out.header.status != 0x0)
> +		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n", msg_out.header.status);
>   
>   	return ret;
>   }
