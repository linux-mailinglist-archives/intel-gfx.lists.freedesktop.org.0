Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EAFA30965
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 12:04:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903A110E65D;
	Tue, 11 Feb 2025 11:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bLT+dTch";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A69010E65D;
 Tue, 11 Feb 2025 11:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739271852; x=1770807852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pty7BIVr2vdWcIp/+c0OdxK44WxNUqW/w5jqicnxr+0=;
 b=bLT+dTchCE+FBhXCFnCP76VYpSurEPjR841R5RwdbUAzwi9z6lQ3AlFP
 RE6KFF4UZy8UP/6T1/9BWQt+mPazrUOO3839dfc2uZXoG2hSj9k8blXLp
 FjxU8T5ADXQtTHcH9JiiTNbaSBunB91ak0Yq13CCC4qOlgv64bNZPWQrg
 in4/RtFRzJfRsnHMujNdltYuBS1sGLS++jg4jV50dd70cErF5eQ8EEy7z
 PZWeYpCeCHtwi0+3CQ1bAmmjiqKKz2divh6myfF6Bt9SiWsP3o6KLWAqy
 4MyqgTQdzbg3hdV4y+5twp6i4Ap8TJBPSXS2d/bsnHTzAk9/fyettNHCa g==;
X-CSE-ConnectionGUID: NgAASy30QdSc/jvWwdZPzA==
X-CSE-MsgGUID: rj4eYW2gQoWQyaK3R7QqBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="42722202"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="42722202"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 03:04:12 -0800
X-CSE-ConnectionGUID: gwXIEFUUT9SyxnV5iKOJpA==
X-CSE-MsgGUID: fl4q/cpNRD+sqkZ0Mc6WUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="113118873"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 03:04:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 03:04:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 03:04:11 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 03:04:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f32+gn6w3jXMBPU1A/QXcO6KK3VSF27JuMQK8TE9+i0+xT2sTKCtZzpqqHa/0TYpYyDpYDctGNJX+NKTfzfqo72xuzLD9vU1wR574/dXnXgLtXtTCW6kMMrTJ54d/EqljtCtZV+D1sh1MTJ6hP/m+pWbEMZEP3t7uD3gueSx64n4zflsC88V4bHOE7e9yrS7kx4Y0jcg1MyA2V/sxw6tFSOAXPYGK2Q264MB+yZQfKxSNuAFbJp+kzuLg+Oun49SCqjBeFOK1zinBqd9TZTwdrUfO+3K5PpAwbN2OX7b+mJdR/jdHtCz1Xy2S/beMH0+Y9mTRovh2ZbGv5GA9cVhsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=anfxNlL6cH8X9v8nrN781rptlXqwQv9AVBjGrA9w6/A=;
 b=WHpBFSJTM9b3lf6V98KO8hPYL0aAPA9hdxU4yQgGl7FZQhqO7oxBz6T7kq2OkbYUSn9GssBTzDdJuZ0pttJP/zoUFm2gHUnmooz7ghATt97fYydtrwSDdaii0EC8FeqJmyRPPx18B52653j8Qt5wSwCXV3PX9PqnIi/HizQiuq/WMcR96WiaBr8uukQrMZxOd5GEqIbbNp6JugQg7e6YadIKZACDWnu1uSdxCIq4Xj7aOQk3zYzTmLBih+fJMEexkhIhHlHcIn4CIJ6fAMO77l+VuA5EJUcHF2okFLEPDWNJL+RvORgM0Fv7GJEsaB/weX7dLTnT5UDKEpeD5IqfqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 11:04:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 11:04:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Reddy Guddati,
 Santhosh" <santhosh.reddy.guddati@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Create force_hdcp14 debug fs entry
Thread-Topic: [PATCH] drm/i915/hdcp: Create force_hdcp14 debug fs entry
Thread-Index: AQHbeSek853Y8TCGDUCNY9Rh4RG5yrM7qsCAgAZK0TA=
Date: Tue, 11 Feb 2025 11:04:07 +0000
Message-ID: <SN7PR11MB67502858FCD83B8F98423CA2E3FD2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250207061454.3030060-1-suraj.kandpal@intel.com>
 <87tt963u1e.fsf@intel.com>
