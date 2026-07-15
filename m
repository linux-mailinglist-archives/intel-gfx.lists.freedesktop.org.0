Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ojrFD2pFV2qhIQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 10:31:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 889C175BE5F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 10:31:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="cBCtL/Db";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D767892AE;
	Wed, 15 Jul 2026 08:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44826892AE;
 Wed, 15 Jul 2026 08:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784104295; x=1815640295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8OtaAg2W6/Z3eNxZWcw+ijBJleqUOsew3ugejJFynz0=;
 b=cBCtL/Db09VYwzht8d7yvH1hLNMr2SwQE7qbyWFDgLbcTF7/qU/mEbO8
 gIFd1nQrvb+46+XpKtFebzHV/nquxDC06YKhOGD7Ylj0wZLf6rwemmktu
 WhgTDh5VnAznfhYPf6dPoMnUPps8R0SvlHzqq30SYsW3OBBAB0myLCLNw
 TSJD5Uw9Xdyr1R4zFam8lWlUEY90JzE/aLVq+Ab3Aq2c5OnCHhV6byK8B
 LUsMlhRcPCWuY+rOROut1sz+C9aJf4oU4uq/AgZ/CMii/B1BNA8UAyFSP
 UQ47Zv7gcsz185fM+BbevJlV8CiJysV58udAccS1zNXa1i6CJoIZn1Get A==;
X-CSE-ConnectionGUID: fF8krl4GRhSMjN3WuMf8Iw==
X-CSE-MsgGUID: KLs0WX4rQz22HP0JlLbjhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84931187"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="84931187"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 01:31:34 -0700
X-CSE-ConnectionGUID: nIogwU5bRBW2A3PXcTefhA==
X-CSE-MsgGUID: UqsLXHaGSW+MBqaJsiQyjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="280543792"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 01:31:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 01:31:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 01:31:33 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.13) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 01:31:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HzM5o0PENh5UkoI1cFLTOKaKiS2qosr0jK7gWkppZR2RQTkdwRdlgvxnrNGBSkdZyCUoOZ4UhZIe5RjIOImejauQ6k218PcBhGIYnlGMGinkg5eZGFfWOCxFBaw5q1QwKx/5IN81jtjTxwk5kymyeTpqsYfrj0NU/1ZWbUIh292KHUJwEz4MNrghiArRoTk2hfwohcavL6D4Qw/Jq55ixnQAEXoO6u5uAOppfwi9X8Z9BRElxEKp2KsDlmgVHQhKm6S9j7YDp0TSFF15dK5jmmUjoTGy6FsEVh7rVwwutfo/BMlMUT/jXzSj8AYb7F1Em0pJPlVlvQZOOZQlXwMDjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nKCJrBzyUYQa4u1VqV6oRlPBsk71WHLxLceKJtiP9U0=;
 b=Ii0zLNONz1TZS/E4ofaoJQlxK0AmmigjFJZX4C5exGoVghn/K9kXaUBCMxi6vsq2/TJMF156q5tek4IYjKIRnxtk9/JFZvcPK1LKa8Q52+e10YyxQ9oitR7UyCz7/qnN+TW2lwyWPY3ARgy+Gz29fIfJGJC/48a1e3SQLDHbfLNpUMtDdooR6AaJKYsDYi8eikdBq+ehT5uFUqV8PlmTJA1JiEkUlxyXIw9GtikODBVNlPsI1CpuWEg0QuuhVKKz1/OzDu1UfdMPnAzpI912I6bBoo4WkU/C+4PtVyyrLFRIkW6uZ8/1uk0s2w0a/Cvka6ajw/AYdna2gP8x3gYl5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7410.namprd11.prod.outlook.com (2603:10b6:8:151::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.202.19; Wed, 15 Jul 2026 08:31:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 08:31:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH] drm/i915/display/xe3p: Interpret 0xF populated-channel
 count as 16
Thread-Topic: [PATCH] drm/i915/display/xe3p: Interpret 0xF populated-channel
 count as 16
Thread-Index: AQHdE2fjV5L1CTexSky5stFh/lPeN7Zsv2oAgAGAHEA=
Date: Wed, 15 Jul 2026 08:31:29 +0000
Message-ID: <DM4PR11MB636078860753C23386F81E18F4F82@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260714082651.4104132-1-uma.shankar@intel.com>
 <DS4PPFE901A304F6E10AD9EAE73E633F844E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F6E10AD9EAE73E633F844E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7410:EE_
