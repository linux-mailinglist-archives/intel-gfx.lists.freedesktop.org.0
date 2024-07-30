Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE73E941CA6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 19:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A0B10E2FA;
	Tue, 30 Jul 2024 17:10:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BylJRZiG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D37788A72
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 17:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722359435; x=1753895435;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=njXZTTWC9fCQk7CRBvgsbTcLkF2V4CNOZUDvD6i4QZ8=;
 b=BylJRZiGOfysgyqZimZ/TABurz/8k1rLffepnSaNFzSJPDvoSwr8r/X0
 5JsifagkSqI0Qs0nPnKoR4NgzWy1WjijUb947EfThDEdYbbG7B+pqfNGr
 KFmgOznEnLbndPKCKT22R49THqRb/DG7tbGuaO6Tb6ebQbhrWkbl2lwY3
 Bg3UYODwHwnnW3HBPzK96k8s+7VxOQ2ykNJo+0Xvc4FFY+8ve88iXvEEX
 53I9FKpAv4oeLH/SBN+y/pQRadhyk1Qsl2LwuC8CSC5NmZ9WRS9aMH8Ia
 YDW7cSlnTE76KRssRGdb/YBxZw7AefZFrJt5dxsQb09xM37EnRw/2QZ70 A==;
X-CSE-ConnectionGUID: sf+a4ZQ4SFiGME5JhESX1A==
X-CSE-MsgGUID: fnpe8WkSR6utaQ+PPyiAjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="31344023"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="31344023"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 10:10:28 -0700
X-CSE-ConnectionGUID: 9pJnLPM2Sdqj/w1RubOJDw==
X-CSE-MsgGUID: mpPkBIfCQlyCok2xvGOxtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54292143"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 10:10:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 10:10:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 10:10:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 10:10:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 10:10:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HB/3TMYkC32xi+vbe131rkyYdAqfiUFfwXKRtmmLOQXkWqyq1Bumj34kFl7VJyc2+TtdPSAkk18WWF2aAOGCxrgFEE+zOhSf4bhJfcV1xjWoVaGT2eaTmh5SKY4SzD1Nwk152FKzj0LJfNpVNclzyzv5UCkDU9YUisfbRxipMKrXEgFdNTGlGHCdeY+/h+nNgsoH7AJ1h0cNPKWLX178LGd3HMRbekM5q6ilihuw3jPtrvPmHRn0F7zLHNduIkEu64mLKRaOW8zzx60n3fJeH1q/KYorHvjmq92OIxqTnIWscbNtdmbx3UNiwOHx9bBD0P9qy5uYDDcQykkpsl+C1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXqxBIFODL4JWFIj22LUdKlAtFfTpSufqYXdfCcbEZ8=;
 b=yrq/MJizl77YoMgBtz/KTx6ATpkCvLrxF4mQySbpMhXit4Zlpb/Pwi7hfzh7WfItHgbUwJGdkIW0tgEZaEHNrcp7//1RWwxGp33BY0vOYZcluKG1S+YmAUfL4kP8El7E/cnUGgx9RKcz+nre2O0KYDVFlGLgHqTzQZDiUXgTO/R+RQsmVMG26fE+Y75w89r0a+Ne08lxtA7+t/51R2lxG7LRNN9KUYlD1/u//5juLsSmHwRllQLxwmLHOfs2mrusJSLYaEN9z0WPt7InsPpdjb6UEOyHP2ImoeIKXVMIDgc+CscyOt4BAtJ0skoZbhy/Dyza23LpE1WstvzYdVjEbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA1PR11MB7700.namprd11.prod.outlook.com (2603:10b6:806:330::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 17:10:18 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 17:10:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>, "Naladala, Ramanaidu" <ramanaidu.naladala@intel.com>
Subject: RE: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Thread-Topic: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Thread-Index: AQHa004EfXjJYRAuS0Wtniqy6ItNHbH8re0QgAWxJICADUDYEA==
Date: Tue, 30 Jul 2024 17:10:18 +0000
Message-ID: <IA1PR11MB6348F933D61DD48BA938AD98B2B02@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240711044905.3306882-1-suraj.kandpal@intel.com>
 <IA1PR11MB634802B01D2FDF366062BEC4B2AC2@IA1PR11MB6348.namprd11.prod.outlook.com>
 <SN7PR11MB6750FDD24918BF1D32E31E8EE3A82@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750FDD24918BF1D32E31E8EE3A82@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA1PR11MB7700:EE_
