Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECA96ED2E7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 18:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAC710E1CA;
	Mon, 24 Apr 2023 16:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F5C10E1B9;
 Mon, 24 Apr 2023 16:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682355320; x=1713891320;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=mlFCRIPmRgsRgG5TnuOKYUt3RWEIGxaT08VRFxXQpr4=;
 b=Tqnj4al+vsS1zNn/NqxHc7h3QaUipsLmyjgH3u2N0OVOB18qJX8hRUAT
 eRtpVz5/Q4FRAEt6JsajgFNchEjDjjXDqZe+CWH56eXR5GAipaRxW5JYo
 HEmR3zmFbbs6CLKnlXPkUMSwb7pvZpO9BII3qO/TZqsk/qdplF9+hZqZF
 lzkm6F31Jkj5dfXeLRgB78J5qkNkE7t/V6tU69M/GwrLgikBf8Rt7CVdy
 JRNyn9Ov3d7PZts8Zx6iXJCo2UuTz4p1wHYRswGP+lXdS0Vbf1kOMmU6k
 5Bf3R7kD450EqdS9zUXEfdQLHQXhAYeufG6l7xB/OXHwweykh3WI9D5b4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="335392784"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="335392784"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 09:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="670569422"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="670569422"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.56.159])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 09:55:14 -0700
Date: Mon, 24 Apr 2023 09:55:14 -0700
Message-ID: <87leih9q4t.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <73d1718a-ec6b-5c00-fe62-b79ce03ef9b2@intel.com>
References: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>	<20230414191639.2565389-3-vinay.belgaumkar@intel.com>	<87ildyqkh4.wl-ashutosh.dixit@intel.com>	<73d1718a-ec6b-5c00-fe62-b79ce03ef9b2@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] lib: Make SLPC helper
 function per GT
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 23 Apr 2023 13:16:44 -0700, Belgaumkar, Vinay wrote:
>

Hi Vinay,

