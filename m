Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A973F5B2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 09:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2B910E29E;
	Tue, 27 Jun 2023 07:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7687210E29E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 07:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687851011; x=1719387011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=prewm7hc3y+RBWGgd/J/Q7VAluClyUv3c74bUkQuoAg=;
 b=jrAuMFUKm1Ubd3qenWfB1VFBWYU0Q38XfAw8jRi4EPhJrdGZI0HSGSnT
 IiPtH/ntoCGlB3Q+KqAeJdZI5/2g/aGFwnAzH4wUc8iytI2/ssZE45a/0
 uVg310Eonrxas3NGYD5+Lh5ypWQD+Q3qmVmpygaLy/ibxFp4DuqO4eBv4
 AvPOES3Em9Iz7Ib1ZsJ2dUNfBrVo8v+2ZXUPjU5RqXom0douJC5VZ2aFf
 8gZ829T56vFHl4TDmjtxpLk3YlqnFxtVW3q1aFH2oNR8v4GmMCCXhdkf0
 UAze9XT9RzwfNn2tAGUJWuKbnnNqvZw/NR1Mvcx157Fpm9UjSJ6mToqQN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="346261186"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="346261186"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 00:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="719683648"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="719683648"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2023 00:30:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 00:30:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 00:30:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 00:30:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 27 Jun 2023 00:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCVXqyZsfCzm8+jMynB4iHlXhOcCSaid1YocP0wwPjj8qLAmw03PzU5YKc6FmbCYrbYHqHZbrPnDLzQyFPjusS1W1lifJ45vnxHRm1ZfJSEKj/FP9MdYUtd33rXWKa0f39X8Ph7XsjZAXc+2tHzkcMZ87g7SbgKatDUK95EAIMB0j/usI8vGowPKcazChlB8YFhplUROeyez2zG3Pkyw2xnIsymZ0SOnrTLdcXWUw559ig6z/XJmerCi0xAFNTlLrKUQ5FkETz3RbKCDQ5QtgL4EyUGC+Y1yNBoRHPKQ4/spRfD041JYJYJwj+vy5JJwgAMqBiTdW7BpJcF8shIeGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prewm7hc3y+RBWGgd/J/Q7VAluClyUv3c74bUkQuoAg=;
 b=AjJIPAKiLgraquoF1hKYU9garQjtSHAfp5i6c/two6GAhJ6YLcO7sNIcCCzqw//XnCHgBqs3zJy+7LwF9+s7+LxEDfhwMFE5hpb3lVTRu52gfdp/lBQRSNCEtkmbqueaqZi6diFoMB65SLsPWZOWHhd+pv9LKpHCWDA4MDa1xO2jrg9DPx8KCC7EYP77MDMwU6KlZ/jAC87UmXCbFPndH97MQn+pIqYAJOMrqkHCDXAOEhhQZW79XqfcaoCgpUG6fElchhW3Ct7T+kDxhAMG/MFlMYh99xPZ9vEXkDA2th+o64/EBJRaeRUI0j7ma5Dv50nrnKXJMoErVMBRE85VKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.24; Tue, 27 Jun 2023 07:30:06 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 07:30:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
Thread-Index: AQHZoyNujmGZwhcN7Uyfm+CRIutKoq+U9m4AgAFK3lCABszkgIABPOqQ
Date: Tue, 27 Jun 2023 07:30:05 +0000
Message-ID: <DM6PR11MB3177476669BDEAA7C0096C80BA27A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
 <871qi5fb19.fsf@intel.com>
 <DM6PR11MB31773E3293F8287557F918BEBA22A@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87h6quv1yq.fsf@intel.com>
