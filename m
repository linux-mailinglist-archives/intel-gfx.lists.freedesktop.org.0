Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPaJMaLQlmkZoQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 09:58:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B6615D288
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 09:58:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09DD910E680;
	Thu, 19 Feb 2026 08:58:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRY66TrT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E62910E1C8;
 Thu, 19 Feb 2026 08:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771491487; x=1803027487;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qh6XSKag4wnWIuLPOE1t3Sq3g2jrYt+UCMdy391brIA=;
 b=PRY66TrTzi18D6NQMhNzCPuq7MmTLUg9Ehj/E7PU8sCpS6pE3iJjU3l+
 UiI+D61/v0QRg38mFzvLBFWpuRZRF5DNM2ePJkL+itcuzg0IPbZvjpHTX
 LX1ixaXx+/up7vPQHT9RlSEQIKrHGuWTc2h31weNszWW7l4TvOlOeplac
 fBYWfaBsU+KvxcUtv8VelrJD6DeFzy3IiNDxYSrNzafGw181z+7P40EWy
 p8XJL78tF6mcYXqka6P25Zp8kZlqboZ7LpO7pdfYB4dBfK0Gp/kNtxLCE
 WxW6B9UnS+Hc1o5eJVpZOfUp/bz8SSSW8rVKVixTTeclrTr9G6hKLosQ/ g==;
