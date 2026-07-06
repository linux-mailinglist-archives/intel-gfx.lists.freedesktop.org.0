Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 49t8KO1pS2oWRAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:40:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 039B970E34A
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:40:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i0yM3z40;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C7210E81C;
	Mon,  6 Jul 2026 08:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AD7010E822;
 Mon,  6 Jul 2026 08:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783327210; x=1814863210;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6nAOQai0IPwyv4P3eyLR30rc1x3qWmQJrsAu5Tf4cqE=;
 b=i0yM3z40ajahRP1L4IiSnUs00JKjcMZ2wr5bdTxWi+wGvFQVoSW08GpC
 aocFEDV7WMn2HJFvI4z+X7FswcH/uodPJeu4dInIRQoFIloGqKJSYchr+
 +2d8S9zj942hZkzZzY5stqKrUtUcFa/eJcOTn7vXLKtoJOBNbZ39hb9oU
 /evtfQnImvlxePzGoCqqsRx08g1FJxVyFcIGD3XZgRmM/v60570lQD3zT
 Qfllkj923X268xtwWEiU6kYfPB1UdF5KOpvws2djAu2DQ1hIMjxxCwxq6
 12GBo/M4weZgEHUo/HDdi4pIx28VJPvEzoV01qvgl7r0n8WhzcWjCBrM6 w==;
X-CSE-ConnectionGUID: QPIntOvpQfuAfWxF+b3sQg==
X-CSE-MsgGUID: wydw5DmmTS2bOWzjTdgKYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83817706"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83817706"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:40:10 -0700
X-CSE-ConnectionGUID: hpDUo8b0RnK+O863t2TB+A==
X-CSE-MsgGUID: YN4aZKIdRJGpCbNo8b6vxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="250296207"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:40:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:40:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:40:09 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:40:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jdUgUTroO2ISW9w18jv4vZln5iIfDzmbNafs3fZ+k7hWTZ2wTHa010e3fFGJDMYodSHVChVvvxooaazjzueZWyS3bfOxG+7MYZOszVOrnTJbPZh5zqB4vn1DMF6aSVRrBPnycK2kuPqKhyBgum6VWzCHMA3hDYiYPUHzvsPU+pnRrM/FiHPHqiRFmgnBsqE0+1VE19wmecYrbgZ0YRU4Km9w20xDG8ahiCaO3myKdm6Bfh4Jciim/EwddSqtIMNGEG8qgnVMwBMA7EZX4ZZDoKoYUUsU4lz3U32C7yogsIfFnNCD85gj2/ZBYTNU/WSXEbJnzoWG5uT5cJ/oO5lPFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpsEyMwbWZ0MQVJkXzXFzk8PXzQ2LaRVNKUlIHGHUrQ=;
 b=YK3OxNtFEpjLiRPmtdiO6Msdpg+djOf50jHaU3BQv4YKDVN3wlaJJTK3NYcLeRj2lmIu7maPYLQeYav+HuaMuPPs0ceTA/u7k2CwyR0fgfJC0MfEYbJlOKOzmpPjZ5eD3dSRZ3/ca6UbZWRxkrf02YduAn+rsB8iqXm4WuQwpGzQ5uy2nFk5s2AHSfqoW5l0SBycYSRrKNm8JDgwj41u9RAGhYzk8ke9pJBSfGqADvB7bqMrdgKsVDQ7XAcSeTZ4OfJEWkjPnZu+QAuRVLQ3drtpQNBSbrY23p51enX2YYBeKq2dfkfR7krDAs0gXB0rLzlSwE7yKh/DUl050fNtSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Mon, 6 Jul
 2026 08:40:06 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 08:40:06 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/6] drm/i915/cursor: Add helper to update cursor plane
Thread-Topic: [PATCH 2/6] drm/i915/cursor: Add helper to update cursor plane
Thread-Index: AQHc9xBcejUkW8rpuUyZ/7f6VPCykrZY/o0AgAdRfWA=
Date: Mon, 6 Jul 2026 08:40:06 +0000
Message-ID: <IA1PR11MB64675204A9194BE6EB613620E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-3-nemesa.garg@intel.com>
 <c5b413d9-2ef7-49f7-9712-0d3401a07850@intel.com>
