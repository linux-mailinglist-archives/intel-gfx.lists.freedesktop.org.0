Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2F896EAD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 14:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BBA112A56;
	Wed,  3 Apr 2024 12:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TYL+aDLu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6915C11268A;
 Wed,  3 Apr 2024 12:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712146081; x=1743682081;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SNZVdv0Wg5oPa/fgkbKj08CzoXq9Sy+A9F/LC+ACMeU=;
 b=TYL+aDLuFC5Qg8eA6QySH9XTGyLblYLaeK0kXD0JhBgnxoqYQn47mE6O
 qJdupQzbdvxFGUD+5Uv14hm+wsEFARi1WHi+ZDfMrVCPs4RuwMuGi6SKL
 evXTYyTETDo8JXm9J2fYj05eC6BKYRj40kr00xC/dnlRBDEBvh7pI1nLS
 9TGrzQgdS3ozP8W19/Nu5kfQ6IbNaM3dGDtfikesVTbJMNTLT4CYO/SJq
 XM5VNKzLRxzeaVk5qipF1jRPF7CPgRAwdXzYOE3ebRgeL/JP3h8Iwbr5W
 aUm92CZUVP3rNG5zyQ0UpNgEL6bQqmN2WvOBCLJdAwE62nPdt+NfKz9Bh w==;
X-CSE-ConnectionGUID: TcqKtJDxTmqjNuKa0zAZgw==
X-CSE-MsgGUID: 8Qs1o+R2SQq7hIdVdxNNNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="29850913"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="29850913"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 05:08:00 -0700
X-CSE-ConnectionGUID: pvCUEARUS0qYAlgXMLLz6Q==
X-CSE-MsgGUID: fb/FHhsSTriinNyyv7BNKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23113117"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.36.15])
 ([10.246.36.15])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 05:07:59 -0700
Message-ID: <8d43e922-c488-42d6-8b81-2daf7c3f7b7a@linux.intel.com>
Date: Wed, 3 Apr 2024 14:07:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 22/25] drm/xe/gt_print: add xe_gt_err_once()
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-23-balasubramani.vivekanandan@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240403112253.1432390-23-balasubramani.vivekanandan@intel.com>
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


On 4/3/2024 1:22 PM, Balasubramani Vivekanandan wrote:
> From: Matthew Auld <matthew.auld@intel.com>
>
> Needed in an upcoming patch, where we want GT level print, but only
> which to trigger once to avoid flooding dmesg.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_gt_printk.h | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/xe_gt_printk.h b/drivers/gpu/drm/xe/xe_gt_printk.h
> index c2b004d3f48e..d6228baaff1e 100644
> --- a/drivers/gpu/drm/xe/xe_gt_printk.h
> +++ b/drivers/gpu/drm/xe/xe_gt_printk.h
> @@ -13,6 +13,9 @@
>   #define xe_gt_printk(_gt, _level, _fmt, ...) \
>   	drm_##_level(&gt_to_xe(_gt)->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
>   
> +#define xe_gt_err_once(_gt, _fmt, ...) \
> +	xe_gt_printk((_gt), err_once, _fmt, ##__VA_ARGS__)
> +
>   #define xe_gt_err(_gt, _fmt, ...) \
>   	xe_gt_printk((_gt), err, _fmt, ##__VA_ARGS__)
>   
