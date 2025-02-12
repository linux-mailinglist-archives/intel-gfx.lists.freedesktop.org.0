Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E4EA3200D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B7310E25B;
	Wed, 12 Feb 2025 07:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pb5hpqRU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A130D10E25B;
 Wed, 12 Feb 2025 07:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739345719; x=1770881719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Ml+rBsobIcCwRwSBbmj+3wGc/eNfSy8fyLCQB2us9s=;
 b=Pb5hpqRUki3M8RT/ZQV6mClDRhu+QjuP4+uzafBaGRddZvENfVTcxVQc
 zT1IJlwWD5a9xAc5IRMO9DN2IGZLB58KMlv8QBBKAVVTX0g6FVBYU7//P
 uwWLp3S42X/J5FpiiHe2SpoFKGNqjFQvdnZSSieryclGp7EmzWd3KOLOQ
 mSwjf5jdaPvQwj/eA047ezQ9grWl5N/HN0gKnP8l4vjYv9bNGgfPa+cZZ
 8ry0x9i9VY83qV25mx2FsZRvHEe0rhlbZ9Y5nMXF/gjUHYM/jkpBkj8sE
 weYo0MXlWTUoYAql7/oxgWL4+xkwDK4Ork817CxDo+fqruiWgwn4isg0A w==;
