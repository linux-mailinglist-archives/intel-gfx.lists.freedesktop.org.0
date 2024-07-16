Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D638893201D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 07:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E4410E2EB;
	Tue, 16 Jul 2024 05:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7OnogiD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D0BF10E2EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 05:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721108270; x=1752644270;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=u+ZZnqgI+IqwRFj7JwzZEz08ejoVRPX8IxASdfnxSUk=;
 b=F7OnogiD0sJ9V151uYK/xk0JD9vgpy3SR2nrVw9kjVxK53inOm2jqVDs
 KybHf5wQu/4zt/+BXC3O42G/GWG5hM87UKApiJ3kGtXAovPpPkXP5iO7G
 CDNbbq5RCu13jTo6NVe41cTvT4W6nme3qKPrFWMABTdUhmM3r7Yqdh0v8
 TKTVqklj45QxsfzAcP1s3wowkLy7tq/65MV2V8RSx91OKuz2Reoj8P+kC
 tbuUBBx4gmo/t+kBAbkcg3PhLZb4UyIf/8CxHKsha3lwyO2AwyLsA4+2x
 U4GonRK2y5M2TynVPXtrCGqg7gcw3Ot/XPO9vVHioBRaclJcSjd4c1fYt Q==;
X-CSE-ConnectionGUID: wq/WGKJDQPmBJh6snxhgLQ==
X-CSE-MsgGUID: F/CKdL4WTMyDvMN49J/9RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="29671501"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="29671501"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 22:37:49 -0700
X-CSE-ConnectionGUID: NuS/EQ15RCiKrwhHXdkMEg==
X-CSE-MsgGUID: QQT1Uj0USf+FVCjjlG2FhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="73118028"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 22:37:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 22:37:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 22:37:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 22:37:47 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 22:37:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Idz0YrBPb+XQIOK/TCsH4Z+E3b6blaibQAsE4bbVRPsfcTuD88qrlCKKWrWQdD/FQBdw6NIpL9xQfVl1W5hli+zfMtKIaHxaQjyY+ASPMAovhR2HHxQSCwIk2PvCwlgzLfo/Ay/O2mzdaQNnJn6fx/ZkEFe0gV8pE+9vF/1dpTa6Dl6wsDdZoSHkvxi92mq+kkP+qhBuiCANkHMHod8wgf2GkskpPsLACfQ4QXtMpXKCCv5P+J3X325bz6MDG2NqCqQ+WAYUwrCXWtVbxrs9BCB+sYWnMA7bKT2umUulLOTDxv2RP1pk71aKSml4AtFTg/S/UEKtuTZjqAquTp7ROQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7lkNztllc2116tlOkYX3Opuwy77vF2PRgTzvXelz/c=;
 b=ux9EXwRtbzCplUo7HmQs2gNoRcycwKc7lyPu3ko3OD+ySJoIuyM37o0Y4BuKBmdLcjQDP1UScdJ4pFm2QHRZk0jbQP3kdJLhiLlkeuWecwW6JIqZMFfaH7t6IT3ll5dXY2cj5jACE/3GvFfSiSDd8Is1frLSwhGfecusLYkhbKbZ8pGvtjUb//1wjyRK6AHqVzXQqPgS5Y/VK2FGmjzUv3TB4ePHW1kaBp5GNDfTTcz4bXLBrx7m49ne2Gt0MRt5U2VlQlG/r6uv5fCjDHtrOouDnRiKRCtm9ifn1BGHapcfRIYlti5EeGu+Vz1ulN0DsWGliZyHh6qbvn6x6g3H8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS7PR11MB7740.namprd11.prod.outlook.com (2603:10b6:8:e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Tue, 16 Jul
 2024 05:37:45 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 05:37:44 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "peili.dev@gmail.com" <peili.dev@gmail.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Regression on linux-next (next-20240712)
