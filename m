Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23DF93B475
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 18:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347C310E745;
	Wed, 24 Jul 2024 16:04:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6+vZCWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4DF310E745
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 16:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721837040; x=1753373040;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SKiwz1F5rRvkagoyO62JoQJgEmDu6hXDOCJ/+Wq6QBM=;
 b=a6+vZCWboqsBc3z9DXn1WpnFep88IWdh4T/Ehiol2ukbncQawE+UtpCc
 zhQ23AcCdhamwv9FInEFp7l1Uhp/gM0Hqm0ET+OaoqOLOXQhDQpxLxd38
 Qersf7kWLDIxfRZtFFmF3UzHYS5cydcwuMWgDrhiaj78RH51ooYetDbaP
 eTkqkAUAu7Z7nOErSxeFy0ext6o6ddC9FDIbOvgOEBxR+Ofqfu0ZwuKsh
 Y6k7KNo12TCtvP8125O1KHOaq5eoxkvn6ERIzoIajK/hWYOjjGSgtMiH7
 kB7AVb2P1nMILIlzYoxmvpiCJReLZQM7ovgXG6iKVE123qTd8Vn78GDon A==;
X-CSE-ConnectionGUID: HiO+oQyUR1KHWhxuF0srWg==
X-CSE-MsgGUID: foVpoGEDSbOuBQnv5fLcAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19380236"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19380236"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:04:00 -0700
X-CSE-ConnectionGUID: aZ+GlwyORPm66IruZ+7ZLw==
X-CSE-MsgGUID: KapyNE9zRcelJQK9DDG7qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="83638631"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.197])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:03:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Francesco Poli <invernomuto@paranoici.org>, Intel
 GFX list <intel-gfx@lists.freedesktop.org>
Subject: Re: [bug report] adlp_tc_phy_connect [i915] floods logs with
 drm_WARN_ON(tc->mode == TC_PORT_LEGACY) call traces
In-Reply-To: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
Date: Wed, 24 Jul 2024 19:03:51 +0300
Message-ID: <871q3ikc9k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 15 Jul 2024, Francesco Poli <invernomuto@paranoici.org> wrote:
> Hi all,
> on a laptop where I installed Debian testing some 6 months ago,
> I noticed that the logs are continuously flooded with call traces
> like the attached snippet (taken from /var/log/kern.log ).
>
> It seems to me that it also used to happen with previous versions
> of the Linux kernel, but I am under the impression that, with Linux
> kernel 6.9.7, it got worse. I have recently upgraded to Linux kernel
> version 6.9.8 (provided by the distro, Debian testing, as I said), but
> the bug is still reproducible:
>
>   $ uname -srvmo
>   Linux 6.9.8-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.9.8-1 (2024-07-07) x86_64 GNU/Linux
>
> I see at least 12 of these call traces just after boot, before even
> starting X (with 'startx').
> More of these call traces are sent to the logs after starting X, or
> after invoking 'xrandr', or after locking the X session (with
> XScreenSaver), ...
> I always see these call traces (I mean the bug is always reproducible:
> each time I boot, each time I call xrandr, ...).
>
> They seem to correspond to no actual issue, as far as I can tell,
> but they are flooding the logs with a significant flow of text...
> which is worrying by itself.
>
>
> What's wrong?
> How can I stop this log-filling flood?
> Should I black-list some module, for instance?
>
>
> The outputs of
>
>   # lspci -vnn -d :*:0300
>
> and of
>
>   # dmidecode
>
> are attached.
> Also, I booted with kernel parameters
> 'drm.debug=0xe log_buf_len=4M ignore_loglevel' and
> logged in as root right after the boot.
> The output of
>
>   # dmesg
>
> is attached.
>
> Some additional information may be found on the [Debian bug] report I had previously filed.
>
> [Debian bug]: <https://bugs.debian.org/1075770>
>
>
> N.B.:
> Please Cc me and the Debian bug address <1075770@bugs.debian.org>
> on replies, so that the interested parties (including me!) are kept
> in the loop.
> Thanks a lot for your time and for any help you may provide!

[dropping Debian bug tracker]

Imre, I'm looking at the warnings in intel_tc.c in general, and
adlp_tc_phy_connect() in particular, and I think this is too hard to
parse:

	if (!adlp_tc_phy_take_ownership(tc, true) &&
	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership\n",
			    tc->port_name);
		goto out_put_port_power;
	}

	if (!tc_phy_is_ready(tc) &&
	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
			    tc->port_name);
		goto out_release_phy;
	}

There are warnings in the logs, but they are for tc->mode ==
TC_PORT_LEGACY. Why is that warning duplicated in both if conditions,
and negated?! Too hard for my poor brain to follow. Don't know which one
happened, don't know what's going on.

BR,
Jani.


-- 
Jani Nikula, Intel