X-CSE-ConnectionGUID: wsY2wyY0T+m9a+97h5UKhw==
X-CSE-MsgGUID: iJylMBJBRDO2x2Y0Waimcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50623073"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50623073"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:35:18 -0800
X-CSE-ConnectionGUID: rGWEBUj3QMKg1A21ZYW11A==
X-CSE-MsgGUID: 0y0jGG0/RI+gAlhqp5eWjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="143588942"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 23:35:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 23:35:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 23:35:17 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 23:35:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rltkz5io4AYpOPxoNsKKl8huiontfYIKIskdxJTGqECxhgTcn6C6VAc5Bnm/OqMS5wufUmWOKilom+YHCL1bIT628WxGykaqGzvkP2Kkb0tpY3iRfcjxbm01eQphII1NGoJDFJmhKd0kUFIgsuydM7mYYN428/DaGB5WBFBt011bzFkgnP3BxIqJdK2L2+JGW9hGxIOW3ckoHJzqW/aOm4F6hqFtTszOXpteW5w0UaC+Cg/+aIxjCY0c89A1IAt1er8teeKyMHzoaIcMYtX2dYXoQ15bsAJIiKHDfDJDxoABnFo/3/f/ltFlOyevb26R3TP+H0yTvVWUmKeMuTy/IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4pJwfMFa3iLLkHyB5vSjEO1jsXamUiXAn3K4wap50fQ=;
 b=GeBYFxfzC7kwQNEah/1xWa/ri4o1GX8c4iVr5ojly/9K7dgf6HKV2830YSL+R9oTkMU503V/P/pKtswdmWUxkGzOGFVwzMFaE6y+XfbOFKwlKKFCl8whglFJJt78WbiWZB/tosRIixDzBLGo4oI6s5EGV40H4HWow2MWKgemQ31qWdCCihgNJsdOZCzjAE094FdjaBwKXk57hgeIkDLHWRS7D+ce2mjKcqsTL+SCfyw4jCxYls28sfsQk7fA6VudFc8jc2YiSRhyXmWsOKhSRpDdCacuOV6f1+fL4frT5iHHxoRuCXSoJ1myJfXRf8mKzOqd9clsD3f/1pETSfqPAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7662.namprd11.prod.outlook.com (2603:10b6:510:27d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Wed, 12 Feb
 2025 07:35:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 07:35:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
 shared_dpll_init
Thread-Topic: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
 shared_dpll_init
Thread-Index: AQHbfHKgDCv/rs+7xUeRroyp8jMnqbNCFOeAgAASkdCAACuvgIAA9LnA
Date: Wed, 12 Feb 2025 07:35:13 +0000
Message-ID: <SN7PR11MB67505FEB9272D81D096C1737E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-9-suraj.kandpal@intel.com> <87jz9w1v42.fsf@intel.com>
 <SN7PR11MB6750C81DB52D61A104B27223E3FD2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <8734gk1ksq.fsf@intel.com>
In-Reply-To: <8734gk1ksq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7662:EE_
x-ms-office365-filtering-correlation-id: 3135379e-c51a-4d54-2ef4-08dd4b37ca02
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nHyLRzuX+hF602vlO1Nnyf9LqfqE8flMcTGn3CGQEUvb4MGyFANnF9R6IPgm?=
 =?us-ascii?Q?phS0p9amthl91fqpr+C6eZF1bbxN+fIVR+/DFEAjqHmMECMQnTyJvSpbCfw+?=
 =?us-ascii?Q?OURYvOTDFC9YO/jYPvmMJki+MOSteYe7Dkc21DSsfikUrrmKpoOWsBOkiz5n?=
 =?us-ascii?Q?Ix/QIki7Bz9kKyOZfNvlefs2NeOkvxMO3xHqpcubtCJz39PBM7HVF4mV1xQ2?=
 =?us-ascii?Q?lCQVjhsoR54Erh79LBmoYxQVReh6dNFfRyXr54zH6xBLQYYRte1sXIZDXdQd?=
 =?us-ascii?Q?5YOhTsjZLGW1nheZ1klGdyZsjVdY/FqQMXPZanCUw/nmF2wmR7FmTg/qyM1B?=
 =?us-ascii?Q?/vXxfRB4bAi6orXgyvs4sfRKMxtvsKzj8E3ZEuABE6veysbTDFvnfsEG+8ru?=
 =?us-ascii?Q?HsXZmkEajPlKMwEA/xH1BgwxgHIFQVDULakl3psjJzt58MO9P9JSmXZb+xJN?=
 =?us-ascii?Q?FZeqTH8DCJYYewJrwawe8LbNiT1ySTYiO2iRPlUvaa8EhK/MQsHoS9FoWVoP?=
 =?us-ascii?Q?pylwvkBiPoIGi/Knhq/cqnLAghjRwM1xbgNSfNXyM3rPSqpjaxDQ3JO1dlJM?=
 =?us-ascii?Q?1Oxtbt7djsYu2g59fCV1CH0GJuKyJmer62vDu3RrtgfeOsyA6JbWxqMW113X?=
 =?us-ascii?Q?ONlGKS5tFnOgAjKoxT4OZmS/o2md0h6PR5XUKZkELFwHaz75/fx1AVTSNTZn?=
 =?us-ascii?Q?l1+5NmLwGWXfoByKqvYzMq2LMwkBGFjig7OTzHCiXZqrDcdxO1QdCF1WFJ1n?=
 =?us-ascii?Q?tcsATWqfH2FS2hybWGIjTdNXl4nX2Gj5Ito2s12yFDU1jDbwqv9Bo4NBV8F9?=
 =?us-ascii?Q?fbkenVUmziNvinFyZXb+HgrTd3ZvgZs207bxbdF27Tc4eS08YOXjbyE+w+Yp?=
 =?us-ascii?Q?M2r77MPz6p2vdU8c082gfBGwCm8EhpzhJ7B8fKzDDr0TLF7OCNcXT1q371Yv?=
 =?us-ascii?Q?Xqw52o2kWu5q0Q8lweKAGP+660u5J5S3TFiYgkGhydqN3SlErXkbUAcY06oF?=
 =?us-ascii?Q?ABRW5OKQcwpLxufmW4QY+CARDO/oieWEkdvWtvImW3Ssk/GRBid5zl890b6a?=
 =?us-ascii?Q?6YF4w1RROOMnG6IfVCxTS3uNOYyGOi76wvOVPa/iNL/U38Ra3ARK12vWXpKe?=
 =?us-ascii?Q?QzMtN5lcRp9Sd8/HenoVmBkvzK2I7pbYp3sjhN33FtMHigNgY3c/8b5oVOtX?=
 =?us-ascii?Q?y3F23TgpH6Ko0BaLzfzw2Y128MGg2BQZFyzU6vtKXC/BZD9pJVpMjBx23f2y?=
 =?us-ascii?Q?0GJ1cyN9WxK0j/rpN1Mrj6M4Gx7GsrANzLlUA+FKsohO7DTu3XxRU3M/4UGf?=
 =?us-ascii?Q?sUNy6OyXyXhdfwp0jyu/+9r6nEfxHSZ++KqGYllBANv3htVMTQFtIRghkndN?=
 =?us-ascii?Q?iBPZAVOlXT7WQ2aq680C7x4AykW8MPZcShvAsAmxrYUoug5mLjRClAtGzi51?=
 =?us-ascii?Q?U5gk/DAN68psNyZ3ela1xQ1dm8FWEwjx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6+EdwobQCbcgH70PTVmGjdTiyHCGf8yRrNF8f82h4YWIkt8Jbf69qo4v5l/T?=
 =?us-ascii?Q?Zqf/WX04LCSxQpogwwZemXY1xT5nbiX3v6LR1F0IU7PbBGyw/eLY+uWNYEM+?=
 =?us-ascii?Q?U5M3rFCIDW+1AVRDz6Lt/r6/2ToF9fDr7fUqKqon6BztuFaaloroTM6Fb1wn?=
 =?us-ascii?Q?kEMoUipBgEHQ/q03eJ+P3oprcxz/auZ5/1k8LcUkTYvJUs+6eq9LtR2MwtTq?=
 =?us-ascii?Q?uT7YdQ0/Ohbqvl2XxmN1yUcxRBcKENNbwjb8SM4MF7YtLWPF/xBhOy22LhTH?=
 =?us-ascii?Q?3OXred7e1t1RFh0Fh4cP4rTxLrdVEZOKiHs/ZvxmWoCRjU/IsgUfOAaI2zYV?=
 =?us-ascii?Q?xmRxVXjYRRvLDWXVayTQTWLc3IS7nQNLOZ4nnfXxqiIbPTm0BV4lL/4YNsxo?=
 =?us-ascii?Q?sLCyV2UaKKX+j5MOUd6qZSJy6V/n5jpivQOw0HQpMZybqcgmcizp1A38Q/eT?=
 =?us-ascii?Q?CqxX/pH8BAghFOR7fHNmc4Oxvm6eHJmccbHM9pvozYeCk8gC6bVPw0EhiXri?=
 =?us-ascii?Q?w5fy30Ws8kn0kLZ3waD6sCVf5CWNG0Cn7fkBUO1ncd2c/4442uwrdm6vdL1w?=
 =?us-ascii?Q?ObMS+csHnncAz1BvyhfGppU+mqGy3GhwThfqNhGSUxK5nrhiQzKtadsj8HdN?=
 =?us-ascii?Q?ao4DJgrxcxkj0RAcCxtVWY0ORz8cn5lSrIE2T8TC6YVDxF18iPO8maQ2gVsP?=
 =?us-ascii?Q?XZS10CiK6xKnp9cbiddrmkyB78DbSbZOyw+jynnVRPGzgNfVI1k3qvrIqJgD?=
 =?us-ascii?Q?wIgaeBOCnk14vcpwzmr4Q6UAaAFsmvAxOv79QPjYlFjoLs5gOpDAzowYyRr7?=
 =?us-ascii?Q?eZsjmwgkSCUnky6VCEXah/bBJls9r/O+L0YHkcZVvMPehLs1u1MkXMQpDE/p?=
 =?us-ascii?Q?7I8/w9V36ujHYjB7+vnUZu6+ko64JgTVSEEriA7QIZebV02YLw+kbaWxdaaS?=
 =?us-ascii?Q?rQO9gCbKBT5JeXo/GRWnk6ktc+rJEgBw0HVHqcAWiM94xAyYswTK+kx1Xzpp?=
 =?us-ascii?Q?+ovJqdXPTmU6MNmK4f4KEEqYUPTnS2HrgG5Vc+AZHRR8IRA/MY1dqPy2/6Rl?=
 =?us-ascii?Q?UAhsYJD2HPw8eW/bQ5BOAnE1C603nXB2wDWKaQbc3C0urTaQ8sdQOhUU4sTa?=
 =?us-ascii?Q?PDNU/ltp0zvEp7krQBePYpc8WVDHwMxzItmId9YYHWcbOUtb+rixT7YJ6db0?=
 =?us-ascii?Q?zQpXJh9AGrDr8XMSBOwtw7OkdUL1TtK/dVOPhf2iPmeA/q+YDX2+DKcL/2Cs?=
 =?us-ascii?Q?X41NSRoKNn8rrOgc5LuqoBNi2wj3nHIDqIXxyfwie7dQFiTk7StzxqSO5QgC?=
 =?us-ascii?Q?UorSHpx86fqwJBFFhrkXsVskG/FiEVfAqBmCnaXmge6z0nK/Po8+WMZEmYCq?=
 =?us-ascii?Q?QvdTYzmZgeDNQCfqEUBLNftnVwYSy2VZxHC8sXd2aD8GQzsBDb3yhHbMKcTi?=
 =?us-ascii?Q?7ASDZTG4WWC/hajUssK7AmQ3uDTn4xoqA8s/KCMKfIXonOXQnZ2dN6UvwhBa?=
 =?us-ascii?Q?tfmcCvZHDkrpn3FbBmF4kJ8XSQZ9JhcfsmQxEwi1udPMN+AxKVWNFZhcvqIU?=
 =?us-ascii?Q?c4gH04LNSz0Ku5CZLvHQ4/Tb9mruftsH+lHBnx+S?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3135379e-c51a-4d54-2ef4-08dd4b37ca02
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 07:35:14.0349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DOkLL4gL4E7QVSpAj4cGmHVWb81jIgMtrCkAFl97z3KuvTV+Bk9FhuHF27aeFJiPYaxCHHsGsvpHu4jmgRqTng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7662
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, February 11, 2025 10:27 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: RE: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument =
for
> shared_dpll_init
>=20
> On Tue, 11 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Tuesday, February 11, 2025 6:45 PM
> >> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> >> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> >> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> >> <suraj.kandpal@intel.com>
> >> Subject: Re: [PATCH 8/9] drm/i915/dpll: Accept intel_display as
> >> argument for shared_dpll_init
> >>
> >> On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > Use intel_display as an argument for intel_shared_dpll_init() and
> >> > replace drm_i915_private in function wherever possible.
> >> > While at it prefer using display->platform.xx over IS_PLATFORM.
> >> >
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> > ---
> >> >  .../drm/i915/display/intel_display_driver.c   |  2 +-
> >> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 49
> >> > ++++++++++---------  drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > ++++++++++|
> >> > 3 +-
> >> >  3 files changed, 27 insertions(+), 27 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> > index 978f530c810e..852f1129a058 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> > @@ -448,7 +448,7 @@ int intel_display_driver_probe_nogem(struct
> >> intel_display *display)
> >> >     }
> >> >
> >> >     intel_plane_possible_crtcs_init(display);
> >> > -   intel_shared_dpll_init(i915);
> >> > +   intel_shared_dpll_init(display);
> >> >     intel_fdi_pll_freq_update(i915);
> >> >
> >> >     intel_update_czclk(i915);
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > index f94da1ffc8ce..26b6b9372fa3 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> > @@ -2042,8 +2042,8 @@ static void bxt_ddi_pll_enable(struct
> >> > intel_display *display,  {
> >> >     const struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt=
;
> >> >     enum port port =3D (enum port)pll->info->id; /* 1:1 port->PLL
> >> > mapping
> >> */
> >> > -   enum dpio_phy phy;
> >> > -   enum dpio_channel ch;
> >> > +   enum dpio_phy phy =3D DPIO_PHY0;
> >> > +   enum dpio_channel ch =3D DPIO_CH0;
> >>
> >> Unrelated change, please drop.
> >>
> >
> > The problem is by dropping these changes I am not able to build the
> > kernel and it throws the following warning because of which I had to
> > add this
> >
> >
> > drivers/gpu/drm/i915/display/intel_dpll_mgr.c: In function
> _bxt_ddi_pll_enable_:
> > ./drivers/gpu/drm/xe/compat-i915-headers/../../i915/i915_reg_defs.h:24
> > 0:56: error: _phy_ is used uninitialized [-Werror=3Duniniti alized]
> >   240 |         (BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +
> \
> >       |                                                        ^
> > drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2047:23: note: _phy_ was
> declared here
> >  2047 |         enum dpio_phy phy;
> >       |                       ^~~
> > In file included from ./drivers/gpu/drm/xe/compat-i915-
> headers/i915_reg_defs.h:6,
> >                  from drivers/gpu/drm/i915/display/intel_display_reg_de=
fs.h:9,
> >                  from drivers/gpu/drm/i915/display/bxt_dpio_phy_regs.h:=
9,
> >                  from drivers/gpu/drm/i915/display/intel_dpll_mgr.c:27:
> > ./drivers/gpu/drm/xe/compat-i915-headers/../../i915/i915_reg_defs.h:21
> > 3:58: error: _ch_ is used uninitialized [-Werror=3Duninitia lized]
> >   213 | #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__=
b) -
> (__a)))
> >       |                                                          ^
> > drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2048:27: note: _ch_ was
> declared here
> >  2048 |         enum dpio_channel ch;
>=20
> Did you think to look into why this happens? I encourage you to always do
> that instead of just silencing the warning. You'll learn about C and the
> compiler.
>=20
> It's quite interesting and subtle and deserves to be mentioned in the
> commit message.
>=20
> For i915.ko, bxt_port_to_phy_channel() is a regular function, and the
> compiler will likely assume it'll initialize the parameters. And it does.
>=20
> For xe.ko, bxt_port_to_phy_channel() is a static inline stub, and the
> compiler can be absolutely certain the parameters aren't initialized.
>=20
> So, why does this cause an error now? The above didn't change now!
>=20
> With IS_GEMINILAKE() || IS_BROXTON() the compiler can be sure it's false
> for xe.ko. The whole chain bxt_pll_mgr -> bxt_plls -> bxt_ddi_pll_funcs
> -> bxt_ddi_pll_enable can be optimized away. It's unreachable.
>=20
> Not so with display->platform.geminilake ||
> display->platform.broxton. The compiler sees use of uninitialized
> variables.