> On 4/14/2023 1:25 PM, Dixit, Ashutosh wrote:
> > On Fri, 14 Apr 2023 12:16:37 -0700, Vinay Belgaumkar wrote:
> > Hi Vinay,
> >
> >> Use default of 0 where GT id is not being used.
> >>
> >> v2: Add a helper for GT 0 (Ashutosh)
> >>
> >> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> >> ---
> >>   lib/igt_pm.c | 36 ++++++++++++++++++++++++++----------
> >>   lib/igt_pm.h |  3 ++-
> >>   2 files changed, 28 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/lib/igt_pm.c b/lib/igt_pm.c
> >> index 704acf7d..8a30bb3b 100644
> >> --- a/lib/igt_pm.c
> >> +++ b/lib/igt_pm.c
> >> @@ -1329,21 +1329,37 @@ void igt_pm_print_pci_card_runtime_status(void)
> >>	}
> >>   }
> >>
> >> -bool i915_is_slpc_enabled(int fd)
> >> +/**
> >> + * i915_is_slpc_enabled_gt:
> >> + * @drm_fd: DRM file descriptor
> >> + * @gt: GT id
> >> + * Check if SLPC is enabled on a GT
> >> + */
> >> +bool i915_is_slpc_enabled_gt(int drm_fd, int gt)
> >>   {
> >> -	int debugfs_fd = igt_debugfs_dir(fd);
> >> -	char buf[4096] = {};
> >> -	int len;
> >> +	int debugfs_fd;
> >> +	char buf[256] = {};
> > Shouldn't this be 4096 as before?
> >
> >> -	igt_require(debugfs_fd != -1);
> >> +	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
> >> +
> >> +	/* if guc_slpc_info not present then return false */
> >> +	if (debugfs_fd < 0)
> >> +		return false;
> > I think this should just be:
> >
> >	igt_require_fd(debugfs_fd);
> >
> > Basically we cannot determine if SLPC is enabled or not if say debugfs is
> > not mounted, so it's not correct return false from here.
>
> Actually, rethinking on this, we should keep it to return false. This is
> making tests skip on platforms where it shouldn't. Debugfs will not be
> mounted only when driver load fails,

Debugfs not being mounted has nothing to do with driver load, it is just
that this command has not been run before running the tests (the system
would typically be configured to run this after boot):

	mount -t debugfs none /sys/kernel/debug/

Ah, igt_debugfs_path() will mount debugfs if not mounted and assert if
mount fails. So IGT itself is mounting debugfs if not mounted.

> which would cause the test to fail
> when we try to create the drm fd before this. Case in point -
> https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8839/fi-tgl-1115g4/igt@i915_pm_rps@basic-api.html
> - here, the test should have run (guc disabled platform) but it skipped.

OK, sorry yes because it is checking for guc_slpc_info, which would
indicate whether or not slpc is enabled.

But the issue is still there, whether or not we solve it. Say SLPC is
enabled but debugfs was not mounted. In the code above we will conclude
that slpc is not enabled. Because mulitple conditions have been combined
into one and there is no way to check for them separately (debugfs being
mounted and guc_slpc_info being present).

The original code above has this check:

	igt_require(debugfs_fd != -1);

Which is checking for whether or not debugfs is mounted. Where does this
check move in this series?

Anyway maybe for now just change the code to return false.

Thanks.
--
Ashutosh

> >> +	read(debugfs_fd, buf, sizeof(buf)-1);
> >>
> >> -	len = igt_debugfs_simple_read(debugfs_fd, "gt/uc/guc_slpc_info", buf, sizeof(buf));
> >>	close(debugfs_fd);
> >>
> >> -	if (len < 0)
> >> -		return false;
> >> -	else
> >> -		return strstr(buf, "SLPC state: running");
> >> +	return strstr(buf, "SLPC state: running");
> >> +}
> >> +
> >> +/**
> >> + * i915_is_slpc_enabled:
> >> + * @drm_fd: DRM file descriptor
> >> + * Check if SLPC is enabled on GT 0
> > Hmm, not sure why we are not using the i915_for_each_gt() loop here since
> > that is the correct way of doing it.
> >
> > At the min let's remove the GT 0 in the comment above. This function
> > doesn't check for GT0, it checks if "slpc is enabled for the device". We
> > can check only on GT0 if we are certain that checking on GT0 is sufficient,
> > that is if SLPC is disabled on GT0 it's disabled for the device. But then
> > someone can ask the question in that case why are we exposing slpc_enabled
> > for each gt from the kernel rather than at the device level.
> >
> > In any case for now let's change the above comment to:
> >
> > "Check if SLPC is enabled" or ""Check if SLPC is enabled for the i915
> > device".
> >
> > With the above comments addressed this is:
> >
> > Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> >
> > Also, why is igt@i915_pm_rps@basic-api still skipping on DG2/ATSM in
> > pre-merge CI even after this series?
> >
> > Thanks.
> > --
> > Ashutosh
> >
> >
> >> + */
> >> +bool i915_is_slpc_enabled(int drm_fd)
> >> +{
> >> +	return i915_is_slpc_enabled_gt(drm_fd, 0);
> >>   }
> >>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev)
> >> diff --git a/lib/igt_pm.h b/lib/igt_pm.h
> >> index d0d6d673..448cf42d 100644
> >> --- a/lib/igt_pm.h
> >> +++ b/lib/igt_pm.h
> >> @@ -84,7 +84,8 @@ void igt_pm_set_d3cold_allowed(struct igt_device_card *card, const char *val);
> >>   void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
> >>   void igt_pm_restore_pci_card_runtime_pm(void);
> >>   void igt_pm_print_pci_card_runtime_status(void);
> >> -bool i915_is_slpc_enabled(int fd);
> >> +bool i915_is_slpc_enabled_gt(int drm_fd, int gt);
> >> +bool i915_is_slpc_enabled(int drm_fd);
> >>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev);
> >>   int igt_pm_get_runtime_usage(struct pci_device *pci_dev);
> >>
> >> --
> >> 2.38.1
> >>
