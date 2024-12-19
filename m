Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058FB9F728A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 03:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EE810E28E;
	Thu, 19 Dec 2024 02:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AmHYwb1I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC90B10E25F;
 Thu, 19 Dec 2024 02:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734575032; x=1766111032;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nGITuOd7X3wk3fYgs09LG+JIya6vSW/ufh0Rvcyg0Uo=;
 b=AmHYwb1Ia0b+bHCkSIkYpG5GHFRqo9b5k7y58wGrrfAxlAGC0ilc9OcA
 wCreOVlhy/iz+Vn+XgQJ32pn1PMHhOfdu9VK2wlep931Qkr/Vy1XEGhhz
 +irwDeCi3Jzl3IK6bFtQwEgGBhDGP4WGnAnnHSmgp1wAo5v6FwoHRaX+b
 tEEuj1/Y0//MET7dF4ccoqdHeS9zRABM0pgfZK7l02cqmOwI9nlCgFuez
 r8F1FJKJLlpsuKcIGdi8g5jmgKOy25KMw49TBgXrciAAVc3nuz+XfSEoZ
 vwrrIHh4JfQdtMd5ShpYPLKpMnaYzxvYHIEUXcQJJRBgslIsPctqwLqy3 w==;
X-CSE-ConnectionGUID: s8Lp8LSJQbmpMMBZ0w4Bxg==
X-CSE-MsgGUID: jMwWoJ3XQ4uiveMQukST8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46461057"
X-IronPort-AV: E=Sophos;i="6.12,246,1728975600"; d="scan'208";a="46461057"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 18:23:52 -0800
X-CSE-ConnectionGUID: QodNaRclSAuZeyj19qfFrA==
X-CSE-MsgGUID: /wRzgXHCTdu02u76ysuwRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135380353"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 18:23:51 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 18:23:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 18:23:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 18:23:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V0N40yRFByiQ1XQO2MTtLS4ScocTdNIHsIm8IVqCNFcYC/yp/UcCvGr+9jY0dgZG68/WS2trLTx7y3B0FOj9JKLtM+NX7aBr89j8NWDEd/XWbk+j1PEOm7pn6J+mf4yKF7CsZ8+AvjVHIokVNlD4A8U0nRxK8wXHwFTV9cvMbfq3WYE+f4wx23s+jjy6kPTsWzgJs+LHutpG1sERqRLZ7bEDDI3cBqt5BhU20dMzzwKZoBMzJACX9F7pGaX4/uf2BidXEfNNPylyuJy5LRZFptUstazFmrUwwfC0CoCUrMTphQHzO1kJhP4ZLOpyA/hPc0KdCjZM0K5Gp2stkjmDAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JlcE9FHGkqgwpoovWe0CoZOke6l+wMrMj7G9SmKiDxs=;
 b=uPQSVp0te8J66ZpTFvljGQLIl0KlJ8nDeVQHN9In8VvgPvvd1XvJF6iub8r/r8xkBG5LH0ZfHdsCBuIKONS8tW6ps48x/d+wjkEhJcqjp0ybQWejhZIPmvQAX7ZttN/NmoljtSmnE45stANUgrZHpMYZkLgMYVGnASiugi8Bj+ppX7skB7CtedXmLgERgrG0uUwMXBxoWwp3w4IbwUT8DBLW3pdvRwhE7sgPs5pps7ae7KeLaf82G2Jmg1q8dHggFCHW6SRoSIIXKeNnifbdjYVAjo7gBPc7NTDjjBIWEclfIagR+WYFPDEILDHNECMtW2w5LLipholPDa4QjRgNnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6832.namprd11.prod.outlook.com (2603:10b6:510:22c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.14; Thu, 19 Dec
 2024 02:23:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8272.005; Thu, 19 Dec 2024
 02:23:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Topic: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Index: AQHbShFd7fjqU6rdrkSsSU42exF2rrLd6OkwgA3zwoCAAQjCwA==
Date: Thu, 19 Dec 2024 02:23:32 +0000
Message-ID: <SN7PR11MB67505C1DFC6AE88B77519F0CE3062@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241209074702.3975702-1-animesh.manna@intel.com>
 <SN7PR11MB6750190413E1B10E267487D4E33C2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <DS7PR11MB599032AFB7CCED551CB979B2F9052@DS7PR11MB5990.namprd11.prod.outlook.com>
In-Reply-To: <DS7PR11MB599032AFB7CCED551CB979B2F9052@DS7PR11MB5990.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6832:EE_
x-ms-office365-filtering-correlation-id: 629eff98-7f8d-4e49-68c8-08dd1fd4228e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9FgTBMi9Ys6eJG9GORrBR2CRmP2BRMuuOLgbLcxqAuKO0D48f+en0hZlWk3z?=
 =?us-ascii?Q?Duv7Bl9c6FDWjrlcCiVkj0BVn21NYgUP9Q4m3phbMfBmhtJdSWOa/JM7BdUi?=
 =?us-ascii?Q?YtNBvrajdxFs074E+J/1vcdrbowgQsQKV48bV4VE/t2UZqA8sZU4Z4PS7924?=
 =?us-ascii?Q?QhyQUJlDcPIeTl5Tsl4Y/VH7F5l3hScYbv61trrXve/VolVv9mJLWc5VwG2y?=
 =?us-ascii?Q?ArjXsX78CUqHpwzZLlzj4pUuqWjyaB9B7li5jGDBekbnjIDpHuyK/Wk2s8+R?=
 =?us-ascii?Q?QQ8+7N76eYSUISWNeZV3wf3B2RZpMfexfj2b/Ll+tfcKUhjneNP4rqM3uNi2?=
 =?us-ascii?Q?kwK6yjFmRUp0ETiIBGMhoeUc4bKP/mEZixRmj884BFHrvuU48D0Ache2e7Rw?=
 =?us-ascii?Q?I+79b3tm+IAkKYfOMNR9AVpaQYNaGWIZ69nZvs8r0CtFN2e1s/rYLV/Cy0/w?=
 =?us-ascii?Q?4Q7y+nBqKobVxN0yUvPNO07fXIeHomcSQOF8zoXWdv0eY17QOOl0l2ocrY3v?=
 =?us-ascii?Q?GQlSZXM8UnY76dChXWeicvMPHrV3qvJddqA20D4qZd6HPElACtLo/vAgRX2M?=
 =?us-ascii?Q?DbJUWYKYlWwIJ0VsrF0TVZSMzixqHjbp1WBZebfwE4GHkQ2bD9lYOof2fbRt?=
 =?us-ascii?Q?qby6Bf8inaYJIhViABQwhKAzpzayIw/Wb2pYh5+/W+XDH8m8voqeh2SwkJaG?=
 =?us-ascii?Q?enR8giQd6U06eLFJKIRzpfpYNweHUNAFLrTcoONMv6anxxE3blPGaANur/ZB?=
 =?us-ascii?Q?y2WUPxaHr0wyGlo0ejibdMHH/5zb8SHVIyB2G6wkmKMWzSWF16He/JwPiBYF?=
 =?us-ascii?Q?FNZNWIKiBoJ4WlgReLc+pRbVVmRkBrAneUDiHkNU8tg/ywf/vEuyE8Z/rtSV?=
 =?us-ascii?Q?ZGYY/uA5EwCJroe4OerKBLQoC2rmjY9Z+/a+dC7Zs+SWVysc7sVP16I6ZrDO?=
 =?us-ascii?Q?uyG4D6CrnjA2NatSGGK/536WnVc9mu2s9lRTzHYFSUTHM8hmD7Okk7NscN74?=
 =?us-ascii?Q?W7gQi+eE2hgHOgW24ujLpvSgWUOeDbK6RVH8/JXg2gonzBxJtSMBZNUzGMnU?=
 =?us-ascii?Q?wCtasdJ6G/0ZbKUGCkCS/BaFex4fWpzW5YVai3WYo7ZVbB+vAuS3IFcWk3ru?=
 =?us-ascii?Q?TwxernjVhA92Ah766knqQeoNpQtd/WcENEefOpjyTtFlrwqSn+sMVQ/HEHNw?=
 =?us-ascii?Q?jyP0zSeB6COF2jpLEaZQpYT3R/+6CQTn/pl5VLXC1ehvsSATsCEMezt7OU0n?=
 =?us-ascii?Q?WtE/mrzMm2Kw3OZcWbSC30Unc6pvYZR1nWdW8+c3yT+bGuulhHkyz7WJ0xNs?=
 =?us-ascii?Q?jzkF7LtMU9wQQjheaXieGdraPJc4QFHDfDcHssoy4BzGo2/f7k28C6kY77rJ?=
 =?us-ascii?Q?S88jFNNdlF065ZEZpr0d52mD+vBJhoqCNqwQWqqvmF1IYqHv1Biv7kQP0QVy?=
 =?us-ascii?Q?2XxuGTDlNaLwPLHHDorJRcxVcDF+BqVm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FBgYC/SrzXQ9OFxaMGLHHqSnNdwrILyQXfGeXVS1xoVW0MBAtjV2edFtcPvp?=
 =?us-ascii?Q?srS7LcrjCRjP0E3ToYU/MD5NlG6lCNT9CHPrKRx6YUurWwZezfV/thObIJFW?=
 =?us-ascii?Q?0lIt3vi3nLVHNjqUe0bY62AbSwFmyOznD/SkJV1EiqPAqKWa8NdAig/0lndH?=
 =?us-ascii?Q?Ur+CVNYAojxNy87wcD6DILhCMfadCFzZ7NuJk1+Qh9F5YrEhql0wjZozKAqd?=
 =?us-ascii?Q?hSpn8UIgIef8l5zkhQOC5gZSjNzHmBZ94yO4hOGdkcFj5FqwtGk7wxbfZHhY?=
 =?us-ascii?Q?hwq/vQHdWH4ceZ1qqJmP8MFTmQB7m3IMkhvI5EoTNTuXmekG1chkHTInQ/t1?=
 =?us-ascii?Q?nWX5L9xRbHTB6Nq3zIVK8QH50liQJ2ujaezW8gRTEH7fUEILhgT+mX+jxk2L?=
 =?us-ascii?Q?30DUO2bK6KtxVi8yRv8lBgg1IgckHZUTsXf48H0HEOn+l4CAD/nida2ggc0h?=
 =?us-ascii?Q?c3F/3si/TY7KcMCfiZS6DSFSRdVF5k1SSQlVS2pDBScXhujwzzU4lg1aNC+h?=
 =?us-ascii?Q?Ba3T6LEerOM+DXShCoSTaQbDYy8dBjniRMdl6YpWkO/cNLIc+v5Lp6unO2Qy?=
 =?us-ascii?Q?YRpUvFfPdLyygH9ZFtc0ScojHa9Xsw1r99r7smgYITyJxoivZTjp/y/e69wm?=
 =?us-ascii?Q?NNGjFFe5gT7tneW68hE3bHqkH/RMuqO7ThhJ83ViqFMEL11pZ86KyF0aWjVd?=
 =?us-ascii?Q?j3nsaF0xdXLPCMU5hqaKPYN1lPf6A8ivzIeJEeCjm+Kit8lISn295XcTkOZx?=
 =?us-ascii?Q?iorSH2IGvsXOVeKup7O/X2bE7kEOrmE4jfvhAGSwUG8MJ2chnsmdTFF5iyEC?=
 =?us-ascii?Q?qRjvdcz/F9sPVm2Ff2VxGqQJj25RXU1Q/X2myZBn2ZCSPbzRotyP0pWHFYK/?=
 =?us-ascii?Q?+Rnmwl5sXk+P2vFUgXasxHNI6/h66sLKt3D3iaUJhIPIa7qI+tA1ziCN8taO?=
 =?us-ascii?Q?9nvX4aQy/4ys1js2t7bh+dn+pPq5PiyzL6HQyNUIza2KIEtKUQppAYNApP3x?=
 =?us-ascii?Q?29keVgSuLtYKf+N+QahYp9uV4vMi/h9JB+zgZQVvWR1TfBMQFbk7RmI9cU98?=
 =?us-ascii?Q?+XiK6FFxWwSnzHJqhyyGASVTP0KZybvZARtNNvPVfcYNVPu++vp9Z2J/CP0j?=
 =?us-ascii?Q?E/nP1AdbynL0TpMGNxObVcFcuJhrN64LWY8ZKq3QnpMvV9NuOPui/aDEYV8+?=
 =?us-ascii?Q?1lTlA0KyUk7SF+dvWSzc8cZGPLlH69MVifuid1JN//yXAFVNZxT6eGoYCeFk?=
 =?us-ascii?Q?x49dO0Pnys5d4+BKWk9e8vqv1zfSUyTJRGr1FgU3s13jnwBQDzxiD9J4zWp+?=
 =?us-ascii?Q?j0eYMAjobIYij2f9MvJQ9HCMQJda+ncY0L1g5EhHGGd0MD05U99VcoYN91nW?=
 =?us-ascii?Q?GYQUhvv3xrK0KiuZ6rAT3w2XysN5JLRPFrWeqBavkVYHZWpsae1NnKh2TzNj?=
 =?us-ascii?Q?PksQ5Hq7DYdI+W4I8T2ZPU/pwVsv360m/vMoYD7vYn6ci6TbpCQWm4PuaJy+?=
 =?us-ascii?Q?jl3DuDSEUUOaztZ24+wBQS8XtKO+26jhyzYX3T/FnJD66M148ilSNTXEXAxp?=
 =?us-ascii?Q?kWhJonnfKcwWkmChbAwcqKk9HAf3eQ8c6tqCQh5n?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 629eff98-7f8d-4e49-68c8-08dd1fd4228e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 02:23:32.9159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKtzcD0KekFwgwaXqrIW7Un8xy/XgDWioWNrdwd4vs7bpBUWCI10vOLKt75VDJLxn2GkIPaGTyGOKtpzYhw5jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6832
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
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Wednesday, December 18, 2024 4:04 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
> PKG_C_LATENCY
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, December 9, 2024 7:19 PM
> > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: RE: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
> > PKG_C_LATENCY
> >
> >
> >
> > > -----Original Message-----
> > > From: Manna, Animesh <animesh.manna@intel.com>
> > > Sent: Monday, December 9, 2024 1:17 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> > > <suraj.kandpal@intel.com>
> > > Subject: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
> > > PKG_C_LATENCY
> > >
> > > The PKG_C_LATENCY Added Wake Time field is not working.
> > > When added wake time is needed, such as for flip queue DSB
> > > execution, increase the PKG_C_LATENCY Pkg C Latency field by the adde=
d
> wake time.
> >
> > No need to mention the issue when It comes to WA only what the patch
> > is doing the Rest of the info is present in the WA
>=20
> Thanks for review.
> Is it generalized rule? Not sure if want to add the background/workaround
> details what is the issue.

I think this was a generalized rule as Matt Roper had pointed out we really=
 don't want to tell other what faults ended up causing us to have this WA

>=20
> >
> > >
> > > WA: 22020432604
> >
> > This needs to come just above the CC with no new line in between CC
> > and WA no.
>=20
> Is it generalized rule? Good to know if captured somewhere, I see from gi=
t log
> many are not following the above.
>=20
> >
> > >
> > > v1: Initial version.
> > > v2: Rebase and cosmetic changes.
> > >
> > > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index d93f6786db0e..f6f7205e06eb 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2894,6 +2894,12 @@ intel_program_dpkgc_latency(struct
> > > intel_atomic_state *state)
> > >  			display->sagv.block_time_us;
> > >  	}
> > >
> > > +	/* Wa_22020432604 */
> > > +	if (DISPLAY_VER(i915) =3D=3D 30) {
> > > +		latency +=3D added_wake_time;
> >
> > This wouldn't be the correct place to place it in since this would
> > change the value in case the latency fetched is 0 From
> > skl_watermark_max_latency and we actually want to write all 1's and
> > want to disable the deep pkgc The best place would be right after
> > fetching  max_latency  so it plays nice with the other WA and makes
> > sure that pkgc latency Is a multiple of max line time when latency is
> > not 0 So something like
> >
> > If (display_ver && !latency)
> > 	latency +=3D added_wake_time;
>=20
> Got your point, Will take care in next version.
>=20
> >
> > this may also require you to move around where added_wake_time is
> > assigned so that's a different patch
> >
> >
> > > +		added_wake_time =3D 0;
> >
> > Also lets not re assign 0 to added wake time variable let it just be
> > written its not going to be used anyways and wil Not have any extra
> > writes from our side
>=20
> If added_wake_time is adjusted to pkgc latency then writing the same in
> register is not logically correct atleast from code readability POV, so b=
etter to
> reset to zero.
>=20

Sure I have no problem with that

Regards,
Suraj Kandpal

> Regards,
> Animesh
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> > > +	}
> >
> >
> > > +
> > >  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> > >  	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
> > >  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> > > added_wake_time);
> > > --
> > > 2.29.0

