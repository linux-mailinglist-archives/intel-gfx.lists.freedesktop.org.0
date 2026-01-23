Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEW+MF6Sc2ntxAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 16:23:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4622577BEA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 16:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55C910EB18;
	Fri, 23 Jan 2026 15:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1zWoJXm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB8B10EB18
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769181788; x=1800717788;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wRDAY0IW6MKYQTbrFiYy8TOdfsck/MNbiNubdvMKmuI=;
 b=c1zWoJXml80SfdjcpyduuerYQcZqOPRlvuCNtHdcDVMkwnpXfELoXqyv
 wWkXl98uCicecRo18Rf93ckR/JJQIVQ88mhr4okGBaoq8262fUs8gLfZu
 k3DChioo/2uP+kfA54GWWB1IA9F1UtIhJ/inUi/pmXOUB4SgcMNHekq4l
 mKJBb5ffpfPd8poZwWPfOik1SkkhB0v1DOJ4JrI2k6bC4UvSrPAyzL4u5
 g8JR103Udc9E8mP3x74oqybDtGUOI+JyuwpedlDhV5e+k5Duqah4yw1fT
 Aif0Q0Kk6NbOCQrFr6yDQPNYZ6kvLCoNhpEgkLEBwLNpe0JhZ5h+qDBUa Q==;
X-CSE-ConnectionGUID: 1eqZEuHRQOyTXjLGH1oWkw==
X-CSE-MsgGUID: pL1rSHYaSO6B3dHRavv7GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81547468"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81547468"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 07:23:08 -0800
X-CSE-ConnectionGUID: Fv155D5OQ16MdZim9uMp7A==
X-CSE-MsgGUID: x4C2v4BzTiiIRVk0rhltFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207103562"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 07:23:07 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 07:23:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 07:23:06 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 07:23:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P8FP591p/bO7df8r1H+dLNc28fHtzPi8ZVoG69Z3MG7qaqZ3w3gunGGLuo/ye5VJStVUHsdTeSAULU9s/Ynrgje+/iIViUUI5thr59RJ+W4CY3INd9jFAn0Qz4Amz7y2OeapK/nT66LZMMvas2x+xenbosc+OMm0eNP6PqnvEXve4zUCc5trgsj/ZIKncIFBZEtyTCWfkIxqlN06XPgelQzDf8YudD7A7aPfeHIa9H/y/wnLMD61TT+6/+yqoD7IlS61fRGgtjpovmdAB1Nn0KCwWnQJVxvo6Tm3ob7aDh+vtR71GJAHe0DzJ18npVoV+c3luj+OwiND4DDoLjf86w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OgOaEafvEi/zGha8cMmevkamT4K9+ALxBHk08nFyw1o=;
 b=xkbcp3p+uquVT1J2dXLlpNFCfhFW4q6nx7Reg0JoB1a5bfwfGEi8809BKjPYSUGx+Dem3KVZ8GEpSp4jjZpT12NWTBDWwSr2LgaGauFMhudB16WpcLskeEmpoHRUlhUdm+kwlcewN6xkO0yvQbjVBAXtOHmU3eHyWDcDLG9P9Y6R+//GlZtP+l6Y6iuJhe2JVyru3lRetK2zxw+QMvkymwSgUqgLDs1EA/YFMaryqi7bhXkWy2+bqX1OW6gxv1iMgq0RsPfQ1kjO5r/l+hlsT3EZK+wIEb2B1k8bU2tr9hC2yG3cnXUnMMTgnHieNI8q9m7SuSi9fJlGYw/vtsYLpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH0PR11MB5015.namprd11.prod.outlook.com (2603:10b6:510:39::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Fri, 23 Jan
 2026 15:23:04 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 15:23:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: PORT_NONE is not valid
Thread-Topic: [PATCH] drm/i915/display: PORT_NONE is not valid
Thread-Index: AQHci+n8R0KkhfGwQk+46HHAn/O+RLVfg1qAgABctxA=
Date: Fri, 23 Jan 2026 15:23:04 +0000
Message-ID: <CH0PR11MB5444358FA51C36A0811E6E8BE594A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260122213940.64352-2-jonathan.cavitt@intel.com>
 <e1e39bf10d9c383ccf1230ce4470616aa84abfdf@intel.com>
