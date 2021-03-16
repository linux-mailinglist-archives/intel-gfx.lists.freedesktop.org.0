Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CAB33D5E3
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 15:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6FD89E0C;
	Tue, 16 Mar 2021 14:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC5E89E0C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 14:38:38 +0000 (UTC)
IronPort-SDR: MbASaonP4KwNRDZOLv+gjHwt5iGOAW9G0BJ+4dAq1V2K0M8MHVyoTPFZM1AF2BdbdErZViOn9K
 IYhxc1u0g1wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="189362679"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="189362679"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 07:38:38 -0700
IronPort-SDR: sN/70fYWUWWSd5plxB9QacdxsoXXkAKWRVgekrQByJr0OodYZx+79H2lJQtuh7fP32c2eSAdGs
 d7U9tEGeGRrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="440105312"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2021 07:38:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 14:38:35 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Tue, 16 Mar 2021 07:38:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display/psr: Add sink not reliable check to
 intel_psr_work()
Thread-Index: AQHXF0R1GNUd2bQR/kufcQmm+RycB6qA4fWAgAH9BACABEyDgA==
Date: Tue, 16 Mar 2021 14:38:34 +0000
Message-ID: <bcad3bf35917433c39107a23a3d997a250691a6e.camel@intel.com>
References: <20210312133430.1478156-1-gwan-gyeong.mun@intel.com>
 <85d3edee2ca1da2ed4cf09fe6451b6a079b2fd51.camel@intel.com>
 <b66c0c1ade0bf80c3dc799b0e9498d540bcf4a51.camel@intel.com>
In-Reply-To: <b66c0c1ade0bf80c3dc799b0e9498d540bcf4a51.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <A5162F0970F58F4EA28FC751C4E6C49C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/psr: Add sink not reliable
 check to intel_psr_work()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 2021-03-13 at 20:01 +0000, Mun, Gwan-gyeong wrote:
> On Fri, 2021-03-12 at 05:37 -0800, Souza, Jose wrote:
> > On Fri, 2021-03-12 at 15:34 +0200, Gwan-gyeong Mun wrote:
> > > If the sink state is not reliable, it does not need to wait for
> > > PSR "IDLE state" for re-enabling PSR. And it should not try to re-
> > > enable
> > > PSR.
> > > 
> > > Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index cd434285e3b7..7f555407de06 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1686,6 +1686,9 @@ static void intel_psr_work(struct work_struct
> > > *work)
> > >         if (READ_ONCE(intel_dp->psr.irq_aux_error))
> > >                 intel_psr_handle_irq(intel_dp);
> > >  
> > > 
> > > 
> > > 
> 1. In intel_psr_irq_handler()
>    when the psr error happens,
>      intel_dp->psr.irq_aux_error = true; 
>       schedule_work(&intel_dp->psr.work);
> 
> 
> 2. In intel_psr_work()
>     ...
>    if (READ_ONCE(intel_dp->psr.irq_aux_error))
>      intel_psr_handle_irq(intel_dp); 
> 	 -> intel_psr_disable_locked(intel_dp); 
>             psr->sink_not_reliable = true;  
>     ...
> 
> 
> IMO, when this scenario happens, the below code seems to be needed.


Information like this should be in the commit message.
Do not add another check, just do a goto close to the function that handles irq_aux_error.

> 
> > > +       if (intel_dp->psr.sink_not_reliable)
> > > +               goto unlock;
> > 
> > I can't think any scenario that this will hit.
> > Before set sink_not_reliable PSR will be disabled so it will be caught
> > in the first check of intel_psr_work().
> > 
> > > +
> > >         /*
> > >          * We have to make sure PSR is ready for re-enable
> > >          * otherwise it keeps disabled until next full enable/disable
> > > cycle.
> > 
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
