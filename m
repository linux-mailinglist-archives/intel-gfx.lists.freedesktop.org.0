Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 145D672C7EC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 16:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFE610E27F;
	Mon, 12 Jun 2023 14:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5A310E27F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 14:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686579376; x=1718115376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=08Wuak3dC5wnhP0xMivjkAmG99tCp36/5eag4fhQBlE=;
 b=MdquyFbvcvE6qEPJuII36vStZBIwJp/5mpPCY+FcdusIOBSjB7LqzIlV
 MfRld6cY1HPCByzY7zF1gnmYhDx4lXM/KRyMW+E1FJz635Hq75GOjAFdS
 U96D9ycwgWg/wlt4IuWB9bYUPlYo4o9Zf8wM8oMVHUkHj1eFdclvc+vEI
 bC8MOcDMsWvbbJOV1lQfeA1/D/Nd9/D/pxObtVnGVjzN9KtSbFrDTSM3h
 ofG/28hwj/P58GzkzRgktR+7lW2bqmKtgmIxP1NvlSUdDv9kswzZBBgrE
 8jX8v51an3BW6IRTFzuTFm88uqeCN0RT3G4AzncO0Nf4o0gRIucubzTvc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="360533927"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="360533927"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 07:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="885446630"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="885446630"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Jun 2023 07:16:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 07:16:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 12 Jun 2023 07:16:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 12 Jun 2023 07:16:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLcolbWtut3cfLPk7VupVKLdkx0AUoNx+xQYtf/O2a7CmvRCvhWSu1mXizEU6n9gJLA4l7q/U3N78k9Bf2VD7VWYxSjGgFtHu2VZv7iiXwkWuj4+T2a9x1bFzcpmLElRD7lW4bQGcYcGcj6MM+8kn1idCnInCskg8lipvIrst5vG0rUNIS4OxGgFYRmo+u5T3BCOgnyuy3U0QoyWpi+m7JCCKFkjqcAxr7Ge++I/McX+8abTeyMcoRH9OKEISj+OS0F24C4PZ2eZvsgAGJQPrTGl9rAwwRNztSIZoDLHDXfnezdiwCeO8eBVkF2wCcmhtOFy4bX/XHFxoGSxguiRvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+lQrHCrhbSA/bZ4GFrj8jJ+fkvKUi+WuEsJfhLZQvM=;
 b=iBx6+Z/4JtFk2WtnU8gdQCy2O2kt0rEmCWUqbdS/+z16/Fy8BO15g8A0Dic2wzp3OG+BU5xup2+l3DmuzsGlymfNIQA5nM73SJaHl17zMpuS5mSLWnaAhkv3HCyJWhCNnjKAw4Maztj7gi+rAsMgKvmyPpzs4ItcTiD5tL9cGW7ZiRLmKsE3dLkfioYeGRdgkoc1+LaQH67yTgw68VDFutfRDTOHBpWNF4zn+9Ylc8NrYV8c9BjQ6WgZWbt1ttZJfCFWBCJ2O32uppboN4VCt9q4hXgNe8V8I0H8IVXbgYRifp1x95XWnKfj7AMU3bKUkvfOXe9i4i3jzUuB1SEb1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH7PR11MB6979.namprd11.prod.outlook.com (2603:10b6:510:207::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Mon, 12 Jun 2023 14:16:00 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6455.030; Mon, 12 Jun 2023
 14:16:00 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
Thread-Index: AQHZme0yC/NkmFN2FEiQ2MXXWzgCiq+HEGgAgAAA0PCAABXVgIAAFX9A
Date: Mon, 12 Jun 2023 14:15:59 +0000
Message-ID: <DM6PR11MB3177E794D58AF1464961A239BA54A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230608093218.511280-1-arun.r.murthy@intel.com>
 <ZIcDPqQ9V1qgkLh1@ideak-desk>
 <DM6PR11MB31774C433DD62845A0732F52BA54A@DM6PR11MB3177.namprd11.prod.outlook.com>
 <ZIcWPS0NxS101D8k@ideak-desk>
In-Reply-To: <ZIcWPS0NxS101D8k@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH7PR11MB6979:EE_
x-ms-office365-filtering-correlation-id: fe115dc3-0a7d-435d-942b-08db6b4f8c1a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SXtcnwp4Y16D6IYZfQ6IiJ97w2SfkTAQFcT5n9z532h67pq8YUwewXwDYoHl3YO4VntTTVtlOR9/PFIu2qn0bcvBs4uFFTUpUiGlh7vlzQDB1itILNhB2BFmKUkjNyhmJtLagHnwE/XxkizaXkJ21/L0A/KkgQFWXoEveeAx/Q3HFIEDOy4pBC84porNXNnx0uggOti2htaQDY4mNulx0Fxnohe94QiOzi+gP+URpDOCuaYNnl/91Rd1K3ztfMQqHXSHrVzo6dLk0BRbVZW8nZTowcimbqrlNZhyOCsGR/RPxp+swnEeuWolS5har4fSOsJHNOu24DXhF3JB5BmtN2JsIXEH5TtFxQ6zql+62VmWrmeEkq8ogmqfFADyvtFksKNAI/4LWgljgsApAMBIt/2hJ0aPqlim51ZB6xKpzDGJQz18CXA4TpJeH/zNoPVsjDajrAdsbQwwRfTmwqyIklxePoPFOfdTnhngJkYEM+cU+WGmVCngs0jv5MJWOwcy8VziwpmIVb19wlDV0zvjiv3gnzWg159KfVCPjqaMaVDYFNz3L4qXyFpE+K2UW3mE6lG0+7t/mDk0HoEAOSHLW1t3cjjURyhJ7cfIJdk4ZoydEKoRCCqAHu3FGNj2ft6E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199021)(7696005)(83380400001)(38100700002)(86362001)(38070700005)(82960400001)(122000001)(33656002)(6506007)(9686003)(53546011)(26005)(55016003)(186003)(66446008)(2906002)(5660300002)(6862004)(52536014)(8676002)(8936002)(316002)(41300700001)(6636002)(4326008)(66946007)(66556008)(76116006)(66476007)(71200400001)(478600001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qQZy5DkW0HXAs8u3ZImgIRM7raBuTxyOoBxjUWTO81vcl/A5ZHky9/e1IJcy?=
 =?us-ascii?Q?enBvpuLkqtfK0menyKhv+BjDtwXW1Bf/JmMHlE+m7bnxo5gwHRekNgdGWBBW?=
 =?us-ascii?Q?hBC+eoHq1q5cugitou69gWmCXk5dJV3sfP0OOVtRSUSfBKzu8bEwXTKW/E3c?=
 =?us-ascii?Q?5n7CBZV7ZEQ4k+HYFs+ilpPeAJ240DE4k9s9Kbs9EVVRuINVfPUojMwzv4gE?=
 =?us-ascii?Q?y5KkEJcj6VO1QcsU3m/i7KWXJhD+ayajjRdgBuU+yHBUarIP0Nd1HohTrDGA?=
 =?us-ascii?Q?IJ/2T/iKp0Gn02zQMnhEJ9R3qI+ca9ZOHmBxpMBavrTG4pKiSfqc7j+NlY0S?=
 =?us-ascii?Q?vKW7IaqEWB6QeNshQ7jOaq/cIuI1AWrjHsZWrnVF40e7O8irnWkpRhH/mX6o?=
 =?us-ascii?Q?ilFWOPF6DXLhAm3RUq8IhPGQoqkYbN254J8HodOa9gwCcMSQPjVVtu7VwWFA?=
 =?us-ascii?Q?HS10dntQdMRhELiATgxFMBiYEAVX+qLGuroj2+fIZrDdg8mJ2lfq7YSY9/xz?=
 =?us-ascii?Q?5rY9EDgE01gHrdZmU6TSVP7Q/nhXDYBb/kFtlG67FWFdwndJfidH+gJg1A15?=
 =?us-ascii?Q?TkxQ2Kfuup50NfR35wy+CCjdLY50geZnjlQ457Md5Gj+P/Kdx9J4eIWWvhsQ?=
 =?us-ascii?Q?pwvD0SHNn0zjvQvYPQbwdLEbxaSdkTA80Vuy+Qro6QE0OqNI6BEBXR6KdEPi?=
 =?us-ascii?Q?11tbri0Mc/q1uXsZxO9Dy3zgiIR6y5IJq70teqFIqVH4SnVxZ5kKPIGSY7ME?=
 =?us-ascii?Q?C6Axz3heJhFqbJzlqhwncxru0h0eLkZz2lHGpsaxWodg5fzxOzDP3H5uXi78?=
 =?us-ascii?Q?ayHdgg6NS//zxDgn75iyylWpKViDVn3rsOZhm+y+qb9vAXMVsE6a8dTlvyRT?=
 =?us-ascii?Q?FkFG6j1v241L4/2v8dEzoqTtFTA8cC8oIWJ6JX4QSdTn6pveuk1oR4j7EzH6?=
 =?us-ascii?Q?+3n2LHW3GOVmIiBFauKmSJx2qFmUlpoj9huncLpfucTiRUaZKSblb1tkOy7B?=
 =?us-ascii?Q?LEStfMZMRUI4B+g86jDLb3GOdhVx92gfTRUWDuOq4g5qGydQZJF6KkTrRrl3?=
 =?us-ascii?Q?O7JV9iF9lA2+Q1m3GVBxqZ0l29gvT0/1tzB8a4MrMp+CA3ZWoauw5c1sjfHT?=
 =?us-ascii?Q?4EUgcQexpHsWOhSJ7Cx/5sUo70LYTTQ9SmX5z4StBD2aDjfWzFb423waBAKJ?=
 =?us-ascii?Q?avK4fxvQcibzS6fOrGxqKnN9pCMXzcItG/IGhL1+/YEJFJw3WMSV4bXv4HEl?=
 =?us-ascii?Q?cmGODFAdQHMFW4CBxmsVpowSixifXLoUHe31VLynNum8H92gJj+6jedU3bAT?=
 =?us-ascii?Q?FImfWA72TjCANKYmAFjc2G6GgWkWj8SCs52pZPzv2/RBnRtjhU9LaoTotAWE?=
 =?us-ascii?Q?lbmBzJ9TSX52A24h/UxDLmwGhU3itkQaIeFTlAMeK/7Pj8Mhbuc3R8cOhCbe?=
 =?us-ascii?Q?ACfV1LdioYUngoBSX3ofGl6YVcn8x9hrRHsZla8mtSG15yDcGWUwi39KM7Un?=
 =?us-ascii?Q?OXccUEDUIybJu8rQ3DVABlmxvb5oV5YfMSID9StdBlfES99oyuXAXGTxIOGg?=
 =?us-ascii?Q?WUpW8eZloLUO+7FarrVyWWxqmZi+7eWd6vF39lzM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe115dc3-0a7d-435d-942b-08db6b4f8c1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 14:15:59.9643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2hqtG3k6lDqFxsPzKNrbgRbcof61WWtoMgaUpPgLBQ/th+167Ae1MkZTs19HjiR0B8jOO0pVxLFKdP4QnVwu5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6979
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, June 12, 2023 6:28 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeo=
ut
> restart freshly
>=20
> On Mon, Jun 12, 2023 at 02:47:37PM +0300, Murthy, Arun R wrote:
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Monday, June 12, 2023 5:07 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer
> > > timeout restart freshly
> > >
> > > On Thu, Jun 08, 2023 at 03:02:18PM +0530, Arun R Murthy wrote:
> > > > At the begining of the aux transfer a check for aux control busy
> > > > bit is done. Then as per the spec on aux transfer timeout, need to
> > > > retry freshly for 3 times with a delay which is taken care by the
> > > > control register.
> > > > On each of these 3 trials a check for busy has to be done so as to
> > > > start freshly.
> > > >
> > > > v2: updated the commit message
> > > >
> > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 50
> > > > +++++++++------------
> > > >  1 file changed, 22 insertions(+), 28 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > index 197c6e81db14..25090542dd9f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > @@ -273,30 +273,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> > > >      * it using the same AUX CH simultaneously
> > > >      */
> > > >
> > > > -   /* Try to wait for any previous AUX channel activity */
> > > > -   for (try =3D 0; try < 3; try++) {
> > > > -           status =3D intel_de_read_notrace(i915, ch_ctl);
> > > > -           if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > > > -                   break;
> > > > -           msleep(1);
> > > > -   }
> > > > -   /* just trace the final value */
> > > > -   trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> > > > -
> > > > -   if (try =3D=3D 3) {
> > > > -           const u32 status =3D intel_de_read(i915, ch_ctl);
> > > > -
> > > > -           if (status !=3D intel_dp->aux_busy_last_status) {
> > > > -                   drm_WARN(&i915->drm, 1,
> > > > -                            "%s: not started (status 0x%08x)\n",
> > > > -                            intel_dp->aux.name, status);
> > > > -                   intel_dp->aux_busy_last_status =3D status;
> > > > -           }
> > > > -
> > > > -           ret =3D -EBUSY;
> > > > -           goto out;
> > > > -   }
> > > > -
> > > >     /* Only 5 data registers! */
> > > >     if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20))=
 {
> > > >             ret =3D -E2BIG;
> > > > @@ -304,14 +280,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> > > >     }
> > > >
> > > >     while ((aux_clock_divider =3D intel_dp-
> > > >get_aux_clock_divider(intel_dp, clock++))) {
> > > > -           u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> > > > +           /* Must try at least 3 times according to DP spec */
> > > > +           for (try =3D 0; try < 5; try++) {
> > > > +                   u32 send_ctl =3D
> > > > + intel_dp->get_aux_send_ctl(intel_dp,
> > > >                                                       send_bytes,
> > > >
> > > > aux_clock_divider);
> > > >
> > > > -           send_ctl |=3D aux_send_ctl_flags;
> > > > +                   send_ctl |=3D aux_send_ctl_flags;
> > >
> > > Why is send_ctl recomputed in each iteration?
> >
> > This can be moved outside the loop, since the value doesn't tend to
> change.
> >
> > >
> > > > +
> > > > +                   /* Try to wait for any previous AUX channel
> > > > + activity
> > > */
> > > > +                   status =3D intel_dp_aux_wait_done(intel_dp);
> > >
> > > How does it help to wait here for the same condition that was
> > > already waited for at the end of the loop?
> >
> > Here we are checking for busy bit so as to ensure that the previous
> > transfer is complete and only then the new transfer is initiated.
> >
> > In the latter case, we sent the data and then wait to get the
> > acknowledgement(busy/error/timeout).
> >
> > Check for busy is to be done before sending the data. Here it was done
> > before this loop.  The spec limits the trials for sending data to 3 in
> > case of failure and in each of this iteration it has to be started
> > freshly. So we need to ensure that the previous transfer is completed
> > before sending the new data.
>=20
> Not sure what you mean by "freshly". One potential problem in the current
> code I can see is that if BUSY is still set after
> intel_dp_aux_wait_done() returns none of the control register fields shou=
ld
> be changed, so I think at that point the transfer should be aborted.

Good Catch! I missed that. Will surely take care of this in the next versio=
n.

>=20
> Also since a while back intel_dp_aux_wait_done() was changed to poll for
> the transfer completion instead of waiting for an interrupt, the
> corresponding interrupt should not be enabled either in the control regis=
ter.

Yes this is in my TODO list, most likely in my next patch.

Thanks and Regards,
Arun R Murthy
--------------------

>=20
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > >
> > > > +                   /* just trace the final value */
> > > > +                   trace_i915_reg_rw(false, ch_ctl, status,
> > > > + sizeof(status),
> > > true);
> > > > +
> > > > +                   if (status & DP_AUX_CH_CTL_SEND_BUSY) {
> > > > +                           drm_WARN(&i915->drm, 1,
> > > > +                                    "%s: not started, previous Tx
> > > > + still in
> > > process (status 0x%08x)\n",
> > > > +                                    intel_dp->aux.name, status);
> > > > +                           intel_dp->aux_busy_last_status =3D stat=
us;
> > > > +                           if (try > 3) {
> > > > +                                   ret =3D -EBUSY;
> > > > +                                   goto out;
> > > > +                           } else
> > > > +                                   continue;
> > > > +                   }
> > > >
> > > > -           /* Must try at least 3 times according to DP spec */
> > > > -           for (try =3D 0; try < 5; try++) {
> > > >                     /* Load the send data into the aux channel
> > > > data
> > > registers */
> > > >                     for (i =3D 0; i < send_bytes; i +=3D 4)
> > > >                             intel_de_write(i915, ch_data[i >> 2],
> > > > @@ -
> > > 321,6 +314,7 @@
> > > > intel_dp_aux_xfer(struct intel_dp *intel_dp,
> > > >                     /* Send the command and wait for it to complete=
 */
> > > >                     intel_de_write(i915, ch_ctl, send_ctl);
> > > >
> > > > +                   /* TODO: if typeC then 4.2ms else 800us. For
> > > > + DG2
> > > add 1.5ms for
> > > > +both cases */
> > > >                     status =3D intel_dp_aux_wait_done(intel_dp);
> > > >
> > > >                     /* Clear done status and any errors */
> > > > --
> > > > 2.25.1
> > > >
