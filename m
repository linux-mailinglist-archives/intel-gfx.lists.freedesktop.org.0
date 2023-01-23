Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A2677531
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 07:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E0210E30A;
	Mon, 23 Jan 2023 06:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E5910E30A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 06:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674456245; x=1705992245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ODdz2TJrwKG/RJEwGhbCwsCiRzhB9xCBreA5IRX8hX0=;
 b=PWbkoQXdwa/l5Gn5s8ewyWuQOhtUWEHtZ3JFRi6rlG1sp71QCx7GZXAC
 /EQEPxXOaMXImDtge1nfLnuPwoNunl4JCgpWEjwi+Q7Iy9ESVjlERPrsg
 pFDhfgxvxrL3S1jgktWiWUgzq0q9HxSYpNTY1Nir98kkoXueoX3UZI6hu
 OMJwy7xxwpe2VYQf4MZCfJLQpY/1+GoBTDJSuxXaNufR6JKrI2VA8+/aR
 nXUdBcORLhzIA9iBZ1A3/ps2A3O0vxGDKltNGyeOIQMOpwnx1vBFtzFqk
 kZfc6jsYVwG0KS+bZ/f3UTTBQQyClDchRnaGDyXCjv1pNitH+fSwl7Xa6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="309555960"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="309555960"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 22:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835361127"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="835361127"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 22 Jan 2023 22:44:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 22 Jan 2023 22:44:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 22 Jan 2023 22:44:03 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 22 Jan 2023 22:44:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LX9EcmyxivnLsyWt32p53rOEu7AXYsk9fCF4DGpZSHlaNXRUJ7vPHEkxwI8iLLGB7gRUdVifcz0hPJFDTAEs2BKxtB+QGf56GZd09b1NCU0eihBC9IdtaLVHTayg6ABUkmoyD1uxXD+b7/WSrWZJkd/UQjWR6qoYyYXQZrWn11xja8wbYXuWbx/YEViLS3MLUKcj9g0pDdd0Io6iVInZTfa26ZY19pgyLbSm216TPtidDqNNI5fM+LK97w/wL98o2688j06YKS9OC3aTdR1mgcrUUE4puddgUT1wTo9GrKJJZeTBu6aE+DcuJ+Nblb29YWMPNO1mxmJzEg3vASmkqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7zqG9BmJeZOLeFBHEc79sjRRXE6R0MXnMzPLxzo/33c=;
 b=YP2PVlQ7u31rr0GcXjrz/QOMNtstmFOM4t2TRzS7d40H06Dsr7N1E8ek8M1cvg3zeigh+2WAIN8WONOnAnFULjAlVM8RHc/4LtqRNfma5JaT12Nc7a1wMZFcXkFoRga2SnBtLul+P4wYT0xNuW3NUkX2OVg9wnBbbAZrF/gatCK4aKJU/C4fOfIUtPF2EacnMzv4pWOidw7FP9B2FmLdrBG3uV6dKKZ/DlSnghygrCZPXIxYay0WNmdrZ8FKteWpYt0p988PS6rgWTb9E7G2kURBxOdkzy/xe4lZOeelDHG971DWibhShzG1XIEP3203mzOEY9yQ3futoGzcZDMU0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SA0PR11MB4670.namprd11.prod.outlook.com (2603:10b6:806:9a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Mon, 23 Jan 2023 06:44:00 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.6002.028; Mon, 23 Jan 2023
 06:44:00 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIB5ErxAgAZdxOCACU3HEA==
Date: Mon, 23 Jan 2023 06:43:59 +0000
Message-ID: <DM6PR11MB31779DE7C32B77798771CD74BAC89@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
 <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SA0PR11MB4670:EE_
x-ms-office365-filtering-correlation-id: 01233984-a204-4745-4877-08dafd0d357c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1D81ZMGxyXaO72CrnsjBUhgwIuMFKDnprwiDRcx4eVu/jF0/aw6Nd/gQZSBcxyZxEUwHK6fZaBBm5QFvUuvooQ/zkDESl5xpx//RKkBwiSwRk7Fud3LNgRLMQoYCE4zcIxvScvzp8OgsXJ5hP15uQcr9IXQZ3Pom5v6OkfGzA9x2pGuKadUD2OytA+JNVgVmszhc2qUShrWAcfgft/yh2oepKT3BJxWGOTRcN8uepkqlGzD8KU2GxeCyDSQRhb67aUNJLNVVqHvH4hRWUnUe4XrJ+tpl1M4Ami5RcL9qDAy90NuqXpjp2Lki5eENcTA192oMjpQ2aX015wVjIgMv8uZHekqXC6acuxzkRWtNF06UelZNo1gKi43hYTWD/FCtUMiK1fA41lAHYY9KypEuNFxEJYpa7Vt6XBeTlppT+GOLBi7nbssb0aaz5w5Kpq6QAab8zqa8SoGXZeWGGK9356sSJo1MqJbysKqYVu/YpbrCiJszATDNXR1O4sq3URGAUVgqS8aQURHwXdMHAckxGIcrbmb9SbK+12N3NgouZylsxgCT9618zCpLF9ZP4Fm2YEus7Y5E2o5RVizQ40Zb5BxmiV00IoOqRwJw+4W0d3RM34d+micEIS9zIBwk0ZzwVA/OnKahjG/tZsjV5lKG1MmwxZiD4AJuwen9o8ot8+wvPAIydxfoQLVOguzQrg45fuuDKNvZW09YptXFFEV9d5mti9m0/tPeisB3SGGaODI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199015)(122000001)(38100700002)(82960400001)(33656002)(55016003)(86362001)(478600001)(316002)(38070700005)(54906003)(64756008)(66446008)(8676002)(76116006)(66946007)(66556008)(6916009)(4326008)(66476007)(66574015)(7696005)(71200400001)(55236004)(53546011)(2906002)(6506007)(8936002)(9686003)(52536014)(186003)(41300700001)(26005)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SZF+SDNgBRSCEeDhrzK2RdaKPc7/bpfpVYVOVw7hbg15olV05TwUkCZJ+x?=
 =?iso-8859-1?Q?/JHKrkkRJWHL41XXvx/yFkjhAhEzCo5GNiPPliGafKohz78D22PEsXbs5n?=
 =?iso-8859-1?Q?vyNlIyJdIqTY2TywKK5wOi0fIQnljv6+lz70KjCDyDOyHHjwVNezFdtpCb?=
 =?iso-8859-1?Q?0MvXyHzAdq7xNEoWLije4xl1mWiTIbNkIWinRKPAzjbDY18+nHEiM94Ouy?=
 =?iso-8859-1?Q?IL1ZNvMJta5YAvdSOXIbfSeL9EQulWao1rcAe6vLAtWLwT0XsWHW3djhU8?=
 =?iso-8859-1?Q?6ppVo/8QE8bFLoSsbp2tR4m6sfOyux5eds4IhtieAV6XLHE4QtqxcrJIHZ?=
 =?iso-8859-1?Q?Z4iRWA/RkGiyCqaZt1ZEODEYPPMxUCnCNAta7T2KDXftOMb4bOYDfZ4bmk?=
 =?iso-8859-1?Q?CFegTrC8kg1CppmIj+XKQQPZGK5ekxKLz4fJ4qsj9I/3/wqr/3cPSRPsQf?=
 =?iso-8859-1?Q?mBpibWmp6/HwyK9pCMC3//EiZPq2aO/qrbYif8/1XDf0zBLwGEjWOG6ZaD?=
 =?iso-8859-1?Q?BXBdivVQ7v24Mu/sYZAoV3mK+AdL2gFFQChKAqEyVEgz32ja02f3cwL1va?=
 =?iso-8859-1?Q?Se+ilsXqN/LWpntfW50INNbbKuUCjYQBN5O09szlSiEVkNzoXpIbvS4u9+?=
 =?iso-8859-1?Q?7wgnoCG1sq17WZI7dzPkL7MefJLlQDlrEvBqq+UMfiMsKnhYXB6Yt01ulZ?=
 =?iso-8859-1?Q?6BfqDCRmJl9qxLe/hO3B8bmKnGF8hyIrBGrW7TzAlGsEbpzm3HozllHj2T?=
 =?iso-8859-1?Q?UHkuBSj4kIHo4Fad7JV1cY8tsEKxO2gsG34isgeAE8ydjjsstEigPuLzVL?=
 =?iso-8859-1?Q?3ipASRC80lt/Pp7UgFQ60Hx3wFFHDu4cD5YG2VpKdMRozht8dKxIIaBk82?=
 =?iso-8859-1?Q?DrErETqT/hgbEi9/Pcil86U2vxVW5N4ZS3qFi1mCpg5EoCORlz25/5XfoV?=
 =?iso-8859-1?Q?aPgZhxjelJuut0Ezemxvr1XU3/5KMuDOuhCF/pLelrjSSGMpGE7VFUOWFL?=
 =?iso-8859-1?Q?eXGyuwa56gk1pcZrxLmobVFXJlYmUIKvb7vXS0d95cigJTMZN+rAOcFqxs?=
 =?iso-8859-1?Q?ax0hsLV7HiU6qADWfAaNIYL4Q7Vad4cpLMGEYbXNmX9S1Zg+jZ3/v/rD9x?=
 =?iso-8859-1?Q?RXMGW8l2R4EtJgGgmMIxyqQV0d7julnYKMW0tpKzIuRUnSuOUNEdIJ2VwV?=
 =?iso-8859-1?Q?wlfhO1Jr+cR5iuYyB8yMpmi33qfJdfkjDcTERpf5ZPB39bvOR7eIJ7wfz9?=
 =?iso-8859-1?Q?51hknC05PmRK3EdjHej2w0MY9OV+929KJwZZH2P0D2Gv2uAv61N+7OMVxr?=
 =?iso-8859-1?Q?XxHe91pui0HsvQJqAwHTONLScoR2CDIoQmeTiLRqXFjdvmzVTYCFjEvkbR?=
 =?iso-8859-1?Q?Xv7HKfuYpTGwtWflC/HA0y0JwMEMkIJO8vF1G0MKQyoLkk3CK9pZr8wr7E?=
 =?iso-8859-1?Q?LFH5xyTrQREhQyRvSz3BrM3SeQWk7gzLRXfb6/JTPGf+RUgeWk01HTS6Nh?=
 =?iso-8859-1?Q?hoIdsOnrzqhiopb5g578Yz0xf4BrFGfSYbCsXJJSZAWWzDBLfL+NJpibE6?=
 =?iso-8859-1?Q?9QlAUS3Q/zRXy4ocIVuihJv4HVfcUP45Ou6Yoof0UNOT1yvy3eVAHwnHhP?=
 =?iso-8859-1?Q?RrUv5Kg8VRb7+0aOc9lsx8Cm6U5uXjgdze?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01233984-a204-4745-4877-08dafd0d357c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 06:43:59.9773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d87Y3BsVrFhUq8EVF3JRUO7HqjAXuyqJmThLkIrEO2InPC38aKEZqMxallWXtkWa24qrV9Zu0jykLUrvKGlaHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4670
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

Any review comments on this. Gentle Reminder!

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Tuesday, January 17, 2023 2:09 PM
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> Cc: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>;
> Syrjala, Ville <ville.syrjala@intel.com>
> Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> Gentle Reminder!
>=20
> Thanks and Regards,
> Arun R Murthy
> -------------------
>=20
> > -----Original Message-----
> > From: Murthy, Arun R
> > Sent: Friday, January 13, 2023 12:57 PM
> > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > <ville.syrjala@intel.com>
> > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > Linear buffers
> >
> > > On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > > > Gentle Reminder!
> > >
> > > Is the igt stuff merged, and did this pass the test?
> > >
> > With IGT alone the tests will fail without the kernel patch.
> > The
> > tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2/shards-
> > all.html?testfilter=3Dkms_async_flips) are passing with IGT and kernel =
patch.
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R
> > > > > Sent: Monday, October 10, 2022 1:24 PM
> > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > <intel-gfx@lists.freedesktop.org>
> > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > buffers
> > > > >
> > > > > Ville,
> > > > > 	Gentle reminder!
> > > > >
> > > > > Thanks and Regards,
> > > > > Arun R Murthy
> > > > > --------------------
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Murthy, Arun R
> > > > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > buffers
> > > > > >
> > > > > > If no comments, can anyone merge the patch!
> > > > > >
> > > > > > Thanks and Regards,
> > > > > > Arun R Murthy
> > > > > > --------------------
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Murthy, Arun R
> > > > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > > > gfx@lists.freedesktop.org
> > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > Linear buffers
> > > > > > >
> > > > > > > Gentle Reminder!
> > > > > > > Any comments?
> > > > > > >
> > > > > > > Thanks and Regards,
> > > > > > > Arun R Murthy
> > > > > > > --------------------
> > > > > > >
> > > > > > > > -----Original Message-----
> > > > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org>
> > > > > > > > On Behalf Of Murthy, Arun R
> > > > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async
> > > > > > > > Flip on Linear buffers
> > > > > > > >
> > > > > > > > Gentle Reminder!
> > > > > > > >
> > > > > > > > > -----Original Message-----
> > > > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > Linear buffers
> > > > > > > > >
> > > > > > > > > Starting from Gen12 Async Flip is supported on linear buf=
fers.
> > > > > > > > > This patch enables support for async on linear buffer.
> > > > > > > > >
> > > > > > > > > UseCase: In Hybrid graphics, for hardware unsupported
> > > > > > > > > pixel formats it will be converted to linear memory and
> > > > > > > > > then
> > composed.
> > > > > > > > >
> > > > > > > > > v2: Added use case
> > > > > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > > > > >
> > > > > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > > > ++++++++++++++
> > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > >
> > > > > > > > > diff --git
> > > > > > > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > > > intel_async_flip_check_hw(struct intel_atomic_state
> > > > > > > > > *state, struct
> > > in
> > > > > > > > >  		 * this selectively if required.
> > > > > > > > >  		 */
> > > > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > > > +			/*
> > > > > > > > > +			 * FIXME: Async on Linear buffer is supported
> > > > > on ICL
> > > > > > > > > as
> > > > > > > > > +			 * but with additional alignment and fbc
> > > > > restrictions
> > > > > > > > > +			 * need to be taken care of. These aren't
> > > > > applicable
> > > > > > > > > for
> > > > > > > > > +			 * gen12+.
> > > > > > > > > +			 */
> > > > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > > > +					"[PLANE:%d:%s] Modifier
> > > > > does not
> > > > > > > > > support async flips\n",
> > > > > > > > > +					plane->base.base.id, plane-
> > > > > > > > > >base.name);
> > > > > > > > > +				return -EINVAL;
> > > > > > > > > +			}
> > > > > > > > > +
> > > > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > > > --
> > > > > > > > > 2.25.1
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
