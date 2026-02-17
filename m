Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dmsIMuP+k2mD+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:38:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21652148D69
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F414E10E35C;
	Tue, 17 Feb 2026 05:38:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVAug8Jd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A3010E35C;
 Tue, 17 Feb 2026 05:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771306719; x=1802842719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IynBLli3i09JUj4zYMoLe1kvBL58I+MSFxuF/pWirBk=;
 b=AVAug8Jd8t3XYwRE4GfWUestYlhKiacKutv4XFQLEiFe5No2yqILXx4C
 GXkuHuJ63zbVNbATcb4iJnojPfoBkzdrHVheMiUYzQ5g8lMnJDLHWZdio
 r/W+l3qxl76x6vKCteHB/E0mHN0nsqzQOt4quXRmGbXcTH4n7b35c0wXC
 kZL7W8B4366vp7hUIBACX0Ml1UNLazYA6pxEgfgex7nXTxTRaHVYN0qIj
 839NbcW9Z7evRv1kgreWezpaAJa3EHja6ZxCioTT+Z7GdhcmxOVKthN3g
 0V/ocW166OT5ukw0q7PffbA6uGRlLprjlTdPh6veZBAkBDJQYa7CnQx4n A==;
X-CSE-ConnectionGUID: 7vD05btoRKytQfJnsJolvg==
X-CSE-MsgGUID: BUc0617STgW/d8s+WbT3mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="83472982"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="83472982"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:38:39 -0800
X-CSE-ConnectionGUID: b3/douofRC2J0EHdI3L07A==
X-CSE-MsgGUID: aYl7coHdTCyAuS1Kk5aKhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="251461143"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:38:39 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:38:38 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 21:38:38 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.4) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:38:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U09OCSZO4ufBQf9cYeOZzd0DhMjID9/ji3r8e9//UMWXxTjY23y0RmVkBSgGC4lV1uompGUFClcBM39oMs5VxRSM0gz99AHi92IWW66TLxPlckKLoDynX5fBv6KRaudBuzmLzWPhwoMqNAfW5SCv+o3c9nIwb1sp4vPt9zC5FZPKMLda+C+1FGq/iFMZmL09fYb6oY1zzc6QCD0vdEmEM4zviWlh8c753ZrZYEaGryr6D7hqWmUbuVjEyphfPuOlrKgqEQe33kNRXaMuL3ZWoXmjaJN6kyb3VucQf8WXa4q2IS0iVLUuqREcMTh7HYF6BCCdVCFSRm/krujjOxW46A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qpSZo+LAEZtty+TFfrYnslVLaiT/9FJTtoZoT5oKIb8=;
 b=a5zRKLzG4R4wX/nbQQX5eWyRg6x+c8F7ibWJXB4NjCgywgh+QPfdOemSaL2mjl1saLH0Irt3QFqNBl/CStt11nzGRA6bObhd/qWnW8cPeAXL1YARV7j3U9UuWtv3aH2tlUZWmfDO9T4UrDM2TSdwsV/BHSlwmjYdZ/Ulb77TCt9hYnx1mOompagejrjmGX7XWymCgwyZzIxb5/oGmwv26Gg1J/3IpOuPpR83i5iabGlZguXiPyYypW9uT+CcJXyi3H3nR4EYXtqNlccpsLWNDbCsTIhlOClOTjNQ7uUhseXu04LDMa9i+EPGUO/wPosQGHT0C44Lr6pSRubhz6xj8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN2PR11MB4647.namprd11.prod.outlook.com
 (2603:10b6:208:262::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 05:38:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Tue, 17 Feb 2026
 05:38:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 01/16] drm/i915/display: remove enum macro magic in
 intel_display_wa()
Thread-Topic: [PATCH v3 01/16] drm/i915/display: remove enum macro magic in
 intel_display_wa()
Thread-Index: AQHcnNMbGW/Hu22INUaL5kgiBkFYxLWGZXcw
Date: Tue, 17 Feb 2026 05:38:35 +0000
Message-ID: <DM3PPF208195D8D454C8BAEBFDC120A5F16E36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
 <20260213102500.406925-2-luciano.coelho@intel.com>
