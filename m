Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEKYFX8SgWkqEAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:09:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1082D1884
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB97610E2E0;
	Mon,  2 Feb 2026 21:09:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FrEk3Uu5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0428510E065;
 Mon,  2 Feb 2026 21:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770066555; x=1801602555;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9jyfk4SDIBRHmF7IYKsnk7sfmuRU/anXbTiaCVfvIJA=;
 b=FrEk3Uu5Kg2QXayTbZvaORfP6NNOLyKPA+ws3hD8GNW81QvEb6yrxh7A
 NmvvCkatUXvmYfI1PnCpuo/7GqfVYPurZw/GT7Cr+5SxK+MwvJIxORnFd
 mqlphNY7co4uN0u5l0f6qYFvN23IPvPLM8YOj3ZhvRdRbzIhy7BMEQ2s/
 0VW+1ouEx27bA8LQKyNG6E4mWLnEcOhYbJXojxdsWm6wvmDWCiIpsccpx
 sUZGyhpps7MgNSeRQHt+Grv2ZbLK01WilpMGAdw5cLaomCqOx7LXZKDop
 VGaoB35OOKj+WoSHRwVHavqMAm6u1zn6swiplHgw+dYUj8DR8+TXVByoR w==;
X-CSE-ConnectionGUID: J4WiQG8/RduJ7c1V2mlukA==
X-CSE-MsgGUID: ZDWc58K7R1e9tgj/53+J3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="73830190"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="73830190"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:09:14 -0800
X-CSE-ConnectionGUID: lPdxiPd0QTyIFUFtBcFS2A==
X-CSE-MsgGUID: iFVd3g22Rx2EdBWhUTfM3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="232539599"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:09:15 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 13:09:14 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 13:09:14 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 13:08:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ee4Y6NUzti+j4yv3jYX9C8H54ya7iAEf5lTnF2geD9ZlWZTBWgxjAxDTswY9zp41c1kiYsdGvVXrnexiSd7Z/M9P3h8n1X9YSebajdyVEYwZTiqhNj26pfGA5wi4IH5cgs7X7TRSCn4Ue8lQB04RJMf0HUm7KKasRU/fE8ajqvHYDboIG9KHe1jdjRLju3S+7kuSc5MvUGwo2+j1vA1Kcr3+19CVMhqbgexe91LfxuRrOnJd8zgkrK+IQb6D+1N2XQHKaxOEW+6XipwFc40Ksoc4uUgJn8NuD1SMMLXxQuoyKYC9lHIF2GTfba7H2HrcWcRGN2QfOZjX328pFDw+Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=egrZuUwzcnGZyIbWioxdOyIkKzR31E2nE3ZCK0IUkPY=;
 b=jioOde77r2Vuoj37sySEx0FSyJ+9acTXgZcZPI+OqgEGpwkvRDll+SAUNBFMzDsh8tRtunOohIh1aglyUi4Yk7Mkkq4Z4WqSXX/GaNVYQC0NiQLzQuUbDaiL1R6hKMGhnQMeLTiHdePBRmpxzFdGgIEkUpb969ummf2foZmAC5+bT1Q/pqShCWsdexHkhrx/YQakKmY1qXBTYJ+OtMHdhuJ77AUAiTLSaaQoxWEI3V3TF/k+YfvP+LiXNLpdw/sMXdvTBixGL9Yw8JWlSI78U71pRsOqZsNspZRVueI0igwBL4TJcG5U/Bn0Fn+Ff4aQQmsM16n6qiqf/FU6p94nlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 21:08:51 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 21:08:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 11/21] drm/i915/display: Use intel_de_read/write_fw
 in colorops
Thread-Topic: [i915-rt v5 11/21] drm/i915/display: Use intel_de_read/write_fw
 in colorops