In-Reply-To: <87tt963u1e.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6950:EE_
x-ms-office365-filtering-correlation-id: bbfae54c-cd46-471b-3fc2-08dd4a8bce36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2dd3IIBcvqVMC0PH2UEjzjE6EakxCWA6uiSv5SCFkGzx6sFfAL4enhCQSSKV?=
 =?us-ascii?Q?4uvladFuCOAtNH/31WHanmdYaOREZy6Yh0A10/fEIMfc5xPp2EC6cooQPnA5?=
 =?us-ascii?Q?5mlcmgj8ECSH70tt2pfz5mIMUmwFbK0vY+G9VyWATa0TP4KxQf/ai+0+9lxv?=
 =?us-ascii?Q?QfKY6y3jz9Gil5LIvqjOsHXCUZOqe6U0pQrrsgLKcW5TghArnzIOdRqetLEb?=
 =?us-ascii?Q?lRWy9k7PGMa4bXaYtCRKisw2I2UHofDMYui1vxfpEJR3NEPrt4oWf80ippDx?=
 =?us-ascii?Q?foQbwSwl9orIi3aAtgW/+a+nHjqa3bYThgUxJIDBTgtNZljBLDKFEREqzHg7?=
 =?us-ascii?Q?81Dd2DXMaDW7UxW6yDEu5u8nNbBvD1fuQKbE/LvRkhY3z6FPav2WEv/IZ8dv?=
 =?us-ascii?Q?FKtQtgIB7JmnI+8hE2Adx2eAQekn6EiRdy30teJ4scCED4q6ib7MwdncUW+7?=
 =?us-ascii?Q?ZL/4bLINFJKpdocLPxFxgckXWu/MtVp4xyMeokBfASIKlyN5Xo/PpQuqITj/?=
 =?us-ascii?Q?EGoybJWOuFHRsp4ADJuiy6l671FTEMwhRYbmgB3s1S+5AhPlAWXh/fDpixKg?=
 =?us-ascii?Q?hHvA+fv2sDGvAhw0cVdESVtd49gyn86oD3BCsddj3hb/ZjVpTsbDDjKuh1Ma?=
 =?us-ascii?Q?TP8CmmlbEtIhb16EJKxCwPZcE3Z2glZwwfjjMNxzC3w92i7hp6lsGoR5Qrau?=
 =?us-ascii?Q?7gty5oKlVJ2i6gfPMkPMo3IKFO0Fnzja5TTtFmHEdwzBVOA0SuF/+sacSQMA?=
 =?us-ascii?Q?ASrWX0l7+IIIhktLUGTmxKlHKpShm2nEtYeHxt+leyWrr6el9Sk9yYqU25iu?=
 =?us-ascii?Q?HcNBeeBbA/b0vOIrBYppOsWI5IdMv68ptUzWDPBWl/XqRBacvs9oU5eSse67?=
 =?us-ascii?Q?V7qERyn0dYeasAMDhzpLHY2e9xM3l84+qVdoXt+lTadiJgOaxUC1dOOJYEal?=
 =?us-ascii?Q?eENideSlgrqOBP3S9GC26SNAP9YROAulXigwKdJx2DdC/k7/uvMny6jtdzFj?=
 =?us-ascii?Q?r4tbeAJguhAigeYVwIO7maXbDXhtNwqT1JyBWBe9SOKVuHXKmlmKumNRhXxb?=
 =?us-ascii?Q?q84LmvwGoBfOULZ1TXeNu6tzXFgHhSiM0R4JJ+EEUD0oGiO/DCbPeWqCzPkB?=
 =?us-ascii?Q?JNFBRCUslmbhY1yGSLao2FDWN0EUvV68h0rOwVcxp2f3b/Fm809yzcD00pAb?=
 =?us-ascii?Q?RJ1DGVHr89ua2qMSSSB8IN9HL6kkrQsD2cZzfa6KQB2mrCNrV/8LJpE3RCTK?=
 =?us-ascii?Q?XyMAVwXxl1+zCfenr917c32JI8nnkTrSuoEiTe7qSMNFkF0yyyxFclYLsa40?=
 =?us-ascii?Q?1mjyGgeHE99pzvPCmUHig3dysTqQYyErGZJ3GnnSbGTyIlZ/4aUqaoaWBtxV?=
 =?us-ascii?Q?gOcpvZaHZagLc580CSphQJKYx/YdWiINwqO8drmQavlOvtySwa9idogzUjXk?=
 =?us-ascii?Q?CJFW+M4+Sci4CKVxm++hKSkEF8tB0708?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ttUxkX/k5FT4UDrqk4IEblc1DbehE9o1HSLgvVsd/Nrizbd8phq/Vto9D3SQ?=
 =?us-ascii?Q?zSuncbEmdiNqGl99ABYB0g6veN5twGEkIjlTkJbfmewXDuuCwY/Lh6rm6Qnd?=
 =?us-ascii?Q?YpSGUPYkNEeaifMMxB6U6FV8gsvxKamKsM/pOJU0vPLWSVyCaxWJKkwV/zzH?=
 =?us-ascii?Q?VdVdWP1v74y1E4NF+w1kMuXtCODEAv9vkNmIXsuQU0Mg0p16zMODqMqG+Smp?=
 =?us-ascii?Q?jKnF0yQKeiD4KQvbGJWHepGrcaofdLNMlwgexxLP+ThRuRZeFdJhbOXeZgH/?=
 =?us-ascii?Q?hhwUEX8Fti+Gs01X6Lgel/82vKHxsjLSEWv6sXWgPagYMsHOnEOxeRK1gI+W?=
 =?us-ascii?Q?Pw//e3+mNAh5lQFSRp4iHElR8mV9EbjvyR0TkrAqMN0UyzsVJ5j4/KUM9OCh?=
 =?us-ascii?Q?UXSxF4lObBI+1cShSkN23Nxu4JlM07Xd9OIuMpxYcCoIxVCyN5gXYaG/mgs3?=
 =?us-ascii?Q?/8Q2kNu8ZKxJdQ+eahigZOmT5W4NPDrwpEhDz7ETmcCpGhyg/Uvjykq6FU5s?=
 =?us-ascii?Q?6IYEdGWt1NnD5e3cHJZM7GwqBhEL+b8tg6UV9OlMWiDeCPk2qui7cPbvXjaV?=
 =?us-ascii?Q?uQlgoECUIpEfSF4EYi1BMkb7TjwzCiIdlAdD5nQ9MpRqsJJEKj+fwbzF7Zy3?=
 =?us-ascii?Q?Jd6uTScGqKEwabpgswhfTeuQRYPxNAlB+YfIeayR+hA5je6VyS92stza3/Ax?=
 =?us-ascii?Q?7mMEtTCZHgLXJlxCgDftD+1I5QZIsI6diBUBGFUQoNUZzHPeRlal/4jxzZ/1?=
 =?us-ascii?Q?unh58mCfG+w3QD/Ddf/41vSjDo4GdnYVxtnBDYF5WpLojrm4QFdolH6IoFTR?=
 =?us-ascii?Q?SHgCJWymvjueDV0lCaILMDexDKIPAzOKn4lbbGHdYi/hEflPWU0UMP3YMvaB?=
 =?us-ascii?Q?Pcoh9lJiKTyC+ChVySbv5hpCtJ0OERYh5ljSOBcbqww0uTUkus3pdY0IaB7m?=
 =?us-ascii?Q?9JuSkW1RUUr1KXQYPxweE+eZDpDVhQ4UdrjdFtGRp/yaE8cXrAgF0R0jeCjH?=
 =?us-ascii?Q?6bOSNFamVnasO0OscfHAP9yQBUtGU8ciiEqxW5e8fl0So/9bshoMJMkdfmRi?=
 =?us-ascii?Q?wHGpjpgvdSa9l6xuF32pIOD/MLBe3QnA6N1KrDaxSCS0MUeGJ7kl0iz4KiF9?=
 =?us-ascii?Q?y52Wdx/AO4HlsfICM+eqowPbuv44wbaiBKjc/7vXxEq8CXDzEZxXsdoIEAt8?=
 =?us-ascii?Q?ENQEJuK/gOOfJ7rQmwY+5jKVfxLOK1PnYx3393P7a8rHD7v7EA13S20ezOfj?=
 =?us-ascii?Q?PJ809uoXamVNIofAAjkQNTSN9hpVztsCeSjphcfS6FLktD55+6co6JQ7AZD4?=
 =?us-ascii?Q?r0t3DoyBmXZa0UlSxtTBIyH4lxBRzn9LusanOE3McKIAFNYaakb9lx8By6mv?=
 =?us-ascii?Q?nX57iYnPrRsheJp+pGlE7FDP2+aIgFUaSL2Qp0ILDfOKk+Sl/Xld25Iuvcl3?=
 =?us-ascii?Q?FxgdJvSqipCyD7OzzaIm7BsEHRjmbxf32Hi83lgl3MnFnBcqEERHUYeacYmV?=
 =?us-ascii?Q?HWx5CTQHkk6DsjvjL62EWhqZX529xRo7WUkkZ7skWs4eIuoQzWKqfaxz66mn?=
 =?us-ascii?Q?iuaXVex2qv+U9GozJvpErLcyfNrWzfI8OTaMy3Lo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbfae54c-cd46-471b-3fc2-08dd4a8bce36
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 11:04:07.6655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g2w8IKRGxUgrH8bqqFyuzY7JSDhDQk/2HZD5Mg7FCkTH6sOEQBXRjIHlgVB9mnlnQkYIWzxQ7ChYjyBhnp8Hqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, February 7, 2025 4:24 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Reddy Guddati, Santho=
sh
> <santhosh.reddy.guddati@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Create force_hdcp14 debug fs entry
>=20
> On Fri, 07 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Testing HDCP 1.4 becomes tough since the only way our code comes to
> > HDCP 1.4 pathway is if the monitor only supports HDCP 1.4 which
> > becomes tough to find sometimes.
> > Setting this debug_fs entry will force use to use the HDCP 1.4 path so
> > that more robust HDCP 1.4 testing can take place.
>=20
> For several years now the direction has been to move and place the debugf=
s
> handling next to the implementation, instead of piling on in
> intel_display_debugfs.c. It's been happening gradually.
>=20
> It's time to draw a line in the sand. I'm not accepting any new code in
> intel_display_debugfs.c, including this one. It needs to move.
>=20
> I've rebased and reposted an old patch to move hdcp debugfs to
> intel_hdcp.c. After that, this needs to go to intel_hdcp.c.
>=20
> Some other comments inline.
>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 76 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
> >  3 files changed, 79 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 926f09c35084..1b34aed98849 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1383,6 +1383,80 @@ static const struct file_operations
> i915_joiner_fops =3D {
> >  	.write =3D i915_joiner_write
> >  };
> >
> > +static ssize_t i915_force_hdcp14_write(struct file *file,
> > +				       const char __user *ubuf,
> > +				       size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m =3D file->private_data;
> > +	struct intel_connector *connector =3D m->private;
> > +	struct intel_display *display =3D to_intel_display(connector);
> > +	struct intel_hdcp *hdcp =3D &connector->hdcp;
> > +	bool force_hdcp14 =3D false;
> > +	int ret;
> > +
> > +	if (len =3D=3D 0)
> > +		return 0;
> > +
> > +	drm_dbg(display->drm,
> > +		"Copied %zu bytes from user to force DSC\n", len);
>=20
> Useless debug logging.

Will remove.

>=20
> > +
> > +	ret =3D kstrtobool_from_user(ubuf, len, &force_hdcp14);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	drm_dbg(display->drm, "Got %s for force HDCP1.4\n",
> > +		(force_hdcp14) ? "true" : "false");
>=20
> Also useless debug logging.

Sure will remove it.

>=20
> > +	hdcp->force_hdcp14 =3D force_hdcp14;
> > +
> > +	*offp +=3D len;
> > +	return len;
> > +}
> > +
> > +static int i915_force_hdcp14_show(struct seq_file *m, void *data) {
> > +	struct intel_connector *connector =3D m->private;
> > +	struct intel_display *display =3D to_intel_display(connector);
> > +	struct intel_encoder *encoder =3D intel_attached_encoder(connector);
> > +	struct intel_hdcp *hdcp =3D &connector->hdcp;
> > +	struct drm_crtc *crtc;
> > +	int ret;
> > +
> > +	if (!encoder)
> > +		return -ENODEV;
> > +
> > +	ret =3D drm_modeset_lock_single_interruptible(&display->drm-
> >mode_config.connection_mutex);
> > +	if (ret)
> > +		return ret;
> > +
> > +	crtc =3D connector->base.state->crtc;
> > +	if (connector->base.status !=3D connector_status_connected || !crtc) =
{
> > +		ret =3D -ENODEV;
> > +		goto out;
> > +	}
> > +
> > +	seq_printf(m, "Force_HDCP14: %s\n",
> > +		   str_yes_no(hdcp->force_hdcp14));
>=20
> So I'm not sure why we're printing "Force_HDCP14: " in there. Why isn't j=
ust
> yes/no enough? The name of the debugfs attribute is literally
> i915_force_hdcp14.
>=20

Okay will just print yes or no here I just went with what we have previousl=
y been doing with debug fs entry.

> > +out:
> > +	drm_modeset_unlock(&display->drm-
> >mode_config.connection_mutex);
>=20
> Blank line before return please.
>=20

Sure will add it.

> > +	return ret;
> > +}
> > +
> > +static int i915_force_hdcp14_open(struct inode *inode,
> > +				  struct file *file)
> > +{
> > +	return single_open(file, i915_force_hdcp14_show,
> > +			   inode->i_private);
> > +}
> > +
> > +static const struct file_operations i915_force_hdcp14_fops =3D {
> > +	.owner =3D THIS_MODULE,
> > +	.open =3D i915_force_hdcp14_open,
> > +	.read =3D seq_read,
> > +	.llseek =3D seq_lseek,
> > +	.release =3D single_release,
> > +	.write =3D i915_force_hdcp14_write
> > +};
> > +
> >  /**
> >   * intel_connector_debugfs_add - add i915 specific connector debugfs
> files
> >   * @connector: pointer to a registered intel_connector @@ -1411,6
> > +1485,8 @@ void intel_connector_debugfs_add(struct intel_connector
> *connector)
> >  	    connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
> >  		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
> >  				    connector,
> &i915_hdcp_sink_capability_fops);
> > +		debugfs_create_file("i915_force_hdcp14", 0644, root,
> > +				    connector, &i915_force_hdcp14_fops);
> >  	}
> >
> >  	if (DISPLAY_VER(i915) >=3D 11 &&
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 6a82c6ade549..c78dd77ef74c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -496,6 +496,8 @@ struct intel_hdcp {
> >  	enum transcoder cpu_transcoder;
> >  	/* Only used for DP MST stream encryption */
> >  	enum transcoder stream_transcoder;
> > +	/* Used to force HDCP 1.4 bypassing HDCP 2.x */
> > +	bool force_hdcp14;
> >  };
> >
> >  struct intel_connector {
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 7cc0399b2a5d..c008e4f1ce05 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2473,7 +2473,7 @@ static int _intel_hdcp_enable(struct
> intel_atomic_state *state,
> >  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the
> setup
> >  	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
> >  	 */
> > -	if (intel_hdcp2_get_capability(connector)) {
> > +	if (intel_hdcp2_get_capability(connector) && !hdcp->force_hdcp14)
> {
>=20
> Why isn't this check inside intel_hdcp2_get_capability()? That's used in
> more places, and now you've selected just one place that forces 1.4. Isn'=
t
> that inconsistent?

Well we really don't what to change what capability we report here to the u=
ser,
what we want is that we have to ability to forcefully enable HDCP 1.4 even =
if HDCP 2.2 is available
(majorly used for ease of testing).
This is the only place where we need to check to see have that happen.

>=20
> Also, that might be a place to debug log about forcing hdcp2 support off,=
 if
> you really need debugfs.

Sure will add the debug log here.

Regards,
Suraj Kandpal

>=20
> >  		ret =3D _intel_hdcp2_enable(state, connector);
> >  		if (!ret)
> >  			check_link_interval =3D
>=20
> --
> Jani Nikula, Intel