X-CSE-ConnectionGUID: I/o7ms7hTU+7RSYpRQ4GBQ==
X-CSE-MsgGUID: xsoJX+cMRBehI+xKrHqClw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72473890"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72473890"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 00:57:59 -0800
X-CSE-ConnectionGUID: vZqKaeA5SgePMG7wFaD3Sg==
X-CSE-MsgGUID: 6yrRT0emRPyD5lVn+8lxow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="237444450"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 00:57:57 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 00:57:56 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 00:57:56 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 00:57:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eFxCsbAxPXILjn6k5eKkXtG0vq3ex6iEZEU1sRq+wPIyHnOgJ6bBSLQk+fmknSJRhET7kz3BOsgg2CmQs2kESOjBMKCwAK537RuRPsEHaDIdx1sld1RCWByyOp0kZUVxJ7ZB5DNUQdgezjZQj99tZjUyJHcHfWqXpkCdTunbJEIhv1znS04HK3ZLvCat6/EJTKACrQmvLVrlY3WHeAkjzEHHb3U3u1dQFm9Eb/E1mCcnTWV1vbSvlEQcQbotrfN26c5zNnyToRL0mDXnFV1hlWmfNZTATH1QmemfurkwGjjHQU9vzdAbbQ9uzqh2cRD4FUANSctzXMVfJwhccpKpdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c0e7Tb3S718eIqheziD0Kqp7MPlvH9t89joOABEHtOo=;
 b=Jq/OmxQakBzMzY/0yZaaLINwDu8R1V3ZB3YWZsBxXbuRa06oGHzczGO+IGth/1hFEW2vWIL/raNFtLMpvx/bh1/SUIv1E2FgaNYWuafLCOoLvNCePfy7pCOwdpwsF+c0biRnZZqbGqAtI9EZGpDstErx9Z3yfQBWiEx7p7ecGBYD6zIllbpGOwwBABrqwFU8ptaIz6k93bYwik/U36D7w39xOauB3QzQsX9mWvvetXzJpouvEWzAclVvRSqmpe4LX6SQxDQdN+3DEIssPc4Lxab+zlw5CcYBGJYJNmkS77eD174Kbf0nxlhv2YydHfeNfljvygMPO5bRuocvhEqTsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB6543.namprd11.prod.outlook.com
 (2603:10b6:8:d1::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 08:57:55 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 08:57:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
Thread-Topic: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
Thread-Index: AQHcoXp0fAslf/j96km2gOrIFNjTVLWJtTcg
Date: Thu, 19 Feb 2026 08:57:54 +0000
Message-ID: <DM3PPF208195D8D013ED4C5C3D0B0C4ECF0E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260219083219.32256-1-arun.r.murthy@intel.com>
In-Reply-To: <20260219083219.32256-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB6543:EE_
x-ms-office365-filtering-correlation-id: 3234912f-55c7-4cd9-b7b5-08de6f94f895
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?u0Fi823SjBvnQCx6FcXuIWegcNw7Ytogxcjf+POedM8WXmp5mQpBQ2Fru1HY?=
 =?us-ascii?Q?7gQnAAtdRyqU5ao15tz2ytilVJaa4xSq317EFNSoENkGBEDaeSQaxD1tTHcc?=
 =?us-ascii?Q?u3+wRV5ckbAWZphnPv2/wCzX12DDAfgrPo1Pn9bXrBSMBrf8Q6CL7ddXpa8n?=
 =?us-ascii?Q?q0WzIPxq+X6knoabukrAMqS12B/cTLZAckZnVpg3OIGWJlMHD2F5CESIzekp?=
 =?us-ascii?Q?XNtINs9fWlwU0vlGgeDNLqYT7fs/zjqI92m524+mmqqyn7xJYAetFzXf5IpR?=
 =?us-ascii?Q?DukplXEzpagn4CZ/EiUQS28xUC6jI6UftsgunpyoJTeNEIM++rhr41xHw5Gl?=
 =?us-ascii?Q?1/2UJp7fSDXTEuhsOCK5UwmjKYy4vjfDYIMGLP0U8i2sgxIg/Tb45k4L+ld+?=
 =?us-ascii?Q?d0x3fnkiQv7BkfjVJTU+gnePC7Viv8iqFq5k+dSRidrLEP+OZTHj455YVNoH?=
 =?us-ascii?Q?kPYeBqdrdt/obWcciFQi20fJYMeSLOa8ovqsmndBWlDZkCWRotIHZKUczH5u?=
 =?us-ascii?Q?dbW3jGvLl1mfyQU1gA3U5lIXR0hO/4nnKoLP4ty7SFjEjkST82jjlPzxfqlq?=
 =?us-ascii?Q?aEvrlu7eSrxFZd4NJsOcDeBV6lXiyuCIiKL9FExzL4bOdqaXSz8Orek721uC?=
 =?us-ascii?Q?uuLAyf4qJ91Tle29COsjSL3E8OarB54OE36zRr4lJvFquLbye5RwQZPzhLQV?=
 =?us-ascii?Q?OaHMiZmH+61IXSkcRyCk6ID5pXhr8OYnaO4pgrevgiyZRkIpere2w8I0nBYz?=
 =?us-ascii?Q?IL1J3241expF6ESoR8YYcjSqHttgz49BvKh5ZAQVBFVW3bzCODk6HXj+FKI0?=
 =?us-ascii?Q?F5LWqgxjEKSxN9I21MohmlJhSOs/8ex3LGbumeJA9lzAKpBASUch1aWQ+PA3?=
 =?us-ascii?Q?Omt4MyhAqBHfRK4BqVIv6vFEx6CSeHy8B0zpBRrsMGCvU6ZPWkPJfqWxCgkd?=
 =?us-ascii?Q?tm1sDXuYplYO9d2yHWsscg0HrArpBYer9RHIOFHJYJ0EHOnQfM8qok8GpDTE?=
 =?us-ascii?Q?g+QkqYTZWLOaV7uvKp4iX8P6oYZBS+Rcnb9y2wCrVAk7GL1KXhIkzGASacZS?=
 =?us-ascii?Q?r0COKz1zcqOXtaJ/+ikekTgqeHhBmrVwkysUx/Wv7PYMcwbVLO5B/45vk7Y5?=
 =?us-ascii?Q?a4zRi0PQFMSBmmAmlwGimb6VzD4AL30JSekd999MLAG7i13NteMKDuCOvpg3?=
 =?us-ascii?Q?p0C+jxeP2s5xcjAA8GJUxnaLlkXiEiJps0YCYQ57ltmYl07QuuxhFgeISGw/?=
 =?us-ascii?Q?ZPJoxQoI4Cg6HCNT4pLHO77FcrOVyKdPEN9Fdoh8e/fvE63FY1ReFdai/vIh?=
 =?us-ascii?Q?ybSE7IFi/UpsFzkuOKrS+WpF86gNVGvf785wfJ8gvnafBI6GT5N+31fdDB0L?=
 =?us-ascii?Q?1IrkX/3YRSrXtsA6fNU83pIQ/nIYqkhneR/15ej7TOAY/EPqkFkaEUE1bHvM?=
 =?us-ascii?Q?NQTyn+9vh1puOxN7Tob34xblI7Kadkq+152giR0TJ8r+6nhxQ5KhcZOPC7yx?=
 =?us-ascii?Q?ood/F4laU03s6N4drPa01TcXgRudZD+fr1q6kHWMfe3ok6GYnlObgBXx/U/3?=
 =?us-ascii?Q?FqsWlHqeJ8O+c5wqEO+GUGognDLrjx38NhSTOsi+AH8AbdEEmBFEG30fInpQ?=
 =?us-ascii?Q?BT4C7Iyej3pLNBkRCfTLpds=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xCIEUJPLF5wGM8ZcVJNtVBvMF0O6gHB+xFaZZm1TbEN6xsQ9jQJ+JRFabNVm?=
 =?us-ascii?Q?vwDPB3RLseD/mO9k01QziRCjYuZyWDsMhlqXWyPcljmMihAwgAPnHdgIspLA?=
 =?us-ascii?Q?mVsI2VkMYijC7yTmyqojdwlvLYK6h/E58GPagEITAtCemgGO0/JJYrYowcBP?=
 =?us-ascii?Q?rf1WIZaYf/LYPEBy5EBgBfo0LD8NKJpUxfXYeSHrS+vP4kU+hAysyixm4E+8?=
 =?us-ascii?Q?nqK5usYJ8c/Hfe0TKTyF752ScVsjY2dxgCxgmd7/WMfrnjCNbKnNGz1P80Qb?=
 =?us-ascii?Q?8ZQNngjEMZoZnaGkurdAHzqJTd1+6ipj0F34Svxo2QTbdjTE05SBnsOOpFL0?=
 =?us-ascii?Q?Wsic6CbVQE41fWN7/N4vc/V/+Rv6541SshlSGebQWXzA6Skr7Uw8xD9/nd3O?=
 =?us-ascii?Q?5Auhl4VWr5MoVZ6U8bZa7VMHH5dF56OJuEUR11UQyaD1cP6pE3BQDCSIJA7z?=
 =?us-ascii?Q?hrE5PnWQcmMbn9VYa2TYO9iH2b7PHsjWJCLLAysI8tKRr84zAg1CjXFZ+VgL?=
 =?us-ascii?Q?MPuglCtHh01UHJiFm1qhOp+ndyto9mbh4/q8+pCA4xn+82sUT/nbuDD8T1V1?=
 =?us-ascii?Q?Gp+4+n75DqLpwVaGLs+LLjUtgJvIVfq5UB0OJO1FZc6zUxkV4qATodOM1fs2?=
 =?us-ascii?Q?zYoN+Vzhs7j2gSrRHUZVfxdeLsfsD9bfMwo0H+T8cuA5uf5tHXFbRd+KfimK?=
 =?us-ascii?Q?CMobiU3h58uACmiD4h2Mjvcmfms0YG/zGXClpI2qjxPiTg35MQQS/l7vl+tc?=
 =?us-ascii?Q?Nt7r6nTh1HVZFNHXQPsvhKErUei9/dNgyZI/EmPDSX7O5Hm0AAvTIQpiY6NB?=
 =?us-ascii?Q?kxj1HvYRBrPiMAeH1/xwxD2F0OxzdQqT6b5psQ5EOaulA25jodXPEMy3uY3q?=
 =?us-ascii?Q?CKajRB4SI3ES8DrXyR9Eivvq06yRTN3MT4CY1l5PdnEJFQUDJ9zoxr9JUKME?=
 =?us-ascii?Q?pWozrd8um03PDbbLn2ktL1d85BkKSqceQ30wkUXtOcwfB826YRh6+W+2dcqF?=
 =?us-ascii?Q?BtP76/BGO1jlMMueP6HA0UA/M4mfU+9rd7bFORLjOQwDkL+gdFORBYqjc6s0?=
 =?us-ascii?Q?/EIagL3WEsdUa+odPFK61Pia4ULbWt1bx8zKRnGewXZ+sE32OX0r8Ol5K/GH?=
 =?us-ascii?Q?LlNxi6H4SVNDtuOOxd9vGJ74/G2M8oE+oJ2jFHhmBmw6jDU3kfplgft+EmB5?=
 =?us-ascii?Q?Wjou8y1PNaBr6jGrrDlJ18n1YoMeDoE+sIuF/dccyl70CS/9A4oBeKGF1JII?=
 =?us-ascii?Q?X1i3x3hC7F6+3NXMz6tx0nQjGSAutEtdf54aPUMLxoXsrMfh6UeOCDVV2IRc?=
 =?us-ascii?Q?Wqcz8uJ0SrftUhmivbloWLDUtSgHpPN6WTuvT1WynGimFVRE89BmhNGxxJ3U?=
 =?us-ascii?Q?2eDfLWjDMcLTFMAeKdT8m6fR4B5e+RfnmQMDVTB8vd6jaGshgTbOX526Lbmb?=
 =?us-ascii?Q?fiKPFCnqSROxkZ/IhPVC5Jm6kqipVQB4fd3kbLURuvdDcYP4Yg+fcdg7E3/+?=
 =?us-ascii?Q?L3k63kJdNpuvhSg8ppX6DFXq5m9oMEqwVkNpGXEkxU/jlgnwdzm3+Ivv1Omb?=
 =?us-ascii?Q?pAJ0pD1F5AmQVhlmU+NoEx3QB9k9qKYNH0Mci8Tf6fu/UC+7SjeIh0mmXY7x?=
 =?us-ascii?Q?tT3LY14Y5W5Mm5aL4rmr8O0IEl11zJ9UL8EC1Yp7AXqGepYyDrA22LkflRPQ?=
 =?us-ascii?Q?G68cqMiXiKnZp7tXUHH5N2ioRS7tJcvM6viNW/lY8bvhMYgbtqH/QPtDLeDx?=
 =?us-ascii?Q?SsBMo2LYog=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3234912f-55c7-4cd9-b7b5-08de6f94f895
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 08:57:54.9382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MwzkNzKBZSjeQgHinXdf++NGgGM5hvQ0TaA8taog36Y+sCrCDxgxVwAQ++FfxLkQrDzmUXeQCHb7Q3Y3cKRJtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6543
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 31B6615D288
X-Rspamd-Action: no action


> Subject: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
>=20

Just=20
"drm/i915/dp"
*DPCD
*DPRx

> Before reading the dpcd caps for eDP wake the sink device and for DP afte=
r

*DPCD

> reading the lttpr caps and before reading the dpcd caps wake up the sink
> device.
>=20

Also add the why.
So What happens when this is not there, and how the spec state we handle th=
is

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++
>  3 files changed, 32 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 454e6144ee4e..4d86826dba1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4705,6 +4705,32 @@ intel_edp_set_sink_rates(struct intel_dp
> *intel_dp)
>  	intel_edp_set_data_override_rates(intel_dp);
>  }
>=20
> +void intel_dp_wake_sink(struct intel_dp *intel_dp) {
> +	u8 value =3D 0;
> +	int ret =3D 0, try =3D 0;
> +
> +	intel_dp_dpcd_set_probe(intel_dp, false);
> +
> +	/*
> +	 * Wake the sink device
> +	 * Spec section 2.3.1.2 if AUX CH is powered down by writing 0x02 to

* DP 1.x Spec

> +	 * DP_SET_POWER dpcd reg, 1ms time would be required to wake it
> up
> +	 */
> +	while (try < 10 && ret < 0) {
> +		ret =3D drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER,
> &value);

We can use read_data and then we get 0 on success and negative on error sho=
uld make this code a lot cleaner here

> +		if (value)
> +			break;
> +		fsleep(1000);
> +		try++;
> +	}

