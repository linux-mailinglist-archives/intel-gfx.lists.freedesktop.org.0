Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FFA911AAE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2024 07:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436C710E9C7;
	Fri, 21 Jun 2024 05:55:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RjZabHg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A9810E9C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2024 05:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718949321; x=1750485321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wDZo7mTm0aTae6fwTQyzJa1ApL0Y4ViYDkWNmSxsGLg=;
 b=RjZabHg4M37xDEkH+ToWMhezsIeDAKNNTRaNUVU9yXFdnspJzbN5pnJ0
 rUBEYZl+b9C+S6lRw397PidnUr0dsmRbtegG1G1MLrDi540ywwqHlVA0j
 ipCJu1qIN3eo1uy/vv77j+54vjwb4VcJwZgFKmCPEYMwalo2qtVs84Ssq
 j25zt27Uz2j1pPrT3XzBNjSnlKT06mqbbkZbFZSaKAfWLfnpw0pic8WXu
 Kt/1JvxJxZFBj5biLXv6xxi53KRZqEB+rMdaKzr3IMX3dLyNjbgdqxMby
 TsRhlmd/LL/dHJ1efPyMYdqIc7Kiq04t1pWapvR80VQRj9e282Kvq/LvI w==;
X-CSE-ConnectionGUID: V2KQBNI8RdSLzKfch2Txfg==
X-CSE-MsgGUID: caxpx2p5SpKnJLfPTwbrig==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="33510957"
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="33510957"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 22:55:18 -0700
X-CSE-ConnectionGUID: M0ZxvQTeRE+7Wrz/+GyCCw==
X-CSE-MsgGUID: G7el4lFlR1qivlbkeVcPKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="42346463"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 22:55:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 22:55:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 22:55:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 22:55:16 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 22:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CD4Jiy4+mvU858CxQZTa7v+PiQ3CLaNp3YANeM0ZgewN4X5cMT+fPWXu+dWTDtAS6CWL2ZylSXimONpNS/xcN3wEGjBsGZzBxED2HRmCoaJ9y7JtFUMSyEMyS9XLRzYl8dOHYn5OZEdaHOpL8/xhuHRTyYuS2rgWsh8oFyl+ffCN+fqqjxqVe+AU+AWmQJTjr7tLpUBVz/1dNIfZAfFZtibc2+i33ykvg2f7bkQijT0uRDgdMdFau2eTlMcH+vpGUBmj6wIaTYsbr+gtMWSrl6k2xVTwYLvcSr3S2KtKLBEujd9bSRIoR1sXbcpdJD/6OXmU1aM/KLP4ARdWFM3vKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hQ26hMHd1j/Q7uxmjNvoYyscmLULUTbTNGi+Fuf3pG8=;
 b=bI6lxuuww/L0tSEHE0Qaq6wB2zVIOy684GtUEgSrRK0dG1LAFmgP0KpCYaHI/yZkTPfFqwDEz2El/OXeKoC9E9Gedk4nDTtbR8JE74wAPyYb8GFvYLNpHi0ksYxShQiMHomp9Nmmlji98NfyDaJIZxpXoGH6vTBqadTZkUnV0CUUeyD0b7HLrq9YDly+Z6uIrQ6RQIpebdydUaEgazp8pGTCVkA7rg1sHxrpE/TxzZ8S5jKGHIvH28CrsZnvYYsjoSYGsyuGkg/N4jNBIeUxLxgpVvfcxxY/H+rOTx7xbcoygb6bAOPXAmbgau6/x+PznHHVCKp+aI87133L7sfjFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.33; Fri, 21 Jun
 2024 05:55:14 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.030; Fri, 21 Jun 2024
 05:55:14 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v7] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v7] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHawXQd4ItrbJE1AkO1HX0Xoh/Sj7HPDo+AgAHfFYCAAMkJQA==
Date: Fri, 21 Jun 2024 05:55:13 +0000
Message-ID: <PH7PR11MB59814EE33D5DC1D6B5F4460BF9C92@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240618112215.2892017-1-animesh.manna@intel.com>
 <ZnLWjdUXvxGz8Bux@intel.com> <ZnRobyNJljwUY-Zr@intel.com>
