Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE65C315E38
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 05:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20606E073;
	Wed, 10 Feb 2021 04:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F006E073
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 04:33:24 +0000 (UTC)
IronPort-SDR: XIlERpfI585FBDKrusrOXyFf8G/N2INevt8hx2QFyvjRSmVHmSduaEK35iVEfxKDEu/cJn6+m6
 GK5qjeHGw4fw==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="161161281"
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="161161281"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 20:33:24 -0800
IronPort-SDR: GqqJei4DlfSsys4fZ+K7HMV37Q/5tLSxD2aIiTpuz+0J8XFCliCriGRrvmyEs2DuFN6Ya5aPgu
 h2z3sh/6ckyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="359439658"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga003.jf.intel.com with ESMTP; 09 Feb 2021 20:33:23 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 04:33:21 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Wed, 10 Feb 2021 10:03:20 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "lyude@redhat.com" <lyude@redhat.com>, "Deak, Imre" <imre.deak@intel.com>, 
 "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
Thread-Index: AQHW9JWo4RC3Xh/AsUGYyG3nfjkQ96o7vz8AgAhKjwCAAAr9AIAAC0wAgAAd7QCAAHlyAIALQLMAgADhCYA=
Date: Wed, 10 Feb 2021 04:33:20 +0000
Message-ID: <0ef1186b257c4ce5bc2d4c7feadb0ef6@intel.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YBjx1O/3jeFcRPDw@intel.com> <YBj7TmOwNCqwits7@intel.com>
 <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <20210202161400.GB578899@ideak-desk.fi.intel.com>
 <028439db4dce2eb73f9d796c221b6f8923f90f5f.camel@redhat.com>
In-Reply-To: <028439db4dce2eb73f9d796c221b6f8923f90f5f.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Lyude Paul <lyude@redhat.com>
> Sent: Wednesday, February 10, 2021 1:34 AM
> To: Deak, Imre <imre.deak@intel.com>; Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> <hariom.pandey@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
> suspend/resume
> 
> ..snip.. (comments down below)
> 
> On Tue, 2021-02-02 at 18:14 +0200, Imre Deak wrote:
> >
> > BSpec says about this WA for both ICL and TGL:
> > """
> > Display driver should set and clear register offset 0xC2000 bit #7 as
> > last step in programming south display registers in preparation for
> > entering S0ix state, or set 0xC2000 bit #7 on S0ix entry and clear it
> > on S0ix exit.
> >
> > """
> >
> > This means to me the WA is only relevant for S0ix and we can implement
> > it by setting/clearing 0xC2000 bit #7 right before entering/right
> > after exiting S0ix. This is done atm on PCH_ICP..PCH_MCC in
> > intel_display_power_suspend_late()/intel_display_power_resume_early(),
> > so I'd move the WA for all platforms there.
> >
> > I assume the current code in irq_reset() was the first alternative to
> > implement the WA, but it wasn't enough. Not sure why, maybe there is a
> > south display register access after irq_reset() during suspend. Adding
> > Anshuman for an idea on that.
> >
> 
> Poking Anshuman here, is there any update on this? I'm looking to push these
> patches forward as some of Red Hat's hardware partners are very eager for this
> to get upstream asap as we're running out of time from our end. If you can
> answer this, I can handle respinning this patch as needed.
My sincere apology, I had missed this thread.
We have decided to keep the alternative WA i.e  setting/clearing 0xC2000 bit #7 
before entering after exiting s0ix to fix the deeper s0ix power consumption issues on ICL_PCH
families platforms. This alternative WA  was added to B.Spec on our request.
But on TGL_PCH first alternative WA logic i.e  in irq_reset() was working to attain deeper s0ix residencies so
we haven't changed that.

Thanks,
Anshuman Gupta
> 
> > --Imre
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> 
> --
> Sincerely,
>    Lyude Paul (she/her)
>    Software Engineer at Red Hat
> 
> Note: I deal with a lot of emails and have a lot of bugs on my plate. If you've
> asked me a question, are waiting for a review/merge on a patch, etc. and I
> haven't responded in a while, please feel free to send me another email to check
> on my status. I don't bite!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
