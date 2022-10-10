Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5497A5F9D5D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 13:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B203D10E0BB;
	Mon, 10 Oct 2022 11:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E3F10E053;
 Mon, 10 Oct 2022 11:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665400477; x=1696936477;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=a4GbAi2ibBhYDvVDM8UyPNkQo4RewGYnde2jJSftsI0=;
 b=PD1YVhUXyoBVk57Zxzn9/UfaRQ1vgLaWdzVHW2RfKTNzUa1bYUy1Se9O
 Y9Vfvc5TPj7jy2Efa8ZoBQ2QHAhkNIt0q/5wMiXeNWPX1uh+yG+++goaP
 hcQ7Mdv1c8roZPc/AJiF/+0jXaEu+4ioMfjKAaIGHm7sKyXak9T0dSvq0
 UrFknjjO5EhSsLZHAjBsVF6LV9w2p2xalDcAytMpH/WLjeVoX+zw3P4SI
 l6Gz3M6EhMaq+wzXwzOmtVs5gES0sjFaFqdb6tDprseysiGbj0apjWPEh
 HUYFo0surf2gdoP8EnprbkvTaiwhgtHBEt+4tk117QGL1tqwcpmFY3Q9J Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="305794697"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="305794697"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 04:14:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="659114081"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="659114081"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.10.35])
 ([10.252.10.35])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 04:14:35 -0700
Message-ID: <cd4ff9de-d369-ed86-2837-b6c55e67bd4f@linux.intel.com>
Date: Mon, 10 Oct 2022 13:14:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221010104840.28026-1-matthew.auld@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221010104840.28026-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/module_load: fix
 resize-bar on DG1
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/10/2022 12:48 PM, Matthew Auld wrote:
> DG1, as expected only has a fixed sized bar, so attempting to force the
> BAR size should fail. Update the test to account for such devices, and
> perform a skip, instead of failing.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6458
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Tested-by:  Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
>   tests/i915/i915_module_load.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
> index 4c72157c..6d74de58 100644
> --- a/tests/i915/i915_module_load.c
> +++ b/tests/i915/i915_module_load.c
> @@ -422,7 +422,7 @@ igt_main
>   
>   		/* Test for lmem_bar_size modparam support */
>   		lmem_bar_size = driver_load_with_lmem_bar_size(MIN_BAR_SIZE, true);
> -		igt_assert_eq(lmem_bar_size, MIN_BAR_SIZE);
> +		igt_skip_on_f(lmem_bar_size != MIN_BAR_SIZE, "Device lacks PCI resizeable BAR support.\n");
>   
>   		lmem_bar_size = driver_load_with_lmem_bar_size(0, false);
>   
