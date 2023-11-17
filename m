Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C897EF323
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 13:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27F410E75A;
	Fri, 17 Nov 2023 12:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF6610E75A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 12:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700225942; x=1731761942;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gtfju0JUx6CBcBoBMi3KZgDIt2P6A12NLJmM86KsPxQ=;
 b=e3MaCplAZ0XwrzJknYZDdGR+epABEFPCLHFzd4yeg8vGvvzCdVr54Cqz
 1YZCXOhVTvn9XTrihrpfgVBZ7I42JxPeewv3EKvPJ4smK8MkYeiIpXMvv
 63bXBSnVvpKVawIV/WLON5EqbcUgrI/xyFFRnnpTvMnoZTyI9seNQS3bx
 wqHTs+AgB+vDAo/Aqca+DZEhtD+3Q6Ty2JVbp6kCDry36x4eHt+GtdPGQ
 QkdxW6XGyUghoOndaYK1ayRgrhmv5SLft9qINUckkKe1Vz2njmcBNYYaH
 uFTaIi72hGek4N8wWYLjJQlm0BUWc1RDbzngNbgEA++jjs/H7HLg8V9dC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="390153549"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="390153549"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 04:59:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="7005430"
Received: from guoqingz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.178])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 04:59:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZVOhJ1wv4pGOgsde@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231114155528.96935-1-jani.nikula@intel.com>
 <ZVOhJ1wv4pGOgsde@intel.com>
Date: Fri, 17 Nov 2023 14:58:57 +0200
Message-ID: <87leawpmcu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: keep struct intel_display
 members sorted
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Nov 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Nov 14, 2023 at 05:55:28PM +0200, Jani Nikula wrote:
>> Like the comment says,
>> 
>> 	/* Grouping using anonymous structs. Keep sorted. */
>> 
>> Stick to it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.


-- 
Jani Nikula, Intel
