Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB05985A07
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 14:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F1410E9A2;
	Wed, 25 Sep 2024 12:04:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lZsoQW7O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F4610E99B;
 Wed, 25 Sep 2024 12:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727265871; x=1758801871;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3yxXUAPk72FbgFfPgNYmrvgjLI2o33UuifO43L+kJ+E=;
 b=lZsoQW7OU9jqzdLIIklljaD3hKSf2W9Kd6jz7xy1HIbK6k4V6j/dxtuH
 ugE+JBzlTmTmLXsmVx9oMAQWWWFV4Fil5vNNWjrREw7xDk36NswLnWxIc
 hqLagvOUoV04uLH4k4o+QB49yEReYuaMQdjOXTLfYSrtxYzv09zpaZs7d
 GlofjSp1UgUfFFPQ4CarXimUdbQlZ2QKmkizeZfEWE/Bo3ZO5mD1pnDB5
 Bnmh1bFHgbR8bpwajH1gFIC92/m7utXE15Qs7aLeYZfonssdfa4mr7nFb
 lRZLK7rPOPorn3CJB/4pTUgyZUTdjdhOwfO4mjhJdEC0fs828z+nWwHcR Q==;
X-CSE-ConnectionGUID: WQ1oayZSS3GA7Q4gIZoxjA==
X-CSE-MsgGUID: ERAhvKU3SDKjgjOuJc6qZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51723152"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="51723152"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 05:04:31 -0700
X-CSE-ConnectionGUID: txW43TkySLyIvUysUCfyqg==
X-CSE-MsgGUID: LoMsJjERSmqzpyuUNdWy6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="95072798"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 05:04:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 05:04:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 05:04:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 05:04:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 05:04:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mxqN7ZRLMUt6FYE+kWo03PKAK7rMDndcnaALXVN7LkyQFV04sKQhH0ZqkCLrjP2brmmOU3q+kDtw+NmiqaZWb6/pZ0PnMFFe0DQkmRS69cSvUOtPnuwVrRCFA8ZJHBo9bdriDBVQmSVKX5lD+Tk4w1YJYMwTUOvH/PzKn6ZzDgEpodLZuc4OXL2JaoGUpORkqFl0a0k4+yTeaNOL0ek8EDoOEAwMqT1W6xKnHgzJcHRl6elImbNU0RM0NqpCtE198OaXgM85dIsHZH2fnp8bCyeRYiQxzKJ2IknvAXKrsrmb2GrQaMrlmFS2rOU0y9fXtq7sUTS5efWArmL8XWv77w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3z6mm3BFnkEYZ93woZAh+worDSKWg0YJP1QYPjno5dk=;
 b=jwAZ3bL/Qfpborq6Q3JR906pcTVj/xj0CdnFB6hGAaOEdmUGEQfs7Ul8pajkvgh8wbsPrFJ2bX0O3QoCddGnHxXRQs4RdjzNI10tjAiZnWKAyduMInzl8UrkSUCzf5rYlBetBMQt09HgYUPFgPhCVKSqh02yRmJI66a2tGEoBgi2eTWvxTViYOh8Fgi+6IMUTGlYIo+h7tK05lhb9inpZSHf45TTpLffUNmkLiuoPG8z/2XmDQfW8KlmsJ/Ko1eZ03MiRQPVrHdjvcAuWwkMdcGuL5pOAn0sezmNjmpEkmaKhr89XveQI4z9KcV82tRlZktNpU4QqoJo//IHN4ohHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7011.namprd11.prod.outlook.com (2603:10b6:930:55::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Wed, 25 Sep
 2024 12:04:27 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 12:04:27 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCHv3 2/3] drm/i915/dp: read Aux RD interval just before
 setting the FFE preset
Thread-Topic: [PATCHv3 2/3] drm/i915/dp: read Aux RD interval just before
 setting the FFE preset
Thread-Index: AQHbDv6gd2Ox1oNmbkekIOZ8hqnA07JoMU+AgAAbNLA=
Date: Wed, 25 Sep 2024 12:04:27 +0000
Message-ID: <IA0PR11MB730747CD8BA944F548370BB7BA692@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240925034432.1777029-1-arun.r.murthy@intel.com>
 <20240925034432.1777029-3-arun.r.murthy@intel.com> <874j643yr8.fsf@intel.com>
