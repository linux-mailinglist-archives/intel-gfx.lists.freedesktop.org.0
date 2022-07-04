Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C03BF565B89
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38CB10EF88;
	Mon,  4 Jul 2022 16:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F1E10E00A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 06:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656916295; x=1688452295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zy96tSsV4C7m7Zb32mdvEbZdQ8JUr8AMH44cWEWgPDc=;
 b=UKLkDDVyVPT9wiywFXvgFOAGj+Ap42FhLiLfEhWvOQRdiLTRLvj+vJOT
 mWqm3RHksImCg9AynTBFiFjF7JlyvZt8NdFJsuk/dVfI3v6x/S6HhUcng
 FijyNbi5tBY3sBK8/kgkJLDtiIZUE9yy3aWGiKM0BFS/61ulT5IecxaNI
 /Yv27dQuEjSsyX8nyX+3JNgViMD039koSMbyGMFtDQYwXFU3qB48Ll3yT
 XSUYqY3Vx2KUDWVXCgaMcY7XcX3XEDiMu2jZuDg2NmA+4zLE8r0tcSs3g
 I1Mr5LPvoxTRJ3CwpVJx57d9iPFE5q8OV8DZ6D5FkXW5rawnrol8UeSE/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="283775733"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="283775733"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2022 23:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="624941652"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 03 Jul 2022 23:31:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 3 Jul 2022 23:31:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 3 Jul 2022 23:31:33 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Sun, 3 Jul 2022 23:31:33 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYjTo2E2aiiMhtnkGEoJ44I8ufP61p0nSAgAPd2yCAAHrGAP//mRgg
Date: Mon, 4 Jul 2022 06:31:33 +0000
Message-ID: <72638a4cf3c6434b810702337e29eb37@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220701110309.1237002-1-arun.r.murthy@intel.com> <87sfnlm6dw.fsf@intel.com>
 <ebb45d3701bb4a78ad8b7bf1d926addc@intel.com>
 <DM6PR11MB3177F52AE19DA65003E1D8FFBABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177F52AE19DA65003E1D8FFBABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/dp: wait on timeout before retry
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
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, July 4, 2022 11:07 AM
> To: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel=
.com>;
> intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Zanoni, Paulo R <paulo.r.zanoni@intel.=
com>;
> tprevite@gmail.com
> Subject: RE: [PATCHv3] drm/i915/dp: wait on timeout before retry
>=20
> > > -----Original Message-----
> > > From: Nikula, Jani <jani.nikula@intel.com>
> > > Sent: Friday, July 1, 2022 4:45 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: ville.syrjala@linux.intel.com; Zanoni, Paulo R
> > > <paulo.r.zanoni@intel.com>; tprevite@gmail.com; Shankar, Uma
> > > <uma.shankar@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> > > Subject: Re: [PATCHv3] drm/i915/dp: wait on timeout before retry
> > >
> > > On Fri, 01 Jul 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > > > On linktraining error/timeout before retry need to wait for
> > > > 400usec as per the DP CTS spec1.2
> > > >
> > > > The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in
> > > > Displayport AUX transactions for compliance testing") removes this
> > > > delay mentioning the hardware already meets this requirement, but
> > > > as per the spec the delay mentioned in the spec specifies how long
> > > > to wait for the receiver response before timeout. So the delay
> > > > here to wait for timeout and not a delay after timeout. The DP
> > > > spec specifies a delay after timeout and hence adding this delay.
> >
> > The source side as per bspec says how much time to wait for sink
> > response before calling timeout:
> > Reg: DDI_AUX_CTL, BitField: 27:26
> > Name: Time out timer value
> > Description:
> > ValueName
> > 00b400us (default)
> > 01b600us
> > 10b800us
> > 11b4000us
> >
> > So this should meet the CTS requirement. For any non-timeout error
> > from sink, s/w should add explicit delay of minimum 400us before retry
> > (which is being done)
> >
> > If 400us is not enough this needs to be checked separately or the
> > timeout value in this register can be changed from default of 400us
> >
> The delay specified in the register is the time to wait for triggering th=
e timeout. This
> is being achieved in the register mentioned above.
>=20
> But what the CTS spec says is once the timeout has occurred, before retry=
ing again
> we need to wait for 400ms. This is the delay that this patch has added.

Thanks Arun for clarification. Seems there is some confusion with the hardw=
are wait
and this retry wait. I would suggest to add the CTS spec details clarifying=
 this wait and
we should be good.

>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------

