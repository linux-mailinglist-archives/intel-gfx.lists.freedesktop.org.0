Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3111F943002
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 15:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58F4D10E635;
	Wed, 31 Jul 2024 13:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FcpxUDix";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6716C10E618
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722432333; x=1753968333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tJ9UfDi/gY63vgrHfrs4h3loPvGRQrJ1chDEc60qUEk=;
 b=FcpxUDixxeStBGSb+ntKykfJhzLNG+Im2x8vx0mwFr7Iu7D23soln4eY
 LB+QfYBeQd5KwfhvHIuwFhS2ClnXApxhX+9N1hstsnLfOEQvIoUavhjeX
 3RKNqIlRCa4BetBmKJH1QaRwN9VqxjKy4TPFxSu4idR5SEWHishLsSggw
 77J8uHXnb3ToBJNoz0ni3sLiXDN02lg5YVfE/P1Hiq57ebQvAS9+ML22I
 OIwknPTWJ66W4JWbrnxexHS3qBt5W2YH0F4nDzpQZl9SyEheBweWcIeLY
 V3HvcsZkmt5Vsty5viVHrqB/TCPOVxb3u5Vm3pStAMEXfNg37FIFavV7P A==;
X-CSE-ConnectionGUID: ztCHzjIWRZSg0r0kf3Bgjw==
X-CSE-MsgGUID: 3bCwZh/ESd6x0isZb1BNWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20493224"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20493224"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 06:25:30 -0700
X-CSE-ConnectionGUID: pxjZm++hRQiGqS9ZNJxWmA==
X-CSE-MsgGUID: yw6eOuFKQzSiMarGfI5S7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="85613854"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 06:25:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 06:25:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 06:25:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 06:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HLH+fqlsx9n+8aeh8iyEWGdRfPOrgGAFMpg7Y/rqijJ9OZuGlYD0E/W4nocQdaZZvOkBj13o4zzQKyWCFYi+G9rbnuEkMQknqAach0henAfX+njNCzstpW82oG47oFduGZhXHQH72KtXNuV2Re9Fy2ggUZgm7Sqs90Kvrqnsm7XYUEDLJomJeZ7GMRexaQMhzfOkG0z2EXPqF3EDP47J64PbYxJenRkf45Kg+qaEViBSe0sJMvUkED/Wygcg80R7J9td3GYBTLAKv1cgzIeTYDsFHECK4Xl3E6jTpY91ZBTC3Ln16Q6UBy8iehNgXjzBRt8xqOxnBzHuh6SccKtt6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CtPKdgEi1iUN7m+xCOCMM43wqmA15NYIbQ+8GFD+jKk=;
 b=SXWiUfiRb1ftCY2N0ldiOBtUXeUWZZ/LohFC4dFERpQ7ugcVIBVxuvsTOqc65CZJ3Buk+xrIA8331xN67CejbDHBaNYVA8id/mVnd9kXnI8Elz3fP2Dib8XoDoTAR08aF9kIe2TO1m7VD86yDFGsIue9lFsS04eVQNQE782CHxsX5mWkv4GpODux208bA9gBdjMxIN99YDAdj5Is98yZQpv4GSuWgw65L/fDjKOZVSMFByKCTOfx2jhh7EeaHBxDouA+dFT9tAu6K3NU7Dmu3J39qTc7xJl2qKQZzbcO+njnSMYhuzM4niJMEV4DkJkAYN4spEE3ygqqFWGDc/M4Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 13:25:26 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7807.030; Wed, 31 Jul 2024
 13:25:26 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Topic: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Index: AQHaj+I+mSDesZPgD06ItMjjpVKUf7GOYmeAgH/5KOCAAPD9AIACJZkg
Date: Wed, 31 Jul 2024 13:25:26 +0000
Message-ID: <IA1PR11MB6266C3A1BE66D244467C0CE9E2B12@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
 <20240509032922.1145558-2-suraj.kandpal@intel.com>
 <IA1PR11MB626636FF0B8623E41A890EA5E2B72@IA1PR11MB6266.namprd11.prod.outlook.com>
 <MW4PR11MB6761AC375AB22E6F2F16E8E7E3B02@MW4PR11MB6761.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB6761AC375AB22E6F2F16E8E7E3B02@MW4PR11MB6761.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA0PR11MB8334:EE_