In-Reply-To: <ZnRobyNJljwUY-Zr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: 077646ae-df54-4fca-9b39-08dc91b6b82d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|366013|1800799021|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?TWjVQ4rdRpq+myfE4RG1ZaPcCPASbd2qQhB5twQwdGj+OvX6ar58oG+NM6?=
 =?iso-8859-1?Q?c81g+Hc3Yk5qAK0toPfsA5xs0/bbTeqOoysrrX/Vo7+dDPspdNoeaegu61?=
 =?iso-8859-1?Q?Vwpy9MnK9tKa0sur2ti5v7WqIB7QvoPWa7LZqytJTXrtDbMyGTiHL4+Rvi?=
 =?iso-8859-1?Q?lOHFuQaHN6CQxB1AINSpJdVo9LyMtH9vxRoA1+8AnbXLRMgNhSoTTu4bSx?=
 =?iso-8859-1?Q?GPWe9JnWWCSDz01bAoB3t9MBQ1J3rkd4Z+TdJncbKKy8G7uEENW779rJ8F?=
 =?iso-8859-1?Q?n0sGJ7USVY5ihYZsbUGuHfx2nqBj+vpEQuu4qFa6W9FtK/xe25iEgR/p6q?=
 =?iso-8859-1?Q?Ma4QHovYy9ljO1ANSB9H7005GouWZ0D23p4r4ZQw3uGAFANAhLZfv72kDq?=
 =?iso-8859-1?Q?mZo4yREdpGM3WMy5nGITbpgVAOGUASWk3NntKjzsGkksqa2cMSPKbBXc6F?=
 =?iso-8859-1?Q?+tLSNd5+5eSMzWT61+qaHiLB6lQ5gSDOQ19nHcK9Ha0taFOJf/QFQ3wjsr?=
 =?iso-8859-1?Q?s+QqtnYPYHMEmiQCZedLXXh+b2JGk+1A+mI5oMdGPNGvfD5MjeqiVGFJEC?=
 =?iso-8859-1?Q?G/aJ75oqglwzAvc49LpjTEBDMnhASytJ8twhD9ahZyTk0SRMHBRxXf1xQg?=
 =?iso-8859-1?Q?dtvRG8t7nKeUlp7LlmIiv8HDHrU4rtvIvIvPIbmIDJ3eHiDNhxvvzssJ38?=
 =?iso-8859-1?Q?dunMAM4MEtObUA9odB0Xd3jsDrXX1SaiqEBqA1iXLZquQEKRIIP1S2ke4p?=
 =?iso-8859-1?Q?1mLx2JCCPUxVf2FEGYRYs0Y2hvHzgopxi1ducgoIN6n082Jpl0C/K1oxvj?=
 =?iso-8859-1?Q?/s+AZfXuoSf6CGcUGNu0d8pMHN26rzHDlR/Em4E4EMO0gMbson1WV7AzQQ?=
 =?iso-8859-1?Q?uBP+1ZksQvcqYXqnTXDNFBi//XawpW4yluSQTUGYSISR4l+f/olf/gwHLQ?=
 =?iso-8859-1?Q?O0fUQ36/HQ5HYkw7Xd/RQrxxjEWIPciXixIEsebiA9IujMpgXlfUTGT4b1?=
 =?iso-8859-1?Q?NHPGBzoXNdnQrPMbyOmdpGFozqL1CRqkTUAU503BKR47//GFX03ZnLRv4X?=
 =?iso-8859-1?Q?/8479bVyPn2Lx7l8U4qpkjQcxYV98ylilYe6zhu9fRGyA7+ad1X5AHqH6G?=
 =?iso-8859-1?Q?SD1ev789/CAlEgk9fbt+6CqwQSIe51DGGp0W6wIgPLUM+JlQ1uuXTXH4b2?=
 =?iso-8859-1?Q?ldkvt4zMBCcFo0N7nD3LErC4ECOO7mtYpTZZ4CfFBxEOTIyW0MDac7Bbzj?=
 =?iso-8859-1?Q?TvD5lCyJe7zDqyazBVwSBYcCzvqtxRRKy5deh2EbXBr5Ke8LQJEn8KZXj/?=
 =?iso-8859-1?Q?UbdObWq/euUETnXRax9YnPr4w6PfGN240weR7U1/2mt677ZeI7sqV2e+MO?=
 =?iso-8859-1?Q?1jVk3dso4MC0PkQCvWKDjxBtplTWh0v+efp4DZLeYOuE2C0M9xvhQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?G8jYzNcavuH2Kfk4R+u2t1BuwAEIxDUeQlVB8fN7A1b2hBV2I8Yx9ZxNKq?=
 =?iso-8859-1?Q?rjmcgd2U8BLa45RuHPcfG8gmtXZwo2gpZ9nMhKBtGSR7Y9klv8zn2o5sbC?=
 =?iso-8859-1?Q?qnQUDyzESGwQmbwQW8r2oPHsZA3i22RR3EJW7YOCVCfYyuB6iN5CV5Gr++?=
 =?iso-8859-1?Q?eTPQ6PTpS3kgS76dwVzyBkYJCUzSwUn2pbfW+Nz5ihTxxban/bGez92nH/?=
 =?iso-8859-1?Q?xnWpjqnQH1akhDWMRONwOWqcEZPDdpxXf1g/YUYCAwuSo4Y2In8It1U3/1?=
 =?iso-8859-1?Q?SVVPlzj/BKZ9gwwyWBeCg9e6HgrDfw8PrJFE7+CBObXP/RuFEaqVB2J8eD?=
 =?iso-8859-1?Q?gROzRWVLZpxv8fo0fo2Q1kR+RB2brnUgIWv9sU7jvhAbZ2ThW/rx3hSJX1?=
 =?iso-8859-1?Q?Y+07sO7/uIxac9mpk7rQlfQ+ZD+iurPmIVGRJ33c+fud1dO94ZNhXICQ1b?=
 =?iso-8859-1?Q?gXyRQBZVRFRMXppMaQ0neJ1Ok4ZPs2OXRPGf1tq06C+TXarSy3lJbnQnvk?=
 =?iso-8859-1?Q?83Mj0wpTuXsTntKxWAfPVu0aBuj+CPM63Wjh91dllWkzKxBAi9yC2tZEVo?=
 =?iso-8859-1?Q?ax9pBQ4pE14WcdUTnmksTGnfatfPDGCzzzlHaLKz2Z/gizYVJo+60XKhiI?=
 =?iso-8859-1?Q?RtHcEAv3wS/T8TIDsgODv+NMSO3znLnNn1dsnce9Q45Z1yBcIB7+UlfMGO?=
 =?iso-8859-1?Q?3927i+dkdMK+yIJsqjJbOI0V0zAqlLrLWkqx+4JDa9e12/3h9Cr7LqhJ2x?=
 =?iso-8859-1?Q?80OQuHdOFo4AoAfyGIoesanFfgqpAbtI/lYEj045OXx0Ufxxh6sGh5F5TI?=
 =?iso-8859-1?Q?O+XaVHh1KLRvNbdDQxqHHTSW0utHHMOYa6VrAHowpO0UtZgiboX/t11p42?=
 =?iso-8859-1?Q?GKSZmH2X3TI5q5BgWWwjWAMvvDMElA0XrU9hySK5UuxJGK0MDcxBbk4+1b?=
 =?iso-8859-1?Q?lRmimFlUZovnmGE9f06pw79geYgp5ehGmvU1t/i5W3ehYXns8wwjmaJa8G?=
 =?iso-8859-1?Q?4EXuAePiQ6Lu38xH7KsGAj0GkKSvicVAsQQ6zXRRAw40iQNBp3WZxG9ZFk?=
 =?iso-8859-1?Q?tqovSymX7Dvm6ez3s/K1VvU9OHs9HG2RHyXLQHSMlnG//9Ysy753y0yGiF?=
 =?iso-8859-1?Q?ATbAZRFFvwQ3xDFAV7+NyRDF59SmsK3Oat/aopTAWrc0RrIUAaxF5e7nH/?=
 =?iso-8859-1?Q?hkxouZLASGVsUBhzWzMMT9ujxG54mjHwzM7MtO7IZ3PzPaoyKE4E+M7fpr?=
 =?iso-8859-1?Q?sqpdk+Scvsw/OOpX6Fby6RVRzpm9Y/XmzGvuxEGdEqk+uWrU790iTddO3w?=
 =?iso-8859-1?Q?4LZGw3Ledkr/1GpBfevoBZjM64AdOgr+hhfHwfVX/KzkCpLByJwuIEb8oW?=
 =?iso-8859-1?Q?mDk3mSQuHeCxykE87+hbGQA83gmLzJ4jjzuuJ38VSnABAYfxGJPwpW7ZHY?=
 =?iso-8859-1?Q?NRRTBN8GZggU9ed93lNNEgSBp7/JZx01TmiiZ5pZlT2SIkeLj+rsVZchmN?=
 =?iso-8859-1?Q?toV54fQJr0ToiaWBuSjCXhDL3eYopA6XDOIYLz74ZdCYeZkJQ9GnIIRypo?=
 =?iso-8859-1?Q?MjPCGboYuJ3KvRfjxqxA57Xle57l/EbId6qkDOjL7n0qYV6ikUo9D4p71f?=
 =?iso-8859-1?Q?fgh3EeDLnsTvNe8xG79xyMn1Ow3kDjZjEz?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 077646ae-df54-4fca-9b39-08dc91b6b82d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2024 05:55:13.9772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SqMiQgbWa0Fg3aHRCAnhZ69P5W16bu12KWN1ZirVzEBcb6fP0pApDQvCtjzVJRjQHoMQkaLdRqj7hETG0X2pkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, June 20, 2024 11:06 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: Re: [PATCH v7] drm/i915/panelreplay: Panel replay workaround wit=
