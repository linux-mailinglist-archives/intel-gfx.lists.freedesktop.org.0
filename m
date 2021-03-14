Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7C833A56D
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Mar 2021 16:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5487C6E0D5;
	Sun, 14 Mar 2021 15:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA666E0D5
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 15:25:42 +0000 (UTC)
IronPort-SDR: 5EK2wBpCb3O0gK84yLS+l7jAc+XC5SdE000qOubCIT0hIhIJpFr8s3JcRS2WEOfp4m6xUMVy5g
 3KLnKrddanKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176126497"
X-IronPort-AV: E=Sophos;i="5.81,248,1610438400"; d="scan'208";a="176126497"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2021 08:25:41 -0700
IronPort-SDR: UdL49t9frDUqlkGJ26OXfHeXNjwXZ78no9LHZr5sxO6fKHAmmEBV8JJCeJIsLIUonzzcV8ozm5
 NFIgwOkS7/Xw==
X-IronPort-AV: E=Sophos;i="5.81,248,1610438400"; d="scan'208";a="411580553"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2021 08:25:40 -0700
Date: Sun, 14 Mar 2021 17:25:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mario =?iso-8859-1?Q?H=FCttel?= <mario.huettel@linux.com>
Message-ID: <20210314152536.GA3286105@ideak-desk.fi.intel.com>
References: <769a4194df25ee2432284d8f10f876a17cc94fec.camel@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <769a4194df25ee2432284d8f10f876a17cc94fec.camel@linux.com>
Subject: Re: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown
 since commit fe0f1e3
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Sun, Mar 14, 2021 at 02:48:08PM +0100, Mario H=FCttel wrote:
> Hello,
> =

> It seems, like the mailing list, didn't accept my previous emails. So
> I'll send it again:
> =

> I want to report a bug. I've got a PC with Intel i7-6700K processor
> (with integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6
> mainboard. I use the CPU's integrated graphics.
> My system is Archlinux with Kernel v5.11.6.
> =

> Using this setup, my PC works normally. However, when I shut it down,
> the power is not cut. Fans keep spinning and LEDs stay on. I couldn't
> detect any other problem when shutting down. Drives etc. stop as
> expected and the video is blank. Even after waiting several hours, the
> system doesn't power down. This behavior is 100% reproducible.
> =

> Restarts work normally.
> =

> I haven't yet found any other people on the internet that have the same
> bug.
> =

> I used git bisect to find the commit that causes this behavior on my
> machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is the
> first bad commit (drm/i915: Shut down displays gracefully on reboot).
> =

> I hope this is the correct mailing list for this issue.
> =

> Let me know if you need more information or someone to test it.

Could you try:
7962893ecb853 ("drm/i915: Disable runtime power management during shutdown")
?

If that doesn't help, could you open a ticket at:
https://gitlab.freedesktop.org/drm/intel/-/issues

and try to take a log from the shutdown sequence using serial/netconsole
or pstore log?

Thanks,
Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
