Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 923973711DA
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 09:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813146E878;
	Mon,  3 May 2021 07:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE0589D99;
 Mon,  3 May 2021 07:07:13 +0000 (UTC)
IronPort-SDR: f9mH1y2hEe6vNxD3Lvc1qw1y39NA7ipRr0hC7NGDRCMaLLHscPCS6C46L4yaJ5J1o4qNuiuSyx
 AJ+jP4+ld7ZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="177211842"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="177211842"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 00:07:12 -0700
IronPort-SDR: D2lyA10KrosqWzXRNvs59K9YtepuzPshLeVrVuaGd9m4E3w8dDdM1VEo/MNieFkOP5ZBg8B4gW
 dKKqlN6ev81g==
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="427330531"
Received: from tversteg-mobl1.ger.corp.intel.com (HELO [10.252.52.249])
 ([10.252.52.249])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 00:07:11 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
References: <20210430161808.323225-1-janusz.krzysztofik@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bd835d14-d17d-390f-5dff-2348e220be60@intel.com>
Date: Mon, 3 May 2021 10:07:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210430161808.323225-1-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] lib/i915/perf: Fix non-card0
 processing
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30/04/2021 19:18, Janusz Krzysztofik wrote:
> IGT i915/perf library functions now always operate on sysfs perf
> attributes of card0 device node, no matter which DRM device fd a user
> passes.  The intention was to always switch to primary device node if
> a user passes a render device node fd, but that breaks handling of
> non-card0 devices.
>
> Instead of forcibly using DRM device minor number 0 when opening a
> device sysfs area, convert device minor number of a user passed device
> fd to the minor number of respective primary (cardX) device node.
>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>   lib/i915/perf.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/lib/i915/perf.c b/lib/i915/perf.c
> index 56d5c0b3a..336824df7 100644
> --- a/lib/i915/perf.c
> +++ b/lib/i915/perf.c
> @@ -376,8 +376,8 @@ open_master_sysfs_dir(int drm_fd)
>   	if (fstat(drm_fd, &st) || !S_ISCHR(st.st_mode))
>                   return -1;
>   
> -        snprintf(path, sizeof(path), "/sys/dev/char/%d:0",
> -                 major(st.st_rdev));
> +        snprintf(path, sizeof(path), "/sys/dev/char/%d:%d",
> +                 major(st.st_rdev), minor(st.st_rdev) & ~128);


Isn't it minor(st.st_rdev) & 0xff ? or even 0x3f ?

Looks like /dev/dri/controlD64 can exist too.


-Lionel


>   
>   	return open(path, O_DIRECTORY);
>   }


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