x-ms-office365-filtering-correlation-id: d56f4336-2edf-4ecd-d5e8-08dcb0ba7ca3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ia3Ty7W9Jggkb8T47CzH5EKYddYBZpGOHLFTDX8dI+JWes2OMBpbMqfY1ZU6?=
 =?us-ascii?Q?UPN1v2OPekXWEMm8w5bwKPharhNLIk4asbJ38Zmr+ikmpEtpKfuPUi6qNwsr?=
 =?us-ascii?Q?DqIB7iPgg3vmiXNhSUPwB9UDhlx3WvGHUdI6LT3lsktYCNgDuu2Azjse/zI7?=
 =?us-ascii?Q?ZexfroZkOcCJU8Z5DhPYnx+uA6xkGhX2oA4H9r9kyciLsxNHhHPBRYR4XNAW?=
 =?us-ascii?Q?GpzWMJP/rUI3J3R2iMtTUhNJvgOCB+qAm5i4lXRyasyFe5TVKdrV7Ippmc+g?=
 =?us-ascii?Q?UGRlVLa0INcZMNIV8EElKaJbK7nCQqLHbEriKF28fQimNjR3hUBl9jhC7cPZ?=
 =?us-ascii?Q?gZxtIdBYRyFU21wkfRdh7fGzEIJsQ5Kyb579e4F+t8OhOCyDiveBwpwVUhQL?=
 =?us-ascii?Q?Sj8PxI5gdkeRdnwuIm0pgzFlfAgGGfHIdJyqBUNyII8erXSxtyxvWSLwbB71?=
 =?us-ascii?Q?06VkzbUvJTITGYjbHfSLOGlbTYe2NpWfi+evUvM6XkZTBuK8gL5wn7B/L2iy?=
 =?us-ascii?Q?nM+CpMM6MJ3vQk2FJxwMHfM3Wfee4e/OpGEu2PfF7Hb2ugbfGnefACpf9t+H?=
 =?us-ascii?Q?eEP6nMINhDF9gY170nbKHh2ZW5jfeRcw8aTtlKAPGQ2nSAGgAxhKVzNHDnW5?=
 =?us-ascii?Q?k6fB+XbaB4SCpLv4mBKH8HDp73E6v5TJam5JWo2Z035HfOEtMX9fkK22OSmc?=
 =?us-ascii?Q?CanEjto5VLU+XzNuH/FBgoZRDjpXVtzR0WBHWysvuMmn1a+G+PYjjuHrDXQK?=
 =?us-ascii?Q?eTv8eSTBZuBFM4j1g+R15iTsDqrE8+fErTc0oXysINg/xIZ9yg5zr0z1NKjt?=
 =?us-ascii?Q?PPabSw8hcSXjnX38ptrqOFNgELzGVuy2JIkukUxcgkJj2zk2T5uf4SFgMG8o?=
 =?us-ascii?Q?icorTW3xkE7Yn3Wy/i1aiMz1wYCKwx4ZXSVqNiT1MFDeoYHnGHR6fTZQXluP?=
 =?us-ascii?Q?WJtuQOrcQsnV0A9jbMHPLtk4fXjpZQD846KFKuCLF2O2pUW2kFYabOHL7geD?=
 =?us-ascii?Q?INaU4JMZVOgvJ0xKC+ZFtsn2tVIibOeJTFe5CM1FoHi7oJx/9yktE5zdcR+I?=
 =?us-ascii?Q?i1It1tFdHhWRLTm2WZnp9T6H7bDYSP6KcF2bNn7AIXvvfrmRt5W4qQJAIieD?=
 =?us-ascii?Q?PBLs1rIBqx0EJGMLcfDOU7WHhBi2AcdnnMu98T2dWsLsuaqH2yjIqOse9EZW?=
 =?us-ascii?Q?t2vqlPdGWRnhSMsQISEW9XEghUyVjQnNvAO86QRigLdA6mmFyMRQG9T3cb3t?=
 =?us-ascii?Q?YCN1B9+vUwZKXQoRbsfv7AXfKxI2wcQtq8sNj6CSN4hmTzbxRqmAYUKd0Jft?=
 =?us-ascii?Q?ukrue3c60cPGyU12SQ/JjhyJ8ShPwcg6XMdP2O90rxk0Im2pm9d2ArqVgBRg?=
 =?us-ascii?Q?kXz/u4qJDQs/mqFyJYu8I+huxICg2S/ltIoXM8uyx6WflXdsgg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RYB+J4wUOvB14oqoCM3W7b9TKUIYshySDZahfuSXaB5pxpllgGWDuzi/t8ja?=
 =?us-ascii?Q?fS3YHblffgup2lj53M/tm5XOoIv0BUn7RCHyz8iHOMGsOexHVv7AP0+4k4/b?=
 =?us-ascii?Q?lkPbfLoYbb8tNjxyvRYjPZoMvRIjrl8BDxxMCZXUPFiBKwyGOowlj1017uwg?=
 =?us-ascii?Q?H894Tva1NWRIF38outQlQCbeiTbfPvxSV0dnOy1gu6Ypj3Io7SV/RjdG/rrA?=
 =?us-ascii?Q?DC1jhmiqjVdHttL45avzvmIU5ER+d/z7aeHcpGsewthvD1db18DNO26ldWrf?=
 =?us-ascii?Q?djtduIjmV/tNfcaSI8BueCjoFZiO54vXZ2t94tiEXl0bz9pLtCzZfm0dBiqQ?=
 =?us-ascii?Q?7XYH/eWqaFj9ADv3RFLxQlSsPe6w0azhw+2jXlr/jO1AMWn6MdEypHuCc9oc?=
 =?us-ascii?Q?6a+EnvCRTbnDeu2+lWynotY2Y8KdofXZ6GL+DeJDzmRJB5tdkkVj3ZPFYgzM?=
 =?us-ascii?Q?yJ3OzVV6P0byX1QVqNBUYoSdw4Dyk9Hq+izClpyrJESr6iRwqNY9dSm8loOA?=
 =?us-ascii?Q?bjyWayLYgkOQVee1dKfBJL80auKojAp9f/muuU0b9151zRuG/Op6kFIohA9s?=
 =?us-ascii?Q?4XczHlF0wExNK6b2mk6YulUhd0CYeHw+8oNmgfxZaKSWoS9URjCcq1YjKLMz?=
 =?us-ascii?Q?1Qxdrvuxsfx/g3/u1MFtiiXKqHWfce8x5hwZjVLRpYVVapAnf0Cm7nm9PoLz?=
 =?us-ascii?Q?BrCYlV5bAoL2rUFfDbKC+oHChUGaVECpnZO2IIYAfBGiuCbyKyY92t6VZMce?=
 =?us-ascii?Q?+T7tWWQcK0TzElw7Lwi2627FlvulZko+cnH/d1098mlpq0QKiOeekFQhbHEP?=
 =?us-ascii?Q?IcM+L9v1lCKIPBqoMmq/BFI4KXdWCEb2wNSbKI9OSKGmtc3E3G8cFUQ2jjvq?=
 =?us-ascii?Q?hwNGgiCbuhhMF/om3z1mpggRogidzcw9k5ZsSl6pAXF0PCPVd+ox48rjUit+?=
 =?us-ascii?Q?5Jpbu8dxW2VUD9S9CLHacNTIy//XT838QyDDU07A616ollut6fFQm8PFrlNO?=
 =?us-ascii?Q?WWRVvXViSrJrykYBxEpIg9jKcUoUrWzj8EgzFVK76CnzQfTqaDyAAMYENaU7?=
 =?us-ascii?Q?r/rsAiHuR9vbK54RD0nhiy4IPkDtoVO65jnaZ+fy3X+sYWXBt1MPM778vLg4?=
 =?us-ascii?Q?EoLyVv+qg1qTaZtanSktR7vSPxzDJyHvvjmlHAr79gu4IS3L1Y3TKaCW4dgo?=
 =?us-ascii?Q?3yscYNPbkTYCM9K/NIHNZYY+2e6g4gNj95CbuIwDGA9MFg+a77N+ehnNaLfC?=
 =?us-ascii?Q?i3jia48q/l6j1mUKQroL6hv5m6JYjEshlQYzl+nIgxLNMldahLBr3dusQSsd?=
 =?us-ascii?Q?NrsZ15xv1wLKiRjPanEbGK3BhK7YnK0eQ2L750O/qrsaUyKOD4XEXO2LxEfq?=
 =?us-ascii?Q?G8vwZQiZLyivq5PFMwD5AKuHm0G8yjitgA+Ugipb80+6+tpfYCbxduO9b9kr?=
 =?us-ascii?Q?0GDn0MBkkLZiqMDAjKQPb0q7IW03AO+DZ2WrkrqNLjqkhgGMIgIuzsiUW1/S?=
 =?us-ascii?Q?wqNf3XgQBItLy1BK/D18ED1T3sNETMkUltC0xnvbYfGESIK0GiD2w//IxsnB?=
 =?us-ascii?Q?lfB9MVSL2uWmcsDUWOM19fF9oUALUXiSOeVy9qiJ9X6tMHSpQ3JJ7HZ1Iopm?=
 =?us-ascii?Q?88Tw4k0YXfVPr9RHt6ey5xk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d56f4336-2edf-4ecd-d5e8-08dcb0ba7ca3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 17:10:18.0725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RBCH7LUotAi3oSW5v+EoE95mIV9eewubKQmgdri3Q9FDbsSc290W/zbKjHGvqdSOoWrxtYgzTyVHDH0152ActDnQSQDTUJ0C6w8yIVqpbYkyfDIphrDQWErAAdloIBZe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7700
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
> Sent: Monday, July 22, 2024 12:16 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Naladala, Ramanaidu
> <ramanaidu.naladala@intel.com>
> Subject: RE: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC
> Enablement
>=20
>=20
>=20
> > -----Original Message-----
> > From: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Sent: Thursday, July 18, 2024 9:35 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Manna, Animesh <animesh.manna@intel.com>; B, Jeevan
> > <jeevan.b@intel.com>; Naladala, Ramanaidu
> > <ramanaidu.naladala@intel.com>
> > Subject: RE: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC
> > Enablement
> >
> >
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Thursday, July 11, 2024 10:19 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Manna, Animesh <animesh.manna@intel.com>; B, Jeevan
> > > <jeevan.b@intel.com>; Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>; Naladala, Ramanaidu
> > > <ramanaidu.naladala@intel.com>; Kandpal, Suraj
> > > <suraj.kandpal@intel.com>
> > > Subject: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC
> > > Enablement
> > >
> > > DPKGC can now be enabled with VRR enabled if Vmin =3D Vmax =3D Flipli=
ne
> > > is
> > met.
> > >
> > > Bspec: 68986
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 24
> > > +++++++++++---------
> > >  1 file changed, 13 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index a2726364b34d..045c7cac166b 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2830,17 +2830,17 @@ static int
> skl_wm_add_affected_planes(struct
> > > intel_atomic_state *state,  }
> > >
> > >  /*
> > > - * If Fixed Refresh Rate:
> > > + * If Fixed Refresh Rate or For VRR case Vmin =3D Vmax =3D Flipline:
> > >   * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
> > >   * watermark level1 and up and above. If watermark level 1 is
> > >   * invalid program it with all 1's.
> > >   * Program PKG_C_LATENCY Added Wake Time =3D DSB execution time
> > > - * If Variable Refresh Rate:
> > > + * If Variable Refresh Rate where Vmin !=3D Vmax !=3D Flipline:
> > >   * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
> > >   * Program PKG_C_LATENCY Added Wake Time =3D 0
> > >   */
> > >  static void
> > > -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > > vrr_enabled)
> > > +skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > > +enable_dpkgc)
> > >  {
> > >  	u32 max_latency =3D 0;
> > >  	u32 clear =3D 0, val =3D 0;
> > > @@ -2849,15 +2849,15 @@ skl_program_dpkgc_latency(struct
> > > drm_i915_private *i915, bool vrr_enabled)
> > >  	if (DISPLAY_VER(i915) < 20)
> > >  		return;
> > >
> > > -	if (vrr_enabled) {
> > > -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > > -		added_wake_time =3D 0;
> > > -	} else {
> > > +	if (enable_dpkgc) {
> > >  		max_latency =3D skl_watermark_max_latency(i915, 1);
> > >  		if (max_latency =3D=3D 0)
> > >  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > >  		added_wake_time =3D DSB_EXE_TIME +
> > >  			i915->display.sagv.block_time_us;
> > > +	} else {
> > > +		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > > +		added_wake_time =3D 0;
> > >  	}
> > >
> > >  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK; @@
> > > -2873,7 +2873,7 @@
> > skl_compute_wm(struct
> > > intel_atomic_state *state)
> > >  	struct intel_crtc *crtc;
> > >  	struct intel_crtc_state __maybe_unused *new_crtc_state;
> > >  	int ret, i;
> > > -	bool vrr_enabled =3D false;
> > > +	bool enable_dpkgc =3D false;
> > >
> > >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > >  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2899,11 +2899,13
> > @@
> > > skl_compute_wm(struct intel_atomic_state *state)
> > >  		if (ret)
> > >  			return ret;
> > >
> > > -		if (new_crtc_state->vrr.enable)
> > > -			vrr_enabled =3D true;
> > > +		if ((new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax
> &&
> > > +		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline)
> > ||
> >
> > 	In current implementation this target to CMRR it seems.
>=20
> Yes I saw Ankit's patch series which introduces vrr.is_fixed but I unders=
tand
> its not always set even if cmrr is in picture.
> Seems like this condition is the best as it best represents the condition
> mentioned in bspec.
>=20
> >
> > > +		    !new_crtc_state->vrr.enable)
> > 	But in CMRR as well, vrr.enable is set along with vrr.enable. Any
> > specific case you are targeting to ?
>=20
> So either we have vmax=3Dvmin=3Dflipline or vrr is disabled these are the=
 two
> conditions in which Dpkgc can be enabled
>=20
> Regards,
> Suraj Kandpal
> >
> > > +			enable_dpkgc =3D true;
> > >  	}
> > >
> > > -	skl_program_dpkgc_latency(to_i915(state->base.dev), vrr_enabled);
> > > +	skl_program_dpkgc_latency(to_i915(state->base.dev),
> > enable_dpkgc);

Changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> >
> > >
> > >  	skl_print_wm_changes(state);
> > >
> > > --
> > > 2.43.2

