Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435D83043E3
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 17:33:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6423389B12;
	Tue, 26 Jan 2021 16:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799C989B12;
 Tue, 26 Jan 2021 16:33:37 +0000 (UTC)
IronPort-SDR: o+6eZPMk1h7/zWJ42z8JI8WWoSYovxPc2qXyVEhmzCDT+lOF898oJIuGQBhOXH6t+PV8g/Us5I
 hrx6MCXTeMzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167601859"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="167601859"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:33:36 -0800
IronPort-SDR: 8i1MhzqDs15j/TWqrmpv7T8VxptsaaraeDJVbqceGdFVkXZngmt5Q1VFmbHRF/vEfpeRu61wkv
 ykIIfY/uJWZw==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="362044487"
Received: from jackedwa-mobl.ger.corp.intel.com (HELO [10.214.230.137])
 ([10.214.230.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:33:34 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210126130505.2938391-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <331b98b3-8ff8-5f58-6994-4561cb0ca244@linux.intel.com>
Date: Tue, 26 Jan 2021 16:33:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210126130505.2938391-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] i915/sysfs_client:
 Ignore clients being closed as we read their sysfs
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/01/2021 13:05, Chris Wilson wrote:
> An earlier client from an old test may still be lingering and disappear
> as we scan the sysfs. Be graceful and let it go without tripping over it.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/i915/sysfs_clients.c | 19 +++++++++----------
>   1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/tests/i915/sysfs_clients.c b/tests/i915/sysfs_clients.c
> index 6be52c04f..a3a1f81e1 100644
> --- a/tests/i915/sysfs_clients.c
> +++ b/tests/i915/sysfs_clients.c
> @@ -62,11 +62,13 @@
>   
>   static void strterm(char *s, int len)
>   {
> -	igt_assert(len > 0);
> -
> -	s[len] = '\0';
> -	if (s[len - 1] == '\n')
> -		s[len - 1] = '\0';
> +	if (len < 0) {
> +		*s = '\0';
> +	} else {
> +		s[len] = '\0';
> +		if (s[len - 1] == '\n')
> +			s[len - 1] = '\0';
> +	}
>   }
>   
>   static void pidname(int i915, int clients)
> @@ -78,7 +80,6 @@ static void pidname(int i915, int clients)
>   	long count;
>   	pid_t pid;
>   	DIR *dir;
> -	int len;
>   
>   	dir = fdopendir(dup(clients));
>   	igt_assert(dir);
> @@ -90,13 +91,11 @@ static void pidname(int i915, int clients)
>   			continue;
>   
>   		snprintf(buf, sizeof(buf), "%s/name", de->d_name);
> -		len = igt_sysfs_read(clients, buf, buf, sizeof(buf) - 1);
> -		igt_assert_f(len > 0, "failed to open '%s/name'\n", de->d_name);
> -		strterm(buf, len);
> +		strterm(buf, igt_sysfs_read(clients, buf, buf, sizeof(buf) - 1));
>   		igt_debug("%s: %s\n", de->d_name, buf);
>   
>   		/* Ignore closed clients created by drm_driver_open() */
> -		if (*buf == '<')
> +		if (*buf == '\0' || *buf == '<')
>   			continue;
>   
>   		close(me);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