In-Reply-To: <87h6quv1yq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH8PR11MB7118:EE_
x-ms-office365-filtering-correlation-id: a2413620-4cc1-424e-0fce-08db76e05400
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F3NEbjQlDQr+XyQ3MssAJ8cGJokuxzehT5MhpaSzsWcEKcQ7U60hO1yO1vO94IXIdUnUZC3ZTIP49npayplyaFmJd/0GWNJXrt9tOFkdDlep0LIYFYjtRdo+4ogLAsYNaTnWeNPVodfc2S/poB99tzUsnnErlsouDK13CbGBYkf/8QjBi7pKsvtbAxDaHMy0CDc3F7V8566E3d7qO264Fdk+84ANBiTH5MvgfCDkzjeK+3XlOdMyrO4d8CxmJXxzzWf2/SCdcDrp+l0jb6+DYH+iOa0LsUutCLKl8Uqgh2r8WFnCMLML/wJI3hX/DvZZxTJyTVwCpkbHzoSJ36xVn/T/KgaQsD2h34IZ9SBsgNFqY9GR4hQggPhXgou+YV/ao2AoaHb4yz5hMnofzPXt3nb0FiLlD0TpEYz5V5Q+S0rJ3yYVwjNtBGXaPl9FgGRFOVE0B0ksQrDYqx2V6oSASl50HYYkGldBq9Depn5oUlznRWYR1v2sbpxH0b1yfIl19xo+5rFlFbiVyuS+VVyziXoHjfv2Zb5xGkRivSmbiZBpP6aoayAgNlQUJ63fE8H3GhayJphdzrt2i/lcWT1atAdRzWrz9m2h0ZR9jMTDWg9FrzNqIzc6U/OnrvUY2RSS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199021)(478600001)(71200400001)(107886003)(83380400001)(33656002)(55016003)(7696005)(38100700002)(54906003)(110136005)(316002)(82960400001)(66476007)(122000001)(66556008)(66946007)(55236004)(9686003)(6506007)(53546011)(186003)(76116006)(4326008)(26005)(8936002)(8676002)(38070700005)(66446008)(64756008)(52536014)(5660300002)(2906002)(41300700001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RGdcYV7Sp+pL2a2Cjhh2navlQLLvuaJ2a33WUcR4rolic4Z2LSxr0KS3K0j4?=
 =?us-ascii?Q?MPID7h6ZuXyR9z3QLOPpjanNr8y4jl5xCWQ7CyiTUzq+fj+HzQbvQcGTNSFt?=
 =?us-ascii?Q?7Q5tp7/d6PlNYeKhyQ6+7jABTx2zLDmny3n7/lB0fH+eVXkaar5+B+spImMM?=
 =?us-ascii?Q?Ozsmu66QCgvbHkNNUigpb5o3e+xOsNQVM7Fvd7Kw4eBJiRI4Q6ZKApD4VY05?=
 =?us-ascii?Q?7drmnT0i8PfQJY3PKmJyNy0HOZGlx1lDbO31dzwHTXgTCm/4GPw7A4E702ks?=
 =?us-ascii?Q?pH4GwIwAQprwy2avlafg5TV3WLaIxt0RJDYAdLELkf112VWl3f071XbYNJZ7?=
 =?us-ascii?Q?SSlFTwqYsHULR5jh5tjbSKUX0acVr0rDQxWRAOaEe7zmwJGj5Nu43jjy8LtO?=
 =?us-ascii?Q?SQEmuXAntMofmUK1WU+Mz1+DHkSDuOfwBCDVJM2Zj8xprjP150P3CqI5k37x?=
 =?us-ascii?Q?eRNdLjLReXPySAYu51v2H4wJFOrrhHbk9IusjAwueg6TWNnr+IAR03omrHk9?=
 =?us-ascii?Q?zNgc38QL05cBt4qTaB+ZNgkOLt7BDuHJ3sckbsC1UIPWvbNuWcMAIakGdcBL?=
 =?us-ascii?Q?Z19LOg4GOiDoSfsx159XcmWjWLJQKfXXRVleDYRkkprwyoCmjFnWAI1UbEK6?=
 =?us-ascii?Q?9y/QCoVZQ8d8oJpIsj8HLO7WXv7GCkPZ9XO7n4UCF9T5DjQGFG8hJYmcn/iS?=
 =?us-ascii?Q?/LF7k/Q/dax9JyBYrB76/5SRfqfY8UDd6vGPCgNCa11eh8MPQ5u0FGdxRZL6?=
 =?us-ascii?Q?V2ad2Q82Z5V5SE8yK6yDOKON906K79LOjIDq2LD82dCeIIM5P5LSXvlbutDv?=
 =?us-ascii?Q?6AHCoKuNl1wad8BzMThaX2TdxTLI51adMbr9lGB30rnuM4cm/S2lbnBp1j7M?=
 =?us-ascii?Q?OSNOLQdyAT+N7/RxQGoRkiTbjeTNGSIAoEq3Ui0z4yNR8WgqjdmDqwb1g+gR?=
 =?us-ascii?Q?O/9/zkZGAk8qJiiWbB36aHm3vVODxoXoW1Ijbu3BGsgpqS5K5LdnjY8lvspB?=
 =?us-ascii?Q?Fw0q4PWyUfF5S0MIuHrE9QlSA5mJY+3Q9M3R81hmSiWBxOqihD76YpWxJN2/?=
 =?us-ascii?Q?lFnXbbnd9CbD86xrLlGVCwx/nheB5W1AJ0XSFQ4MVhWsNBOWKfsyIUd+5ZtZ?=
 =?us-ascii?Q?OmNfgSzRArRCoIBP8LM1OwgfJWns/yHJp0V21i2kUTcX2eBPU++OdmLbBFtE?=
 =?us-ascii?Q?m8qEl1s632xuCYudbF1UMIrD7ObbQAxmcJZIedfQHKSSChliXKR6euTDN7Kq?=
 =?us-ascii?Q?HZH1/rvVQifF1uFpeGpbJLxURYwzq/sz663HJOAXjIXA1vkTEIxeqxJkKRaY?=
 =?us-ascii?Q?P/aWkH6T+Kn3zoj/tTmrLU0TEYmmm4HGsQ9E5iaosSde+GP+G5p5rnqDsyb4?=
 =?us-ascii?Q?88Ujsh6dVirG1OV3I/IoThquHh+IGuGK3QFpEF4C0bjBUdqqNSFTm1J0pHwX?=
 =?us-ascii?Q?qdjpsetCVYsO5xXlV9dp/JZK9pfwPz6lsvnfohY6O+IPs0Y1Qr2Rxoo42oUW?=
 =?us-ascii?Q?BOMghYPFVbTHomEbdVvATVFc5DAqKwfhf7r2GSMXBnwibYHF7OveXB7fktwh?=
 =?us-ascii?Q?mBZdAboasefjah+22yfga2YUSbvnYcJPgJWnrpZX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2413620-4cc1-424e-0fce-08db76e05400
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2023 07:30:05.6946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5vDyfIFCsv6P5+Oq7Ikg5Z2MYTaG9Db014Qof7RHsYiKVCYC7i0RS5U1sGvtFHSfx3hUq2HD+2Mj2ykLdWx6Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, June 26, 2023 6:02 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>
> Subject: RE: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
>=20
> On Thu, 22 Jun 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Wednesday, June 21, 2023 2:27 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
> >> <mika.kahola@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> >> Subject: Re: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
> >>
> >> On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >> > As per the DP2.1 Spec support for UHBR13.5 is optional. Hence
> >> > removing the support for UHBR13.5
> >>
> >> That's just not a proper rationale. Please explain.
> >>
> > Programming for UHBR10 and UHBR20 is similar compared to UHBR13.5 As
> > of now we have validated 10Gbps and 20Gbps. The spec also points out
> > when 20Gbps is supported 13.5Gbps is optional so we have not
> validated/implemented the UHBR13.5 Now we have the DP2.1 compatible
> panel is market, expecting users can come up with UHBR13.5 not working.
> Hence removing the support for 13.5Gbps for now.
> > Maybe once we have support for UHBR13.5 in the driver we can enable
> this.
>=20
> What's missing?
>=20
Port clock programming, pll values differs.
This table has been in place but some corrections/recheck required.

Thanks and Regards,
Arun R Murthy
--------------------