x-ms-office365-filtering-correlation-id: be714857-a1c8-48fd-b378-08dcb1643d37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WzFcLx/qYITdtpwdRTwnMEC4HLTkEaxJ862IMBLSvCrOWyezSi6abxNLTTUU?=
 =?us-ascii?Q?eTPm9oBX5fGvYxwc7ZkmLCwGVwajqnoXl4kdSW7jYL1V0ghGeJ8hcGYvq3Y1?=
 =?us-ascii?Q?uKo9wvaJmETsKsOdV8NYgKI8I/AQH01xfXhqKb2g9gmDh32r9/sljEipAcJ6?=
 =?us-ascii?Q?+IEAvLXbwxpLHvQTqDW9Z9pbV+eD2aju43AOK2rOfH4V/EgJfAvgt4cDvr8w?=
 =?us-ascii?Q?v/xGCtbCOrzh0PqU4LQW2i1ZZR5wlSQV7KMmaWqb+l6u8gAU48mSX0uSlBis?=
 =?us-ascii?Q?HZdLNf8u0IWJwPkRZ8VGGpZK0Rpo5NVE5pRIq8tTrBsovaG9IKrgrlQ6jQfi?=
 =?us-ascii?Q?SINKxfe9p47r77CPfL/1wonzGErdx8Ip1XORqG/vk7wIb9FhY6UGt3iYg6NU?=
 =?us-ascii?Q?bfpJeSrjtd5tJgBPWPygm7jcK5gWQ6Ip19IBKi9KJj/sry9p8tEDTh0NA0aM?=
 =?us-ascii?Q?chy19n2DMq4BySiI40PF7RRm4l0ulWo5plynLEvetcrqO0YTIEznnXzH+hhW?=
 =?us-ascii?Q?MHDM2umX5qTuwrZxke7DIZIbFsAG7ULwDp2eU4MYfx61rSdipy+2K2vK0URG?=
 =?us-ascii?Q?ArtYGv+LYB5M4ZHDckl/X0l80+iCaSCxTbdvn/w5GIrj/QjLEO28jW2TJqRQ?=
 =?us-ascii?Q?d2GD0FNhcRXt21ZQl+5lhX9OwyGPOliExOJc2bo5xfGI+9OF27HMhfG05+8m?=
 =?us-ascii?Q?sBnlmWiQ0r4QvMgJqVGaqq8zkhpH9vWVfEwRS+YLIQ72CePRoOqVwue8CMYV?=
 =?us-ascii?Q?lewFJl+4evGiyikXttDKuWwr9LsCXy2dNscnp7ArPh5jAzU9YytXhVVlxu9u?=
 =?us-ascii?Q?pzYJTcAs85lWalV3lNc+kRstSsQyXO+hZkuRNh5z9YHTHt6dERpiWeAtyMOD?=
 =?us-ascii?Q?D6pq2htRtyMf3my/V1FTygRmN0ZdmtGxkmPLfQW2J3OpMRutf1MB+GE5vIjD?=
 =?us-ascii?Q?bk4PhIAEAtgotAH2JkWeNG+6Ki/Crny91a52xTrzeLmjUF2Gzach/VxjLYF1?=
 =?us-ascii?Q?ZiJetO8VHbOqOK7CSah8qbaP4fAzc4aZUf4v9MCg9Y5ntCQ39agTUhA8OkHj?=
 =?us-ascii?Q?wcMZwlavL8q+egs4cMrZLdYuyfXgfNaCtP400np8pllI8OskWkIsxVBXADa0?=
 =?us-ascii?Q?ep3fqGypaRgoW8HnW4JcDO+w9roucD2GdOLH0kiuBBuReYhH8Hdc+AmIGMVE?=
 =?us-ascii?Q?5GvlWY4fsvxxFBt7M7Z8lS1ZzmNMq7IkVPZKxttjKuAxjzz7RQAW03lEl0/h?=
 =?us-ascii?Q?RkCPRoBSCFjnyw8pMG4i6FLmJD/z9k5cdzJN35ALuP64JGOidiNIew/t58nh?=
 =?us-ascii?Q?xh/8SjOcxTQmpWsWWB2ZkNh992WOa8xLjhu1JjTz7vc+wnP+oPdlfkWKVFbc?=
 =?us-ascii?Q?OSL7xSNMEtoSoSGJN893428hebhfx2vIVz1EQG89+WyuxM42MA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SoGHj1J1c/Gh0Q8WQkTAAm0lff/H5voChkfnRhjzteEfBKg152WqDAoqSVqF?=
 =?us-ascii?Q?vJTnA6t7momL7TnTfkJ4TjHlGPla48ablo9fWeSK807aqjlyND0i5BaqhoIC?=
 =?us-ascii?Q?/VWrIfu1Mj+BavlSwrrwFKunRglSga6HHpLgHymN7cbJaQbRwItkbqYerAIU?=
 =?us-ascii?Q?syx8JmDBJkqp3Q0PiNamcg8cj2nrJSyu2wFZcRzrqI/ZbpTdu6JBrKrEM6XD?=
 =?us-ascii?Q?kCjyU6c+nGhqlDgIL3LRQipL2Fk4cZleNfs773duuEZXibEBgN7s+xqN9/kx?=
 =?us-ascii?Q?yhdzaWwUba559v39KwMM0mxa7pMmVw5dc3trgUypnm75ti8amBj2Ry+dR/F5?=
 =?us-ascii?Q?2w5hMVilFC5HCKbkpbgItXKdUFBp+bQEZ/ougObX01WNyelcpHz6Xzgm9EMC?=
 =?us-ascii?Q?H+T2P2y51Hfdz1/6JBljBmNyLcvQ5FmVsgXE1qmTC9jVt5bo4t0oSRMlAaZ1?=
 =?us-ascii?Q?j+FRCP7n+x8IqW+4ZeFw2XT1RJf43RP52A0FweUBrf9nxCZLtPEYh+Ib68e8?=
 =?us-ascii?Q?3OAT4sM4sfVlrw4ERfgJIBRAseqdhurNaDvbxbWIviAnXdFszpEafqZmzHOx?=
 =?us-ascii?Q?nGSOODFm87C+wlJkP9Z4TOeewfqu9HCIRWsK4EEi8fOvhgTbQepC+cEmIaFW?=
 =?us-ascii?Q?qjnX8ZteCQ5tai07BLJYLQgLz6nMxHNViZD6i/6RUjh2xRzXAPLjqtBEgamO?=
 =?us-ascii?Q?Sy0ivYIigwi6MEekbcC93GtrnmPvosGDK9mr+v9GOcouEbjCHUMq8MccMOQD?=
 =?us-ascii?Q?6sCqS4oL2SvSV0NOpDPaGg0R1wtzVyq9XWyeEng+cgd8fhMTc799Cfz/EOIZ?=
 =?us-ascii?Q?ETW6zsu0yVITvdDcDh3nbigHQIpfVf0f+G+0HttmVzqgVN9oMv5XfWMJNQJ2?=
 =?us-ascii?Q?AtixyCsW7oijVvZzPmqLzVz/VYePlZPs4eGAlk0iM458DTi7WpQRXO2Yw7ka?=
 =?us-ascii?Q?69avhmKKpS3Q1G4nNPhe8aRI8CvfKHTZQKkk/nR1ssRiEdCWwHKfpzfrFfB1?=
 =?us-ascii?Q?8gRt9uPTI6Vh+zeUR6ovYvH0sar+SADr/QyVtgEl/s4gbCzfMv9dOMlQVXBK?=
 =?us-ascii?Q?TIS9ugbEYKB3HNn1g73B9cZA0qNH2wfDrjioGWNPgVEHCE/k8b/jKufwNtgA?=
 =?us-ascii?Q?WAIjb9XVdErHP7YPPtQCSrV4gnUhqPGWsNZ+Momk5AP3SYP27xYbLx8hyHg/?=
 =?us-ascii?Q?biFW6wIzmQqvsvZQwrTjkzzHGIMxRG2EW0DJYMckSp2H5Yk0UrMER1SwYZ7g?=
 =?us-ascii?Q?A6c5+sn5E4f+b7YCETlz54B9l8CBwOItfGmgseYCCIntEOzwOgxQgAW8eOmK?=
 =?us-ascii?Q?w5EbYAysHGV5M2JeJjAvHAABRKjUUNFkyqnHOnyezlvwu+OTRce4rjfvYQ4D?=
 =?us-ascii?Q?/fC9e/E5vSkV6mZmW3QkF2k/gNhVRNGpTTHqzWBfBDhUVzA1o9Det9Vig7mY?=
 =?us-ascii?Q?4RcuX6EJoUarV+MLJKRtGUC00P9GNwDSpZkdvgoEcPGyRCmSn5gSMmSmHWG1?=
 =?us-ascii?Q?1EdZatCK6v+tCummhdRLZPAV2i6742Ugb9afjj7NIV+N2/i5g/oC8apoQnfX?=
 =?us-ascii?Q?+pICqn5wXBfOLVA/T8Urgfd+quqjXI4IIt99K4auzSc7scFGTS+aI9OjWbuZ?=
 =?us-ascii?Q?Rg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be714857-a1c8-48fd-b378-08dcb1643d37
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 13:25:26.1334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qv0d0SJAjvYzkOV105Zz1i/4+7LQFj2Jp4qHYccjyq2Y1nPUfIAvm/dKQdPfWsM47m+wIz/L7VHWdipSP8b4xqQTSiMbldY4CEQPVKsjpMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, July 30, 2024 9:39 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequenc=
e
>=20
>=20
>=20
> > -----Original Message-----
> > From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> > Sent: Monday, July 29, 2024 7:24 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>;
> > Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps
> > sequence
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Suraj Kandpal
> > > Sent: Thursday, May 9, 2024 8:59 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>;
> > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps
> > > sequence
> > >
> > > Disable bit 29 of SCLKGATE_DIS register around pps sequence when we
> > > turn panel power on.
> > >
> > > --v2
> > > -Squash two commit together [Jani]
> > > -Use IS_DISPLAY_VER [Jani]
> > > -Fix multiline comment [Jani]
> > >
> > > --v3
> > > -Define register in a more appropriate place [Mitul]
> > >
> > > Bspec: 49304
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
> > >  drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
> > >  2 files changed, 16 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > > b/drivers/gpu/drm/i915/display/intel_pps.c
> > > index 0ccbf9a85914..d774aeb1673e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > > @@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp
> > *intel_dp)
> > >  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
> > >  	}
> > >
> > > +	/*
> > Hi Suraj,
> > > +	 * WA: 16023567976
> >  --------------------^^^^^^^^ is not the correct WA number.
> > Please mention the linage number here.
> >
> > > +	 * Disable DPLS gating around power sequence.
> > > +	 */
> > > +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> >
> > Also, I did not find the link to the display version 12 for this WA.
> > I could see the target display version for this WA is 13.00 and 14.00
> > as a permanent WA for now.
> >
>=20
> Not sure how you checked this but if you go to the WA number it clearly s=
tates
> Family affected as : Display 12,13,14
Please check "release" attribute and WA's under the same lineage(in this ca=
se 22019252566).=20
You should implement only the WA marked as permanent.
If you think required platform is missing, please comment in the issue.