Thread-Topic: Regression on linux-next (next-20240712)
Thread-Index: AdrXQO88VUzsZaUtRaC0awT9alv5Ug==
Date: Tue, 16 Jul 2024 05:37:44 +0000
Message-ID: <SJ1PR11MB6129A77D51B206E29E242B95B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS7PR11MB7740:EE_
x-ms-office365-filtering-correlation-id: b2c8e2e8-90a5-4788-bb4c-08dca5596b25
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?TsEBsfPtSeMYaLBlCDbp06bWR8USz4GQwv5RWFIVIW18rXAxT2lKrySf1t?=
 =?iso-8859-1?Q?AB6Y484ivb/xmQ1dSuK0gPKy6bk4tb9wqopignb9LJCXl7og1zFYGkhfFI?=
 =?iso-8859-1?Q?58vMHVR98dxLT5U6w2KxGylD04+HhzT4+UX1Tp+4Q32Q+hxOaC3f4iIgc9?=
 =?iso-8859-1?Q?Em82I56CI6eZOvOzkvUH05fddDUfwy3fL6P/mieU8+DHUXfWHm3KNmo1p/?=
 =?iso-8859-1?Q?MpCL6VfXcw3dkN9QuiR5AhpyPiIuO8roVNdRL9t3Y4NKxsmh3BEVl8CfS9?=
 =?iso-8859-1?Q?pNHBlzyt5SIx7SnXBw6GKWUHPDAvudNx6sqShjxmwRZWRMu6pMH7PpA2yN?=
 =?iso-8859-1?Q?FlMYZbg+NUhU6m+CnW7xRLA8xB+IIqB1aCn1tMsSNVPFrLcmbMERQqkTZz?=
 =?iso-8859-1?Q?I75eSqgM/wD9x/DszEqHt9dHNwjlCR5qG37XXa/UDbCKLB7H5U2YFpjEfr?=
 =?iso-8859-1?Q?jXKhGSbDki5aUBqoQlknzMmubuNwEfW0fNgtoN2132W1zCjPZOGuH4p3KU?=
 =?iso-8859-1?Q?eEiBsvQv2r2MEXE4fmiB/2YgnM0S/vJuymvumFXohLM7g6KjQ/E7K+AzIE?=
 =?iso-8859-1?Q?vUbggXrCm6Eoqn64XA92d/eqODPqBihZqLUtSE41AjmS8yc785NNvbvDdF?=
 =?iso-8859-1?Q?qY5tBAT7Mf1JC9PM2tSipVA4PCCC/XmgbbazI43zqZ5iymMN6c+6dvQpos?=
 =?iso-8859-1?Q?RZ2h7rHCMX0I+P/GL+S3viAWiIsEwF8tBciXN5sxy4bKNNcoK+5Oqb7e0b?=
 =?iso-8859-1?Q?6nTjxiYODpPe6h/8WjlMqieGyeCqaJT3mTmFLfck23+OLn83PRduvxiiFb?=
 =?iso-8859-1?Q?/kHu8GTolJKqStdYEIyHycgfXGHBADxjHnNxDELcRtw0xAjyRc8Ek8VMVg?=
 =?iso-8859-1?Q?pBkhM3KMTEh3EJxGKDAwAwS0zSBLOPBvaxsUFRPepaWQEFCf8IGdSOzd0S?=
 =?iso-8859-1?Q?5pbByv8gluiAnDZ838nkLI5Gut2hMUrfGBD5SgxSYlTzUhVg/g6t76IJF7?=
 =?iso-8859-1?Q?Uel3mQNmfPVKypVQcCYwSQ/CzlY747VxlB1g7ZsdhqdfscqSoUE9xl6P+D?=
 =?iso-8859-1?Q?pE7A9wYHG5RNBTU30lcupHCfeSvXLGRv4r8NSjcWmc9UBXs9ykwyRbq9SG?=
 =?iso-8859-1?Q?nbqhrfmtMtXXKjdVcpeQh+SI5tmW5QmKxWaACW9Pw4ah+/x2jZECol+Fk+?=
 =?iso-8859-1?Q?yUrDQcRmLgJF4d0M4LpudL1U2bvLALFJiCNzr+iq23+wPvPTDOGaZNAYP7?=
 =?iso-8859-1?Q?JWOdeXzFQLp0QCBrj0n4C1UYqzBA+hzpM1EY3BI0qtrqv2VSh2Miljk1vm?=
 =?iso-8859-1?Q?7JLKUC2y6TZiwYyawQLiavrqrmyf1hbWEKfyxrjE9LSXzv4ydriUVJa5mv?=
 =?iso-8859-1?Q?ItuozTZWfy8jUGvCmZZVoLFKgt9dGO1H8IGjj1FQ5ydunWggqtksw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kwtzhnEke6LKepAmK/unHwTFL28Q1Pcrh2SBgjhSY0v4Hoc9RNhdhMg/eC?=
 =?iso-8859-1?Q?B8/juyENHeLSe3vzMwmyz/o6Mk400Es8/u/NhLchQ3UQO/VigcuA2LPsKm?=
 =?iso-8859-1?Q?qyZAUc9YIZIu13kvUYcmTltZY7AzcqgEJZXbF7yxqn3ZTSfxuFOFr6KY23?=
 =?iso-8859-1?Q?xjxr9MJoFsGfmt13e8eABEQUJIZj/GW/gXZUh3m773JpYuF9Ah5qZW6/t2?=
 =?iso-8859-1?Q?9owHvji8Q4AOiy1/Umce+PZzmkcL2eG9q0uEj3fcIOjwmEsCgLf1Nq7g56?=
 =?iso-8859-1?Q?S7VvJmmf9uwzj2TK1EJ8eP1Wd6HvfCzt9RjJt2dRSmPMhlr6vnIibSe2vg?=
 =?iso-8859-1?Q?lMTRIe/53ox/PerGDVPIRx8eOqa99m6edlUbrqJRv4lGCl2sZGw9wJCrmO?=
 =?iso-8859-1?Q?Whu0xLMjB5gFgO3eQJd0BLw781h+m5WdWSeimvsJ2CTOt1Sc57gp/VtDol?=
 =?iso-8859-1?Q?vNSJpxcEn0JId0ZjSpwIGdEEjKPnWKLynOio/In+IkJpFC2gNB/4JigREa?=
 =?iso-8859-1?Q?w5xSf6vVX4uHFzYAufwmEFDPkq/pi2ez+K3RuUs/e8+/vnAKDVkNYVj6cC?=
 =?iso-8859-1?Q?otCfzY+ikcob5u4Ry5aPhuBI1Lj5KZb3GzdnxZTeiCLHA6imjM9r3dY5yu?=
 =?iso-8859-1?Q?G7gSXNOuiyBBt1rNR1QzOWkF77VHnX1m4LIhiIlGSSNyyhHgnkTHfdYktQ?=
 =?iso-8859-1?Q?s4vq41X4E+YYjPDnff4KfqmsvMSGkzpkPXEwOATfUp7mby+sofPxVK9KCx?=
 =?iso-8859-1?Q?Tus0pX2axBkuwjHLBLKGb0ha/gsMUkntkT29kY7KvxO0RORTY/4qs3L4pt?=
 =?iso-8859-1?Q?6IbyUeExHNxvKYvdedZR6Lnvrs4xV6Qoyv18kAj+Kuuu2af7/8/MaIFlW3?=
 =?iso-8859-1?Q?PVAxb4n3Y/BQCNBoIi6qZwK+0C/g+8Lkz+kJtApAGJWtPUYSbMb7ArwDzt?=
 =?iso-8859-1?Q?qM7oIM3o5i4U0U3AIcICQBEdgbSMiUC55jF9vtgX+J13DuBAX/OElEUJdu?=
 =?iso-8859-1?Q?dlOUPCRRdfZrxpo7EUdlSy4OoaZWdLfN5EjOvDrPxNRTq77kTcw50+szJU?=
 =?iso-8859-1?Q?RWi9GszlRJwFDKUli2J+v2RBy8Zm6JpBj6Ehb1cVGIzkJm7zi/qCGnEZvE?=
 =?iso-8859-1?Q?VJ/SVPCJu9zCH1b3o4t/KsC6LRDMhmUO7EtBbvLBkCgWY8sTxPyWe1X8xs?=
 =?iso-8859-1?Q?QPx+X5A5L7UB5/6MzeC/EVrq5jtMBM5ddVG48FINU+Bv9lQQvvtHo1V5Gm?=
 =?iso-8859-1?Q?hwPk5sQb6O9f35O1gYiES49Zlyoxnbg07gl22x1wgEvrac5EWEEELVYdXp?=
 =?iso-8859-1?Q?RjOPlj+/q1IXsDbsbphsbRVNEIOE7lxiUf6+fPOwL77FXXsOy3nHGAe0l+?=
 =?iso-8859-1?Q?wrk9T+FvuXCaJ1+nulEIEGEUT+1t7r26Z4EB1+SE5U50gO110XvVf4UW1L?=
 =?iso-8859-1?Q?JoZLrB5LbgHOqiobYSbvCQ+BFDjPercHD6ghhWqSTR3DnOLKh039Hu3y+k?=
 =?iso-8859-1?Q?uBBRLeeLFqJuQ5i4mypPPD2XVQDa4M+dVmcvLO5Hune3TpT+b6xFt0sirP?=
 =?iso-8859-1?Q?HOaOd3lnvQJqrmp+YPB9xqm7+pa+0WsudLJt8bZ+YzUTiOTRcL+UEqlA8y?=
 =?iso-8859-1?Q?9R3BA68HIupVhqxcLVUz28DC5bjKxRAaRsbsqQwrvRUMZ7Ng5YlSg1LQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c8e2e8-90a5-4788-bb4c-08dca5596b25
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 05:37:44.8037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z1GiLh5uP0WhtURxjMGr/hx7BGOFSCQIzb6+fDI9C+LIPspRLeqf5Nxqnb+O8eevPR2IhSWeXP92fg+bwHd59HrrT/Eo/vvev3q0P53a7Ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7740
X-OriginatorOrg: intel.com
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

