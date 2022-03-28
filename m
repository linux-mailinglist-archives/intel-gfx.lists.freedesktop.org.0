Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 232E54E911E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 11:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2141510EC2A;
	Mon, 28 Mar 2022 09:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A642610E164
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 09:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648459315; x=1679995315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=smfYWnPaGYpqUg7wN9ZS18tC5vlRuXQTfX1Clbbj3M0=;
 b=ivU7hs30OSJc2lCkHkwgmWBnzvSrIzZH/7w0pACiZxrn3mWfwMoepSdD
 Cxike4om936MKXAM6DrrG2a9aIjwWDSJH/clzQmXwSWkPfoWNqhosd6AM
 8qOM2qhCYNJg9ljH74SEELwj0XeDBhRv82C4s/UcodY2TCfboO7iqZDkU
 ZPwpL3JXtDNMz7CfYPDe7ugpfEU4NTCnfQGUTB0HUzR5d9OkfMeQ3bulF
 Y1Coh3XkyzWCB/P3cGRQoZwNroraTAVHwXCyUSKIbQdHsIcbJO3letGrI
 37YGEv7hBwuDLW0/jY2gcQkFzhlbKVoCxfFgf4cRqarnmoUT/kPQv8WiQ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="319656432"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="319656432"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="553852169"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 28 Mar 2022 02:21:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 02:21:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 28 Mar 2022 02:21:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 28 Mar 2022 02:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7Vord6neOwsqwlOWj27qHDnNgAhSkOnYu6ZO5l/WIiKpfmHG2i0LPeieb6EXI9ReB5nB1qiwnmBgzTgsdT8VteNPAtAr78Si5R4C+FDNRNIMfcoJHfBFrk2ABEE0MZvOgqidRR29BIOP1fi0SA1W0juVhsPy6MQff2hfHO/obuoKKcAQCB/u+ZCVOmxnjDxU/Y2fk+rRG7i7jUK4VpGyHuecp3QTXsKgPac/9v/qddwB/6UD2DHdHCZtmIa9o5hOVIXcV+LiTshY+Zza0S0AN8EKSSFkOMiNPTLGMXY6SyynfsTOFIRv/EIlQFLVGrurCYdTFD9D2/esAUeLsTYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jsdT60YNWhKLq33dqEQuG45uH8XkCvjtZiH4wq44we0=;
 b=JIWxlBEE0EnxKq82VcY4hzxgMuimivuMNXtnZXVOWb28PxJEqRit+k4nxJ7aafbfaOamvoi3I+XbqBMJ9ux7a8xTbN4mkJ6sBSTETyZaRQE2rtUc4n7EVzWN9PyH5GKajMZxv549+V/konEoTDMa4+Lwu7sm61t/0lLA6bqows5KzmGU3k1FeHn8AumqHWVvu5Q7YEYIG60oqRqZIOoOrhK5NrdHGoiKTdm2q2njcDbzf7wkB122owMAcJAzgFSWHTAcI9KdleZriSakBWv0da6Y/W2tE+dOTEB4AeoclMOLOv/E/wASi1rplTA7S7/QoMR8Nosl+zxiYwC59h5nng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by CY4PR11MB1285.namprd11.prod.outlook.com (2603:10b6:903:25::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Mon, 28 Mar
 2022 09:21:51 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::50:e76c:c3b9:44d3]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::50:e76c:c3b9:44d3%7]) with mapi id 15.20.5102.023; Mon, 28 Mar 2022
 09:21:50 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add RPL-S PCI IDs