Ahh ohkay, I understand it now thanks for explaining it.
Will amend the commit message
Will explore these things and add them to commit message in  future too.

Regards,
Suraj Kandpal=20

>=20
> BR,
> Jani.
>=20
>=20
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >> With that fixed,
> >>
> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >>
> >>
> >> >     u32 temp;
> >> >
> >> >     bxt_port_to_phy_channel(display, port, &phy, &ch); @@ -4302,40
> >> > +4302,41 @@ static const struct intel_dpll_mgr adlp_pll_mgr =3D {
> >> >
> >> >  /**
> >> >   * intel_shared_dpll_init - Initialize shared DPLLs
> >> > - * @i915: i915 device
> >> > + * @display: intel_display device
> >> >   *
> >> > - * Initialize shared DPLLs for @i915.
> >> > + * Initialize shared DPLLs for @display.
> >> >   */
> >> > -void intel_shared_dpll_init(struct drm_i915_private *i915)
> >> > +void intel_shared_dpll_init(struct intel_display *display)
> >> >  {
> >> > +   struct drm_i915_private *i915 =3D to_i915(display->drm);
> >> >     const struct intel_dpll_mgr *dpll_mgr =3D NULL;
> >> >     const struct dpll_info *dpll_info;
> >> >     int i;
> >> >
> >> > -   mutex_init(&i915->display.dpll.lock);
> >> > +   mutex_init(&display->dpll.lock);
> >> >
> >> > -   if (DISPLAY_VER(i915) >=3D 14 || IS_DG2(i915))
> >> > +   if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> >> >             /* No shared DPLLs on DG2; port PLLs are part of the PHY=
 */
> >> >             dpll_mgr =3D NULL;
> >> > -   else if (IS_ALDERLAKE_P(i915))
> >> > +   else if (display->platform.alderlake_p)
> >> >             dpll_mgr =3D &adlp_pll_mgr;
> >> > -   else if (IS_ALDERLAKE_S(i915))
> >> > +   else if (display->platform.alderlake_s)
> >> >             dpll_mgr =3D &adls_pll_mgr;
> >> > -   else if (IS_DG1(i915))
> >> > +   else if (display->platform.dg1)
> >> >             dpll_mgr =3D &dg1_pll_mgr;
> >> > -   else if (IS_ROCKETLAKE(i915))
> >> > +   else if (display->platform.rocketlake)
> >> >             dpll_mgr =3D &rkl_pll_mgr;
> >> > -   else if (DISPLAY_VER(i915) >=3D 12)
> >> > +   else if (DISPLAY_VER(display) >=3D 12)
> >> >             dpll_mgr =3D &tgl_pll_mgr;
> >> > -   else if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915))
> >> > +   else if (display->platform.jasperlake ||
> >> > +display->platform.elkhartlake)
> >> >             dpll_mgr =3D &ehl_pll_mgr;
> >> > -   else if (DISPLAY_VER(i915) >=3D 11)
> >> > +   else if (DISPLAY_VER(display) >=3D 11)
> >> >             dpll_mgr =3D &icl_pll_mgr;
> >> > -   else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> >> > +   else if (display->platform.geminilake ||
> >> > + display->platform.broxton)
> >> >             dpll_mgr =3D &bxt_pll_mgr;
> >> > -   else if (DISPLAY_VER(i915) =3D=3D 9)
> >> > +   else if (DISPLAY_VER(display) =3D=3D 9)
> >> >             dpll_mgr =3D &skl_pll_mgr;
> >> > -   else if (HAS_DDI(i915))
> >> > +   else if (HAS_DDI(display))
> >> >             dpll_mgr =3D &hsw_pll_mgr;
> >> >     else if (HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915))
> >> >             dpll_mgr =3D &pch_pll_mgr; @@ -4346,20 +4347,20 @@ void
> >> > intel_shared_dpll_init(struct
> >> drm_i915_private *i915)
> >> >     dpll_info =3D dpll_mgr->dpll_info;
> >> >
> >> >     for (i =3D 0; dpll_info[i].name; i++) {
> >> > -           if (drm_WARN_ON(&i915->drm,
> >> > -                           i >=3D ARRAY_SIZE(i915-
> >> >display.dpll.shared_dplls)))
> >> > +           if (drm_WARN_ON(display->drm,
> >> > +                           i >=3D
> >> > + ARRAY_SIZE(display->dpll.shared_dplls)))
> >> >                     break;
> >> >
> >> >             /* must fit into unsigned long bitmask on 32bit */
> >> > -           if (drm_WARN_ON(&i915->drm, dpll_info[i].id >=3D 32))
> >> > +           if (drm_WARN_ON(display->drm, dpll_info[i].id >=3D 32))
> >> >                     break;
> >> >
> >> > -           i915->display.dpll.shared_dplls[i].info =3D &dpll_info[i=
];
> >> > -           i915->display.dpll.shared_dplls[i].index =3D i;
> >> > +           display->dpll.shared_dplls[i].info =3D &dpll_info[i];
> >> > +           display->dpll.shared_dplls[i].index =3D i;
> >> >     }
> >> >
> >> > -   i915->display.dpll.mgr =3D dpll_mgr;
> >> > -   i915->display.dpll.num_shared_dpll =3D i;
> >> > +   display->dpll.mgr =3D dpll_mgr;
> >> > +   display->dpll.num_shared_dpll =3D i;
> >> >  }
> >> >
> >> >  /**
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > index 3d988f17f31d..caffb084830c 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> >> > @@ -35,7 +35,6 @@
> >> >                  ((__pll) =3D &(__display)->dpll.shared_dplls[(__i)]=
)
> >> > ; (__i)++)
> >> >
> >> >  enum tc_port;
> >> > -struct drm_i915_private;
> >> >  struct drm_printer;
> >> >  struct intel_atomic_state;
> >> >  struct intel_crtc;
> >> > @@ -422,7 +421,7 @@ bool intel_dpll_get_hw_state(struct
> >> > intel_display *display,  void intel_enable_shared_dpll(const struct
> >> > intel_crtc_state *crtc_state);  void
> >> > intel_disable_shared_dpll(const struct intel_crtc_state
> >> > *crtc_state);  void intel_shared_dpll_swap_state(struct
> >> > intel_atomic_state *state); -void intel_shared_dpll_init(struct
> >> > drm_i915_private *i915);
> >> > +void intel_shared_dpll_init(struct intel_display *display);
> >> >  void intel_dpll_update_ref_clks(struct intel_display *display);
> >> > void intel_dpll_readout_hw_state(struct intel_display *display);
> >> > void intel_dpll_sanitize_state(struct intel_display *display);
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
