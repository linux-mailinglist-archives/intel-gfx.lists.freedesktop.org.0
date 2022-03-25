Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 099D54E6EBF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 08:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AE410EC28;
	Fri, 25 Mar 2022 07:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B03D10ED76;
 Fri, 25 Mar 2022 07:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648192892; x=1679728892;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ci44RK02fV7WD6WbHXqxBpPfFCihNYAA482czqe91uM=;
 b=cHEjwpE4vBdZe5cF+DyWv+JwvBbK33B3Xm1fCx6mfSAGthprEwNMKaiL
 iH0AFRGilBRoqcBZgMInpOzDDaBDMeMkBx8wEErtLM5AWZOWNvH+jh9vi
 SLDAUsAoztmvhM+ZFZqOafocEk+fqfJGZNcBGSRC4o+NhQUKxNO0DX8+Z
 93WCHA9qUtV5R3pJqFHkrwv7PmM1rUT9X4qgnjhIOGKIok12dbxNnD6Cf
 N9okBdLtDRET6tAfuJeO1pWXNTokfyP/mrQ651QHYkfN95UDEs5VJm3+a
 Ay1FHjA+Nv7T8/Slps8RRgGqtVt5/FQAhpKf1ZuJXxfG2i37Rd9aarB2p A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258290378"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258290378"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 00:21:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="601965961"
Received: from vzinovie-mobl2.ccr.corp.intel.com (HELO [10.249.254.142])
 ([10.249.254.142])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 00:21:30 -0700
Message-ID: <56b125e7-7fd6-4a9f-c37f-c99a5544d18b@linux.intel.com>
Date: Fri, 25 Mar 2022 08:21:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-5-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220324142621.347452-5-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/4] tests/gem_lmem_swapping: reduce
 the timeout
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


On 3/24/22 15:26, Matthew Auld wrote:
> 300s is way too much for some BAT test. Drop it down to 45s.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   tests/i915/gem_lmem_swapping.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index ad1c989c..6c47bff2 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -219,7 +219,7 @@ static void __do_evict(int i915,
>   	 * For TEST_MULTI runs, make each object counts a loop to
>   	 * avoid excessive run times.
>   	 */
> -	for (l = 0; l < params->loops && igt_seconds_elapsed(&t) < 300; l += num) {
> +	for (l = 0; l < params->loops && igt_seconds_elapsed(&t) < 45; l += num) {
>   		unsigned int idx = rand() % params->count;
>   
>   		num = params->flags & TEST_MULTI ? rand() % max_swap_in + 1 : 1;

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