Thread-Index: AQHYPaQHq69WfrUw50CO4DIoYipSgqzPrL1ggATiKCA=
Date: Mon, 28 Mar 2022 09:21:50 +0000
Message-ID: <PH7PR11MB581969EAC14DC035B37E4046DF1D9@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20220322040616.1078009-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <PH7PR11MB58199CBAFD5B9652F6357462DF1A9@PH7PR11MB5819.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB58199CBAFD5B9652F6357462DF1A9@PH7PR11MB5819.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15429053-5a40-4160-4c2a-08da109c6441
x-ms-traffictypediagnostic: CY4PR11MB1285:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB1285997A80A349E672EBDD5DDF1D9@CY4PR11MB1285.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /1kvtYz217ET4iYsMiyw7JZhuZaRCNjESVj0UYKZ6hLMhniYvVfCQU5suUTzHcTmMsvlfacVQOMmXLPNpM7JNZlfmdWbB0uy8BDOOripSu2fLqKNYzwyIunrpdmLoSEDPqSlCMhIxrQZTIEvZmdNGTqKxhSNITzFVGZn0+oN3qVV5l71rHg1WeKfYB3w3NfSbhGEzAlt5RQAn2itk+ocJzPgYGOW0BQ99qWGK+CIhq2GRJr1iiJAxINtZOK4BoGcWSFiwPuV/Jn9x0Wd/kOmpmy/jWPEOyhPWeNiD0uqtwGp4FgeVbgbHF3UWkpW8Pb0PbUBvu2jEP5seil5//Dp5Hcj6guPvO/cnzrehwP2I2GPRHrKM2w+fg2bnCvqm57cRUwUTLtqYu/xSZhVkjhONl5LC5C3Jne/+Pvl5aQlivW4gbK+oaHclMUDFWdj11PtR+gXxUbZ05Sreh51FdPpqotgArMv2059VoVy/W56YPfaqqPzSr/HLuGRPjYk2l0Y5T9IrheU3tMMh6Az2g5nIBq4Av0oJeIlsd+6qKDFLS428lLBmGnb7bA6O3Qx9tq2+XpLGJ7LFlgEnSy4i1tJJK7hUZi/4zmDRKHmdM8JFfrZoB787MC/9g/adaNMWRq4RFS6qQhwXPCPphIUcWPdNx6EHY+tCQr0IALoaH9skoVnds+vZHHNMVT/rSfH9RbAIs2T8Rc6Rv+1pht1Tnuv8A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6916009)(122000001)(54906003)(107886003)(316002)(38100700002)(86362001)(508600001)(55016003)(33656002)(8676002)(4326008)(76116006)(66476007)(66446008)(66946007)(66556008)(82960400001)(64756008)(186003)(26005)(71200400001)(83380400001)(7696005)(6506007)(53546011)(2906002)(8936002)(52536014)(9686003)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3h1OmKvTX+BbYTXAtYV/Opr4uFUmjV3Lxuvk5nbJUn0S7E8qZGb/iHpGVC+4?=
 =?us-ascii?Q?yDChqTK8hS7ybC3INc7LxGHcZaFWR6mmrUjHGifBFXHNjuRAPNm1vepGkLin?=
 =?us-ascii?Q?BpfiBhC3CdzSdZdaRI8J9yhizY1u5NzCIB1ieECZELHtBX40G09isDWqKq8V?=
 =?us-ascii?Q?2QkpNZHyHFRrAyKiBCIeSGVO3ZgxMwsnkGXvc69UUMBZycWIQoMpKigxHGYf?=
 =?us-ascii?Q?evIY1IOQ461cy7+YwF8YFFAJqF4YALG7x1iTL6/N2I7qWVpr/Jvani3EkmTF?=
 =?us-ascii?Q?v5kXN7GX5pUtGQqFbIpXuvFeJQeGnr3JDetmd13sKfsSnzG1WHLL4FwkCYqE?=
 =?us-ascii?Q?CNjIA3/vzUpCk3WDGL9Tu55DA2i9VepqKnWiu88kIp/34NWBSKZYWB7LHGCP?=
 =?us-ascii?Q?3MT2Fv/pbE1MGP9vynpIiZQ/kMqfxqKTNsUPtOWmKJPcercr88LSIAQDZcVx?=
 =?us-ascii?Q?AVVGH9yH+5Vu4aU252DecbDo2s33fgAa5FIF/MTlIsTuJ3eHfL+62I9SyTMS?=
 =?us-ascii?Q?Jwu5yulf+664qHbkOQW7rt2DFRH5MRvJOB6aMjSpbWhg+WkxkZHUe7q0Nv0k?=
 =?us-ascii?Q?724FQXQOLz93tBqxChyFtRYMcZL1P8H1Asuaiyt7PCU2VrLb/TcRrWGaLLpX?=
 =?us-ascii?Q?VjTzHyGJVvfeiGprdxiQZzhjuW0MD+c+rDNeUftjYYoWJCtOvxXpjUadM0Bk?=
 =?us-ascii?Q?FotDD+aH1rTmhIuqaGHBDalw0pMHsPdAMAsyfaNwx/a5W6wWkF1MMiTDYHzO?=
 =?us-ascii?Q?ebsLRVyeNIA5IWAeBpkWy4R1jYIjsONB4US/AhOFjn5W1kTVYJ3oaedM3JqL?=
 =?us-ascii?Q?9+t7Z3TefNSwOwwiYfg29/Lfla6TIwaZ5/fGjObWvoIahftYURjnKBN8nq1b?=
 =?us-ascii?Q?6BPvDzKUX55QbYuxTAJ2siL2E5g+2VaI7/6HQrEUmzzXWzmYcvxzzTgp+fLx?=
 =?us-ascii?Q?sxGttVmIde8PEwqvo6fdDBZhQfioTXmBhLnBwsr1eG6HVjs0lU2hbeFWVY3G?=
 =?us-ascii?Q?mhuKRwUfYNTv18y6jP2kRXp+cwV7BJXscqsyJiGyNKxZ/Sr+NF4c0UthKRcH?=
 =?us-ascii?Q?fwtTmjdOhStaZNJVNpMjxZc8UBtb1AHerU3cIwFbHMrzxLz4eWxTQrJ1RlAI?=
 =?us-ascii?Q?sE0VV3gdZzNAWe3alpuIxk/nJGyzkWdlbgfUoYhIwtXCuAyeYRcZ3O6jJF2A?=
 =?us-ascii?Q?P+6jvtbki6SXMv9kPZgdovnhc1PeJfrYEEL2+CNqgekP/gcidLsk9tqXNcEl?=
 =?us-ascii?Q?1N3F2TploveE5JuzDUAjOX7ozJ34FDLVBFDe/DBIOMAAAtqXIcvo+XlC3ZIj?=
 =?us-ascii?Q?iWOCW5QoXtpycm/mFMaUJDWy70asBqyutH/qT523INg3Fhpz4+d3qwmIGoIM?=
 =?us-ascii?Q?RrXkrvTc7ShcwSZkTBp4YYTTK5DTthntlnTeQT6F3yJ52cU8c/75JtZIvv4B?=
 =?us-ascii?Q?3FwcooBZRDInLflb38BQjV5nKXk2h1zIOFF8kisIAD0+itoAMTCSskj0Dd5c?=
 =?us-ascii?Q?d9AZi0jdM1RZV1dL3PR/CrEbrk0n8QNXOxkywgU1OB4o0oJHgF2FTraZy55H?=
 =?us-ascii?Q?8Xm5xcxvLCUzlW56AiQn1+3W9UXVmDxxApQ0zw3Mpr7s5ujD3BZ+RxmMZP8H?=
 =?us-ascii?Q?FNdfWBk5AeoRGCIyxIKnWT6BdMMvHyRbZ0yJ4bshLe8UG9N7u9J0EYNe+aVK?=
 =?us-ascii?Q?AE1zA3Shw8E50vfs9QyTVPRiOOOpcz8eoeZjH9qy0DaRYB3/oPQdqlIpyyFL?=
 =?us-ascii?Q?l/Mi3NniZHwsk5hmN5eDD6ePwOYxwZdsfKwBA0vehxiNTJVjX5PuaJ23dpUZ?=
