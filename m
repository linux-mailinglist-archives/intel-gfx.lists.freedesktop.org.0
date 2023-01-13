Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE6A668F3C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 08:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022FD10E1E3;
	Fri, 13 Jan 2023 07:27:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72FBC10E1E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 07:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673594866; x=1705130866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3y0u0eOtprzvrsIzL80TVrst0PRxXfC9uWS2spoEiB4=;
 b=Twc5CbM2C8cJlK4q+qfYW+z1TxT9f2VG/CW+w10fugVHXxZFJWbEfIST
 qJDD9757kM/hy3pAz0DMkgpvXbo8S1Iqu0QO6XoAsCNMbhxslsFoFC33y
 8TjMYmtVssBKbP8v9GDJ0yTHCaaJQ1DoSZsr+xvovFxe0rWjAe9mVD6ef
 E0+NBtp2BV3S0+aIEgINA80FibapAXM9BwLyT0qtmUpeCwWqFvXdByMEf
 DzERudF3WwYQn4AK8OCKAXM3GNM4hRbWwjh4SarkQvIanEwIvXsf1+Z8Q
 eIUaTFjVvqlYcYGacJ4LQJ0Baix7d5gLvWhTT4pD5e6vfdskA9WezpjNK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="388432713"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="388432713"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 23:27:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="986902723"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="986902723"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jan 2023 23:27:44 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 23:27:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 23:27:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 23:27:43 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 23:26:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QWqEJke+6HrfDBFms+zUkxGWsMCIgjgpcQYWO7ctH7T53OI83Vgfng4fANjACo7mk6Of0nx5NYliR8W9vdW+dG8gmFuxRFgkTxWLUj5fHd7MNBzfFDhS41Y8iYRjz+rUfckeUmGlAZbxwcgXMhQ8Q+WBG5GaJZKhFlWCiBVzyliyGJIjjx2RcoZ5h2GS63EYRCJWFtF9vN0S5w7gJNIvTJzCv1g5/EN/ntzLaQttGbApXCr+Vaz0HHv6TvK1EUIoUGbOIMujRgxut+MrXicOY90l3eFR4C/XT1nk9SSTvVK39b+rDcsjRaJfjg2zC3Jvwtt3GA/2sIN98c+pbvfaFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4B/9InZQL9qS9I/JSuakst1D3HKk6wC0LnqQZnCcV+U=;
 b=XlVBlD8Siu0NHZSqc28QPjBsA/F0hV7CZ5Vr0qdA7DwF3ELJESfk6IS6Ar8L8xNu0pvTakuNlJ8RSGD2Uujrxh2A0s/hknzCeBNayacwgMf9QyiI6KmUhd1DxuVoUwzhIETbiDp97xfkGMQUoSHzBxJt5unjsXS37qbrs6a4t2L/FgwBjQnHP/uXP6USo8XZusSPrMJdQL2SH94WFV37EdfxRiVjvO7Dtd18nLkSHxAB/IKuJ6svDyjdTllGxBafl7huqMKkpW3bho9j1z6SuyKmKnk3hcACLy/o3RyM/njdlq29nU7IJI9kB7K3DOBDNMnX/z1DFWzedPSZuVam+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 07:26:49 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 07:26:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIB5ErxA