Thread-Index: AQHcit6LViG/n0dOxUyRED26wmHvfrVv+mEA
Date: Mon, 2 Feb 2026 21:08:50 +0000
Message-ID: <DM4PR11MB63603168CC7E2DDC7E3E8357F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-12-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-12-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5979:EE_
x-ms-office365-filtering-correlation-id: 60966114-e741-4106-283d-08de629f43d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?yzSO2dUibLkpturj5sX8B66XCONMVqzL/EpHVJWwQtFkl8mT0ztjvdJyXh7F?=
 =?us-ascii?Q?JiWHkKXg5uLLnSaJzZ5hBUqNlty3+v5riFxyFHC2Xs2V2+xUEhCfyWvL0QqK?=
 =?us-ascii?Q?40lMeX0mNMdzhGmmfx71j7Ho+7bSL9eebkj0BjC+CExzPAyvbeWeJwVuNYvu?=
 =?us-ascii?Q?I6BOtDpwG5wjsuzE+d22KgE2DjTP6QiAu+1gWCxNq3UXdd/gqlwo823r5CkQ?=
 =?us-ascii?Q?VxsV8qstJyrk3hEfVx9iC1nuv25erKYjmlS/Y7CF8VkLFaiGsP1r782AwfgT?=
 =?us-ascii?Q?Rtw6CihZNneqx7nR1X+IHOSKEuwZ+SKOcvY57kbBj2yBEyvUD1pbuqFBbBHw?=
 =?us-ascii?Q?Xurwfkyt3g4q1TSLSRr6iVfJ4GMg+Wt4XwLBcXr40YLenN0fqTLBW2DgqFPH?=
 =?us-ascii?Q?1JMrGQU/u0v1l+yMW4hfYV+QM/h1XBEOEC0OqaOFNtLs2EE7fNvfDcpb1q4t?=
 =?us-ascii?Q?XSUW+hNf+D/oTZa5bPlTTIULOmDGBzCmXyuhw7gi6HJbQ4Ia4ty2OQFhSlPG?=
 =?us-ascii?Q?tv3riFucDbeqPpd1VdgzL7hIKaSNnOgavgK//VFQGPtxtxEPDtRar4L43L0O?=
 =?us-ascii?Q?xpDb+nH0sDHPY2dbv7sRFiHiFYuU5FaKKzEECkTUMa74owxLRA1u/YG7AVkf?=
 =?us-ascii?Q?C1diKbWjIh73oJJWgtgfGt/tPEYms91vIOZpLsfFyEocdUIgGwYlZ3Lwtng9?=
 =?us-ascii?Q?rf/637/UEvFWlD4r8C7icMXKY3AhDeG9Y54RyOS3Wx0lXup566rCzOwndIO6?=
 =?us-ascii?Q?HVFcCAJqQvLbXSu3y9z2m5QHD1SGXiAYIKl9/CSJmt/H1Epamh8vzC+DnnEy?=
 =?us-ascii?Q?Xso5vaHrsk41P2ZeQaAmDm55Nbt+3+aoBNCvWWnzJqpzZrAaySjXD4GQQh/w?=
 =?us-ascii?Q?DeqCSzzp+O68C85+8+bykr1uV/ZNTSGxqZlnWMPDG5TNIRMNSU8G4Pz3xq6N?=
 =?us-ascii?Q?hUxLkmDWWJEZf2vQK1uodtDS2vpTNFBBsXcNpQFmtUlPjfd1vcZAFippy6SI?=
 =?us-ascii?Q?0fVwVKD2xzEnWOheqBs/feQ5ma2CST+5sP8v/jB+yc8kci/eTUlnDrl/Hh8O?=
 =?us-ascii?Q?kLH5OorYzZH6b3KE7iZ5yp9IzuMneEzgjfnZDW651NKbLZ3qhgkbrhzJZlM6?=
 =?us-ascii?Q?TpF7sy23J0mLEZH5fVZCUySZjjrfLYL154WqzU/YTfRbjhuYF/zm7iuI5guu?=
 =?us-ascii?Q?OXV91Zvy3torh+zBRejdwollDlcW4M45vh3TuvYrUo0wYS4DTMCkmqlaQhUs?=
 =?us-ascii?Q?OXHhljtpIHjsaVxBfQvXDXifEfyxGW1jwQlU49Vi23F5iug2rLy5Yvg4aUIt?=
 =?us-ascii?Q?+4M+pUO1rsxJUMnKUXmqBZL/gvMM5LK139u4R1njm/tz9ykZgnXY7M84b3oW?=
 =?us-ascii?Q?HP9d4R/syjDzTGIXXXiVuNQg+jZCdfsr16n+6x5LDGUDl7IUViy1IuAImPh6?=
 =?us-ascii?Q?eq15Ajh36UBx+sLgIRtIASt72cAs1ED3habNOrfMvsQ4fJLeMrrCHQYG5c2V?=
 =?us-ascii?Q?86ywCy1OXced/g4kBaePkwfwixXha19DQfLBc6CwTKp30LFXSBp42zseSuSq?=
 =?us-ascii?Q?HYk6toIA0y+MJx+1xMUSpjYfu52GLXqHJvIAiXzBaBfaNQBvglyN96GBixZ8?=
 =?us-ascii?Q?HfoHGUtp9Vzb3zaaAinaYyE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1whKGEorha5EnwcSrh3+yhI5veynox+JHbfHq8aQn+nF4pJNWwertL25cWo0?=
 =?us-ascii?Q?ovxJUmdNxP7lvQH6TkH85w8QUYTuWpJ/Qnv7h1DP/2RxiQTDl2YiMdEWKoX8?=
 =?us-ascii?Q?hDcIWj6X4zOEc8o5vVouAvX8MSpzk5DZYgg7j++4yYUaAw0E30bkPsacVRd+?=
 =?us-ascii?Q?NK7EuwE23BNFwG14Mc+3V9CWJQe31qXkIfGg/lGov0t0b4Ru6vzPZ6sAPHAr?=
 =?us-ascii?Q?S7OJqtFTBs34hEMGU7UkA9OIY+uBoy5gmRYH2K4tk3QTQYR8JRO01UNbVtLk?=
 =?us-ascii?Q?lUWSjToxYUr7JoxUASAx6wY8EHf/nEiLA58+84sSxo3D+r/Rsu0JtL0/ldVY?=
 =?us-ascii?Q?fTozXJOMqRM4fdRRWtxkUlvyvVaeDS2l3zsF/KQmP2KU6TZ3wsTBhKG/8bXO?=
 =?us-ascii?Q?umYiif7XauUShSc0gcCt9GQqqS9x2cf/bQVJXOUyEUfUmEHbuhBqBgHK80aG?=
 =?us-ascii?Q?6xPFPbGrEQLuGKduq3ZOyR9amP56lwV3C98lox1KJAvGiIeK2xCHA3UATlD6?=
 =?us-ascii?Q?ytmZ0bKKgoQcJXcqNEcQs6i9/NIrNzbGOnhWQK1jlXJLojk9cJPw+ZnHYQVM?=
 =?us-ascii?Q?Ps7wchc0BjsZZZf1J154+fX7nCM9m+uhFpmufzAz2qHLbc+ZEJHYiakbmFoV?=
 =?us-ascii?Q?Jx1skmSvi9KzQDcGtZ2YmlsbQIa4K+mFrZm8RurKPTTtg7tNxaSBdLf5cvRc?=
 =?us-ascii?Q?HtJ2xLmmh8CyYeA/LFPOGrIWJw2B7gtSJOC1ChF0ou/E7TwC9UaQk4sGM/n0?=
 =?us-ascii?Q?aoZc9CyeiIkhWCdPp76yYaX1AFUU+LYqoBkY4I8uy7GR2F8asg5bNNf5Ixw6?=
 =?us-ascii?Q?I1vJpvQmKaaA+ItbTcysxJNoPPwYg5Z8aOFaMJwuE+5pirG1Az+rvpUPFQqU?=
 =?us-ascii?Q?Gy7MPp67fRCQgg80TCu4mb6QcqIbhjJivMxWKIhWn5UT2m5jLDeanOgDwKr5?=
 =?us-ascii?Q?kEOujeAsmC4qTIRl+ZUsnEOgzJZAHZrUwS5VYo/ZyMpXuCfoaWYz7Pxj9G7g?=
 =?us-ascii?Q?7mGdLx+mponDvYA5UQs6uWzVcfFkr+QBqRHy4U4n08p9kMsMFUbM6uSt0geS?=
 =?us-ascii?Q?UIiHOf2tG2K8hJJSgCQkruOXcDft76gXl4svil9w4gjdF/byr2uG+rCeizCU?=
 =?us-ascii?Q?a7iLRW58w6dt6oNlwk95uSpu1I39TUYoJar2WXSWbD/92IiopxrYik4GJBlf?=
 =?us-ascii?Q?GCO4JAUMZy9fOFXJyy7M7/WJQ3MFuWexJvK1ao2GzH0Pro5LZI+y7qE/XJIs?=
 =?us-ascii?Q?j0Ii1V4K4hMKXtQSdZZ+w42q9F7j0lR2xcgXlhIvMWB0OLkZ9eiiWZgfyGhL?=
 =?us-ascii?Q?eyuTPz6FdVoWhjhRf7SBpAYRl319jbTAdVmNz05pRHcNyiKnLGptNiq1DzK6?=
 =?us-ascii?Q?G20DyrmioR1azLgi3nRa2WTHXo72hxZl/aQuKZU26rFG4lcsNY6tMmKG22U6?=
 =?us-ascii?Q?zRvo26BYwkkhzTP/qgRbck5OefOIXFNrA2AT65FD2gZRWVTTLCU+7jPrDnSF?=
 =?us-ascii?Q?Gv8EynRSX5e3OdGK0u3ZISjcEoiHXzCV+4QbxbphqZmWO1UIprvf530fe+Np?=
 =?us-ascii?Q?xw+KM4/umjWiynoV3WNYDsQ+9r7wXBRfKrhHNRWSvf3Xd5RPcvSRFHjXNOPm?=
 =?us-ascii?Q?EcDknVgaEQ1hqJVILV8PSgL47NkhjdJsuZViYreGRAwzMl3YKQ1ZzomR8FxW?=
 =?us-ascii?Q?OabLA1dvoaeG6IA9Vqan+RlpQ25OMJKQNXso521gphXaBeM2zWOTy/dKScAi?=
 =?us-ascii?Q?0Ar9u2gw9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60966114-e741-4106-283d-08de629f43d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 21:08:51.0121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cEMyxkhKWUFrKBsGIN+c2iVLKxtQGkcX4IlLAiDSD9kZ2beLzEvXrjrITZIHinF5ShXd5tsh5QTw/q8QgrYXFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lankhorst.se:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A1082D1884
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 11/21] drm/i915/display: Use intel_de_read/write_fw =
in
> colorops
>=20
> Using the _fw variants fixes a module load error on PTL:

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> <4> [363.690050] Call Trace:
> <4> [363.690052]  <TASK>
> <4> [363.690055]  dump_stack_lvl+0x91/0xf0 <4> [363.690067]
> dump_stack+0x10/0x20 <4> [363.690074]  __might_resched+0x174/0x260 <4>
> [363.690087]  rt_spin_lock+0x63/0x200 <4> [363.690092]  ?
> intel_dmc_wl_get+0x3c/0x140 [xe] <4> [363.690470]  ?
> __lock_acquire+0x1195/0x2860 <4> [363.690487]  intel_dmc_wl_get+0x3c/0x14=
0
> [xe] <4> [363.690842]  intel_color_plane_commit_arm+0xbc/0x140 [xe] <4>
> [363.691246]  icl_plane_update_arm+0x23f/0x280 [xe] <4> [363.691605]
> intel_plane_update_arm+0x74/0x170 [xe] <4> [363.691970]
> intel_crtc_planes_update_arm+0x3cb/0x4c0 [xe] <4> [363.692338]
> intel_update_crtc+0x1c3/0x840 [xe] <4> [363.692742]  ?
> intel_pre_update_crtc+0x2ce/0x470 [xe] <4> [363.693125]  ?
> intel_enable_crtc+0x123/0x150 [xe] <4> [363.693508]
> skl_commit_modeset_enables+0x4c4/0x720 [xe] <4> [363.693888]
> intel_atomic_commit_tail+0xd9d/0x1b30 [xe] <4> [363.694274]
> intel_atomic_commit+0x2e8/0x330 [xe] <4> [363.694621]  ?
> intel_atomic_commit+0x2e8/0x330 [xe] <4> [363.694956]
> drm_atomic_commit+0xaf/0xf0 <4> [363.694962]  ?
> __pfx___drm_printfn_info+0x10/0x10
> <4> [363.694978]  drm_client_modeset_commit_atomic+0x25c/0x2b0
> <4> [363.695018]  drm_client_modeset_commit_locked+0x63/0x1b0
> <4> [363.695029]  drm_client_modeset_commit+0x26/0x50
> <4> [363.695035]  __drm_fb_helper_restore_fbdev_mode_unlocked+0xdc/0x110
> <4> [363.695045]  drm_fb_helper_set_par+0x2f/0x50 <4> [363.695052]
> intel_fbdev_set_par+0x39/0x90 [xe] <4> [363.695365]  fbcon_init+0x283/0x6=
80
> <4> [363.695382]  visual_init+0xf2/0x190 <4> [363.695396]
> do_bind_con_driver.isra.0+0x1f1/0x4c0
> <4> [363.695416]  do_take_over_console+0x181/0x220 <4> [363.695422]  ?
> vprintk_default+0x1d/0x30 <4> [363.695436]  do_fbcon_takeover+0x85/0x160 =
<4>
> [363.695447]  do_fb_registered+0x24c/0x2b0 <4> [363.695460]
> fbcon_fb_registered+0x3a/0x90 <4> [363.695469]
> do_register_framebuffer+0x216/0x320
> <4> [363.695488]  register_framebuffer+0x23/0x50 <4> [363.695494]
> __drm_fb_helper_initial_config_and_unlock+0x3ea/0x670
> <4> [363.695502]  ? trace_hardirqs_on+0x1e/0xd0 <4> [363.695526]
> drm_fb_helper_initial_config+0x3f/0x50
> <4> [363.695534]  drm_fbdev_client_hotplug+0x80/0xd0
> <4> [363.695543]  drm_client_register+0x8a/0xe0 <4> [363.695556]
> drm_fbdev_client_setup+0x127/0x1f0
> <4> [363.695563]  drm_client_setup+0xa7/0xe0 <4> [363.695569]
> drm_client_setup_with_color_mode+0x24/0x40
> <4> [363.695575]  intel_fbdev_setup+0x1c6/0x510 [xe] <4> [363.695857]
> intel_display_driver_register+0xb5/0x100 [xe] <4> [363.696188]  ?
> __pfx___drm_printfn_dbg+0x10/0x10 <4> [363.696194]  ?
> intel_display_driver_register+0x2e/0x100 [xe] <4> [363.696515]
> xe_display_register+0x29/0x40 [xe] <4> [363.696858]
> xe_device_probe+0x51a/0x9e0 [xe] <4> [363.697102]  ?
> __drmm_add_action+0x98/0x110 <4> [363.697108]  ?
> __pfx___drmm_mutex_release+0x10/0x10
> <4> [363.697116]  ? __drmm_add_action_or_reset+0x1e/0x50
> <4> [363.697130]  xe_pci_probe+0x396/0x620 [xe] <4> [363.697423]
> local_pci_probe+0x47/0xb0 <4> [363.697431]  pci_device_probe+0xf3/0x260 <=
4>
> [363.697444]  really_probe+0xf1/0x3c0 <4> [363.697451]
> __driver_probe_device+0x8c/0x180 <4> [363.697458]
> driver_probe_device+0x24/0xd0 <4> [363.697464]  __driver_attach+0x10f/0x2=
20
> <4> [363.697468]  ? __pfx___driver_attach+0x10/0x10 <4> [363.697472]
> bus_for_each_dev+0x7f/0xe0 <4> [363.697484]  driver_attach+0x1e/0x30 <4>
> [363.697487]  bus_add_driver+0x154/0x290 <4> [363.697498]
> driver_register+0x5e/0x130 <4> [363.697504]  __pci_register_driver+0x84/0=
xa0
> <4> [363.697509]  xe_register_pci_driver+0x23/0x30 [xe] <4> [363.697762]
> xe_init+0x2c/0x110 [xe] <4> [363.698007]  ? __pfx_xe_init+0x10/0x10 [xe] =
<4>
> [363.698239]  do_one_initcall+0x60/0x3f0 <4> [363.698250]  ?
> __kmalloc_cache_noprof+0x470/0x690
> <4> [363.698267]  do_init_module+0x97/0x2b0 <4> [363.698275]
> load_module+0x2d08/0x2e30 <4> [363.698280]  ? __kernel_read+0x164/0x310
> <4> [363.698312]  ? kernel_read_file+0x2ca/0x340 <4> [363.698328]
> init_module_from_file+0x96/0xe0 <4> [363.698330]  ?
> init_module_from_file+0x96/0xe0 <4> [363.698357]
> idempotent_init_module+0x11d/0x340
> <4> [363.698384]  __x64_sys_finit_module+0x73/0xe0 <4> [363.698393]
> x64_sys_call+0x1e3d/0x26a0 <4> [363.698399]  do_syscall_64+0x93/0xab0 <4>
> [363.698413]  ? ext4_llseek+0xc3/0x130 <4> [363.698425]  ?
> ksys_lseek+0x55/0xd0 <4> [363.698438]  ? do_syscall_64+0x1b7/0xab0 <4>
> [363.698444]  ? switch_fpu_return+0xea/0x150 <4> [363.698454]  ?
> do_syscall_64+0x1b7/0xab0 <4> [363.698465]  ?
> kernfs_fop_read_iter+0x197/0x210 <4> [363.698470]  ?
> rw_verify_area+0x16f/0x200 <4> [363.698482]  ? vfs_read+0x22a/0x360 <4>
> [363.698498]  ? do_syscall_64+0x1b7/0xab0 <4> [363.698506]  ?
> ksys_read+0x72/0xf0 <4> [363.698520]  ? do_syscall_64+0x1b7/0xab0 <4>
> [363.698526]  ? do_syscall_64+0x1b7/0xab0 <4> [363.698532]  ?
> do_syscall_64+0x1b7/0xab0 <4> [363.698535]  ? exc_page_fault+0xbd/0x2c0 <=
4>
> [363.698545]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> <4> [363.698549] RIP: 0033:0x715af255025d
>=20
> And a similar backtrace in hsw_color_commit_arm().
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index e7950655434b8..9cbc719370456 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1050,7 +1050,7 @@ static void hsw_color_commit_arm(struct intel_dsb
> *dsb,
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_display *display =3D to_intel_display(crtc);
>=20
> -	intel_de_write(display, GAMMA_MODE(crtc->pipe),
> +	intel_de_write_fw(display, GAMMA_MODE(crtc->pipe),
>  		       crtc_state->gamma_mode);
>=20
>  	intel_de_write_fw(display, PIPE_CSC_MODE(crtc->pipe), @@ -4078,7
> +4078,7 @@ static void glk_load_lut_3d(struct intel_dsb *dsb,
>  	int i, lut_size =3D drm_color_lut32_size(blob);
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY)
> {
> +	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) &
> +LUT_3D_READY) {
>  		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not
> loading LUTs\n",
>  			crtc->base.base.id, crtc->base.name);
>  		return;
> @@ -4096,7 +4096,7 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb=
,
> struct intel_crtc *crtc, bo
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 val =3D 0;
>=20
> -	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY)
> {
> +	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) &
> +LUT_3D_READY) {
>  		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not
> committing change\n",
>  			crtc->base.base.id, crtc->base.name);
>  		return;
> --
> 2.51.0

