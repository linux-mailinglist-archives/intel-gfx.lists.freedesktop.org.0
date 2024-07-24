Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDBB93B6B9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 20:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774F910E792;
	Wed, 24 Jul 2024 18:29:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqxLsdwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4EA210E792
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 18:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721845787; x=1753381787;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=iIrIWCu1h/ZnfPjsfkcbdPXIlQpfc8LraVoKBVukZHg=;
 b=BqxLsdwOZa1zacXrYXr6yhaHp6BUTQef4inN/1LIHCdDPo3972Q3lGPB
 dAaq8QeYJkns3wLB1lRikjkjWbirsxtTOZJCctMk36SiWEz8i3zJHLUlp
 5T8SLSPDlYINj3DwNmLje7grvKZRcZSXY/6xsG2NWZ/IpqKOskrOJ776s
 oWiu/HBp4QOZppTo8NWWDGmqkmKk+EVShfC2q9CgrKqJj8+6C579v2Qqy
 SM4BlUHWRCEkNDhh4UE6X4MmGLTX7Uo/AnH9T3qGzj3rSLJsAK2hcZ1Ou
 bRqidts/tq43IkBTDGP1/W29EMBShgkxDdNTYh7NczdqVlBgos0k+X58r Q==;
X-CSE-ConnectionGUID: hUWsMzHsTjKIJgWr+cH4Lw==
X-CSE-MsgGUID: 7buKQVWXSsyVsEQcu/Of2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="37066134"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="37066134"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:29:47 -0700
X-CSE-ConnectionGUID: 4mzg7FhJTQKd5W0dh82MLg==
X-CSE-MsgGUID: TWLeJcDqQm6x2T+0htZ4YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="83681139"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:29:45 -0700
Date: Wed, 24 Jul 2024 21:30:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: Francesco Poli <invernomuto@paranoici.org>
Cc: Intel GFX list <intel-gfx@lists.freedesktop.org>,
 1075770@bugs.debian.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [bug report] adlp_tc_phy_connect [i915] floods logs with
 drm_WARN_ON(tc->mode == TC_PORT_LEGACY) call traces
Message-ID: <ZqFIKLLcUQrd1IAq@ideak-desk.fi.intel.com>
References: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 15, 2024 at 08:35:43PM +0200, Francesco Poli wrote:
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

Thanks for the logs. The VBT claims that the laptop has 1 USB-C
and 3 legacy DP connectors (the latter 3 being a bit odd on a laptop,
even if not impossible). The DMI in BIOS says:

DMI: Notebook NLxxPUx/NLxxPUx, BIOS 1.07.09 11/17/2023

for which I can't find the particular system to check the actual
configuration. Could you point to the laptop vendor/model's page or
describe what are the connectors on it?

Could you check if there is a BIOS upgrade available? Please follow up
on the gitlab issue as Jani suggested.

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
> 
> 
> -- 
>  http://www.inventati.org/frx/
>  There's not a second to spare! To the laboratory!
> ..................................................... Francesco Poli .
>  GnuPG key fpr == CA01 1147 9CD2 EFDF FB82  3925 3E1C 27E1 1F69 BFFE