Date: Fri, 13 Jan 2023 07:26:49 +0000
Message-ID: <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
In-Reply-To: <Y1t3J2vIoiaPhYuR@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH0PR11MB7635:EE_
x-ms-office365-filtering-correlation-id: ce3cb049-4caa-4e84-046b-08daf53788b5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3JvYVNmysU+3C5YMkvbnbWOQjraEc79+NtVPUSqCBkPaaBc//GROBO0DU9MrOEYKQwKNiPNDao/TMq4SvuRDagRLHh4gPlvfCHb1OZRHcJYsTLIWMp9TFrEWFzm8Eg/SJC5HfI5qrDvcqBKZ2RoBz9/DCg28adA7yWdqBniPEZmITyYiMvBC46mc83hFKOh8lVdYBSgFB3ZhLxupxcMENnj+idUSqvkg0febrnmlwQxXit3l0392qwXcLs1MVAqxsbjf8yRFmTOaebI5raJsc3TZ94Efpi/sysk+AuRNDMkn2B8JiKgZnYXv7je+TaFbjWyY9e7anPbGYLK3CNpKQoQtqVqVGQJ3PzHnZubN/B4yVQdgwy5AjuRodNOKDJsgrnhbJGVSVol3Dnkykrty+GyZ95y9J6+KwQ+8RqaP/UUa7e3fE8RLfEYgBBISBqFDTdplRfkJZSsBMM3Zdv6PflANi/enE0Gp9oAU5SUhpBdpBiVp5sEVnZVJ9copu0xoM9Pi7JPA1LdCH4mD0rnl3cgP3f4wbezlCW5chDZsOlOgDifIJ9ACTwiDBsLaonMjc6IXINdtqRGgTUrZkVhprWvNIR0nc8VSG3FB+3rjpcCh5VNAH9Utq3UKngYphJle4FykbchuaNW03c8Ah7/60UFqYr7ft3dEmhp5ZAxZ85o/wyKoa7JCLO4hX2MC0N6eOhPcb9t455t/gaB7L0DJGHQ8DkhvqYUQFOIjpap88cg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199015)(8936002)(6506007)(26005)(66574015)(478600001)(6916009)(76116006)(55016003)(33656002)(186003)(9686003)(66476007)(8676002)(71200400001)(64756008)(7696005)(66446008)(53546011)(41300700001)(316002)(54906003)(4326008)(82960400001)(86362001)(83380400001)(38070700005)(38100700002)(122000001)(66946007)(66556008)(52536014)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?p0FLbNHWOiKfXsv2vakMxmJzMlCqtqb58o8X2miRIXpcQNEydgM8LTFJO9?=
 =?iso-8859-1?Q?1fZJorlCsL6U99q+jAfHT0JuRNRNnkU3eazu2PHZY0AvdBkgiwlPkR/DzW?=
 =?iso-8859-1?Q?R1nvL27j/7lIMMy++yyWSxLQ3vpUFNibxBVLSUtszVh+rYPT2oGNJYsdAJ?=
 =?iso-8859-1?Q?oYIJPr8DP6c9xTfXaO0pTPevyTWPNNQkuWoCF3F2yp1B6EaRNNRY3F/g9N?=
 =?iso-8859-1?Q?P1t4/wYnEo7l/tWd122g37zcTyEjRKdjKbl9tNnMfqQj56Y1KgKLSmU4f9?=
 =?iso-8859-1?Q?nOguPqPONV0xdipI46hah6/uX789o8vIzhedlTtQ6j8eT35Lq3XDtrTw1w?=
 =?iso-8859-1?Q?3ZwDcOR0n2/qe4WCqCGXe79X47izzUMo8uFELPfxghc46WzbkAsXMOXTJ9?=
 =?iso-8859-1?Q?A4SYeoWyODofGPsi5vW0X8Lhcc3PFARjQPIVxRWtM8QyEKWMOEt6gyr761?=
 =?iso-8859-1?Q?fznuLGdtFK53OAaf0j2KqXnerdh5ACSLdM6Gd3rCJ3sNFf0JKYDbMz2ZTw?=
 =?iso-8859-1?Q?9SY6QEBHqBWwwMyDV8ZEeWbkKWASefkGmXpP+jOGzVCgaSiEIOfa0r+mDr?=
 =?iso-8859-1?Q?UtJfbF1tJit98dWD6JEG6Mpc3ACzRbp8sBWEr5MebRMxhKCdqirF/nQLBo?=
 =?iso-8859-1?Q?sc0f+Ee+1s5JX1rssKK6+UQljLZp8kSWwtnt9MdxfFMLOX4gSM1rOoIWnQ?=
 =?iso-8859-1?Q?5GXAoxJjYabMiizjU+Djxt5k3tQrqQAcslm3KH59dejknUjB5lOkwvo7Z6?=
 =?iso-8859-1?Q?uKOQF8bsoVI9057Wzi9s4+31Wu8PNl8YzxnQeR306mcArQDFZhYVt5K40q?=
 =?iso-8859-1?Q?yN7e6me/31T0g+QfKslIed+bFsU9lIDesBNj0m79mTkKjzpVEJFRW4cSIF?=
 =?iso-8859-1?Q?WQv5xm5sWaVFdcsLcU3p5vJDVqDOBX0NJ8iVjYKQp8Otcz66rVx9VYOYER?=
 =?iso-8859-1?Q?wYRflcbhGkVqIvFnVav+XTtcZsyO9mQsqQeY3BkF3a+2/l1HAV80hA3Lhp?=
 =?iso-8859-1?Q?Qt7A3TsQX8eboS6Yn2HqKherNBdkAZUKWvMSUjyWyLc/FHlUxG4YSV61hK?=
 =?iso-8859-1?Q?a87E+GVKql8YtcjGRnBRjYU4lUp2D1PV1q4d6x4cJtAv0pAjlU4GMLjQob?=
 =?iso-8859-1?Q?jUPahfa9+nwUzN/FfLPhy7JB1iWST0PKEMoCclyjj+lAjwLVO2iQ9VRlA/?=
 =?iso-8859-1?Q?koDq7lmwqhZgiK59qSe1Pf+34VFpJmbUNkG4k++Bsm4YwqEwCL8hQGk5BO?=
 =?iso-8859-1?Q?m8OvtL94QKGuseXYTfKOpaDuwdvqNsWZBufqZmQttQraNQODznBGDTWNNS?=
 =?iso-8859-1?Q?88b4ESZV5Lw+4qTyuStlKBW/LwH4wK3oBYDnfq3hLPr/oPeGZn2a5GdwVi?=
 =?iso-8859-1?Q?Xza8CMHHeqfSQ2SfbBAo1XbKIf7qJ+Vaqp8e35FflvUx5W2+guDb/zx4aw?=
 =?iso-8859-1?Q?pi8AHg9sn1kkpDFeh005ICmm+fmMI4+MYJI5OGuf2h6MgG4XghBYB1lGDe?=
 =?iso-8859-1?Q?ZCFsfaK+9/KR/gd14jla22aoBtgOpuyhlzN/sQ8H38ybuyK4t50xM2l4kU?=
 =?iso-8859-1?Q?Z14WpuW5960bJO4e8NukucyTQCl44tLy5i55n7jPGfpJuVVpphGjNNufxj?=
 =?iso-8859-1?Q?NKC4oB5ntZjuItkSj2neAzZmXZHrWsa2zj?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce3cb049-4caa-4e84-046b-08daf53788b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 07:26:49.1604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rjQApkVRqgmddSRXYo18rjgYf1q9uduUJI/fUyMy8CF3Q6eMfjtKSR9tDaohR2u/+xXs6WaE1RT0ekOh5QFrFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > Gentle Reminder!
