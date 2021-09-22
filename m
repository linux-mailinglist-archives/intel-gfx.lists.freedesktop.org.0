Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 846854146F8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 12:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51326EB72;
	Wed, 22 Sep 2021 10:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0EA6EB72
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 10:50:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223212311"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="223212311"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:50:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="436188888"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 22 Sep 2021 03:50:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 03:50:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 03:50:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 03:50:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ukk/nOYwqeg719VzzoJ2SSmcTxFLXzHc3HnMSwBzYLMlPkcJjss91SQrXrGSpHaawxI4uPKagm1EQa5krr3L1oyfyHXnBZAvFY36P6llGlKtjpnCiml0bHmhypXwZTdhdXahtsqYPQOpaj3UeEjYfDiqQJdM38VjWlnTZa7ufAaTE8tEaPk1qKD+9ct9rJ5bLgRryO99SGVYAO49uq9SLJW92r4cDiXnlHfk0qgI3jiN/VgtlVe1qdu+CKM5F6hoGObhXOQa+v3NwcPrf0fROrQKqsAKB4bVG7ZRLiPaZx/v3vgDhAg6z5sCvEQsBgwZ9DGet20vHkmGo4xhRgtpZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=U1Pfr9yxkRzaqUwC+gmUL3PuL0MhCOwIB3bSFldWRcc=;
 b=BbVz0G1kNgYLrikJS/wD0d2ztP8K2qhoLPtm8C0wTRtPpbf0S1PxiAcYOnjWyc0QYFaanCtUUEUtzsME3gXhLmv9OxDyKju/B6UdpjiHKy6D5AIsFTh35pakCUOsqOvMXq0WrftrUIS32eZ35XzPgmCR9/WiN30dH3Xd77pRLuuIyLGdgJlLt3UepwkkezPkGEZ8Qq+K6cdOXxUL/XYuh6bPpIn+LbaJHbEDAQJ7npI1UMAUAkyFvI4wE5k9rBAEKhdfZnlzADzWrzSXFoRSdxBUsjchvlFj/6WkBTNgoPxw2I0TNWe1LCCqXLUOIhHLvnqo2Ex0n4dr456W7QLhSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U1Pfr9yxkRzaqUwC+gmUL3PuL0MhCOwIB3bSFldWRcc=;
 b=G+r9ikseKEHZxtWFFlzv3bdforhXtkiXgR1K100EF4PwqRQa+esT6N7ebd1KDzNWCAqEZ52lIROOxw+uRU8rMcYQkQ34MgnwcCIezc/sp7iJoEtaW8Ja23FFP78NwpCb1so7KMNrC7N+BjWJJ7VWsFyvn951a/KVVSalTrUJDC0=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2575.namprd11.prod.outlook.com (2603:10b6:805:57::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.18; Wed, 22 Sep
 2021 10:49:54 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::d171:4360:5eec:8c82]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::d171:4360:5eec:8c82%6]) with mapi id 15.20.4523.019; Wed, 22 Sep 2021
 10:49:53 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>, "Pandey, Hariom"
 <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZ0sW59N9gqV+40m1IXOqKgMck6uPoZGAgAFkdeCAACAYAIAAAGkwgAABwLCABdNDcIACOmBAgBc6U3A=
Date: Wed, 22 Sep 2021 10:49:53 +0000
Message-ID: <SN6PR11MB34212AF3B6F32CC866E53D66DFA29@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YS+EuzTIv5YWfzIL@intel.com>
 <SN6PR11MB3421B0900C9A9770B19367F5DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YTDKrJTd6VnV+08K@intel.com>
 <SN6PR11MB3421DB31729DE8DA0458D175DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB34212E5091E6614477C07C00DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB3421A8F621EA25C89AFD414DDFD29@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB34216D527BEC25164B6A59C2DFD39@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB34216D527BEC25164B6A59C2DFD39@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0fd09b9-1c98-426e-af4c-08d97db6b5ea
