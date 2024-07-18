Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7D1934CEF
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 14:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6776010E7C9;
	Thu, 18 Jul 2024 12:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="avml63a/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0941510E7C2;
 Thu, 18 Jul 2024 12:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721304541; x=1752840541;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uq8KRdPy2YvyiJQmH3a7z5UyOUM8MZZHyA5xVAasNZw=;
 b=avml63a/oTWVWEpvZYyduXlCxtn1JWuXjwbKNwFCibO//0VqcqXoGAZy
 8biiz1tgckT9rQ17kJ5sRgr8kH2Yp+THtDF2S5jUV/ZRK0GXlfs/rZ3Lj
 XZVmc8U6m7/U3ToOFIqIAs5XDD3ZbQUqFXSp/4T/BSTrUe11qgw0fHGKO
 p1e3h1IzYzjxLK5+58Zh0OMW9Qqo7WMLYFU86oxP12ee2k9/P70KD6L0q
 lHZeYlC5QHq3whuR9DnFikFQlzivlEJlTOjS05JxdGqI4xdJaehqFzo2l
 yvPWwlp9xCjzXlbfujTKOTjTR/6B7uQ9Rd+6H/NI2OQgP87OA8ey6cdiA g==;
X-CSE-ConnectionGUID: hz3t3gKYQLi4r6zbmiqcZA==
X-CSE-MsgGUID: FlQQ3vu4QqeG/vvJlO85gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="41385779"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="41385779"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 05:09:01 -0700
X-CSE-ConnectionGUID: 2opX4YGkQ5OxJeTjsUrkvA==
X-CSE-MsgGUID: e0qmBGArSse2N7m/uvpHlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="88229168"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 05:09:00 -0700
Date: Thu, 18 Jul 2024 14:08:56 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v4 2/5] lib: Add more debug messages to error paths
Message-ID: <20240718120856.rhsbntzh32pypowv@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
 <20240718085912.15434-9-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240718085912.15434-9-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-07-18 at 10:55:13 +0200, Janusz Krzysztofik wrote:
> On an attempt to resolve the issue of mysteriously failing updates of
> sysfs entries representing engine preempt timeout values, add debug
> messages to error paths of involved library functions.
> 
> v2: No changes.
> v3: Add still more debug messages.
> v4: Fix missing line termination.
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/i915/gem_engine_topology.c | 19 +++++++++++--------
>  lib/igt_sysfs.c                |  4 ++--
>  2 files changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index afb576afb2..c878e95f08 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -454,12 +454,12 @@ static int __open_primary(int dir)
>  	int len;
>  
>  	fd = openat(dir, "dev", O_RDONLY);
> -	if (fd < 0)
> +	if (igt_debug_on(fd < 0))
>  		return dir;
>  
>  	len = read(fd, buf, sizeof(buf) - 1);
>  	close(fd);
> -	if (len <= 0)
> +	if (igt_debug_on(len <= 0))
>  		return dir;
>  	buf[len] = '\0';
>  
> @@ -467,7 +467,7 @@ static int __open_primary(int dir)
>  	if (minor < 64)
>  		return dir;
>  
> -	if (readlinkat(dir, "device", target, sizeof(target)) < 0)
> +	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
>  		return dir;
>  
>  	fd = openat(dir, "..", O_RDONLY);
> @@ -500,24 +500,27 @@ static FILE *__open_attr(int dir, const char *mode, ...)
>  	va_list ap;
>  
>  	/* The attributes are not to be found on render nodes */
> -	dir = __open_primary(dir);
> +	igt_debug_on((dir = __open_primary(dir)) < 0);
>  
>  	va_start(ap, mode);
>  	while (dir >= 0 && (path = va_arg(ap, const char *))) {
>  		int fd;
>  
> -		fd = openat(dir, path, O_RDONLY);
> +		igt_debug_on_f((fd = openat(dir, path, O_RDONLY)) < 0,
> +			       "failed component: %s\n", path);
>  		close(dir);
>  
>  		dir = fd;
>  	}
>  	va_end(ap);
> +	if (dir < 0)
> +		return NULL;
>  
>  	if (*mode != 'r') /* clumsy, but fun */
> -		dir = reopen(dir, O_RDWR);
> +		igt_debug_on((dir = reopen(dir, O_RDWR)) < 0);
>  
>  	file = fdopen(dir, mode);
> -	if (!file) {
> +	if (igt_debug_on(!file)) {
>  		close(dir);
>  		return NULL;
>  	}
> @@ -554,7 +557,7 @@ int gem_engine_property_printf(int i915, const char *engine, const char *attr,
>  
>  	file = __open_attr(igt_sysfs_open(i915), "w",
>  			   "engine", engine, attr, NULL);
> -	if (!file)
> +	if (igt_debug_on(!file))
>  		return -1;
>  
>  	va_start(ap, fmt);
> diff --git a/lib/igt_sysfs.c b/lib/igt_sysfs.c
> index 42b2af41ab..550472d819 100644
> --- a/lib/igt_sysfs.c
> +++ b/lib/igt_sysfs.c
> @@ -186,7 +186,7 @@ char *igt_sysfs_path(int device, char *path, int pathlen)
>  	snprintf(path, pathlen, "/sys/dev/char/%d:%d",
>  		 major(st.st_rdev), minor(st.st_rdev));
>  
> -	if (access(path, F_OK))
> +	if (igt_debug_on(access(path, F_OK)))
>  		return NULL;
>  
>  	return path;
> @@ -206,7 +206,7 @@ int igt_sysfs_open(int device)
>  {
>  	char path[80];
>  
> -	if (!igt_sysfs_path(device, path, sizeof(path)))
> +	if (igt_debug_on(!igt_sysfs_path(device, path, sizeof(path))))
>  		return -1;
>  
>  	return open(path, O_RDONLY);
> -- 
> 2.45.2
> 
