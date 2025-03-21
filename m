Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0488A6C612
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 087A010E11A;
	Fri, 21 Mar 2025 22:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="burk3Yol";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFBD610E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742597351; x=1774133351;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UW/1NwxMoRcJcEXqq6ujaswM9/2aPFRJhYDhcBlgga0=;
 b=burk3Yol4/hTLm0pgAy4eVNxxTPUWQE7wA6icvGZ9jOtm5dQRafLCHs8
 9FVb67wImOZffPYwcCrcLwO/cWrWthvHxBcSkfYiyV9bs+LYOvf2pJhK2
 wi4xLJX0KcsrCYVqT70JKC+iD2XnUa47O5WJjfDyKLaJH5csQBbs7MgWg
 NPfiXNwT6cQvHJcxcbs1O34xfEfJqxmLWOYXYzdqyePGWZdtx1hTggIR9
 /vrOFTGC3TisMq5sWsK2MdrRZpqCMMzWe94Wdixcj5y34ku3o+x1B99sz
 jGo7cfdk8r0KWjGdAgZJ1wCXrFlH6JOVQFvZf+TXZphd5bKHa0mnzD80t Q==;
X-CSE-ConnectionGUID: Z4VDixGISMWlCVKSLGW8DQ==
X-CSE-MsgGUID: 18wIQ+e7RCWPepSlBcqNaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="54091601"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="54091601"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:49:11 -0700
X-CSE-ConnectionGUID: V9uRI/v9T7mFR+sq9L0FUQ==
X-CSE-MsgGUID: HNgtaK0xSCOffXf/5/5zQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128745820"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:49:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:49:08 +0200
Date: Sat, 22 Mar 2025 00:49:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org, Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCH 04/16] backlight: use system() instead of System()
Message-ID: <Z93s5Fo3uasxq6jG@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-5-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-5-info@metux.net>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 04:57:57PM +0100, Enrico Weigelt, metux IT consult wrote:
> The Xserver's System() function is a special wrapper for calling a program
> (xkbcomp) as an unprivileged user, when the Xserver is running as suid-root.
> (which today only needed on a few platforms, eg. Solaris). Therefore it's
> not suited for being called by arbitrary drivers.
> 
> In this specific context it doesn't even much sense, since it's just used
> for checking whether pkexec command is present at all (and just should be
> used), while the actual exec'ing of the helper is done directly by fork()
> and exec() syscalls.
> 
> Thus we can safely use standard system() call instead - clearing the road
> for dropping System() from Xserver's public/driver API.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/backlight.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/src/backlight.c b/src/backlight.c
> index fcbb279f..f416f2a4 100644
> --- a/src/backlight.c
> +++ b/src/backlight.c
> @@ -366,7 +366,7 @@ static int __backlight_helper_init(struct backlight *b, char *iface)
>  		return 0;
> 
>  	if ((st.st_mode & (S_IFREG | S_ISUID | S_IXUSR)) != (S_IFREG | S_ISUID | S_IXUSR)) {
> -		if (System("pkexec --version"))
> +		if (system("pkexec --version"))

The exact opposite was done by Hans in commit 27a9dc4ce8fa ("backlight:
Use System instead of system when checking for pkexec"). The commit
msg isn't super helpful but I assume it was just to avoid running
random stuff as root.

I guess one option would be to hand roll the whole
fork()+drop_privs+exec() for this early pkexec check as well.

>  			return 0;
> 
>  		use_pkexec = 1;
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