In-Reply-To: <20260213102500.406925-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: 650e80e1-590c-485b-b0e4-08de6de6cba1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?VjPyY5+oFFrP0kIaqooXDdPwkSBPzOV7YikmOD47RpWvoZMFxUAvNAwheJou?=
 =?us-ascii?Q?H47EYlrROiwQ1dVt5CEcBkq10W0sP0ldH05W2nLa1QCMAaWet+dm2xPWvijS?=
 =?us-ascii?Q?LD3bZtvvQrPf3XQl/0jV4WB2hDtZq/xtcCj1d6KY+UfYEFQy+NWCuhkot3p5?=
 =?us-ascii?Q?AjY1X7sTT1Y9K4kdF2m9pB6GZqj9WtJTgaXeHNZ4deIJjnQrBLiwl7wGucIK?=
 =?us-ascii?Q?Wdex4ZzYucPY0jqEypzlZjZmuLJ4KyzWir1cSe2DDLlrL9AqhkUO3yI0YKgC?=
 =?us-ascii?Q?GvTkP/LO22n2iBA9P3GS3xCh1tchz96nKsgIfPNoMBxmH1YcghDRyC1nkgwY?=
 =?us-ascii?Q?SYQ2EpUezJ/lhw9mcF3FO7S802ojqEBE4pw90YEV+Dx7HZatFjGuL/eiM6t0?=
 =?us-ascii?Q?jjgJy89YksW44RT0CjburrP5I47+IV40g3HCg9vYb1c5gb3S8uYiHCgVn6xQ?=
 =?us-ascii?Q?Q1ctJ/CI6hEGBuIfjfGzF7ulyOZPbc9EIwXCSvB9nTAL6qqfU30IasMxZkdT?=
 =?us-ascii?Q?3AbEMqKuy+LIDXw/mpccpaOHUc+llGxjjkhw08D+gtwAd/isdS/WQnRfcCga?=
 =?us-ascii?Q?7n1RoUWcr5M4OeaRk+c4s6BOKlfeAPVgz8Ib87y8ihGL96xryW3t147Rx2eA?=
 =?us-ascii?Q?dFMrJPBwWNLgmM+OPrI8Y9US/LCuTtgdhHbn7eyRZcpQkxwqCaFzRdbY0X/l?=
 =?us-ascii?Q?/Hi8OGESXo4Ke+wgrQrQ+s+5/VMpMBMg/+WUlqVNRF+7nlyAQ6EUhwAHwLdN?=
 =?us-ascii?Q?7YdogsL3zRguiaElgFZqRCtqZJHPcrs1Pd6uYq9KXK9WqTJhQHFqnfhXeTVy?=
 =?us-ascii?Q?bmv4Yv9aKyzDORGB2PdvehYY7COd6zvhucgyGkWKc3GTt4biGeI5CYE7uuiS?=
 =?us-ascii?Q?IO6YaepYEsZ92Ng/WLPP0u7YQpLqHfbQW5Jo3njaJhngo3XoHPWcjenbPsHl?=
 =?us-ascii?Q?kWrXhrOpF5n0tXzQ0Z400mb1Ko2NXl/5+Jya6dI/neBCddxv1gd8xHjA+GYI?=
 =?us-ascii?Q?/LNfjYDCsp8k5UVpuA29chjvFicPKKXCCO4igwohcRtX5++BfjOiFMvctS3/?=
 =?us-ascii?Q?PEvjbBl1vB9RmBGPcCU5IUuh1bwVxxUZpV/ZRX7IYc8P7BWkE4D2iP1NIq3E?=
 =?us-ascii?Q?0DqNxrRNWvNsZQ0WV50G8C6JCvP2eQLMa1TbE5psMsPhUofM3CXbgbYOZhIv?=
 =?us-ascii?Q?6CEnBq+EHBnijxCscmtvXuwmRGog8rZh51UmW3R7h4cacjoQxGasUDNSKHPj?=
 =?us-ascii?Q?Z5DKDIlhypF9XbmRmp+f46YDTx4oXaaiIuU3FbfUbgM242aQV1v+691/Hbe2?=
 =?us-ascii?Q?zWvzUyAD1wRqjmuCbod2APSdcN0Q7Bb9tOM9a7xjc8U5D7vMEf646HkdAeId?=
 =?us-ascii?Q?mWQMmV0MRWv7qmPHYTIGElD/yxmlcvZLF/fNpwidT0HlVCfCcsFdA/OIDGmg?=
 =?us-ascii?Q?eFxd/MmGXLphRbJO5RHWjAjPAARXRxfOwYRwUTFA3mI0hHwjY5ZxCjxgbowj?=
 =?us-ascii?Q?IfZ+T10cJUc/xxG6gECYmXaRzGvhoWxz11bn86EWbeyPR1/pxTpKh//2XDJI?=
 =?us-ascii?Q?A39iZFbgjHUkhNvdTWhfyIb+gnR97lkNbDEuvwAh/gx/KKfXtPKwhmUbfxun?=
 =?us-ascii?Q?GJHSrqeDtxnpvnrcUUpB8O4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L34xHCIPTlADLXKUg5VlKAOCwkHLjn0ABWYz/MgyvU9RHbFKQwSQ+RHIUTk1?=
 =?us-ascii?Q?iWGlwWKDeiXMvLXubd6BhwdH577jyynHjOXRkPZKK9Xsuq/ocJzxowFa9RZD?=
 =?us-ascii?Q?PEinojfG+gvvCk2GNKA6qled2TrxkvHoA4BuVHQ7UCJm9A/Pmm9fm7AQQqgQ?=
 =?us-ascii?Q?O4RoRvSvCiqokC1kMJ1fAX3nc18wztr9q+sJYmkPDBjZQE5Q7WM9lj+rfahE?=
 =?us-ascii?Q?Wkne0W1MA5c8HDTvmimLKEIm/XQLn1IQLtNXwxb0ELiOi1Z3Qq3KjEYYIVcE?=
 =?us-ascii?Q?atCSwgLowN2++j0B87Nds34x/S55BOEoHrfTi3lcgtohz4PcMVtFgnvXA2yB?=
 =?us-ascii?Q?ZVNnLuVA2YltjwBAKl3yXs5C7VZY/3HeifKNrN+H48qKq3mk08k9ADQ6PKUk?=
 =?us-ascii?Q?gVqoyODJ+yO2bbwFHifYZBvGIN+1Z4aRRVICAiPqI/PhN6B2+TcDUGhhc17t?=
 =?us-ascii?Q?NUmcZMU5PkrRLPJ1QiZJkM/h1EIkF76GiRmTTKS3+6LH5raNqam8JjOeySOT?=
 =?us-ascii?Q?Yz2jX0i71+qKtWxoAd3jhfrVWX8KYdXPQ3gw96dfSooS+tDBRktA+sQAGdHd?=
 =?us-ascii?Q?p2uElGyiQtkkdf8gIodEoPI+bYD+YMdxABRWosveEBlKYY7tPqiSANmfIrIL?=
 =?us-ascii?Q?T03ZqQ5RgRu6RdbsM/27AoSQIuEuqH3usdG/0KJokUXppeKEc2Lso+qBmRIf?=
 =?us-ascii?Q?Z9rQXndrRfyg1AzMqspXAFz7vCw5j91rANDchns0dfNLssVCPGZMWGIN66jt?=
 =?us-ascii?Q?4uUk/7splCHJl7ymsec5xd64uO+hgAZNA/rzCo1lmXhlQSr+j+eNrMsVp7dL?=
 =?us-ascii?Q?aeYUGcxjInIIYyQgRYIPYKR6SXG5+tiLyJ7lTXfP4uCUYTIjFbS0i9Dmpz1W?=
 =?us-ascii?Q?WQ7yQLqaXRreTENYXXQ8vsaX5Cof+JT3mAKBO+cHtdWXeLquEfFvBdsYVndA?=
 =?us-ascii?Q?r4Wf2sYmHQ5WGNLCHB85jjgcqLjQ+IbBLMWpgJTJRkcGEe2km0f2yd8kk1/t?=
 =?us-ascii?Q?rQJ5rPRPwJxbaywYhtbIt8lZsMf8jXOgqzNBzcSqUwtqvO9Rq+LYCRtLUaW0?=
 =?us-ascii?Q?3yot3bhZPVCRH4CgqE/yfrVigqnux1uopAxXXBlbNuWAYgapcJacSM+Kt4I7?=
 =?us-ascii?Q?aolWe5BtgqDHh5hTmhBR2Yep92TeWoZEg3u8/97PED5JZP8RDKyWiNiFKTax?=
 =?us-ascii?Q?73rFMuE2+KgqPKnPovXTL9oMCNO3Q+LynMXfsPSFwStcLrVr8GPZ2qfWRpSz?=
 =?us-ascii?Q?rQseLvM0HmQrzwvWjDfeNSrf2bytJmcVp86F3oV3V97x+yVfrcv0VCDzlHLk?=
 =?us-ascii?Q?pvXCFPCpHFQLpLB7UwyK+n7VYTORk7cgTbJgztHqeD2EMqbRa/zy3BDYiARc?=
 =?us-ascii?Q?j30As2+0//M8vdjJPEDf0+BJ9tNRcyVjnjqgBPqSzJC/5y1nhR6zkw2dbW/G?=
 =?us-ascii?Q?zJ4M5/cR3X3k991fBhg10KdNBoSUiMdrFHrOh99fdZxiLlB4t8HMHqwQUcUK?=
 =?us-ascii?Q?Tofy5rNTv/mExkFD5TH0N3O0mkmaur6cF0x+Dz/nmdvBsX3LolggJQYAmawB?=
 =?us-ascii?Q?WvuM5PQtPo6uAeVXfGL4FTitQ7h4fep/3F1eZSDOHIKNZISQ1MZHQ6GHJAUL?=
 =?us-ascii?Q?pxLsnSCyx/nidyjxLCogK/yYDaQxgNYCWhlyFh0NM+sbaCk5OuzcLlHmHo1W?=
 =?us-ascii?Q?GK2GsRekcffwCSAjTU/NQFRQZY1w2kmSfEx+187L9qPnH+lqHvSLz6CoWa9t?=
 =?us-ascii?Q?+xM+yP1SZw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650e80e1-590c-485b-b0e4-08de6de6cba1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 05:38:35.8986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pe7q/NanOOJw68rG1ijHHhDN6t43THjCUBV2GjkJ91kfRToR+tyLqIxuVXZWPOGEmeLqfrJ0NHRYqsluMlqqTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 21652148D69
