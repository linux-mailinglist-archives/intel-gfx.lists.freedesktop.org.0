Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09D86BED8D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 17:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7100410E3C6;
	Fri, 17 Mar 2023 16:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D5810E3C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 16:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679068827; x=1710604827;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZgL1yPUWvcGikyxTu6IYbuGN/GDj+cDU9Kogau2JOj0=;
 b=CxPiSkfuduCSeGLm8EwfYVB7bXMBOvvpKqa+BpcVFJEwIABgkOGKRt6n
 HY1wNoqdLOjvS43UAz7IgVQHpPWXU7/76twle6zTwrQ3TykgvANS/4qnC
 KcuTS49IJK8LWk5C/hgGy/bW8seaEerC+nHcG3xkDL4hdUDQ4X9e1f4+J
 AWZhyCh2JLNapb66+YuFba4FtgbS4EjQQqZpThecBzyXYR/yj3wW/MJny
 EGZyDbrllkeIyoxk48ovBl/17Yh78g+MvloXhC++tp350G++Q3H5psHoc
 wzGKAVu9+ZPRvJOv9sJSVs30ZT/Zmu01y70SRfD+SQiHT7k3MBsG8r6R6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326653527"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="326653527"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 09:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="657601733"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="657601733"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 09:00:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZBR7QmtetGmroxrI@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230317125352.198042-1-jani.nikula@intel.com>
 <20230317125352.198042-2-jani.nikula@intel.com>
 <ZBRpOllVY8PFfc3w@intel.com> <87pm97a48q.fsf@intel.com>
 <ZBR5jb3TY6S92yZE@intel.com> <ZBR7QmtetGmroxrI@intel.com>
Date: Fri, 17 Mar 2023 18:00:23 +0200
Message-ID: <87mt4b9xm0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: add crtc i915_pipe
 debugfs file
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Mar 17, 2023 at 04:30:37PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Fri, Mar 17, 2023 at 03:37:09PM +0200, Jani Nikula wrote:
>> > On Fri, 17 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.inte=
l.com> wrote:
>> > > On Fri, Mar 17, 2023 at 02:53:52PM +0200, Jani Nikula wrote:
>> > >> The pipe may differ from crtc index if pipes are fused off. For tes=
ting
>> > >> purposes, IGT needs to know the pipe.
>> > >>=20
>> > >> There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. Howeve=
r,
>> > >> the upcoming Xe driver won't have that IOCTL, and going forward, we=
'll
>> > >> want a unified interface for testing i915 and Xe, as they share the
>> > >> display code. Thus add the debugfs for i915 display.
>> > >>=20
>> > >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > >> ---
>> > >>  .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++=
++++
>> > >>  1 file changed, 13 insertions(+)
>> > >>=20
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b=
/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> > >> index faa44fb80aac..e85270adca95 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> > >> @@ -1657,6 +1657,17 @@ static int i915_current_bpc_show(struct seq_=
file *m, void *data)
>> > >>  }
>> > >>  DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
>> > >>=20=20
>> > >> +/* Pipe may differ from crtc index if pipes are fused off */
>> > >> +static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>> > >> +{
>> > >> +	struct intel_crtc *crtc =3D m->private;
>> > >> +
>> > >> +	seq_printf(m, "%d\n", crtc->pipe);
>> > >
>> > > Are we happy with an integer or should we use the actual alphabetic
>> > > name here?
>> >=20
>> > Primarily I considered the programmatic use case, and the ease of
>> > switching over from the ioctl. What do we gain by making IGT parse thi=
s?
>>=20
>> Well even the integer is represented in ascii so parsing
>> needs to happen anyway. But I was mainly thinking if any
>> human looks at it they may be confused as to what the
>> raw integer even means.
>
> Eg. if I just jump on some random machine an do
>
> # grep . crtc-1/*
> ...
> i915_pipe: 3
> ...
>
> Now I need to most likely count with my fingers
> to figure out I'm actually looking at pipe D :P

Fair enough, not unreasonable.

Is it enough to have just A, B, ... or do we go with explanatory text
like i915_current_bpc has "Current: %u\n"?

BR,
Jani.




>
>>=20
>> >=20
>> > > Either way, the series is:
>> > > Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > Thanks,
>> > Jani.
>> >=20
>> > >
>> > >> +
>> > >> +	return 0;
>> > >> +}
>> > >> +DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>> > >> +
>> > >>  /**
>> > >>   * intel_connector_debugfs_add - add i915 specific connector debug=
fs files
>> > >>   * @connector: pointer to a registered drm_connector
>> > >> @@ -1735,4 +1746,6 @@ void intel_crtc_debugfs_add(struct intel_crtc=
 *crtc)
>> > >>=20=20
>> > >>  	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>> > >>  			    &i915_current_bpc_fops);
>> > >> +	debugfs_create_file("i915_pipe", 0444, root, crtc,
>> > >> +			    &intel_crtc_pipe_fops);
>> > >>  }
>> > >> --=20
>> > >> 2.39.2
>> >=20
>> > --=20
>> > Jani Nikula, Intel Open Source Graphics Center
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel Open Source Graphics Center