Dnyaneshwar.
>=20
> Regards,
> Suraj Kandpal
> > Dnyaneshwar
> >
> > > +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> > > +			     0, DPLS_GATING_DISABLE);
> > > +
> > >  	pp |=3D PANEL_POWER_ON;
> > >  	if (!IS_IRONLAKE(dev_priv))
> > >  		pp |=3D PANEL_POWER_RESET;
> > > @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp
> > *intel_dp)
> > >  	wait_panel_on(intel_dp);
> > >  	intel_dp->pps.last_power_on =3D jiffies;
> > >
> > > +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> > > +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> > > +			     DPLS_GATING_DISABLE, 0);
> > > +
> > >  	if (IS_IRONLAKE(dev_priv)) {
> > >  		pp |=3D PANEL_POWER_RESET; /* restore panel reset bit */
> > >  		intel_de_write(dev_priv, pp_ctrl_reg, pp); diff --git
> > > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 5670eee4a498..4cc82360298b 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -5151,6 +5151,10 @@ enum skl_power_gate {
> > >
> > >  #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b)
> > > +
> > > (i) * 4)
> > >
> > > +/* SCLKGATE_DIS */
> > > +#define SCLKGATE_DIS			_MMIO(0xc2020)
> > > +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> > > +
> > >  /* Plane CSC Registers */
> > >  #define _PLANE_CSC_RY_GY_1_A	0x70210
> > >  #define _PLANE_CSC_RY_GY_2_A	0x70310
> > > --
> > > 2.43.2