In-Reply-To: <874j643yr8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY8PR11MB7011:EE_
x-ms-office365-filtering-correlation-id: ad875e47-5e2d-4619-7e63-08dcdd5a3450
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?c1lHI5eVbaJ7aNQ8BLiYyAfoltmhWsrAcQNMGfvzN0AQByTNnbue+5Tguc/X?=
 =?us-ascii?Q?5NT7PYCsWE1xyiSpWNjtrm18eNy52ymDWFICdHD4dLUJipgi+387nDgz8aO6?=
 =?us-ascii?Q?BjhUkNhQ7cTePskzP2X5e+vi8nqTQPmwXixgDNLKjX8mikTRVu8m4211pNqS?=
 =?us-ascii?Q?8+qXNYpv725j2HWRHDgLdK6khTlfGo2U4DFUWdm1Z0pMuURwvuEXfuv3hzWh?=
 =?us-ascii?Q?pns4MTDM86miPjzqqfKQ4uqa4YCvOVsyU9AsbyWjnX8yjtWz5O+NZ7mXZbDS?=
 =?us-ascii?Q?DEdeuhZDuKO1BJ+HNYb2uYOuABI2fGRSRwr3r2aJhxzFiUmz0iv0h0hK51Nq?=
 =?us-ascii?Q?6fwBpGyzJi7AhyNpAxI5ElXMXweHXxxCuVR9UUgCQEadsUGMcJ8SYt5jv2bB?=
 =?us-ascii?Q?Rz8tZNneRsh8vk7vLFlhGsMByotOsRSw8XfuSe/baLwXdTihxNH95CMkOOvO?=
 =?us-ascii?Q?f1QdgrhPdso1a+fulWQNABdv0+A0bA3CtHGE1apurczeuScxKwajZjbAoTXt?=
 =?us-ascii?Q?uIIFSLOF0auyEx9Y9nEs0Wv7CfZq369wEpwPxUaSutGdwTuBX+d6HTB9hZ9F?=
 =?us-ascii?Q?E2kyvZpJWHJGaFKSGJz+AmgdUlHAtfqd008wN/rW6Vpvzlf2DZ7M106gfoUi?=
 =?us-ascii?Q?Qy4SVseW/1aM6KCuX9KYgw3C37yFW9FnPNR0VenbmXi5RhcBTPVUls/pXrGW?=
 =?us-ascii?Q?9E1lkZfk/feS1AxDCvKMuftZhdPfl4SpMIbiuR6PZXKCUH+eLhTc7vYClbEI?=
 =?us-ascii?Q?OsSDA8S7aAvvfbmK6bOJ5/KflAD8AEvKT1gi04eQ1Mv1jpiLyVR3qiPipNjZ?=
 =?us-ascii?Q?PEL3flRuF0XnbH3ef1+KTS3rYmotDO89rBr6iQxyrZQz4PRW43z4m2UpOOHr?=
 =?us-ascii?Q?NcsF9fMqaMiQV/9+hR5JJAavcD78Zb0kfCzMOC2wzQV+dPwC2QqydRUhFZx9?=
 =?us-ascii?Q?XsBLnX20Vy1aO4SOdoUfdUfPj208RD2MoWddjs9KNmJ3c0IVDZm7+dZS3amn?=
 =?us-ascii?Q?B+qx+ZYbflo0ykPUtscxmECKmuSqDc583noIcqZkiZRLgkaiCGEreeK9w/nR?=
 =?us-ascii?Q?Hh8TuF7nNffaS5FdbEUMRnqVUn8HlR/7d7At5ODyxI44heIIjmlpZ34mTuTr?=
 =?us-ascii?Q?rEyj1IiVVUKsLc/+Gsqgwm2WBJUETzUVU1SxNOtofg/JR1p5iKEIKgTfUr4Q?=
 =?us-ascii?Q?TV0AwvjEOUczyZLTXN1/YEeGFFziscd68Ejv5cLJODHGwavZf05Fl54JP7YI?=
 =?us-ascii?Q?eJfvQJugsWH+i3Uj+uNryi2lxMUgbmPV/16yd8ignmB6Hvi+hrfUy54DpYPz?=
 =?us-ascii?Q?P2JLSagp9aDfbUA6rhexMooez/QmLIppGL6RSKjrc4OxIg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k+KAutJQ8c6PmHNs7xQIIRPYaAZkRIkfZLeyJ0Cac71MbPN30BT8S7m1C1ql?=
 =?us-ascii?Q?GlDSk9QTlITceGE0RMn0Ym07S9LJRDlHXjOL0frneyToz+CVWSlc55P2clSE?=
 =?us-ascii?Q?jbi8Y9bRgs6pgACnifJArZNFs6yCNxNSV/ZGnzNFjqfgQ/CxN52s6Podf0UU?=
 =?us-ascii?Q?x8oZ5mSTUG18NinhjhTvrCAjsViJKI8uEOAtpLuPzoB5/guB+cE9L+vSZKRZ?=
 =?us-ascii?Q?4N+dzJfs0kpxUT3XJgCrgC3y/g1CuKTjhJk8ZMvEorszLkIduuvleD+u/CGc?=
 =?us-ascii?Q?wvQsDQ+yV7JS4I+RbYY/OcGp4U+HyMnkaRTxuILqx0MCdOF7wILGHjeTMBo8?=
 =?us-ascii?Q?douVxyEiOp1pgSQiL7tACj8DEfZATj/yh+gnQYvM4iZfcouny6uLJ6Z0AYg2?=
 =?us-ascii?Q?Mmr799C8PntM8m9jhnb2GhP+jBroMmcq0y1SLQdWB6gvP57ChCNhWz3ayoAr?=
 =?us-ascii?Q?ufPu9H/AnLqPWY5KpYI5eBeUaO9LdBeKBtjTsKQwERQlaPSCT/SmZwkm2Gqq?=
 =?us-ascii?Q?PuZ4xhyyI36qcbdPyUhSC+jF/wOCWt2UTQJtOxLEGDR9uSFNYp5Wp18UsGZs?=
 =?us-ascii?Q?bWBd6cbc1lKb/X28H//OXdpZjxbXMa3PEa9+SnyGsycTFKIj8pyLXOO/YUV2?=
 =?us-ascii?Q?qfKSQk5DakxBCv4QvYjkBfhv8zU6ebuU1sTygbqmLgfaUTGSIdI+J1WoVmor?=
 =?us-ascii?Q?MvqUvUlf8kQmdQmHQyG2itiVEtt2lz+1NU/hqcvpBFJI5w4HN5VnPty7C9ru?=
 =?us-ascii?Q?zL/yzfkS3SY4zCcHE9o/rSFDNCmxI9YPPj/Pdbfs6sKcBzlhCdw7Ptlt+nZA?=
 =?us-ascii?Q?rr/JD1DCkxrOBS97lEu2Y6GPrTR0Z6lL8I11spGWJ1s/ogQsyjq3j7+F+62m?=
 =?us-ascii?Q?sCjqjuMoTHxNi89xAOOghrgOhUdJxZQldGk3JUxSv1F0RGRVQIfV+kOZNtKq?=
 =?us-ascii?Q?5ODx/KP5YFiRSPBUTzcR6fybtI/wjreGairERO4gGp552WuN0XRawFJnwN9B?=
 =?us-ascii?Q?oWv0r12PNAA9R0O3nlzxsdf2LGCpmD4bCGPQR3uRj4+rXe2rdtCRjz1Baw7t?=
 =?us-ascii?Q?SA0cKp8gYJ4eLHCwpFY9NdoIbsEdD59TVCNxtjv5ikvXRM0XTfM2xvcAK3xX?=
 =?us-ascii?Q?6EbIWj4StAyIiuyqT50t5Z7iE5m6s2/VPyTW0SIdfCrrDMX/SbnKv15b/fyQ?=
 =?us-ascii?Q?wzaMIMnx5d+PH4P8i1X7Wx29r7LGee1gXunqF/+Ntp2okQQqXr82/5VsWUQu?=
 =?us-ascii?Q?yTxwNyuGIGH+9KVXoCAIKqmrTCv2q5f3v5kitkboghZgGurTHIXx8wWbvLB/?=
 =?us-ascii?Q?zAARoP2AEo4bS21z9AhgFIUg8JIhdsEF9c/Gkbl/ArQrBYvM60DSEedOcZDn?=
 =?us-ascii?Q?lWSZcYfX8nUmwuxJ312ICY6DN8lCExttRq1J+gzqOxop4wV1BCjCzKzRiC1+?=
 =?us-ascii?Q?vzasxXflBD915KMPOGtxqzezf6ongX7zX7R8yluKmAqyaOcYW03gHtyFtoGn?=
 =?us-ascii?Q?7/17AZdiMIzLnTXpH6tSt4+mpfCSmvnsF5BJJSO6Jc1jrhhag7uKQMFBKHX4?=
 =?us-ascii?Q?1efvMp4qFL5hdRH3DZnG6VsMw36ueNFwFGxRHS73hGJKI+JwiAGtzrk72F5H?=
 =?us-ascii?Q?tqec7cyWQ/2BkFPg2NkT2x69y9X0OxnYLUUxaXPnN6lw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad875e47-5e2d-4619-7e63-08dcdd5a3450
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 12:04:27.3741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tCQ5fwfTotUi2IvHlLx/dhDRD0laCUTSJkSG12BvpSJc8/j913NnNiIERqnrnPqers2ACS7+m870Z/166GkT9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7011
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
> Sent: Wednesday, September 25, 2024 2:18 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> <nagavenkata.srikanth.v@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCHv3 2/3] drm/i915/dp: read Aux RD interval just before
> setting the FFE preset
>=20
> On Wed, 25 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence of
> DP2.1a
> > spec.
> > After reading LANEx_CHANNEL_EQ_DONE, read the FFE presets.
> > AUX_RD_INTERVAL and then write the new FFE presets.
>=20
> Nope. That's just not what the figure has.
>=20
> > Co-developed-by: Srikanth V NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c  | 14
> > +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index f41b69840ad9..1bac00e46533 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
> >  	for (try =3D 0; try < max_tries; try++) {
> >  		fsleep(delay_us);
> >
> > -		/*
> > -		 * The delay may get updated. The transmitter shall read the
> > -		 * delay before link status during link training.
> > -		 */
> > -		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > -
> >  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status)
> < 0) {
> >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> status\n");
> >  			return false;
> > @@ -1451,8 +1445,14 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
> >  		if (time_after(jiffies, deadline))
> >  			timeout =3D true; /* try one last time after deadline */
> >
> > -		/* Update signal levels and training set as requested. */
> >  		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
> > link_status);
> > +		/*
> > +		 * During LT, Tx shall read AUX_RD_INTERVAL just before
> writing the new FFE
> > +		 * presets.
> > +		 */
> > +		delay_us =3D
> drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
>=20
> I said this should be put *above* intel_dp_get_adjust_train(), and you ag=
reed.
> There was even a patch to that effect, and that's what I thought we were =
going
> by.
>=20
Yes I had pushed a patch also, but later based on Suraj comment pointing to=
 the spec changed this. I am not able to find that again in spec.

