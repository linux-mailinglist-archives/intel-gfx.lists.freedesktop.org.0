Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1063F3439DF
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7696E0BE;
	Mon, 22 Mar 2021 06:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622FC6E0BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:44:22 +0000 (UTC)
IronPort-SDR: uWnUL0r2Xh7D/hUgmSh5L0vpRLLoLI/XU9yXKLwq0F+0LW6ZaXJLN4qNNWGfvziPvmQ8UMa7GV
 RHF/cTw063UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="251566220"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="251566220"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:44:21 -0700
IronPort-SDR: kUe0OXDxRYUmXhGpMsBECnbU1EEHBYFKorVoBRnHeLDEllOPJGulcMCcP7DCDvNZW4hgvpFsOU
 Q8ugWWsoxlKQ==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="407679377"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:44:20 -0700
Date: Mon, 22 Mar 2021 08:44:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Thomas Meyer <thomas@m3y3r.de>
Message-ID: <20210322064416.GA682529@ideak-desk.fi.intel.com>
References: <YFcw+c4dWmPejkKo@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFcw+c4dWmPejkKo@localhost.localdomain>
Subject: Re: [Intel-gfx] i915: v5.10.23: kernel hangs at boot when external
 monitor is connected?!
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Sun, Mar 21, 2021 at 12:44:24PM +0100, Thomas Meyer wrote:
> Hi,
> 
> when booting with an external monitor connected the boot process seems to stop
> in the kernel. No additional output is show, it just hangs.
> 
> kernel is 5.10.23 and driver is i915. When unplugging and reset computer, the
> system starts normal. Any ideas what could be the culprit and what to enable
> in kernel config to get a bit more insight what's probably going on?

Thanks for the report.

Please open a ticket at
https://gitlab.freedesktop.org/drm/intel/-/issues/new

You can capture a dmesg log by booting with drm.debug=0x1e, and either
configuring netconsole as built-in, passing the required netconsole=
boot params for it [1], or building i915 as a module and modprobing it
only from the console (by booting with modprobe.blacklist=i915,snd_hda_intel).  

--Imre

[1] https://www.kernel.org/doc/Documentation/networking/netconsole.txt

> 
> mfg
> thomas
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