In-Reply-To: <c5b413d9-2ef7-49f7-9712-0d3401a07850@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6965:EE_
x-ms-office365-filtering-correlation-id: f5a5df11-235f-424d-762d-08dedb3a2e3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|56012099006|18002099003|11063799006|4143699003|22082099003;
x-microsoft-antispam-message-info: 7rji8DWwCHZ06kGjTmEg0d5eswyz3Qkkvqv/TpcENv4bNGlyhRBcraHi4ILevb1pqZLrRkQ/HGIl56zlL4wQpQTkWRPcSkONZY2cwvuowjTe3w9GXcYqHaACFeCqcYbJ3cDSHnsvXNlLGijXW+bGM/AyO0zbN3Fa5thdcPxfduDhdqrEpRJ1XQw9se8+mWR+smPOGeT52+DsiOeTNLxGhbbKP5mwkx46Se5OEIplAwQd+wRfuKQN7n1f4/ia1Qx+VsrgLCdv0TD2p24lAfsQ0eDJVLq+ns7GBtHyWDd1QZJSrwHdQrNGG1K6Sta56vldk3926LZEurwBbhlVgydl0HlvxYeEV0lbrCYnYZwBnq5p9EPEHaQACq+m6v9O4SOD8egLWlDXwDaHqjI/sFTVcJCHM9oFWpBbRRyE2VlGFwJcPxxzPCuHfqdBulPR9qXlajtIoFaf+mPLFoMG6jvxFRH5wwljib6/5bDqm0J32yI0MDcnV6z0Hv4Qf5SthgTCX4lgGdPvuXbz1pEMJis1BsGv+O2DlbJ2vMc9/stoxZn4zS8MGn2990FomQX6j0kx/WNEjOlsR+fxc4Ia59RikJDpSOI3m5fvxQo2bxX+lEeJ4pOqG7H029dnmKpne+4mxMWfWCUkrw4WRU7leh8ppSYURBi+NoET0CRCLzJvdvK8x6CZdEzgFkxklb76ZTKK0vBFIEEP0oJ3n24dTzoPAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(56012099006)(18002099003)(11063799006)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?svTxNxOPtoxMClh+rh5k1MSLSiThMuTFEgL5/zXtdDgZ2IM9KZ9ImoJD6Zoj?=
 =?us-ascii?Q?H1VgDDILQW8j6ubPQcgu0WZCJjEkzeG8vJPW5AXn/PdS33W0uqy5IR0wRUI/?=
 =?us-ascii?Q?albQeY8Wxqr58nu+GfS/C0MopU8FKxSEBV04IwTVhqE01lCFXhNMJibFzFf1?=
 =?us-ascii?Q?SI4XauDlLVfLa80LuTMEwzq4e8K8pTO78o0SjQwjcr0LQ55biVKDtCc7maky?=
 =?us-ascii?Q?vlfx6hGfp1qGrVjAJX5bJ8j7GNhik9fGaLLBrUTrqpxIc/xACc/POZzuT033?=
 =?us-ascii?Q?zjRCA9eweOXv79ViRwdBA+OsDU3aJs39YcWAl818t2d7frOaENMVwRy7Wm1r?=
 =?us-ascii?Q?Pp/nDY/SMYTTxjxWT1ZHRl9jzjvr76ZVd6ABNe3s1Fe+HWy6ms4GLqjxbq40?=
 =?us-ascii?Q?VUzuWe7ix8iI2/a0jkWVBWxFKIqGrrzWR61Rto1Ju/oVI0bQyfRKUs7k0EbU?=
 =?us-ascii?Q?doPWSz56MK9KX8ziXQTEv/RfjWdehcTc5uWa6BROXjCgGevf04BDLGuiyIjw?=
 =?us-ascii?Q?XQBbFpR0y6xPXzBcfATlDHns7FDhZg1bYKxGn2e9jTD1+42A1a40XgOJoJtx?=
 =?us-ascii?Q?yX2tNNOE2w2Hg4mUukTV1/w713/R6fRiXCtfUEIAYRzK4ld8cJoTAQ4PY/++?=
 =?us-ascii?Q?yTJggjotBt6gSdrJRFkQCr5WYyONTDBV3ogCyP2CJh3hdOI4VVQ8+JpK1XF+?=
 =?us-ascii?Q?4px2Bn5FnPDTJ0Cf3pwQS4G8fLojfTlZWVbOCDmTkmegjGEILnm4QWQ89xEc?=
 =?us-ascii?Q?jdl99kS7R8xjEcoVU3r/kF9JTApik/LoWQMDWBRtgICE+bXnB/z2B9RsluG+?=
 =?us-ascii?Q?13HEftOAxIk1q3oaMbbrkK/vDzUK8mFAkY8IO/Vk9n8UP2DUqBi/J39AGm5C?=
 =?us-ascii?Q?FoiU5pO2STlNtdFUqsmrCUl3r/TiPIfiwA4gEFayw5B+anBkCBuWJrWnnmRd?=
 =?us-ascii?Q?FlTZCHeV2ndyI6nBoR5gaQTaKxng41rvIOfNzBvrdH+pZQVlsF7apimvTdLn?=
 =?us-ascii?Q?vn7BbxIZwNsa/9ioeREVeMd6XShHKcB3M+TkP8HQQLceILY/qEASv234ckhV?=
 =?us-ascii?Q?S3lBT/0Xw+73l6yTwy54lr5jI2FCzcEkPnlyUSpB8sY9+vwxneEAij4F7uZR?=
 =?us-ascii?Q?vKHZ76sAPLSljd4yFiMJ8zqUGt6xjQh1sMHlNryWS3tE2DUIUW6j+yLi3R3s?=
 =?us-ascii?Q?8f1jiEkdZCYZKuMJs0oKQt0TFvF7w9FpbkY1BPF7KM3QQOr8BKEWJM8BsK0c?=
 =?us-ascii?Q?ghszprDBmmSDLnVMihTELhP7iovS6d0SqINuMRbw07XXQoBYqYQ7f7R0fql2?=
 =?us-ascii?Q?1Ph7q97XVqoqVD1+aFGcJD8YWpSrEPT7b4mMTuykE/eiXMhzHp/xsLBVEjk9?=
 =?us-ascii?Q?v8I+/OmBxR/HkCVwbJ22AFqfvceRi+XVx6wsQ1iPdeY/aPrKmYaT/Lg0rY8J?=
 =?us-ascii?Q?mi/rmb0Sc4yGO0zwepeWlWGU/GwUW/N5hMDiWYmrQEgM+ACJQzCpzxVpCssh?=
 =?us-ascii?Q?5MmxyhQwYq1vO37uH/spfF9W6kf84zuVQ9TStw7iX5n3LSwUFTM0DWA+S72+?=
 =?us-ascii?Q?4rWX3Uu0qug69GaxMEBn1ErWsIOzUSk+FJH68zCkae+aul0pj/SQ/4bn4ffO?=
 =?us-ascii?Q?n130YFiybIIvixlwLZkjUTnQwoXneYRAdEkH2On69EbU8D/PZ+Bzsm5Yk6pF?=
 =?us-ascii?Q?QExU/5WlRApZMkhA8jvA5mDlknwEn0fSezdw3D2Pt9BvHRyW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bpyo63IH+7vr7OfbLQT8E3Heix+b82qpmdwZvxPNwekLhcUq2bjC4C2/znnVN/+PJNxdUA4DUVHRYzYpBGIXwYS/q8d8h1d3CBNZt+WZKVWtYLkesG/LHrt5Gj7djC5mn52FSV6gaokEQpHUNBMGy75faaFQjRCLU3ZuA1sh+9D7nqt6xz0WO2Sd4NnUBlHPdKA1YP+z09EvBI4eVQMTa8QGevTygfy4aQt0R7qhTnC4FUrU7iN7GJp1o1DVMfrK5FYEb335nMezGf6zj6b+tVhop+E4UqQtv5/AVeWX+KStssXnA4ENW4+FlpMkFPfbZO29XT/kqZmpYZYvSC1Jxg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a5df11-235f-424d-762d-08dedb3a2e3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:40:06.3019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n0gbJYHY9sETXlPw/YI5iXXGNUKkscO1GFse79RftNj9WbFWksnpcbaViA5HCT2h+EiJvizQ2hWSbwhuQR1tQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6467.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 039B970E34A



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, July 1, 2026 9:56 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 2/6] drm/i915/cursor: Add helper to update cursor pla=
ne
>=20
>=20
>=20
> On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> > Move cursor fast path plane state update into helper function.
> >
>=20
> Not a pure move.
>=20
> > Assisted-by: Claude:claude-sonnet-4.6
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_cursor.c | 41 +++++++++++++++-----=
-
> >   1 file changed, 29 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index f8b24865c93a..38234c6292ec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -849,6 +849,31 @@ intel_cursor_joiner_commits_idle(struct
> intel_display *display,
> >   	return true;
> >   }
> >
> > +static void
> > +intel_cursor_fastpath_update_plane_state(struct intel_plane_state
> *plane_state,
> > +					 struct drm_framebuffer *fb,
> > +					 struct drm_crtc *uapi_crtc,
> > +					 struct intel_crtc *hw_crtc,
> > +					 int crtc_x, int crtc_y,
> > +					 unsigned int crtc_w, unsigned int
> crtc_h,
> > +					 u32 src_x, u32 src_y,
> > +					 u32 src_w, u32 src_h)
> > +{
> > +	drm_atomic_set_fb_for_plane(&plane_state->uapi, fb);
> > +
> > +	plane_state->uapi.crtc =3D uapi_crtc;
>=20
> The original inline block didn't set uapi.crtc.
> > +	plane_state->uapi.src_x =3D src_x;
> > +	plane_state->uapi.src_y =3D src_y;
> > +	plane_state->uapi.src_w =3D src_w;
> > +	plane_state->uapi.src_h =3D src_h;
> > +	plane_state->uapi.crtc_x =3D crtc_x;
> > +	plane_state->uapi.crtc_y =3D crtc_y;
> > +	plane_state->uapi.crtc_w =3D crtc_w;
> > +	plane_state->uapi.crtc_h =3D crtc_h;
> > +
> > +	intel_plane_copy_uapi_to_hw_state(NULL, plane_state, plane_state,
> > +hw_crtc); }
> > +
> >   static int
> >   intel_legacy_cursor_update(struct drm_plane *_plane,
> >   			   struct drm_crtc *_crtc,
> > @@ -928,18 +953,10 @@ intel_legacy_cursor_update(struct drm_plane
> *_plane,
> >   		goto out_free;
> >   	}
> >
> > -	drm_atomic_set_fb_for_plane(&new_plane_state->uapi, fb);
> > -
> > -	new_plane_state->uapi.src_x =3D src_x;
> > -	new_plane_state->uapi.src_y =3D src_y;
> > -	new_plane_state->uapi.src_w =3D src_w;
> > -	new_plane_state->uapi.src_h =3D src_h;
> > -	new_plane_state->uapi.crtc_x =3D crtc_x;
> > -	new_plane_state->uapi.crtc_y =3D crtc_y;
> > -	new_plane_state->uapi.crtc_w =3D crtc_w;
> > -	new_plane_state->uapi.crtc_h =3D crtc_h;
> > -
> > -	intel_plane_copy_uapi_to_hw_state(NULL, new_plane_state,
> new_plane_state, crtc);
> > +	intel_cursor_fastpath_update_plane_state(new_plane_state, fb,
> > +						 &crtc->base, crtc,
> > +						 crtc_x, crtc_y, crtc_w, crtc_h,
> > +						 src_x, src_y, src_w, src_h);
>=20
> I guess the idea was to mirror intel_plane_copy_uapi_to_hw_state(),
> where a joiner secondary has uapi.crtc =3D=3D primary but hw.crtc =3D=3D =
secondary.
> But even that seems to be mishandled in the patch that adds the caller fo=
r
> secondary pipes. More on it later.
> Yes, that's the intent - hw_crtc is passed separately so the caller
can keep uapi.crtc =3D=3D primary while hw.crtc tracks the pipe being
programmed. Will address the secondary handling with your follow-up.

> I would suggest explain the two-crtc signature in the commit message
> otherwise it's looks unmotivated here.
> Ack.
> =3D=3D
> Chaitanya
>=20
> >
> >   	ret =3D intel_plane_atomic_check_with_state(crtc_state, new_crtc_sta=
te,
> >   						  old_plane_state,
> new_plane_state);