> It's both logical and per spec to keep the TX FFE PRESET read and write
> together, and AUX RD INTERVAL read *before* them.
>=20
Yes agree!

> Where does the spec say, "read AUX_RD_INTERVAL just before writing the ne=
w
> FFE presets"? I don't think it does.
>=20
> The box in figure 3-52 has:
>=20
> - Read AUX_RD_INTERVAL value
>=20
> - Adjust the TX_FFE_PRESET_VALUE setting as requested by a
>   DPRX/LTTPR_UFP
>=20
> The "as requested by" part involves reading TX FFE PRESET to know what th=
e
> DPRX requested.
>=20
Yes, but I now see a different thing now
" During LT, the transmitter shall read DPCD 02216h before DPCD 00202h thro=
ugh 00207h,
and 0200Ch through 0200Fh. If DPCD 00204h[0] =3D 0 and DPCD 0200Eh[0] =3D 0=
, the transmitter
shall adjust the drive setting according to the receiver's request, and the=
n write the new setting
to DPCD 00103h through 00106h and re-initiate the receiver counter"

Ref: 3.5.2.16.1.1 of spec DP2.1

Here it says read AUX_RD_INTERVAL before reading the lane states(0x0202, 0x=
0203) reading the
FFE presets(0x0206, 0x0207), which is what our original code was doing.

> I don't see anything wrong in the original comment, just the placement of=
 the
> read.
>=20
> There have been a multitude of different patches with random version numb=
ers
> with no changelog and I don't even know what I'm supposed to be reviewing
> anymore.
>=20
Sorry for that!

Thanks and Regards,
Arun R Murthy
--------------------
