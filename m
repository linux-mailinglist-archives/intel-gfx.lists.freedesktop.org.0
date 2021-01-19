Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F852FB60A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 13:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181F76E868;
	Tue, 19 Jan 2021 12:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9276E3C1;
 Tue, 19 Jan 2021 12:15:41 +0000 (UTC)
IronPort-SDR: KT+wxPgsHRlxocsqfxgTDka08WJYcG8xsGRdGYRdrSV+bePx/5im9xR/kUnXjk45dOnCv6E6LR
 SYFfIBOUe4KA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="175413491"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="175413491"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 04:15:39 -0800
IronPort-SDR: QHXSiYl7T3IRZve7C8PEgaBtdWSKCnigt9/VNObEdmsD9gnsERNPB7fqkT1vbCC5IXjsRqpnTP
 q4ii/MyJ8p7A==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="355572829"
Received: from mbernato-z370.igk.intel.com ([10.102.30.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 04:15:38 -0800
Message-ID: <7ac828ba904e3fc4153f5aa8041bfcf79128407b.camel@linux.intel.com>
From: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 igt-dev@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:08:10 +0100
In-Reply-To: <20210119084257.25552-1-janusz.krzysztofik@linux.intel.com>
References: <20210119084257.25552-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Reduce debug
 noise on stdout
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-01-19 at 09:42 +0100, Janusz Krzysztofik wrote:
> Since igt_fixture sections are processed unconditionally regardless
> of
> which subtest has been requested, they can now emit a lot of
> unrelated
> debug messages which can make the picture less clear.  Avoid emitting
> those messages from outside igt_subtest sections.
> 
> Move device close status prerequisite checks from igt_fixture
> sections
> into subtest execution paths.  For simplicity, pass any device close
> errors, including those from health checks, to next sections via a
> single .fd.drm data structure field.
> 
> Moreover, postpone initial device health check until first actually
> selected subtest is started.  In order to let that subtest skip on
> unsuccessful initial health check, not fail, move the decision
> whether
> to fail or skip on error from the health check helper to its users.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
> >
> ---
>  tests/core_hotunplug.c | 86 +++++++++++++++++++++++-----------------
> --
>  1 file changed, 48 insertions(+), 38 deletions(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index 91506fa72..e7d2a4472 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -49,6 +49,7 @@ struct hotunplug {
>  	} fd;	/* >= 0: valid fd, == -1: closed, < -1: close failed
> */
>  	const char *dev_bus_addr;
>  	const char *failure;
> +	bool need_healthcheck;
>  };
>  
>  /* Helpers */
> @@ -210,6 +211,12 @@ static void cleanup(struct hotunplug *priv)
>  	priv->fd.drm = close_device(priv->fd.drm, "post ", "exercised
> ");
>  	priv->fd.drm_hc = close_device(priv->fd.drm_hc, "post ",
>  							"health checked
> ");
> +	/* pass device close errors to next sections via priv->fd.drm
> */
> +	if (priv->fd.drm_hc < -1) {
> +		priv->fd.drm = priv->fd.drm_hc;
> +		priv->fd.drm_hc = -1;
> +	}
> +
>  	priv->fd.sysfs_dev = close_sysfs(priv->fd.sysfs_dev);
>  }
>  
> @@ -346,9 +353,9 @@ static void node_healthcheck(struct hotunplug
> *priv, unsigned flags)
>  
>  		priv->failure = "Device sysfs healthckeck failure!";
>  		local_debug("%s\n", "running device sysfs
> healthcheck");
> -		igt_assert(igt_sysfs_path(fd_drm, path, sizeof(path)));
> -		igt_assert(igt_debugfs_path(fd_drm, path,
> sizeof(path)));
> -		priv->failure = NULL;
> +		if (igt_sysfs_path(fd_drm, path, sizeof(path)) &&
> +		    igt_debugfs_path(fd_drm, path, sizeof(path)))
> +			priv->failure = NULL;
>  	}
>  
>  	fd_drm = close_device(fd_drm, "", "health checked ");
> @@ -356,7 +363,7 @@ static void node_healthcheck(struct hotunplug
> *priv, unsigned flags)
>  		priv->fd.drm_hc = fd_drm;
>  }
>  
> -static void healthcheck(struct hotunplug *priv, bool recover)
> +static bool healthcheck(struct hotunplug *priv, bool recover)
>  {
>  	/* device name may have changed, rebuild IGT device list */
>  	igt_devices_scan(true);
> @@ -366,8 +373,19 @@ static void healthcheck(struct hotunplug *priv,
> bool recover)
>  		node_healthcheck(priv,
>  				 FLAG_RENDER | (recover ? FLAG_RECOVER
> : 0));
>  
> -	/* not only request igt_abort on failure, also fail the health
> check */
> -	igt_fail_on_f(priv->failure, "%s\n", priv->failure);
> +	return !priv->failure;
> +}
> +
> +static void pre_check(struct hotunplug *priv)
> +{
> +	igt_require(priv->fd.drm == -1);
> +
> +	if (priv->need_healthcheck) {
> +		igt_require_f(healthcheck(priv, false), "%s\n", priv-
> >failure);
> +		priv->need_healthcheck = false;
> +
> +		igt_require(priv->fd.drm_hc == -1);
> +	}
>  }
>  
>  static void recover(struct hotunplug *priv)
> @@ -386,7 +404,7 @@ static void recover(struct hotunplug *priv)
>  		driver_bind(priv, 60);
>  
>  	if (priv->failure)
> -		healthcheck(priv, true);
> +		igt_assert_f(healthcheck(priv, true), "%s\n", priv-
> >failure);
>  }
>  
>  static void post_healthcheck(struct hotunplug *priv)
> @@ -394,8 +412,6 @@ static void post_healthcheck(struct hotunplug
> *priv)
>  	igt_abort_on_f(priv->failure, "%s\n", priv->failure);
>  
>  	cleanup(priv);
> -	igt_require(priv->fd.drm == -1);
> -	igt_require(priv->fd.drm_hc == -1);
>  }
>  
>  static void set_filter_from_device(int fd)
> @@ -417,32 +433,30 @@ static void set_filter_from_device(int fd)
>  
>  static void unbind_rebind(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
>  
>  	driver_unbind(priv, "", 0);
>  
>  	driver_bind(priv, 0);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void unplug_rescan(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
>  
>  	device_unplug(priv, "", 0);
>  
>  	bus_rescan(priv, 0);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void hotunbind_rebind(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
> +
>  	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> unbind");
>  
>  	driver_unbind(priv, "hot ", 0);
> @@ -452,13 +466,13 @@ static void hotunbind_rebind(struct hotunplug
> *priv)
>  
>  	driver_bind(priv, 0);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void hotunplug_rescan(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
> +
>  	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> unplug");
>  
>  	device_unplug(priv, "hot ", 0);
> @@ -468,39 +482,39 @@ static void hotunplug_rescan(struct hotunplug
> *priv)
>  
>  	bus_rescan(priv, 0);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void hotrebind(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
> +
>  	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> rebind");
>  
>  	driver_unbind(priv, "hot ", 60);
>  
>  	driver_bind(priv, 0);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void hotreplug(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
> +
>  	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> replug");
>  
>  	device_unplug(priv, "hot ", 60);
>  
>  	bus_rescan(priv, 0);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void hotrebind_lateclose(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
> +
>  	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> rebind");
>  
>  	driver_unbind(priv, "hot ", 60);
> @@ -510,13 +524,13 @@ static void hotrebind_lateclose(struct
> hotunplug *priv)
>  	priv->fd.drm = close_device(priv->fd.drm, "late ", "unbound ");
>  	igt_assert_eq(priv->fd.drm, -1);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  static void hotreplug_lateclose(struct hotunplug *priv)
>  {
> -	igt_assert_eq(priv->fd.drm, -1);
> -	igt_assert_eq(priv->fd.drm_hc, -1);
> +	pre_check(priv);
> +
>  	priv->fd.drm = local_drm_open_driver(false, "", " for hot
> replug");
>  
>  	device_unplug(priv, "hot ", 60);
> @@ -526,7 +540,7 @@ static void hotreplug_lateclose(struct hotunplug
> *priv)
>  	priv->fd.drm = close_device(priv->fd.drm, "late ", "removed ");
>  	igt_assert_eq(priv->fd.drm, -1);
>  
> -	healthcheck(priv, false);
> +	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
>  }
>  
>  /* Main */
> @@ -536,6 +550,7 @@ igt_main
>  	struct hotunplug priv = {
>  		.fd		= { .drm = -1, .drm_hc = -1,
> .sysfs_dev = -1, },
>  		.failure	= NULL,
> +		.need_healthcheck = true,
>  	};
>  
>  	igt_fixture {
> @@ -570,11 +585,6 @@ igt_main
>  		igt_assert_eq(close_device(fd_drm, "", "selected "),
> -1);
>  
>  		prepare(&priv);
> -
> -		node_healthcheck(&priv, 0);
> -		if (!priv.failure)
> -			node_healthcheck(&priv, FLAG_RENDER);
> -		igt_skip_on_f(priv.failure, "%s\n", priv.failure);
>  	}
>  
>  	igt_subtest_group {

LGTM,
Reviewed-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