h
> VRR
>=20
> On Wed, Jun 19, 2024 at 04:01:01PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Jun 18, 2024 at 04:52:15PM +0530, Animesh Manna wrote:
> > > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > > W2 are 0. So Program Set Context Latency in
> > > TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> > >
> > > HSD: 14015406119
> > >
> > > v1: Initial version.
> > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > v3: Add WA in compute_config(). [Ville]
> > > v4:
> > > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > > v5: Move to crtc_compute_config(). [Ville]
> > > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > > v7:
> > > - Corrected code-comment. [Mitul]
> > > - dev_priv local variable removed. [Jani]
> > >
> > > Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 21
> > > ++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_display.h |
> > > 1 +
> > >  2 files changed, 22 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 7bc4f3de691e..c3ff3a5c5fa3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2515,6 +2515,10 @@ static int intel_crtc_compute_config(struct
> intel_atomic_state *state,
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > >  	int ret;
> > >
> > > +	/* wa_14015401596: display versions 13, 14 */
> > > +	if (IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
> > > +		intel_crtc_vblank_delay(crtc_state);
> > > +
> > >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> > >  	if (ret)
> > >  		return ret;
> > > @@ -3924,6 +3928,23 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
> > >  	return true;
> > >  }
> > >
> > > +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state) {
> > > +	struct drm_display_mode *adjusted_mode =3D
> > > +&crtc_state->hw.adjusted_mode;
> > > +
> > > +	/*
> > > +	 * wa_14015401596 for display versions 13, 14.
> > > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > > +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> > > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> > > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > > +	 * by 1 if both are equal.
> > > +	 */
> > > +	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
> > > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay)
> > > +		adjusted_mode->crtc_vblank_start +=3D 1; }
> >
> > This is probably too late actually. We already used the previous value
> > to calculate the VRR guardband/pipeline full values, which may or may
> > not now be incorrect. So NAK for now until someone actually checks how
> > it all works (I don't recall the details right now).
>=20
> I double checked this and the guardband/pipeline full values do indeed ne=
ed
> to be calculated based on the delayed vblank. So unfortunately this needs=
 to
> be done before VRR computation, which is a bit annoying if we'd need to
> tweak this also for HDMI or DSI.
> But for now we shouldn't actually need other adjustements as I'm going to
> be doing the DSB stuff without relying on delayed vblank.

Sure, I will add a change for recalculating guardband.
No need to change pipeline full value as this workaround is for display ver=
sion >=3D 13.
Currently this workaround is only for panel replay, so HDMI and DSI is out =
of scope.
As I understood, DSB stuff will be taken care separately, is it ok if I mov=
e the adjustment in encoder-compute-config, more specifically in psr-comput=
e-config where we will know about vrr and panel replay is enabled or not an=
d recalculate the guardband ?

Regards,
Animesh

>=20
> >
> > > +
> > >  int intel_dotclock_calculate(int link_freq,
> > >  			     const struct intel_link_m_n *m_n)  { diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display.h
> > > b/drivers/gpu/drm/i915/display/intel_display.h
> > > index b0cf6ca70952..f99a24e76608 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > @@ -428,6 +428,7 @@ bool intel_crtc_is_joiner_primary(const struct
> > > intel_crtc_state *crtc_state);
> > >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
> > > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > > intel_crtc_state *crtc_state);  bool
> > > intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> > > +void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
> > >  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> > >  			       const struct intel_crtc_state *pipe_config,
> > >  			       bool fastset);
> > > --
> > > 2.29.0
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