Nit: New line here

> +	/* After setting to D0 need a min of 1ms to wake(Spec sec 2.3.1.2) */

*DP 1.x Spec

Regards,
Suraj Kandpal

> +	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> DP_SET_POWER_D0);
> +	fsleep(1000);
> +
> +	intel_dp_dpcd_set_probe(intel_dp, true); }
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector
> *connector)  { @@ -4713,6 +4739,8 @@ intel_edp_init_dpcd(struct intel_dp
> *intel_dp, struct intel_connector *connector
>  	/* this function is meant to be called only once */
>  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] !=3D 0);
>=20
> +	intel_dp_wake_sink(intel_dp);
> +
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) !=3D 0)
>  		return false;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index b0bbd5981f57..3f16077c0cc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display
> *display,  bool intel_dp_joiner_candidate_valid(struct intel_connector
> *connector,
>  				     int hdisplay,
>  				     int num_joined_pipes);
> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>=20
>  #define for_each_joiner_candidate(__connector, __mode,
> __num_joined_pipes) \
>  	for ((__num_joined_pipes) =3D 1; (__num_joined_pipes) <=3D
> (I915_MAX_PIPES); (__num_joined_pipes)++) \ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 54c585c59b90..cbb712ea9f60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp
> *intel_dp)
>  		lttpr_count =3D intel_dp_init_lttpr(intel_dp, dpcd);
>  	}
>=20
> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> +	intel_dp_wake_sink(intel_dp);
> +
>  	/*
>  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-
> read
>  	 * it here.
> --
> 2.25.1