In-Reply-To: <e1e39bf10d9c383ccf1230ce4470616aa84abfdf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH0PR11MB5015:EE_
x-ms-office365-filtering-correlation-id: 03eaaee5-52de-4499-3483-08de5a934dbd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?yAZN4JcfeBmow9/TmsB7W9VSPe6gIWvAVN4yFFXc4f4QG0IW5en9g2rAKlFt?=
 =?us-ascii?Q?giXmM59O84hPf1SD+suo+RvP6VnwRSVzGUd5x8G6r6Aml8Ck86RvOMeN0FYJ?=
 =?us-ascii?Q?ESYPEdUvYhSzwCDICXiJdmUINu/6FRGLGSJ9pNvC+mSzrv65zX/MMff0Dzq/?=
 =?us-ascii?Q?YRzyksQnIk9xLDrUqI9fn3M4sicWDqF3Jn8SqwPQdGZorBDDNndWW8xW3V8C?=
 =?us-ascii?Q?EIc1ZgnxUCB4H3U+sCmOL4EedKpc5RDMU0xC0nXfipsolB+nC/chOut8RRi5?=
 =?us-ascii?Q?YFL0VfOyYpbgKwRiLgFsajwGrxl8mpDuM8jdgumQ01w8cCBxJ/1VkYKC69mu?=
 =?us-ascii?Q?1OFKstcyu7MvScd2is+C1QOuVVRwWVauDD86yzlE/701ZsdMjkbHfy00a+Sq?=
 =?us-ascii?Q?xgpepa8Na1HwswSQh+u592+WFzzKBSfY5kgfwTHEZC790pSHACidO3uzOyKw?=
 =?us-ascii?Q?YYNCV9z2K6SYKA/5AXqp0VmWHLjXJakD70dDZQUw5dALKyRp5P/UvqNH+9Pw?=
 =?us-ascii?Q?d7Bq5EN/Xq+fDQwGvrZq/NwJyIdG0L/+L8IZ4UPV9i9OzZQPasFhrVXkCdrP?=
 =?us-ascii?Q?EDXYaBccxKSeA+LUAPT1HSgbWiJZu5G6xZzmDwjtk5HdILp662lJUl/BxVqK?=
 =?us-ascii?Q?efNcfQQ7DWtSvDJMteJHRxKWSONtKJucGDdDsQaEc4daUliRN73gJHqpFTO9?=
 =?us-ascii?Q?gtVRmhHaia28q6Bd9Mq7ZNPD9f52IvyjFtFPCDmeFHkMeFY4Q69+P/KwSD9V?=
 =?us-ascii?Q?Os4ICvhMe9tX1He8LMmlSoJbkELpsHNdLpYsWTiInjeshqA2rcAz6gCzGai3?=
 =?us-ascii?Q?yJlouiButpTCpOTJXSLjoX1ukUyZg11jaqw/gSgEsJW664l/Tw+e9gwalrHH?=
 =?us-ascii?Q?0MxJwRPntJ+ws6TtHg4Yrf7yPPIe1mPA0Fmgq0mB/q/3DyyNaAuNzHzfPCd+?=
 =?us-ascii?Q?XPI+NqtG44g/zf8oKtPoq2gl2XocwhibNxriS80d13s8C56FlePH5bCYWFAa?=
 =?us-ascii?Q?HPLa+GH6XZKjwSw05h+1ZVAAny9B2WBcNFzOli+ydVsgRwdDL49nJwZpHfos?=
 =?us-ascii?Q?7C4xZjqecOm6YUjNCV4metp+xguPW2kpBaNcWisM/UghsMQ0Irmv2faJ+i06?=
 =?us-ascii?Q?noaYLuIYVTHZVfA16AjfQpTEg7/6wntNMOr0+5Z0Vf5z2wMiXw8rvRq3Q+aC?=
 =?us-ascii?Q?6SRhjumygfSqPHdCBlNvWZAdlTgGqPSvOIZ9dcXgm/FWERZnPcJUr1CMHAer?=
 =?us-ascii?Q?gHvxg1djLsOJTQpBmuoLtvHDR+wyHY7Vg7frYASym76M/Q00aWar69xkZIkS?=
 =?us-ascii?Q?EKAPIL/u4FSLXstp2OMy++Wl2Z9xunwGgoHhtI3fa4YY7ca9w4VBmBzIVKV/?=
 =?us-ascii?Q?Uafum/Ki5Ry7+8bSQ0qm/UCc/9Vk17rk0Yqqkd1QaYPZ7eJsRGmj6CIQGXI+?=
 =?us-ascii?Q?qbpUTD5qmXR8ERGIRTthL68msrSX63Ps91yYKanCo2qfCTCQwbwP4pzcjnpu?=
 =?us-ascii?Q?nhD/vXTeVoJEPYQ9BzEobwwZz3kMNBcDJVhw3hBCN0WaTECAf58JxNniZ/JX?=
 =?us-ascii?Q?72Vlh5QBDSrURP7CRAQkNgRMz97H58neUjPjawDoty5IgZpsfE34gEniRcib?=
 =?us-ascii?Q?oBdgejtqs9e1aCpCd+qNRYY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HVKuXhLFx68YjehLsTbwuhWhIY4xNzOjAt7wJzmtXJVENirgYltDaM6crsNA?=
 =?us-ascii?Q?vQD7ETtCbPE5gojb1s1d2LQQUO3IAVT28vb0YL/t9k/UgRD3s0sQCYn/YW9e?=
 =?us-ascii?Q?vkAz2pgs4KjlGNAbG7xAQSINYi6Tby6D0exbLEcTF9ekqtkwqBHoGJtDjxI/?=
 =?us-ascii?Q?V2kxclKEbIJiNzPkOhtsuXzAnVNL9DoRJt+hT70mcY5eVUlcCIjS45VGMJU+?=
 =?us-ascii?Q?vknLmoy2Uep5IWGT6gHSH6Qw4IzsXv4hm2RXzR9sqTz3FI7s9l++k5LvzVz9?=
 =?us-ascii?Q?TPFlHgaCLr/MarOYIs78Oqu30yv9jj52mYCYxQy09XwWfiB1YrCyHmO7Je4w?=
 =?us-ascii?Q?4gXdyUEdWau3i/dUtDCsjKywbTcQbplQ1ki2n0YGH99f2/jQJ1O8j/327epa?=
 =?us-ascii?Q?ihX6DG2IcXSPGtAscHWF+SoE40K5R2ONATOYrdrhKiJBELb9qjDfHS52rCW4?=
 =?us-ascii?Q?dGIyORMMeukRhsv2Tor0WNeeq90avlTNv1lTPJWJSkaM9ArGbFuJAHO7edyT?=
 =?us-ascii?Q?uaSOCTmWcNm7k0aVZfMXCKFOn4P6V0iNDVW9GtnbaOsVX1BZxDGtnr0MP8XV?=
 =?us-ascii?Q?da/mD5XBgl9P9uYWWq8tAgaJUpRCHOxZafEIOfnLpxjdZvCrJY9O3LISUSFy?=
 =?us-ascii?Q?eFYLfNJQehcMyudUrQkxbIdb3o2uv5+B1Ej6M2rnE/wUwzXXyQvAsDXGyZ1P?=
 =?us-ascii?Q?Cyl0Eqd2OX2G0a9uMIeV3NZBpDj8X75eyObyFJYrle/a1ooNX8tIyztsw7mN?=
 =?us-ascii?Q?88b9kmpzuFlBxDn38NaxfFtEMIXfGo/7Qv9BzizVusMYUkqbOWR0Qf5q+H/B?=
 =?us-ascii?Q?SpQ4ivYKG8DnfMjnI6O5Muzbb6QqVSLI06Ngeb1UNyaEhehtbmmKH/IKHTLT?=
 =?us-ascii?Q?EKYD7PnQi4krVHzSWC4gOL/Xk7cl2E7Ntyac5HeO7gSj/qkM83wovdCb8nYY?=
 =?us-ascii?Q?DnKS8J6GygFOinh6LvuipWl1fPzpul8sPiE10lH+JtpD1RKNWeKns0FjcAos?=
 =?us-ascii?Q?FhoVQ9Lcr9Bb8rlZCxJTXA1+wBXCiGvOuzMm8Mek1NyARV/7P6GicvKugxJC?=
 =?us-ascii?Q?tvsoq6dFuAzDKiCo09KilzQhj4+DqdteT6LzfYRxuWuyVlw8D7CzP1zNmPqS?=
 =?us-ascii?Q?GlRIilIkVIUZMtwrrVt7Sx6cP0brOy+qkg6Z63unFdlKGiJpzTpc/UarYbTY?=
 =?us-ascii?Q?IqFh/Er2l9gDfKQ2QdO70ZvVpwyTQVfRp5ql/XD9qlNTxLWK9yEjrBZtfykT?=
 =?us-ascii?Q?8EQyYHAcuwOC1Hqlo3Avkczw4hGEWux+ZDJFepziwy/c5U53m/mJd2p8SPyA?=
 =?us-ascii?Q?9ep06nxD19D7WFkcZAOKAWnPcB8b5RVqFriPgUUH0k1hJdzvOK5cBDKT8uKe?=
 =?us-ascii?Q?+ucfEswCTqucFVm+d+5fMzmhlg9l5NdWx60l3FxvFpDSuZYQNbvWSTM5pkpF?=
 =?us-ascii?Q?XkgfoBDoyy0isboCLbrKn2BeEYtR8xCuxxGALL8gQUUe2maA70NxylxtzPLH?=
 =?us-ascii?Q?wWquiFNHGzWOVbCW04ksCzv2G2hb9dlkRPClPnBhkppVrvAevdXjIj24CK87?=
 =?us-ascii?Q?zqG/AJ0DanFMY5zBR0cFKQLwwKUbMCCA+88G7HPAs0P1B0Wcqw8gBlxF3Dpz?=
 =?us-ascii?Q?JIkE0JvtLVEYU+e9ZCuJFYaB7qbQZ3sdSZKZSe/lVCTdlot6ocf2z4ps05q6?=
 =?us-ascii?Q?yoGZkN4gUnWYNSXizEP9oAbDBUCDrZmva8H5PhyMVXItoCaBqZsjAC7mXLV8?=
 =?us-ascii?Q?bhwefKEEmuv5Nmq8WMc18wHjchaZNfCDnUH9d9jDoXr9PNk5RWkT3F4TCs/8?=
