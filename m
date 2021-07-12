Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1A63C4387
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 07:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA218932D;
	Mon, 12 Jul 2021 05:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E218932D
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 05:43:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10042"; a="295568394"
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="295568394"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2021 22:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="464144268"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 11 Jul 2021 22:43:51 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 11 Jul 2021 22:43:50 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 12 Jul 2021 11:13:48 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Mon, 12 Jul 2021 11:13:48 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: xelpd lpsp capability
Thread-Index: AQHXdLuzBPwJ6uXLCkiu2OxBXuBjrqs6ZpSAgARxEfA=
Date: Mon, 12 Jul 2021 05:43:48 +0000
Message-ID: <0fd7ee581e9442dc8ec4ba3f9c53ffa0@intel.com>
References: <20210709115420.25381-1-anshuman.gupta@intel.com>
 <CAKMK7uFcaV2YkBX-1-_E4-zajS-kMFo23bKpFVLiZdrzPBMOnw@mail.gmail.com>
In-Reply-To: <CAKMK7uFcaV2YkBX-1-_E4-zajS-kMFo23bKpFVLiZdrzPBMOnw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: xelpd lpsp capability
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Daniel Vetter <daniel@ffwll.ch>
> Sent: Friday, July 9, 2021 8:52 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: xelpd lpsp capability
> 
> On Fri, Jul 9, 2021 at 2:12 PM Anshuman Gupta <anshuman.gupta@intel.com>
> wrote:
> >
> > Extend i915_lpsp_capability sysfs to xelpd and future platforms.
> 
> You're talking about sysfs but the patch is toucing a _debugfs.c file.
> Something is very, very wrong here, either the commit message, or worse, the
> code that's there already.
> 
> If this is indeed sysfs it must be split out asap, and ideally also documented and
> all that, because sysfs is uapi
Thanks for pointing this out.
I will fix the commit log in next version , it is debugfs under /sys/kernel/debug/dri/*
Br,
Anshuman Gupta
> -Daniel
> 
> >
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index af9e58619667..75d991a0707e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -2255,6 +2255,11 @@ static int i915_lpsp_capability_show(struct seq_file
> *m, void *data)
> >         if (connector->status != connector_status_connected)
> >                 return -ENODEV;
> >
> > +       if (DISPLAY_VER(i915) >= 13) {
> > +               LPSP_CAPABLE(encoder->port <= PORT_B);
> > +               return 0;
> > +       }
> > +
> >         switch (DISPLAY_VER(i915)) {
> >         case 12:
> >                 /*
> > --
> > 2.26.2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> 
> 
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