x-ms-exchange-antispam-messagedata-1: ShCw3J6/4D142w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15429053-5a40-4160-4c2a-08da109c6441
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2022 09:21:50.8196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZeUH0xgcCh3uTyFRBmfstRkeqZG9FsIUw5RGEkG6ZjNI2XVbbnS4kbhcsQWOv29tk5vG0WAriCvI/9dq3girwsfHt0GcANepseIEhaN22UnL6fTzFTgB32yEdub7kWFiHNLIx2VH4BT3wqvpzuIGIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1285
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle reminder to review below change.

Thanks,
Tejas

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 25 March 2022 12:17
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Meena, Mahesh
> <Mahesh.Meena@intel.com>
> Subject: RE: [PATCH] drm/i915: Add RPL-S PCI IDs
>=20
> Can anyone please give review on this?
>=20
> Thanks,
> Tejas
>=20
> > -----Original Message-----
> > From: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Sent: 22 March 2022 09:36
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>
> > Subject: [PATCH] drm/i915: Add RPL-S PCI IDs
> >
> > Add couple of RPL-S device ids
> >
> > Bspec : 53655
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  include/drm/i915_pciids.h | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index
> > 3609f3254f24..638be9cddba4 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -679,7 +679,9 @@
> >  	INTEL_VGA_DEVICE(0xA782, info), \
> >  	INTEL_VGA_DEVICE(0xA783, info), \
> >  	INTEL_VGA_DEVICE(0xA788, info), \
> > -	INTEL_VGA_DEVICE(0xA789, info)
> > +	INTEL_VGA_DEVICE(0xA789, info), \
> > +	INTEL_VGA_DEVICE(0xA78A, info), \
> > +	INTEL_VGA_DEVICE(0xA78B, info)
> >
> >  /* DG2 */
> >  #define INTEL_DG2_G10_IDS(info) \
> > --
> > 2.34.1