x-ms-office365-filtering-correlation-id: c28065f9-8efa-492e-3fba-08dee24b77c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|4143699003|11063799006|56012099006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: m8xZxwmqfozRA75Ct3+G6L2qgOx0VTO3bwwrWFha/KnOR5t0B/kEGuCwDQUI38MIHMU7iFT3WW8C6MfRG5GsOu2QEIuOC6zfCu0ILbsp0p4s0zwYTANQ18FuNoTfe7VuUbYC8oq+PRGDnD7rlT4DGqi8QDkLxlK0y4h/Xi0vhAeZygZU7PwYL42Tn1ENJeo6tUA4ZT2JcVpFo/zc+3Ek7Xv7tZ4CUc+iNdDUKeyl6Nm7/7vNdxKNizBOKCpioHS+5pgTTcUEbDbm4lmocBPi7rXiJWrECQIlc45jZuBHegw4vcidBPh9JxgrJKS96mtU1P8Ottv5Cf2VanPSE2vYjLpKw1zjhzOqn6B0wN9m9c2wtNQdfK+ASN2fyeE7lWGweaxv4KvuIa4nt9JbX/kO4kPCsS4EMYw0g9iLvydSotAMXN8pOtjzOSzj2DjsLYrxHc1536uBvTCWEJnsAqryWBAeTfpHWWqet4Foyg3/CaQ0U0CbpyabKQmlE06x/sIS7+H3owPVx92mcdZWdSDv1IcwCpQ29Bu9/D+L6qPl9qWMmX0pOOVNd69yX4IX1ygNzkTBfrzk9vWRnOLrforKAPtr6IXLAU4iqaYRQdfcUv/Fy1rIGMjarMgRELI0AFhU4rxvUJKGsN2KjoLZ7ih1s4lTMcrDZWmLBJFbkbWSt339w/CB3gvaDvTfVyZErtUykmHBTd46rO70yrQHAnVB7pyIQ/ikbdOoh4WbvvtsQtk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(4143699003)(11063799006)(56012099006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?znQxmWeCJp7qrOar9YCVHAMlVVV1doaAa/yxtFjqTFuj1sX23Qu6B/yxxsjx?=
 =?us-ascii?Q?c4fcuMrC5LZ5OV0YVeVH02JZUVcFdctIYkHR8lR+8uk8eYWZuCg1koz3JhDS?=
 =?us-ascii?Q?4UlfOFMKzVg1UhZWCDjZZMhhYvBerTemZ6m4nCiPuxnSmrZ+7jL0WNa+Kw2J?=
 =?us-ascii?Q?nV5ecj2DhH50OTB4NMItV+ffP6R9KzfVPjICNKDrHIPaCxAhvKH46kzrude9?=
 =?us-ascii?Q?9sE7i5qwKGOYMtYP76ybp+aJdsSfwzBstdyKgAIuaZrGn63IO0LNBkXM6syF?=
 =?us-ascii?Q?4WDBoFOE+cZoMxlNBxuYjVe5EhGXfFsg2F68oJedcrbUOSTo6tRahbtYyM3l?=
 =?us-ascii?Q?40++DioA8j4BTCXP0qPD3xgnnUfrwje4k0TtH3hPJX2wZx5yeJRoIzknNA3z?=
 =?us-ascii?Q?segUtlbXc1YFMIPqUhXsXmry4sHtQexCLy+eRL8I4krcbIvTzXfXAkyQtZ7c?=
 =?us-ascii?Q?3V+Ua3/LwirGXSK3NdbhS7r7kTsNj8YM4xNjmKLlY4dWd1Pzvp/7f3Xr4TAO?=
 =?us-ascii?Q?lmcGQgLjFaxlIJV1vqJLPsQsqyxvP3gaxtbnNLbOIr0mCP4u/mTWzNi2U6OQ?=
 =?us-ascii?Q?ZBVmhxGic0WyCEndazzu8G4m6MysX8KfHFZctRb3ShmOwFj6dj+jY43na7Ia?=
 =?us-ascii?Q?sC700DRGg2Td4FYDQFw5j106jHgd3bse+tzva0YSM4zDBYBUG6IwNGGiSlIl?=
 =?us-ascii?Q?nybOdHmIJZZxDuX0bmat+oVBnas4R9KtlPHtmHjcUHj7LWphWeQsGxRQU9t7?=
 =?us-ascii?Q?Mh6q2w9sq2hpBW4JU0h/6ujrQAm0H06NzXwvLfcW8+YiV14bq4F4QiVU73X2?=
 =?us-ascii?Q?hYhlGISkD+7PA/QNDl7hH6Y0Im91DAhC8a4VT8O+SaUYGRmaxBmOW0oUIQoS?=
 =?us-ascii?Q?Qcs2lFDGyLcARpTHlVXaYTi3hq7iITN9N6djR1lP6fDvNXt1Z/6RYi8RwKfi?=
 =?us-ascii?Q?N7Mk4ZlIgzpF9g5u8TDdEVKKrsth/tvx2c4cJS1pg+ZRtmO8zyoAfjFFGm7E?=
 =?us-ascii?Q?OuO/c60wIARNh/QN9P36LUDLCLvfShw/KgEXo6awUcshXOQHsX821UvcOI0a?=
 =?us-ascii?Q?hybMACBjm+KvIT3oO/JGFSQznJ6GJYsrf3bJbPknyEfJTAj0QZRv6HdE6KO3?=
 =?us-ascii?Q?jspHKWnNjqy+BgXpPtVB9U1zESHPfv3chetLCUAZx2N/lQmxmTNn7iJF6hSL?=
 =?us-ascii?Q?GIUVjBPwSroJLo9aABKQR+n3nvVZfk2yFCtP69cpEVrjATaqHY4CsTeSFCiA?=
 =?us-ascii?Q?Yb+o/G2zdE6I17Cj54uDhYHDMKswxxZhsB9OOkRyBBaglSzEZqLYzq6RbHMn?=
 =?us-ascii?Q?KJtgTJNTsTSM7WehAJ3RV3n6Oj3crf0lGS3SiAdaqn8I/TtuVz4w8fEpx8Zc?=
 =?us-ascii?Q?SiVMFDjrvcYdu/iJIAp9WJ+GM6E752DKJTR36D5LcQmFna5xC4hOM5DVucnb?=
 =?us-ascii?Q?BHy/pQebNA6wabQ9ygCgJfWqC+BcYx0cPfyD+g0+pGHXjYStF87uioaIW4n1?=
 =?us-ascii?Q?BWqPRsWQiU/BzgvqJlYjkWPvVe/gOsolEqXjYchHKYqRdZf9681jeqjG+3PI?=
 =?us-ascii?Q?jeXnwL8ZnI/3FBuAT4ooqraJDXyn08Yl3zjsrlg6HNi3/18YUckrz6AKCYUN?=
 =?us-ascii?Q?tRybjoT1x1bN+pK07Jbq086amNloIuzOIxILc3sJSCyTBJJJyCMzyUla9pen?=
 =?us-ascii?Q?SJOzH7iZPQiJDxq1SjmsdjbOfXEHlEkxWpr/mseiNpRkxZhr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hxbpgogCHqeNckDj1AW3lfiMGT4FCBVRmt1MAay91BBVaBTOiB9MHA8BxTJEX4H1he+Ml92fnqDClXPEUOp6cOJJO/5m9RCUTHIrjMflmr+ndOfl65wWl2oiKrS6Ra8cdqy+ppZV8rC+EsZO87TIHYzcjOULNirMOsJmZzGX7flxur8U9oHhndl6BvVIKwxVLbbJW01w3qFMgHgc6ysxBQrV7EpZ2AgverI+9m6QS+v1VIIyfHS5ItN6j9jIvgFH+YO17nnZiBVijFc+vT1XkkTVCsSWiYYh7HYhKhNmj+5aQ3w155gMfDza/V62hVNreeuEUoyWNpzlww1EfJn8BA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c28065f9-8efa-492e-3fba-08dee24b77c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 08:31:29.2364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tS6I5RHuqHF06BB4KUF9Eoj4XpXP3iCpI2BP8El0JjmFHaJMyOZd+cvE3XdSIW3YLdAUU+Ke4sjJf+SWC9veNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7410
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 889C175BE5F



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, July 14, 2026 2:58 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Subject: RE: [PATCH] drm/i915/display/xe3p: Interpret 0xF populated-chann=
el
> count as 16
>=20
> > Subject: [PATCH] drm/i915/display/xe3p: Interpret 0xF
> > populated-channel count as 16
> >
>=20
> Hi,
> Thanks for the patch mostly looks good I have some comments you can find =
them
> below

Thanks Suraj for the reviews.

> > The register MEM_SS_INFO_GLOBAL [Number of populated channels] field
> > definition is updated with an encoding for 16 channels.
> >
> > For 16-channel configuration, program 1111b. A programmed value of
> > 1111b must be interpreted as 16 channels for memory bandwidth calculati=
ons.
> >
> > WA: 16030862157
> > Bspec: 69131, 68859
> > Assisted-by: Claude:claude-opus-4-8
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c   | 18 +++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_dram.c | 11 +++++++++++
> >  2 files changed, 26 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 41539fdfeac5..f1197ce2d9fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -272,7 +272,13 @@ static int icl_get_qgv_points(struct
> > intel_display *display,
> >  		case INTEL_DRAM_LPDDR4:
> >  		case INTEL_DRAM_LPDDR5:
> >  			qi->t_bl =3D 16;
> > -			qi->max_numchannels =3D 8;
> > +			/*
> > +			 * Wa_16030862157
> > +			 * Xe3p supports a fully-populated 16-channel LPDDR
> > +			 * config (4 memory controllers x 4 channels); earlier
> > +			 * D14+ platforms top out at 8.
> > +			 */
> > +			qi->max_numchannels =3D DISPLAY_VER(display) >=3D 35 ?
>=20
> Should this be =3D=3D 35 and later be extended as and when WA is extended=
	?
>=20

This is addressing a limitation of 4 bits assigned for memory channels, thi=
s will be
Applicable for all future platforms as well. No hardware issue as such, jus=
t a BIOS->driver
interface fix.

> > 16 : 8;
>=20
> Since this is a WA lets use the intel_display_wa framework Which would me=
an
> defining intel_display_wa enum for this wa And updating the function
> intel_display_wa() Then we can call this function instead of
> DISPLAY_VER(display) >=3D 35

Sure, will switch to that.

> >  			qi->channel_width =3D 16;
> >  			qi->deinterleave =3D 4;
> >  			break;
> > @@ -624,10 +630,16 @@ static int tgl_get_bw_info(struct intel_display
> > *display,
> >
> >  	ipqdepth =3D min(ipqdepthpch, display_bw_params->displayrtids /
> > num_channels);
> >  	/*
> > +	 * Wa_16030862157
> >  	 * clperchgroup =3D 4kpagespermempage * clperchperblock,
> > -	 * clperchperblock =3D 8 / num_channels * interleave
> > +	 * clperchperblock =3D max(8 / num_channels, 1) * interleave
> > +	 *
> > +	 * The 8 / num_channels truncating divide collapses to 0 for
> > +	 * >8-channel configs (16-channel: 8 / 16 =3D 0); the max(..., 1) flo=
or
> > +	 * keeps clperchperblock >=3D 1 there while preserving the literal
> > +	 * truncating divide for <=3D8-channel configs.
> >  	 */
> > -	clperchgroup =3D 4 * (8 / num_channels) * qi.deinterleave;
> > +	clperchgroup =3D 4 * max(8 / num_channels, 1) * qi.deinterleave;
> >
> >  	display->bw.num_qgv_points =3D qi.num_qgv_points;
> >  	display->bw.num_psf_gv_points =3D qi.num_psf_points; diff --git
> > a/drivers/gpu/drm/i915/display/intel_dram.c
> > b/drivers/gpu/drm/i915/display/intel_dram.c
> > index f103f7cba018..df58effca785 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dram.c
> > @@ -796,6 +796,17 @@ static int xelpdp_get_dram_info(struct
> > intel_display *display, struct dram_info
> >  	dram_info->num_qgv_points =3D
> > REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
> >  	/* PSF GV points not supported in D14+ */
> >
> > +	/*
> > +	 * Wa_16030862157
> > +	 * MEM_SS_INFO_GLOBAL populated-channel field is only 4 bits and
> > +	 * cannot encode 16, so on Xe3p the BIOS programs the saturated field
> > +	 * value (0xf) to indicate the fully-populated 16-channel config (4
> > +	 * memory controllers x 4 channels). Interpret it as 16.
> > +	 */
> > +	if (DISPLAY_VER(display) >=3D 35 &&
>=20
>=20
> Same here
>=20
> I also think this patch series can be broken into two 1st patch which int=
roduces
> the WA enum and function updating along with this change in dram The 2nd =
patch
> updating the bw side of things.
>=20
> Also the subject for 1st patch can be drm/i915/dram and 2nd patch can be
> drm/i915/bw

I will break in 2 parts, one to add the wa macros, and other to implement a=
ctual change.

Regards,
Uma Shankar

> Regards,
> Suraj Kandpal
>=20
> > +	    dram_info->num_channels =3D=3D
> > REG_FIELD_MAX(MTL_N_OF_POPULATED_CH_MASK))
> > +		dram_info->num_channels =3D 16;
> > +
> >  	if (DISPLAY_VER(display) >=3D 35)
> >  		dram_info->ecc_impacting_de_bw =3D
> > REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
> >
> > --
> > 2.50.1