x-ms-traffictypediagnostic: SN6PR11MB2575:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2575EF6BDB1FD976E432A708DFA29@SN6PR11MB2575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ENIrTQqgcGQ2XWbj+XXIbLUhMIcGf+TcsunR6/TWJPUg2qXZjUnduDZkzCuGboihIZQvq8FekaULWrN0K+2I1jAUPMf5+80AvYPf+R7K6qqEGhfIYq1FYkqGMy4UAnXRp+l/R3zbaD9dQWmcPhvauBk6uSLE07aucvUMm4xEKN1uDZjCK1fosink/AFEta2460X2OZgtyziQZiRLMTZ2LojDGJEdwk8digW8wvDYniF+wuwSZp+7jhGD+bu7w+98Q1vR2BAqKx9uIYJ7KwO7W6IJTopL2qUKIh67AlrTXrI6A4KT8rEHhpCMOdBr+7JW5LxgxeKgt8lh4k80Io7wPDfcf41Vm3ilK9N1ikg4YP9sQBPfqYuSZavfh5x4tDS6/xLOkRd5WUVrP3w3d8Q1F07YT8/wUoJFWTedS/bcMzd3Uz8ESt5CV93Z4g26FhzcpDD8GLYx2uHZeG+pu0mbCu+PaRj3LkLIEZX7Sn/mrTEtmuGELW5U2hhScj4tfsHs475i+vaP5bzbCMegkgV28FSRlRJJRjUs+ubxyMFKf9xfxYqj43I01ltVd0z2UwhYy+K3L2s40+XiCXKZIJDSLZ+KpQufw8T0n+is+BeKCfW0VOmUV4TH+XvuJscFpkjr1Pfzh/2SC5+NuxRMNu/SJ9GUgFAVEj3Dq8GI94lqFBuSF6FRae0jcaCijQW12GP4meICFxrTCK6UfA2huB3NEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(54906003)(966005)(122000001)(9686003)(86362001)(55016002)(66946007)(64756008)(66476007)(52536014)(66446008)(66556008)(7696005)(26005)(508600001)(186003)(53546011)(71200400001)(6916009)(38100700002)(83380400001)(8676002)(6506007)(8936002)(66574015)(4326008)(33656002)(38070700005)(5660300002)(2906002)(316002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4hCWMjQPGhX16dgjGDZ1eHuJWcNAEnYOTGnNLHIk8vCVsbEjGy0gF2KsNU?=
 =?iso-8859-1?Q?HcQ25Z1vYpeN9mWK+UFTyEo362PMGsyVgAAsbeoHrt675JCOiW2in2FLp0?=
 =?iso-8859-1?Q?0DEkZTfUmIHVqZCwkLrZxM6vk0oghNoz1sJBM/W/8CND4wMTWMN6uDQQU7?=
 =?iso-8859-1?Q?oawHlx/5RjM5+J3zFMOUHQeNonqq99t2QjjoDVqE4OwK0MbVQv8061mUhX?=
 =?iso-8859-1?Q?oD0P2LAI/d9ujHVA1BPceul7qa/xYYmjfQrPsT+jZctvL4ggrsJ55j1gaQ?=
 =?iso-8859-1?Q?YFPGJOckYiz0vfezEyNTT9y4hmzi6pP/qjHW1wR0me98Y2775HWmfHRFwS?=
 =?iso-8859-1?Q?HQvNtNU0IXTuq7gb72G8hdzw54SBpO8kGU+baCcS91aUXDGHH2EdjRJqCC?=
 =?iso-8859-1?Q?9+Wo5nS83FQgkpRO/vHJNvOZQxAZc/HF5V6xkumpHGfokl/t6+sHSfknK9?=
 =?iso-8859-1?Q?x+MxnI2SMiDD3TjktcOjbuNx4gYWleYQxd9Z29ntTEh/rAhY2qMmXEwUkP?=
 =?iso-8859-1?Q?9JLbONFEcdS+Skn9sNfGAyr8W+/78nzQEIE78CtzaCZqCPNdWWsJQLpAG1?=
 =?iso-8859-1?Q?4mWCidG892GBy0U52D9bbcPgVDozLxED/j0kV8gUyLPv8qLluZ47wuNXLx?=
 =?iso-8859-1?Q?o6OT5bRGGON3kLmxqs4z2q3hj59IDlez7EzZGLQuSnLWmLjGOWTiid+luA?=
 =?iso-8859-1?Q?Uud5nqgJCZe4Fl8mBNNCP5aNsCyrFJxSgLz7LMZe1AKTX4CXfMdP4DT4pB?=
 =?iso-8859-1?Q?6TlVVg6GVrxevBzWKIgYSG8a9VwO9Lh3Hfey2jUwm7MSbQrKfVNFgvSA4X?=
 =?iso-8859-1?Q?Tf+EtnJylv2QxD3HIjVddnGeAzqUxO/e5g1jBJOLK+bwQ2hqqyEMFeaTM+?=
 =?iso-8859-1?Q?Z7Yhw8VYplp6LXQ0F4zaF/1VyD5ePYAfKibEbUko/SgsSRo9wPR6mw4OHn?=
 =?iso-8859-1?Q?dJw/r3amqpVOVX5h/7RylFwY+gjf0NJd5trkqrLvXIBBMqCQW41M+yFK/T?=
 =?iso-8859-1?Q?T9zRVK58LJuBEuCT8Kxjo6iM4m//AiI8Rr8zrJx5Yc9GR7UwmDMVp4uEWe?=
 =?iso-8859-1?Q?2gA3134RXOBr/RstQ71sS9FGiIzI/LUeJ6SffPGHDSOCg59gdBaSWuh7aO?=
 =?iso-8859-1?Q?m2VLjjEt9PfFkQyYPMbYlqt0ei4D5Rxi7hwh4Z3TmiqgAqE1rAt+uuFFhl?=
 =?iso-8859-1?Q?cW1xaoHiC+nfJOnaL2l9z28NGxoA9a0bddRx1wuD9feF2Q14fVB1Cn5QxR?=
 =?iso-8859-1?Q?+bHXm7q1iHnR04KerTehmNDtarRN8ua3+IFbjwT/6V2ZZ8D/XEpB1ppD+y?=
 =?iso-8859-1?Q?lJorKV9hLWTfbQCHCWhrabAHl4g+ix7lLn1PY5P8QVxYbk/913mb79Fx7m?=
 =?iso-8859-1?Q?JWe2gMyA5I?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0fd09b9-1c98-426e-af4c-08d97db6b5ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2021 10:49:53.8242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DZUpOUkXQ0EnbUraR8Fey7y+ZE2JujXDNF79j2+3a82Eh94NZvxTFqTsC4DV0IN+AwT1SpkP+O95dvO5446ENvgYtqhn93GZnl3RQR/x0U7T22D05ylKD+We70/YWwMMJHQaifRml8ZrUa/qFAk8Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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

Hi Ville,

Can you please help with reviewing below patch?

Thanks,
Tejas
> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 07 September 2021 21:42
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> Cc: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>; =
Souza,
> Jose <jose.souza@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>
> Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
>=20
> Hi Ville,
>=20
> I have posted single patch for HDR mode here
> https://patchwork.freedesktop.org/series/94428/#rev1 . Please review and
> ack. I will post " drm/i915/gen11: Disable cursor clock gating in HDR mod=
e "
> on top of that patch.
>=20
> Thanks,
> Tejas
>=20
> > -----Original Message-----
> > From: Surendrakumar Upadhyay, TejaskumarX
> > Sent: 06 September 2021 11:41
> > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > Cc: 'intel-gfx@lists.freedesktop.org'
> > <intel-gfx@lists.freedesktop.org>; Souza, Jose <jose.souza@intel.com>;
> > Pandey, Hariom <hariom.pandey@intel.com>
> > Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > clock gating in HDR mode
> >
> > Hi Ville/Jose,
> >
> > I hope you both discussed as in next version I will incorporate all
> > changes as per Ville's final suggestion. Please let me know if you guys=
 think
> otherwise.
> >
> > Thanks,
> > Tejas
> >
> > > -----Original Message-----
> > > From: Surendrakumar Upadhyay, TejaskumarX
> > > Sent: 02 September 2021 18:37
> > > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > > Cc: 'intel-gfx@lists.freedesktop.org'
> > > <intel-gfx@lists.freedesktop.org>; Souza, Jose
> > > <jose.souza@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>
> > > Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > clock gating in HDR mode
> > >
> > > + Hariom
> > >
> > > > -----Original Message-----
> > > > From: Surendrakumar Upadhyay, TejaskumarX
> > > > Sent: 02 September 2021 18:34
> > > > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Souza, Jose
> > > > <jose.souza@intel.com>
> > > > Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > > clock gating in HDR mode
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: 02 September 2021 18:29
> > > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable
> > > > > cursor clock gating in HDR mode
> > > > >
> > > > > On Thu, Sep 02, 2021 at 11:07:06AM +0000, Surendrakumar
> > > > > Upadhyay, TejaskumarX wrote:
> > > > > >
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > Sent: 01 September 2021 19:19
> > > > > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable
> > > > > > > cursor clock gating in HDR mode
> > > > > > >
> > > > > > > On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrot=
e:
> > > > > > > > Display underrun in HDR mode when cursor is enabled.
> > > > > > > > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h=
.
> > > > > > > > As per W/A 1604331009, Disable cursor clock gating in HDR
> mode.
> > > > > > > >
> > > > > > > > Bspec : 33451
> > > > > > > >
> > > > > > > > Changes since V3:
> > > > > > > > 	- Disable WA when not in HDR mode or cursor plane not
> > > active - Ville
> > > > > > > > 	- Extract required args from crtc_state - Ville
> > > > > > > > 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> > > > > > > > 	- Tested with HDR video as well full setmode, WA applies
> > > > > > > > and
> > > > > > > disables
> > > > > > > > Changes since V2:
> > > > > > > >         - Made it general gen11 WA
> > > > > > > >         - Removed WA needed check
> > > > > > > >         - Added cursor plane active check
> > > > > > > >         - Once WA enable, software will not disable Changes=
 since
> V1:
> > > > > > > >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> > > > > > > >
> > > > > > > > Cc: Souza Jose <jose.souza@intel.com>
> > > > > > > > Signed-off-by: Tejas Upadhyay
> > > > > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 27
> > > > > ++++++++++++++++++++
> > > > > > > >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> > > > > > > >  2 files changed, 32 insertions(+)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > index 6be1b31af07b..e1ea03b918df 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > @@ -358,6 +358,13 @@ static void intel_update_czclk(struct
> > > > > > > drm_i915_private *dev_priv)
> > > > > > > >  		dev_priv->czclk_freq);
> > > > > > > >  }
> > > > > > > >
> > > > > > > > +static bool
> > > > > > > > +is_hdr_mode(const struct intel_crtc_state *crtc_state) {
> > > > > > > > +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask(=
) |
> > > > > > > > +		BIT(PLANE_CURSOR))) =3D=3D 0; }
> > > > > > >
> > > > > > > Please use this in bdw_set_pipemisc() as well. This could be
> > > > > > > a separate prep patch actually.
> > > > > > >
> > > > > > > > +
> > > > > > > >  /* WA Display #0827: Gen9:all */  static void
> > > > > > > > skl_wa_827(struct drm_i915_private *dev_priv, enum pipe
> > > > > > > > pipe, bool
> > > > > > > > enable) @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct
> > > > > > > drm_i915_private *dev_priv, enum pipe pipe,
> > > > > > > >  		               intel_de_read(dev_priv,
> > > > > > > > CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);  }
> > > > > > > >
> > > > > > > > +/* Wa_1604331009:icl,jsl,ehl */
> > > > > > > > +	static void
> > > > > > > > +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc=
_state)
> {
> > > > > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uap=
i.crtc);
> > > > > > > > +	struct drm_i915_private *dev_priv =3D
> > > > > > > > +to_i915(crtc->base.dev);
> > > > > > > > +
> > > > > > > > +	if (is_hdr_mode(crtc_state) &&
> > > > > > > > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> > > > > > > > +	    IS_GEN(dev_priv, 11))
> > > > > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> > > > >pipe),
> > > > > > > > +			     CURSOR_GATING_DIS,
> > > > CURSOR_GATING_DIS);
> > > > > > > > +	else
> > > > > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> > > > >pipe),
> > > > > > > > +			     CURSOR_GATING_DIS, 0); }
> > > > > > > > +
> > > > > > > >  static bool
> > > > > > > >  is_trans_port_sync_slave(const struct intel_crtc_state
> > > > > > > > *crtc_state) { @@ -2939,6 +2963,9 @@ static void
> > > > > > > > intel_pre_plane_update(struct intel_atomic_state *state,
> > > > > > > >  	    needs_scalerclk_wa(new_crtc_state))
> > > > > > > >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> > > > > > > >
> > > > > > > > +	/* Wa_1604331009:icl,jsl,ehl */
> > > > > > > > +	icl_wa_cursorclkgating(new_crtc_state);
> > > > > > >
> > > > > > > This looks a bit wrong. We shouldn't turn the clock gating
> > > > > > > back on until after HDR mode has been disabled.
> > > > > > >
> > > > > > > So please model this after skl_wa_827() and
> > > > > > > icl_wa_scalerclkgating() so that
> > > > > > > a) the ordering is correct, and b) the code between all
> > > > > > > three w/as looks consistent.
> > > > > >
> > > > > > I did not get what you are suggesting here. Can you please put
> psudo?
> > > > > > Currently as far as I see icl_wa_cursorclkgating is already
> > > > > > modelled after
> > > > > skl_wa_827() and icl_wa_scalerclkgating(). Are referring same Or
> > > > > something else?
> > > > >
> > > > > It should look something like:
> > > > >
> > > > > intel_pre_plane_update()
> > > > > {
> > > > > 	if (!needs_cursorclk_wa(old_crtc_state) &&
> > > > > 	    needs_cursorclk_wa(new_crtc_state))
> > > > > 		icl_wa_cursorclkgating(..., true); }
> > > > >
> > > > > intel_post_plane_update()
> > > > > {
> > > > > 	if (needs_cursorclk_wa(old_crtc_state) &&
> > > > > 	    !needs_cursorclk_wa(new_crtc_state))
> > > > > 		icl_wa_cursorclkgating(..., false); }
> > > > >
> > > >
> > > > Tejas : In the previous version it was done this way only. But
> > > > after review comments from Jose I had to change it. See "Changes si=
nce
> V2"
> > > > section. Also you can check in previous versions of patch.
> > > >
> > > > >
> > > > > --
> > > > > Ville Syrj=E4l=E4
> > > > > Intel
