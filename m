Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F066E99CF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 18:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B40410ECDE;
	Thu, 20 Apr 2023 16:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9991F10E2D4;
 Thu, 20 Apr 2023 16:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682009095; x=1713545095;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=EpzyGDcHinEr+/TDjpXg/+oA2ICcw1KmbWcVqTTlr3c=;
 b=N1sHoScsapUxgUTuunkzwmBl046KEBGYFF0YnamVYn8+B+0fz1Ps//TS
 5mcj9aG3MF+JftdSXBhNYiP1JkJz48IJuX8XW8E1JqcZGz90u8fw2yIS6
 5zLawuBa9JwxC+hpGSLtuj48wj29mY42xN64mBpzgGeUGqhNOfmDhUaZh
 96WGZWTUJ2IBVUcv6y64w3F/NDS3LHEDWvb49iZ0x2g/+3jjOehWO5S+J
 kO3pPQ7vsHos1qTCMVq6pluaxYKUZ4ryj9+nrDhbkki1kPS1vk3inMZ4T
 dK5Ap39memKSZXxH83e5epGW1lJJ1SoBfiEzulZnLNLoXdNxECk84VqTC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344541964"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="344541964"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="938140520"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="938140520"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.5.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:44:54 -0700
Date: Thu, 20 Apr 2023 09:26:28 -0700
Message-ID: <87sfcumsej.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZEFduD1kUjhRJFaZ@intel.com>
References: <20230410223509.3593109-1-ashutosh.dixit@intel.com>
 <20230410223509.3593109-4-ashutosh.dixit@intel.com>
 <340d7a5f-0b38-3c40-77b8-ab825a7b5fef@linux.intel.com>
 <871qkfo74r.wl-ashutosh.dixit@intel.com>
 <852cfbbe-25be-ec23-e182-8e81f2f0e98a@linux.intel.com>
 <ZEFduD1kUjhRJFaZ@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hwmon: Block waiting for GuC
 reset to complete
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Apr 2023 08:43:52 -0700, Rodrigo Vivi wrote:
>

Hi Rodrigo,

> On Thu, Apr 20, 2023 at 08:57:24AM +0100, Tvrtko Ursulin wrote:
> >
> > On 19/04/2023 23:10, Dixit, Ashutosh wrote:
> > > On Wed, 19 Apr 2023 06:21:27 -0700, Tvrtko Ursulin wrote:
> > > >
> > >
> > > Hi Tvrtko,
> > >
> > > > On 10/04/2023 23:35, Ashutosh Dixit wrote:
> > > > > Instead of erroring out when GuC reset is in progress, block waiting for
> > > > > GuC reset to complete which is a more reasonable uapi behavior.
> > > > >
> > > > > v2: Avoid race between wake_up_all and waiting for wakeup (Rodrigo)
> > > > >
> > > > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/i915_hwmon.c | 38 +++++++++++++++++++++++++++----
> > > > >    1 file changed, 33 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > index 9ab8971679fe3..8471a667dfc71 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > @@ -51,6 +51,7 @@ struct hwm_drvdata {
> > > > >	char name[12];
> > > > >	int gt_n;
> > > > >	bool reset_in_progress;
> > > > > +	wait_queue_head_t waitq;
> > > > >    };
> > > > >      struct i915_hwmon {
> > > > > @@ -395,16 +396,41 @@ hwm_power_max_read(struct hwm_drvdata *ddat, long *val)
> > > > >    static int
> > > > >    hwm_power_max_write(struct hwm_drvdata *ddat, long val)
> > > > >    {
> > > > > +#define GUC_RESET_TIMEOUT msecs_to_jiffies(2000)
> > > > > +
> > > > > +	int ret = 0, timeout = GUC_RESET_TIMEOUT;
> > > >
> > > > Patch looks good to me
> > >
> > > Great, thanks :)
> > >
> > > > apart that I am not sure what is the purpose of the timeout? This is just
> > > > the sysfs write path or has more callers?
> > >
> > > It is just the sysfs path, but the sysfs is accessed also by the oneAPI
> > > stack (Level 0). In the initial version I also didn't have the timeout
> > > thinking that the app can send a signal to the blocked thread to unblock
> > > it. I introduced the timeout after Rodrigo brought it up and I am now
> > > thinking maybe it's better to have the timeout in the driver since the app
> > > has no knowledge of how long GuC resets can take. But I can remove it if
> > > you think it's not needed.
> >
> > Maybe I am missing something but I don't get why we would need to provide a
> > timeout facility in sysfs? If the library writes here to configure something
> > it already has to expect a blocking write by the nature of a a write(2) and
> > sysfs contract. It can take long for any reason so I hope we are not
> > guaranteeing some latency number to someone? Or the concern is just about
> > things getting stuck? In which case I think Ctrl-C is the answer because
> > ETIME is not even listed as an errno for write(2).

Hmm, good point.

> I suggested the timeout on the other version because of that race,
> which is fixed now with this approach. It is probably better to remove
> it now to avoid confusions. I'm sorry about that.

No problem, I've removed the timeout in the latest version.

Thanks for the R-b.

Ashutosh
