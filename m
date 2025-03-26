Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B16FA712A3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 09:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C5310E64E;
	Wed, 26 Mar 2025 08:31:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L1yz2mQs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3272610E64E;
 Wed, 26 Mar 2025 08:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742977893; x=1774513893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7phlYmIpvCzJGQMWg4HduO+9DbyVRDu9cdWxOBA+j4U=;
 b=L1yz2mQsKKwinoI17F05nZnmYtQ1UMeF+JraWjZ5MnDD9pBbbX2jYfLB
 TEV9vuF/h4UnJ/KDT2c4tgJrWoDSYcFySKMGVneBGqa/GXVHTeqT536nW
 3URC4PpbfOOEFz+sVsNrR9Wwd22460fmL5v4iBKIxVkxRIjuFfo/I3I2l
 dJjtf0QXvUCEk531zxBcQnxUxoPnzW/243Pq0V4xQRFa4a3+EGw3pyJwS
 UdTgVluDup1kW9kg1iOO/miDtdxOqRDnVGuora5tZKDB3QYbARZrrsBrz
 Oi1vxLZicw/TvWvh40MV9TBIVLyEIYTFuV3fsWGxGWSNQSCvs3p5p9OOQ A==;
X-CSE-ConnectionGUID: Yz3z5/nbR8iM9wGb4gCrog==
X-CSE-MsgGUID: H8ctkE8cSPW0rTg18ETWGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="44355205"
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="44355205"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 01:31:33 -0700
X-CSE-ConnectionGUID: /AyEQIkOQBylBonCZap2mA==
X-CSE-MsgGUID: oL9Sqp9WQnO6VUJt8Bv8vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="129539314"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2025 01:31:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Mar 2025 01:31:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Mar 2025 01:31:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 01:31:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v2uxF1+YajFPfFtRLbHPjqqQmCJg7wA7hw+wc8RMTo8cWa+eyOWczKQ4dvRHxdn7jcBlvYTw9wRntZXUWp+5HsWltudIT82CynGj3/VaMPEC/paH87tb42szkr+Zjcnuy981lTPxtL2KcHa61q6NHwx2+UENP4/0vv+Piw5qV3IP5Zj9Uo1Gkeq41hPLVXw6bTNXiLDBWXSZsZ08vNtSkVLtEEK6fQ7CeT/2u69J5RuS8JhVoyTiTk/YRnfSaIrp1z6f4Qv5IWyZpndSAjS+W99OES2q7gAtx66VcTWQBaxfWVHiUyBGRNDgLRUfatt9STSDMvLXR4HqCvomodNSvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVtKsEzCD+tDkgBw0u/ijCz84efA2EKukQmbqaL0DXc=;
 b=CS8qMUgu39pu7y+j/6fG6aHXQ3aaW8N2BROJ3NiTfseNQnZ/qnVhPRDEGIsz7ii5Bu/sAOFQGqyDSq/7+Aow89WQniA8K7HpuDxnrmPgBThfBnMqhbc4luzKWSIkMkGQVXu2isz4caNYe35319Ks2/V9KxipYWe26h/6OnoV+Y9qYCtrfm2kNpmtutQJtHZALAgXne6XLTLQr3YCofq3OGJx9aRilfED7KYZCE0tOZH+ZXrjfbwsL/M+AS5fG6meHswp287i6EzzQObcykX5YlwpjhKI8ZsNEZbG37UWdS9VddNXTS77GvWmGLcEjQTUqha3iAsc3bPh11mf4Koqdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB7770.namprd11.prod.outlook.com (2603:10b6:610:129::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 26 Mar
 2025 08:31:15 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 08:31:15 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Nicolin Chen <nicolinc@nvidia.com>
CC: "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>
Subject: RE: Regression on linux-next (next-20250321)
Thread-Topic: Regression on linux-next (next-20250321)
Thread-Index: AdudRupO/hqyu5dwR3qhp+EvWE8LDwAEjwgAADQFtWA=
Date: Wed, 26 Mar 2025 08:31:15 +0000
Message-ID: <SJ1PR11MB61292F9467353BA9FBB8F4B6B9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z+Jd4GDIzCP5cBQE@nvidia.com>
In-Reply-To: <Z+Jd4GDIzCP5cBQE@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB7770:EE_
x-ms-office365-filtering-correlation-id: 4180e9ba-6ae8-493b-46db-08dd6c4092b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Q3CrDyfGWvF8n2am+V9YzclNgm63iopVcFxuoVBtZq2C/miCbkPEeUwWlYju?=
 =?us-ascii?Q?Ayh/MLrUv9A8IpxozZQq+JGhoh+16hFjqscb65ZGVahAp9ipZzgmqf80QJ8Q?=
 =?us-ascii?Q?X4VJ2Y3wW2ElNdSLTV3/6maPq0GoTeY0XZBJyXxZ/5DvWEK9TR46oXQMgPVh?=
 =?us-ascii?Q?/Lpic7cNy8zNgxRYrLIJAr+Nk5Axa+E10qeowkXuXLpfDIGhn3Efpavw8l3M?=
 =?us-ascii?Q?UnS0PWRpznjPebqZwSwn5sXo20MoVxIntzTMA44J5a/sCVlcF6AIVTgRVRFB?=
 =?us-ascii?Q?aHYJLw/gUGd5cKtJyCzQ4swuq9dvjLksDe1y5vhZFj/6VMIuIx0hQw1ZROzl?=
 =?us-ascii?Q?JoR3wCorYS8wOXBXUhiGhCl5M2daeIfSqdtxmcnmf/lQR57l1wJgsnMk2c/p?=
 =?us-ascii?Q?R4W38fxnweYfwjEfLENlFYygl10usA7Ut3wh7DfL2X391KARgMimdvO3pT4S?=
 =?us-ascii?Q?uyS8mYAkQEgsAjz7nNYeDytkSz8IQLHDv1d/jGVVV3IrWFui9fgzQyYuL26W?=
 =?us-ascii?Q?+kDckVWzV8usnMS1PG+ZJn/+BCGyNYJailXdUSyy6AWFJ2srKHE72uv7CfCs?=
 =?us-ascii?Q?hGiKrVgLmmxrpa43MtAJNTPUH2anslUUhY0mU6kUZfFzqZYa8JEYm7cL2vnG?=
 =?us-ascii?Q?V17FFSQ9Hn7Eo6iO+pWHIXn/Z57YOIhNu7RHb5QIJX2eXTu1bajq6ZyhzBmh?=
 =?us-ascii?Q?LjWUMyHwACmy+mCdlPpoqhRweqgZYdpKOwQValqvU8rVDaEqz58/F+yTFX13?=
 =?us-ascii?Q?tolxpGmULvhW0K5sf/2dsgO1ijvWJQkkPkch0C0PXLzav7KDIFRsbviMniGl?=
 =?us-ascii?Q?E2R86mmnbXyxTmIfaEGl1jawgZNCwfXP0EdXtiF7x/1xnzNfVNGCONTxQRgT?=
 =?us-ascii?Q?rkkxe62B/q0MGgjAufOlMfwMMZuCLozk3TQJmvM+arfY4DgIfhkd+E7cOMNW?=
 =?us-ascii?Q?LnLwgDOX3J8CWRz/dTx1EKBbORnNV7/vNm5nhz6I6J/l9ar+XsUO0bLUBFaq?=
 =?us-ascii?Q?siCrulamun0TMro5yOYxPZLe/6yqDhjyvaaSc660jamCO5Ls0k0OXcqBxJZj?=
 =?us-ascii?Q?dqiMetiCPuK6P8DgXiDnLq00dvIJbl3SJ+Bpg3+YUVmntcV7DVFUg8AhZ6Lw?=
 =?us-ascii?Q?aJ24TTQAPtK6Q1DjUxoV7JqNksQExIi4HhFyvuH1O1/JRxzQnMxzNL/YPgp2?=
 =?us-ascii?Q?HoZub5Py+rwfRIgHFUMsIXsiXOHM8LGkV3Bjc6E92jayiXkNgrJVQadNFn7p?=
 =?us-ascii?Q?0HZ4pCLLGnolN9aUZNbGmY342BwjKjhW0/1I6+HXq3kQn8aGt/BlYxn7QwgA?=
 =?us-ascii?Q?iYi5jOmHQSMIxi3orpbwJQCo/b3DJibIsQPsVkSRZCHJJI3qoX6ZoCNY4q1c?=
 =?us-ascii?Q?Gx3bf177ocC2vkIvrZyBEChvmQCgT3ZSDR2JzI4eJ/CGpliMMCv4LnY6qPb0?=
 =?us-ascii?Q?bLkU3prnx96F6VQy9m2JRvolP+oAfH6h3yfYluliiaYcvT8Ij3P/9A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qGdYV9SPnCHf89W+krkW5K8Ck/GURKbYiWBX36Mf9QOgAfO5T+9GsVeg+l8W?=
 =?us-ascii?Q?zdZYzK8YH/mmg2uzGQC+Y3qCFNTholHgFNcHlCsVP/sHfej6bu5DpsQdHnUx?=
 =?us-ascii?Q?VHXxVbk2Px1B1d8vAfVJ5aphLA3cfWUWzWIIliXfOqtiiD/Okf5pvsRFQlSs?=
 =?us-ascii?Q?wTuylU+2ccrcDL9n9emwyvBT9n9sik+jBSUiWdEk4TBaPsNwdzTfvzXwkVLA?=
 =?us-ascii?Q?rpR3FyOYZ1WUfb+VRERR/Xw1qN53cAXAswwqKjsLPOMhBgEQfAQIdNweM7x0?=
 =?us-ascii?Q?qqi49e6wmxJnwhPp5sJEZNbhyqvk/FMJnePf1Il9M1I/HsunzsYJ98NnTVEa?=
 =?us-ascii?Q?2ECAjLVA9dGfNmn4fPHZgjqGgBZ4RISSAW2uU/RLu/VXunvNngN97KRzIHT1?=
 =?us-ascii?Q?lQU9Z/nA8I+BaS7QRARikhMKu/uRIVxoTK/KmOiUK6jc6cSEcaLwNSKXpbd5?=
 =?us-ascii?Q?iBiQRRk2Us/n+lJirm1F/4+jfA4gwFZ5/VnLjjtkpSPw1v2aic6R1FkJPYjz?=
 =?us-ascii?Q?Gdn+1yXBvzbsNqLcTvLbKUkaNl0uYwGQF/KepAE/jDXtCHOvzED8CxfhYwzn?=
 =?us-ascii?Q?8Y2K2cq4YrtZheDgFvWhVJIS36lLCMMcAcK8n7JNuKwcJa+3gXWVuJ7C0UCQ?=
 =?us-ascii?Q?90kImFWmBslf5pYSvpN3P0kXarQv6+onXe3D993AUiZqiZLPz4fKT2xJ1UxY?=
 =?us-ascii?Q?72vRgi8aaM1dwYHumYDaTo0VSCb+hONtACsEWEMogGxxLTHk4/yIUapQWL0R?=
 =?us-ascii?Q?fq52kqTMu9cr/xtcXSeagj+h9tnvtUFiCCtXEFltdjPBH7RUvUtsaKO8kTqb?=
 =?us-ascii?Q?1RmH7dYmhl4TOF+z/66ndbA34Qwu5Ce5VbYyu040nsgKkC6mZgeJRPZrb9pa?=
 =?us-ascii?Q?iSdTf8FhsQNnr86Mo309JpwkwMs/eZLMgA61OTomW+IoEi7E+TsBZ/WRIx6D?=
 =?us-ascii?Q?fAR+p4eF70IMn/l6zKE01oYxJw5mcd9q5M2+lN64JaHUVc2QI+VTn5/88EgE?=
 =?us-ascii?Q?J+7BuOnz/babVJv3y7zduJsP4TqYF1C71BMWLYi/2uVfbtUV3nK8MKLcHOaE?=
 =?us-ascii?Q?A6b/Ub/cISKS8u9UlRRI2DJQuaMc75kTsSW9xT4c1m0VMu2A+CP8+Lja/s+o?=
 =?us-ascii?Q?UoYmpuUF+WdftV40o/AqWQ/HIkTzlMoFuEJ6+YH/OC+aC9BNK2C4dNHbKWOG?=
 =?us-ascii?Q?I7ukpq5y6HSvhKrBQMc/W0A/GfQSN1BcIwCSohGx7pIIMZ6yEngwA8QkVgVz?=
 =?us-ascii?Q?yAVUkXO7ATBYPraJZ7vM2DaoRjspEQTkg36CxgWz75azcGrvzsb+jdPsj8vR?=
 =?us-ascii?Q?oMSVqsCDr5YNizMWawxX3lmnDVfob4F+Cf4xqkw5dAH1/HN1AEYvKKGVGzrY?=
 =?us-ascii?Q?ggRTCZok+/8kdte+uAF582MCqeklTbsH9ycKxZh0g0rfwJHIuI9dfQvYt2m8?=
 =?us-ascii?Q?vSSn39AXLOdPKLiElkp9lqK2DwP0PBLAS9ZcdL7e40r7cmD64V9lycHtvPT2?=
 =?us-ascii?Q?xk1U54+F9jXwjrvHZt+CMYO8C5w3U9BpfrsYl61fPzaa6i5XpVqPp7RVq8Hk?=
 =?us-ascii?Q?RRqLh0iTMY+3a/AKV3lutQwm1Lj5vqtVU5qYFcoFALLcq0TNpV9xns9lgJSK?=
 =?us-ascii?Q?ow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4180e9ba-6ae8-493b-46db-08dd6c4092b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2025 08:31:15.0831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CUx50N6GEg2ENE5Fhtd6f1Pi3sEBYEENIzqcRiUSapIFHvwZ2ee5Qe6rYz2Zu07vwAygxKXoFIK3VmGz0TKDyt/T71BNu0RqHkByeWG5yHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7770
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
> From: Nicolin Chen <nicolinc@nvidia.com>
> Sent: Tuesday, March 25, 2025 1:10 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: iommu@lists.linux.dev; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
> jgg@nvidia.com
> Subject: Re: Regression on linux-next (next-20250321)
>=20
> (CC +=3D Jason)
>=20
> Hi Chaitanya,
>=20
> On Tue, Mar 25, 2025 at 05:39:39AM +0000, Borah, Chaitanya Kumar wrote:
> > Hello Nicolin,
> >
> > Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> >
> > This mail is regarding a regression we are seeing in our CI runs[1] on =
linux-
> next repository.
> >
> > Since the version next-20250321 [2], we are seeing the following regres=
sion
> >
> > ```````````````````````````````````````````````````````````````````````=
``````````
> > <4>[    0.226495] Unpatched return thunk in use. This should not happen=
!
> > <4>[    0.226502] WARNING: CPU: 0 PID: 1 at
> arch/x86/kernel/cpu/bugs.c:3107 __warn_thunk+0x62/0x70
>=20
> Hmm....I wonder why x86 can be affected...
>=20
> The only four callers of iommu_dma_prepare_msi() are ARM platforms.
>=20
> > <4>[    0.226513] Modules linked in:
> > <4>[    0.226521] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted
> 6.14.0-rc7-next-20250321-next-20250321-g9388ec571cb1+ #1
> PREEMPT(voluntary)
> > <4>[    0.226532] Hardware name: ASUS System Product Name/PRIME
> Z790-P WIFI, BIOS 0812 02/24/2023
> > <4>[    0.226539] RIP: 0010:__warn_thunk+0x62/0x70
> > <4>[    0.226544] Code: 34 4c 5d 02 01 e8 fe f6 a7 00 84 c0 75 d9 48 c7=
 c7
> f8 bf 0d 83 e8 7e c6 08 00 48 c7 c7 a0 a2 a0 82 e8 e2 f6 a7 00 84 c0 75 b=
d
> <0f> 0b eb b9 cc cc cc cc cc cc cc cc cc cc 90 90 90 90 90 90 90 90
> > <4>[    0.226559] RSP: 0000:ffffc90000067d78 EFLAGS: 00010246
> > <4>[    0.226565] RAX: 0000000000000000 RBX: 0000000000000000 RCX:
> 0000000000000000
> > <4>[    0.226571] RDX: 0000000000000000 RSI: 0000000000000000 RDI:
> 0000000000000000
> > <4>[    0.226577] RBP: ffffc90000067d80 R08: 0000000000000000 R09:
> 0000000000000000
> > <4>[    0.226583] R10: 0000000000000000 R11: 0000000000000000 R12:
> 0000000000000000
> > <4>[    0.226589] R13: ffffffff83c9417c R14: ffff88887f344bc0 R15:
> ffff888102370100
> > <4>[    0.226595] FS:  0000000000000000(0000)
> GS:ffff8888dacfd000(0000) knlGS:0000000000000000
> > <4>[    0.226602] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > <4>[    0.226608] CR2: ffff88887f7ff000 CR3: 000000000344a000 CR4:
> 0000000000f50ef0
> > <4>[    0.226614] PKRU: 55555554
> > <4>[    0.226617] Call Trace:
> > <4>[    0.226620]  <TASK>
> > <4>[    0.226624]  ? show_regs+0x6c/0x80
> > <4>[    0.226630]  ? __warn+0x94/0x210
> > <4>[    0.226635]  ? __warn_thunk+0x62/0x70
> > <4>[    0.226640]  ? __report_bug+0x110/0x280
> > <4>[    0.227000]  ? __lock_acquire+0x447/0x2c70
> > <4>[    0.227011]  ? _prb_read_valid+0x25a/0x310
> > <4>[    0.227018]  ? __lock_acquire+0x447/0x2c70
> > <4>[    0.227024]  ? prb_read_valid+0x1c/0x30
> > <4>[    0.227037]  ? lock_acquire+0xc4/0x330
> > <4>[    0.227055]  ? _prb_read_valid+0x25a/0x310
> > <4>[    0.227073]  ? __warn_thunk+0x62/0x70
> > <4>[    0.227081]  ? report_bug+0x24/0x80
> > <4>[    0.227089]  ? handle_bug+0x16a/0x2a0
> > <4>[    0.227098]  ? exc_invalid_op+0x18/0x80
> > <4>[    0.227106]  ? asm_exc_invalid_op+0x1b/0x20
> > <4>[    0.227122]  ? __warn_thunk+0x62/0x70
> > <4>[    0.227130]  ? __warn_thunk+0x5e/0x70
> > <4>[    0.227135]  ? iommu_dma_ranges_sort+0x40/0x40
> > <4>[    0.227144]  warn_thunk_thunk+0x16/0x30
> > <4>[    0.227157]  do_one_initcall+0x5d/0x460
> > <4>[    0.227171]  kernel_init_freeable+0x3ac/0x530
> > <4>[    0.227187]  ? __pfx_kernel_init+0x10/0x10
> > <4>[    0.227196]  kernel_init+0x1b/0x200
> > <4>[    0.227203]  ret_from_fork+0x44/0x70
> > <4>[    0.227210]  ? __pfx_kernel_init+0x10/0x10
> > <4>[    0.227217]  ret_from_fork_asm+0x1a/0x30
> > <4>[    0.227236]  </TASK>
> > ```````````````````````````````````````````````````````````````````````=
``````````
> > Details log can be found in [3].
>=20
> And I can't see something obvious from the log..
>=20
> Would you please give the git-diff a try (drivers/iommu/iommu.c)?
> https://lore.kernel.org/linux-iommu/Z+Itnw4ys6dmDsc+@nvidia.com/
>=20
> If this doesn't help, would you please give this a try?
> https://lore.kernel.org/linux-iommu/20250324170743.GA1339275@ax162/
>=20

Thank you, Nicolin, for your reply. Unfortunately, these changes does not s=
olve the issue. (applied individually and together)

Regards

Chaitanya

> Thanks!
> Nicolin
