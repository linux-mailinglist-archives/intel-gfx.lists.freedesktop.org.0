Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBE9658C1F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 12:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AC310E15B;
	Thu, 29 Dec 2022 11:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92F910E15B
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Dec 2022 11:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672312896; x=1703848896;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ElsKLYwfL/jOPq2RFerFYKrEshEDZ6G2B0V3gZSNhRg=;
 b=MObEKocQTHXu/DI1kAfAQ3vKrqFJiQxYAVuymkd/S4BL6JrKJX6wfuNq
 Y9otOKhC+X2x2nsC36PoPLVvC8r22H0NKXkjzUlJpBlC0nJm24Br2fA71
 Tmbcw7pDRhxR/JwGsH/Bd1dkFeRhX0+ptb/V611LBQIcu1b2ZerKzRh18
 0W3Bl3zYn7elZvoT8vopzPUdSOLZ3h85FdphngqFqP4fJCF6Aco/HJlFB
 CxhM2SbckxarWElHb/Hgy59FqmkETyiS98tpvVZu7FUJ6NP8aD8xcW5M2
 OyT6pV/JSSLvNWtZivHEA6rw59egYQgNlG8E6fOjy1HC6EEK/m2uzlvLD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="318711172"
X-IronPort-AV: E=Sophos;i="5.96,283,1665471600"; d="scan'208";a="318711172"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 03:21:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="684188246"
X-IronPort-AV: E=Sophos;i="5.96,283,1665471600"; d="scan'208";a="684188246"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.17.178])
 ([10.213.17.178])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 03:21:34 -0800
Message-ID: <4a00986d-8041-6c90-eaff-86c6ceb0b157@intel.com>
Date: Thu, 29 Dec 2022 12:21:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Remove check for dsb in
 dsb_commit
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

On 22.12.2022 07:34, Ankit Nautiyal wrote:
> The dsb context should be already checked for NULL, before dsb_commit gets
> called. So remove the check for dsb inside dsb_commit.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 3d63c1bf1e4f..ce1f8e0c2cd9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -228,7 +228,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
>   	enum pipe pipe = crtc->pipe;
>   	u32 tail;
>   
> -	if (!(dsb && dsb->free_pos))
> +	if (!dsb->free_pos)

Alternative would be allow passing NULL dsb, ie. removal of check on the 
caller.
Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   		return;
>   
>   	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))