>=20
> Is the igt stuff merged, and did this pass the test?
>=20
With IGT alone the tests will fail without the kernel patch.
The tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2/shards-a=
ll.html?testfilter=3Dkms_async_flips) are passing with IGT and kernel patch=
.

Thanks and Regards,
Arun R Murthy
--------------------
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Monday, October 10, 2022 1:24 PM
> > > To: 'intel-gfx@lists.freedesktop.org'
> > > <intel-gfx@lists.freedesktop.org>
> > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > buffers
> > >
> > > Ville,
> > > 	Gentle reminder!
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > <intel-gfx@lists.freedesktop.org>
> > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > buffers
> > > >
> > > > If no comments, can anyone merge the patch!
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R
> > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > gfx@lists.freedesktop.org
> > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > buffers
> > > > >
> > > > > Gentle Reminder!
> > > > > Any comments?
> > > > >
> > > > > Thanks and Regards,
> > > > > Arun R Murthy
> > > > > --------------------
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > > Behalf Of Murthy, Arun R
> > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async
> > > > > > Flip on Linear buffers
> > > > > >
> > > > > > Gentle Reminder!
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > <arun.r.murthy@intel.com>
> > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > > buffers
> > > > > > >
> > > > > > > Starting from Gen12 Async Flip is supported on linear buffers=
.
> > > > > > > This patch enables support for async on linear buffer.
> > > > > > >
> > > > > > > UseCase: In Hybrid graphics, for hardware unsupported pixel
> > > > > > > formats it will be converted to linear memory and then compos=
ed.
> > > > > > >
> > > > > > > v2: Added use case
> > > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > > >
> > > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > ++++++++++++++
> > > > > > >  1 file changed, 14 insertions(+)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > intel_async_flip_check_hw(struct intel_atomic_state *state, s=
truct
> in
> > > > > > >  		 * this selectively if required.
> > > > > > >  		 */
> > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > +			/*
> > > > > > > +			 * FIXME: Async on Linear buffer is supported
> > > on ICL
> > > > > > > as
> > > > > > > +			 * but with additional alignment and fbc
> > > restrictions
> > > > > > > +			 * need to be taken care of. These aren't
> > > applicable
> > > > > > > for
> > > > > > > +			 * gen12+.
> > > > > > > +			 */
> > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > +					"[PLANE:%d:%s] Modifier
> > > does not
> > > > > > > support async flips\n",
> > > > > > > +					plane->base.base.id, plane-
> > > > > > > >base.name);
> > > > > > > +				return -EINVAL;
> > > > > > > +			}
> > > > > > > +
> > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > --
> > > > > > > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