Hello Pei,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

In version next-20240712[2], we saw the following regression (currently bei=
ng masked by another regression)

```````````````````````````````````````````````````````````````````````````=
``````
<4>[   14.530533] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<4>[   14.530533] WARNING: possible recursive locking detected
<4>[   14.530534] 6.10.0-rc7-next-20240712-next-20240712-g3fe121b62282+ #1 =
Not tainted
<4>[   14.530535] --------------------------------------------
<4>[   14.530535] (direxec)/171 is trying to acquire lock:
<4>[   14.530536] ffff8881010725d8 (&mm->mmap_lock){++++}-{3:3}, at: unmap_=
single_vma+0xea/0x170
<4>[   14.530541]=20
                  but task is already holding lock:
<4>[   14.530542] ffff8881010725d8 (&mm->mmap_lock){++++}-{3:3}, at: exit_m=
map+0x6a/0x450
<4>[   14.530545]=20
                  other info that might help us debug this:
<4>[   14.530545]  Possible unsafe locking scenario:
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit a13252049629a8225f38a9be7d8d4fc4ff5350e8
Author: Pei Li mailto:peili.dev@gmail.com
Date:=A0=A0 Wed Jul 10 22:13:17 2024 -0700

=A0=A0=A0 mm: fix mmap_assert_locked() in follow_pte()

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240712=20
[3] https://gfx-ci.igk.intel.com/tree/linux-next/next-20240712/bat-arlh-2/b=
oot0.txt
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240712&id=3Da13252049629a8225f38a9be7d8d4fc4ff5350e8