X-Rspamd-Action: no action

> Subject: [PATCH v3 01/16] drm/i915/display: remove enum macro magic in
> intel_display_wa()
>=20
> There's not much use in passing a number to the macro and let it convert =
that
> into the enum and a string.  It just hides the symbols.
>=20
> Remove the number to enum conversion magic in intel_display_wa().
>=20
> This has the side-effect of changing the print in the drm_WARN() that is =
issued
> when the number is not implemented, but that is moot anyway and can be
> changed later to something cleaner if needed.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display.c            | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_wa.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_wa.h         | 2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c                | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_gmbus.c              | 6 +++---
>  drivers/gpu/drm/i915/display/skl_scaler.c               | 2 +-
>  8 files changed, 16 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 29d90d612bb2..36b67b1a793d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1870,7 +1870,7 @@ static void icl_cdclk_pll_disable(struct intel_disp=
lay
> *display)
>  	 *      after the PLL is enabled (which is already done as part of the
>  	 *      normal flow of _bxt_set_cdclk()).
>  	 */
> -	if (intel_display_wa(display, 13012396614))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614))
>  		intel_de_rmw(display, CDCLK_CTL,
> MDCLK_SOURCE_SEL_MASK, MDCLK_SOURCE_SEL_CD2XCLK);
>=20
>  	intel_de_rmw(display, BXT_DE_PLL_ENABLE, @@ -2186,7 +2186,8 @@
> static u32 bxt_cdclk_ctl(struct intel_display *display,
>  		 * icl_cdclk_pll_disable().  Here we are just making sure
>  		 * we keep the expected value.
>  		 */
> -		if (intel_display_wa(display, 13012396614) && vco =3D=3D 0)
> +		if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614)
> &&
> +		    vco =3D=3D 0)
>  			val |=3D MDCLK_SOURCE_SEL_CD2XCLK;
>  		else
>  			val |=3D xe2lpd_mdclk_source_sel(display); diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index bd93add5101b..f5aeede6db76 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1071,7 +1071,7 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
>  	if (audio_enabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_enable(state, crtc);
>=20
> -	if (intel_display_wa(display, 14011503117)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117)) {
>  		if (old_crtc_state->pch_pfit.enabled !=3D new_crtc_state-
> >pch_pfit.enabled)
>  			adl_scaler_ecc_unmask(new_crtc_state);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9c8d29839caf..1e03187dbd38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -249,7 +249,7 @@ static void hsw_power_well_post_enable(struct
> intel_display *display,
>  	if (irq_pipe_mask) {
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
>=20
> -		if (intel_display_wa(display, 22021048059))
> +		if (intel_display_wa(display,
> INTEL_DISPLAY_WA_22021048059))
>  			dss_pipe_gating_enable_disable(display,
> irq_pipe_mask, false);
>  	}
>  }
> @@ -258,7 +258,7 @@ static void hsw_power_well_pre_disable(struct
> intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
>  	if (irq_pipe_mask) {
> -		if (intel_display_wa(display, 22021048059))
> +		if (intel_display_wa(display,
> INTEL_DISPLAY_WA_22021048059))
>  			dss_pipe_gating_enable_disable(display,
> irq_pipe_mask, true);
>=20
>  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask); diff
> --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index c2ccdca2c2f3..1d8340b36c01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -87,7 +87,7 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_22021048059:
>  		return IS_DISPLAY_VER(display, 14, 35);
>  	default:
> -		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
> +		drm_WARN(display->drm, 1, "Missing Wa: %s\n", name);
>  		break;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 767420d5f406..06c1f62c0f6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -40,6 +40,6 @@ enum intel_display_wa {  bool __intel_display_wa(struct
> intel_display *display, enum intel_display_wa wa, const char *name);
>=20
>  #define intel_display_wa(__display, __wa) \
> -	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa,
> __stringify(__wa))
> +	__intel_display_wa((__display), __wa, __stringify(__wa))
>=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 9f39b6990bbd..4a99824653c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -958,7 +958,7 @@ static void intel_fbc_program_workarounds(struct
> intel_fbc *fbc)
>  	 * Fixes: Screen flicker with FBC and Package C state enabled
>  	 * Workaround: Forced SLB invalidation before start of new frame.
>  	 */
> -	if (intel_display_wa(display, 22014263786))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_22014263786))
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>=20
> @@ -980,7 +980,7 @@ static void fbc_sys_cache_update_config(struct
> intel_display *display, u32 reg,
>  	 * Fixes: SoC hardware issue in read caching
>  	 * Workaround: disable cache read setting which is enabled by default.
>  	 */
> -	if (!intel_display_wa(display, 14025769978))
> +	if (!intel_display_wa(display, INTEL_DISPLAY_WA_14025769978))
>  		/* Cache read enable is set by default */
>  		reg |=3D FBC_SYS_CACHE_READ_ENABLE;
>=20
> @@ -1613,7 +1613,7 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>  		return 0;
>  	}
>=20
> -	if (intel_display_wa(display, 16023588340)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16023588340)) {
>  		plane_state->no_fbc_reason =3D "Wa_16023588340";
>  		return 0;
>  	}
> @@ -1623,7 +1623,7 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>  	 * Fixes: Underrun during media decode
>  	 * Workaround: Do not enable FBC
>  	 */
> -	if (intel_display_wa(display, 15018326506)) {
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_15018326506)) {
>  		plane_state->no_fbc_reason =3D "Wa_15018326506";
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c
> b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 81b6c6991323..e42608d5bd61 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -250,7 +250,7 @@ static u32 get_reserved(struct intel_gmbus *bus)
>  	preserve_bits |=3D GPIO_DATA_PULLUP_DISABLE |
> GPIO_CLOCK_PULLUP_DISABLE;
>=20
>  	/* Wa_16025573575: the masks bits need to be preserved through out
> */
> -	if (intel_display_wa(display, 16025573575))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
>  		preserve_bits |=3D GPIO_CLOCK_DIR_MASK |
> GPIO_CLOCK_VAL_MASK |
>  				 GPIO_DATA_DIR_MASK |
> GPIO_DATA_VAL_MASK;
>=20
> @@ -342,7 +342,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>  	if (display->platform.pineview)
>  		pnv_gmbus_clock_gating(display, false);
>=20
> -	if (intel_display_wa(display, 16025573575))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
>  		ptl_handle_mask_bits(bus, true);
>=20
>  	set_data(bus, 1);
> @@ -363,7 +363,7 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>  	if (display->platform.pineview)
>  		pnv_gmbus_clock_gating(display, true);
>=20
> -	if (intel_display_wa(display, 16025573575))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
>  		ptl_handle_mask_bits(bus, false);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4c4deac7f9c8..7c5cb188ebf0 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -823,7 +823,7 @@ void skl_pfit_enable(const struct intel_crtc_state
> *crtc_state)
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>=20
> -	if (intel_display_wa(display, 14011503117))
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117))
>  		adl_scaler_ecc_mask(crtc_state);
>=20
>  	drm_rect_init(&src, 0, 0,
> --
> 2.51.0