x-ms-exchange-antispam-messagedata-1: 7iahUKniZfBU5w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03eaaee5-52de-4499-3483-08de5a934dbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 15:23:04.3996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ddwYmJP6pd3MjBKtnri2aSXX006L2jFVfcPyPILHRuzfLodOcY6Tbp2M8DtV5XJmNs2+oWiU7CiGgC6KfZEfgJhfGkAPybstNBRIO1YkkoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5015
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
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:jonathan.cavitt@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,CH0PR11MB5444.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.681];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4622577BEA
X-Rspamd-Action: no action

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Friday, January 23, 2026 1:50 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/display: PORT_NONE is not valid
>=20
> On Thu, 22 Jan 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > Static analysis issue:
> >
> > In assert_port_valid, add a check to ensure port !=3D PORT_NONE, as tha=
t
> > is not a valid port.  The check must be explicit to prevent a bad bit
> > shift operation in the general case via short-circuiting.  It's not
> > likely this will ever come up in a real use case, but it's at least
> > worth guarding against.
> >
> > It would probably also be pertinent to modify the behavior of the
> > port_name function to correctly print PORT_NONE in this case, as
> > currently the port would be reported as 'port @' by the debugger.  But
> > that should be done separately, and given port_name is mostly just a
> > debug printing helper function anyways, fixing it is a low priority.
> >
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 7491e00e3858..250f31bb5938 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7828,7 +7828,8 @@ static bool intel_ddi_crt_present(struct intel_di=
splay *display)
> > =20
> >  bool assert_port_valid(struct intel_display *display, enum port port)
> >  {
> > -	return !drm_WARN(display->drm, !(DISPLAY_RUNTIME_INFO(display)->port_=
mask & BIT(port)),
> > +	return !drm_WARN(display->drm,
> > +			 !(port < 0 || DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)=
),
>=20
> That's a bunch of negatives put together, making one's head spin, but
> the innermost part is supposed to be checking if the port is valid,
> i.e. BIT(port) is set in ->port_mask.
>=20
> This makes "port < 0" another condition for the port being valid, which
> is not the case. The port is only valid if
>=20
> 	port >=3D 0 && DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)

Oof... Yeah, that's correct.  I fixed it in V2.  Thanks for catching that.
-Jonathan Cavitt

>=20
> BR,
> Jani.
>=20
> >  			 "Platform does not support port %c\n", port_name(port));
> >  }
>=20
> --=20
> Jani Nikula, Intel
>=20
