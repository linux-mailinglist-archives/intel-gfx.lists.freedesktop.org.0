Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB57537B3C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 15:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD63310E816;
	Mon, 30 May 2022 13:18:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CAD910E027;
 Mon, 30 May 2022 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653916723; x=1685452723;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vLRj3N29dLEslv3D1EFFkjT86dWmRKj5W3hFPSlin40=;
 b=WYFSTl+wy5T6IjgfDDr2qNnsRkmDBQpBqWWq2LsyDhFhDVY8AdqgFLRO
 /2GWs5YVkBpObxachoawxhXiAIozshQFSBaqkDbHrIwbYzyVxa/ie9xuk
 6llMYXc2ocFsckIf6szlSIhVl0o+Eio3IrDEC3ZtWkQab5k6Tf4Qjwian
 5YsGo2ISKhDDAO7rF96um2dv4pQLsQak25QQ+F4k8+PhHhKlZsvyNaPkj
 wwnMDgr2M5JyZ1mJc6dbnhnIJYAJCqUEKYhMliM2Xyf94XLifPwp4Xfi3
 kvZnNj+DlvRuAQyAalL4gCNXY4E7EJtV58GK6Mj5elQPVWFiLptrZcf5S Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="335647721"
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="335647721"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:18:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="611434869"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:18:41 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nvfG1-000zD5-PB; Mon, 30 May 2022 16:16:29 +0300
Date: Mon, 30 May 2022 16:16:29 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YpTDrbQCKnYSh1xX@platvala-desk.ger.corp.intel.com>
References: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
 <20220527105042.2233128-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220527105042.2233128-2-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] lib/drm_fdinfo: Ensure buffer is
 null terminated
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 27, 2022 at 11:50:41AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Ensure buffer is null terminated at the point where the read ended and not
> at the end of the whole buffer. Otherwise string parsing can stray into
> un-initialised memory.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Petri Latvala <petri.latvala@intel.com>

> ---
>  lib/igt_drm_fdinfo.c | 8 ++++----
>  lib/igt_drm_fdinfo.h | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
> index b422f67a4ace..250d9e8917f2 100644
> --- a/lib/igt_drm_fdinfo.c
> +++ b/lib/igt_drm_fdinfo.c
> @@ -44,12 +44,12 @@ static size_t read_fdinfo(char *buf, const size_t sz, int at, const char *name)
>  	if (fd < 0)
>  		return 0;
>  
> -	buf[sz - 1] = 0;
> -	count = read(fd, buf, sz);
> -	buf[sz - 1] = 0;
> +	count = read(fd, buf, sz - 1);
> +	if (count > 0)
> +		buf[count - 1] = 0;
>  	close(fd);
>  
> -	return count;
> +	return count > 0 ? count : 0;
>  }
>  
>  static int parse_engine(char *line, struct drm_client_fdinfo *info,
> diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
> index 5db63e28b07e..8759471615bd 100644
> --- a/lib/igt_drm_fdinfo.h
> +++ b/lib/igt_drm_fdinfo.h
> @@ -46,7 +46,7 @@ struct drm_client_fdinfo {
>   * igt_parse_drm_fdinfo: Parses the drm fdinfo file
>   *
>   * @drm_fd: DRM file descriptor
> - * @info: Structure to populate with read data
> + * @info: Structure to populate with read data. Must be zeroed.
>   *
>   * Returns the number of valid drm fdinfo keys found or zero if not all
>   * mandatory keys were present or no engines found.
> @@ -58,7 +58,7 @@ unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info);
>   *
>   * @dir: File descriptor pointing to /proc/pid/fdinfo directory
>   * @fd: String representation of the file descriptor number to parse.
> - * @info: Structure to populate with read data
> + * @info: Structure to populate with read data. Must be zeroed.
>   *
>   * Returns the number of valid drm fdinfo keys found or zero if not all
>   * mandatory keys were present or no engines found.
> -- 
> 2.32.0
> 
