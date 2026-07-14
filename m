Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ocE6CUABVmoqxwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:28:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E78752D6A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:28:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QdkGlAYE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0FD210E04D;
	Tue, 14 Jul 2026 09:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEC010E04D;
 Tue, 14 Jul 2026 09:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784021307; x=1815557307;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBtV0tmgG+etCY7irH6hUWxU+7/p5XNbAIFF5FTRc9w=;
 b=QdkGlAYE2lB5Pk9Z7cKasl5vqhY8OkvrhKwNJ0i2KzWFTOHj8VZ3IifL
 pOJgeE/9yRcFqxhERsEm3Wh6vlH71+wc+Z7sjCZ234n435izCDsKG/vcz
 /Fty/su1GENGCjVQw4MK3zr2+jVPllZlqUBnzCzasywsAB6YfRq7XSkIX
 QdjvA4SUOCMrG/iII1tYep60ZNUZDFQ4OOjp6dlvIzosG+lEwsqAF+oDX
 8FcXyVJhGoyLzmGdXdtivFVshLgV0JIDcEkMsa1vV9jXbIe/nUbGmPX5I
 wgndlp0+OMz6u7yGE0eVODJ92bE9AYf91j6HicJ8RCRlq1nLHocdCNWBu g==;
X-CSE-ConnectionGUID: 2THAkyosSuGlauaqgKL0nw==
X-CSE-MsgGUID: Sdl4Gx6yTT67XtJA3PyK9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84604102"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="84604102"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:28:27 -0700
X-CSE-ConnectionGUID: gV3q6XDzT3CIkPX6PRbEhg==
X-CSE-MsgGUID: 9hZVyZ/lRZqguEA+953Log==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="255309076"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:28:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:28:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:28:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x9UUlUz7x6yQLK1If8ja/vlcnXkHqoSY2r0Ufi/s5nIKP/A9jwW8wrsq40Q2qbZX2LGwkenBvis4agqzEIZLfXvNSbGQacLiAa+PK4incHxJ3jahH2h4WL8RJUKzkZjcGGdK9oppfD6T+jw6FNgWmWZAQEaiQQwcNtK9ZjfLwcWPDUKJ100wWS0ZxTuL1XlsJIlnssw48U77BMqm1XEfL5Amsq8ZeswaAb/1gNn+Emulllx8h5itE/GriaTbMLACotiM+ajYF069khQZeezKzGFY6j1IMFuw1M5ygb0sQr/qiXnwHC+cVlkOavXp1rg7HXYRmlO/7UkhuH42cd/lMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i96UN/RmY8DjTlyCJxT7iMqhRa5fk4gFlAQaXaJL9fg=;
 b=sYLdJ7flFRAVJK8WUv+o5XgqKiGosdRMiaR8Ly4e/DvVZpYbNIt1tyw8NGxklN1X5GCXvfbPmnIMKB7fiJK5FP5nsSAWQb0c0S9pIKmfZn4pxAyBRb8LOIW8OSTLuL9r3t2i9Piyv/zcCouhNp1K6HQoFreNC2iJchbLOn6+Z9F6Fv0f9ZsjXpPpEXwAP06eRbBnFvMkhPIMwKz0ndpxLM5LPsBhSAhgWTWUToiBBGhoqRBq680/SPMnn+7mrWTA/Vo8l2xWZccTKpZ+Bx7xG1W4LyYEJWLQvZRgnxCcDbjKa1tgs7OaJdAAAiplTRYF911ZD1htvkswb5pn08rU0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by IA1PR11MB7917.namprd11.prod.outlook.com
 (2603:10b6:208:3fe::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.22; Tue, 14 Jul
 2026 09:28:22 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 09:28:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH] drm/i915/display/xe3p: Interpret 0xF populated-channel
 count as 16
Thread-Topic: [PATCH] drm/i915/display/xe3p: Interpret 0xF populated-channel
 count as 16
Thread-Index: AQHdE2fjaMXpUJRkHUeQ62C74qH2wLZsuS2Q
Date: Tue, 14 Jul 2026 09:28:22 +0000
Message-ID: <DS4PPFE901A304F6E10AD9EAE73E633F844E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260714082651.4104132-1-uma.shankar@intel.com>
In-Reply-To: <20260714082651.4104132-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|IA1PR11MB7917:EE_
x-ms-office365-filtering-correlation-id: 05a539a2-dca9-44a2-cbbc-08dee18a3fa3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|18002099003|22082099003|56012099006|11063799006|6133799003;
x-microsoft-antispam-message-info: 4FZi53UgA5VIE/xAjIZEzFBMhNZcLA8jMjyVcxj27uYSC3EU9H0uPOk1XgNQrByCWCrgR/Vu65rx9Aun3kbeLHmpmMMrDatRZgDnj8R1fHhAVLaUtlDLfxsd8vlqLu4PzVn5NdXy7Hz2nSwiiat9OrAldBJdclh/6MgVJhdCdWxb3sIekYpklZjE+hDP4gvvYvZA+Czjgx/CoiRgHAi5C0uUVs7Lv4rpuPYNk1hGmyy0I0soGgvC7ioRcJVpkVj8zNQEsME1gQPmgbQju0aRiLM+N36yeyw8cBHunZROrlMUtn2G0V7N33xk3DFVv7igzPpTSKvwOE5Wib9h46NA5DKZEZZ9qeFVFACGZIgvAP3jgatwtMGlRgsLyWT2c67iqEGYMTtJA0lp8KiMha2GGuRBOED9ZN4K0bbOqKhfc7FMvDMFSrs0ASiuXTvt+rIgrUUgo9LzUg4vapNgNSDf0tnFGN0zGVtToylO49Uu8TTR1tEOeYj59NPDf4XQI8UxwoTVyZCc40dkPvBfiAmUYL4nElDETQ/x6VacWm95PZ0fqs6So+LHaf6FJEzs0NES2O98QkuYdTSvOYzSjqhnU+7Lgvcqht3qSZOfLrcDlMcWHLncexy7a5l482hB9pJHU5CTUlOx0Sj49TnYqKwWf4Zy1Phcm8abnQWtTnf7XzWLn/YTKE+NUuqnaj0ULwKFbY/xWpnzrUUdJQpTpO1nGG+ZeOx3QejET2Oze1WCpzo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0np4Rcqnm8GABoHsGr8ZGxHzYvF+t4f9yfpV2zHdeR+b67ZOimfWW8gBdHWw?=
 =?us-ascii?Q?L/eXmGTxLVmfe3PCG+xR0RpCjx2Kl4KT/S9DMWdoX9hgGJMyF+mfIBq23dNS?=
 =?us-ascii?Q?Sa4DI57JC3L0UT2vTBTP6tk8TWX7xpB7lmJye/W0XS5iy5409Rw0qo4oNM1l?=
 =?us-ascii?Q?L+VDKlIhcfTApHSp1vb8IIoFmSoxTfVtydnMQdNCRES/jHLZQ9vo8EFO8/5p?=
 =?us-ascii?Q?MIwm5RMNpYqY5q9Hz47Mz5/PxfmvMwDMk31KYZwhL4HE4tytzynB+SxC/Zgk?=
 =?us-ascii?Q?aoTarHJPDEG23hdF3Dg9Njith7SUE4jxCjallC2rrUz6Yt88tPNlR5YJ4Pmp?=
 =?us-ascii?Q?gz+WlaoFsPfXsRd0wwjMXHUnxsEiNos9khicGRIDPeF/YrKrkMCkqgw66eb8?=
 =?us-ascii?Q?HyJkhSTU1U6VrkRTWul1UDPY8buHDjA7PzD84uMalS1Q3fJXzgM0zSNzgtzb?=
 =?us-ascii?Q?NzuBPESbdFPREI9klt7WzLe4lPAj4cofB/p+Gsz4ilDilFthvKg8itG2sQaQ?=
 =?us-ascii?Q?kHuVmAQmo2E4Eh8VPr7UAVoLQRM9m90DRjlPxPtQg2vkNMHxqBwWwJi/Teta?=
 =?us-ascii?Q?yThL6ZVGO7HJW3O4Plj/iTvHxx6RQr4YeaO3dP0gUdJMRN5Ml1PeHSlvczT9?=
 =?us-ascii?Q?zJE0oW/cwOwYFQ15lfxxvKeRlfNaZJnUtz+5gj5jbwsG7LO9162d882Oq0IL?=
 =?us-ascii?Q?igfb5rWcaV0lBSBP1nZdcOOCSSmPEvFiJshfjvabOzR5DzBXnNB2gk9UxvsO?=
 =?us-ascii?Q?3ck7iVajAEQ0sIheDzv1/mnJ4c0+kNLO8rS6CqGJipvRalWmDUV9XIdLTvFp?=
 =?us-ascii?Q?iuV8Qy7uCOUD1JRZkN65X6LIAy/pBy+XdDmabOTMvsJcGQoMcegURtS7TOER?=
 =?us-ascii?Q?Syc5Xv+Q0OTEcMZFnnGy+OaMDZ6WjffB8GKD91FeO6cwhJHvXWbY2+Mku5rX?=
 =?us-ascii?Q?TL9kNGhTvL3mRUeO38ojCRci6jxMW3hw6PGCAEYV+O3VvRjJJAjEUDWmtBRP?=
 =?us-ascii?Q?tWRrotYk08mk0S/YeK1gedynvPD0CUz4AG3phTJWE6w2JgTEuoLRJ6gNblLN?=
 =?us-ascii?Q?CN67EnP5pC5Z3sLyn8ox9+UK4X2RfWlWS9IkqNXpQM8vZSNdUdlw3NLYIgZ5?=
 =?us-ascii?Q?65Bz2TBettiUaE3iVgyeRPneceyOvx9kFxQBfH9jwu+z4Pwzy6gsBsxOH/xm?=
 =?us-ascii?Q?8d86jriUztxfKXEro5XOpcAdeQYxpwgV0Ah9VX0eZnohrspnJxhZ6Sd1fOkb?=
 =?us-ascii?Q?JzL5wf2SbFlzO3SraYLi60xoWuNCHQqTjI/XRYM9ysPtd1rdIy2H7E9pAjEa?=
 =?us-ascii?Q?P+TefscSlhJbfLewI+qrOYxbeQ55jrlt+KH0Cxr+6FySfylTPhLxKuHzfhfR?=
 =?us-ascii?Q?IM0KTohcXkF/QKStTcamy8TSB1oBftF15dM3I5OP1XTjAM/nZpPJA3i8oQfu?=
 =?us-ascii?Q?uPiXVw4HpqjX5VWpswmMjWTcNMxjMd65jBNbWL6claTop4T2OpE4yn7uinEU?=
 =?us-ascii?Q?cYBvSCjQPCQmuqkdWkMkrXPv2P74edj5Rj2bBlLQvnAMJPF7FC9907uN5yw7?=
 =?us-ascii?Q?NHZXkBGWR7/pID454gb004FUKvsxExqEDr2/h6gD2y351twuaPqqxhJo4i3m?=
 =?us-ascii?Q?kgvw7CbtyLSsJY/ZE5KOFld8gdXrQv9+RGk5Kv5PyxYMU4SKsj3xNU1kWpdL?=
 =?us-ascii?Q?N+4snWqlXENKvzV0YKWbu4MdxNKHHM7ImzomAMC9gwusavAc5HN1A8GYwFQy?=
 =?us-ascii?Q?CYogapIc8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LbQAoWPZVcNYgt3LxylVQbfLiegVqiX3EU69lHnVHyL061xaHD2h93fdnYHBCvVTwwXs2DGyhgV7kr4AcTMODx37gwVvOLn21EElyqLJOQyWe8ZyxZ8DyigeDtLn4MoHefhJAlEtgzFgcKafZq76ent7W+osVDHfGQTp/oWLtXmYnUTaNojJUJLO9iIlERdNEdkwIU6TQpyTSMFxWK6M8yEj5PyYKkvX4PlNNDPArhyPvQdlIsliDO5AazadxIsPH5415FE5vAop0qu4ZvkjURxfdZ1GPRXxmi1I+EcoRIMK69YqY4gP6PF9nEnklXe8bWyuNI8H09pFI5IMA8ZjEw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05a539a2-dca9-44a2-cbbc-08dee18a3fa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:28:22.2304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RFVLiix1AMQCJfL29CY1VHvwvi2ONAnFGV+efof8vN7U/hx/3xv9uRb6AWT0YzEjH3noSoRH38tCTEyb6tuY1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65E78752D6A

> Subject: [PATCH] drm/i915/display/xe3p: Interpret 0xF populated-channel
> count as 16
>=20

Hi,
Thanks for the patch mostly looks good I have some comments you can find th=
em below

> The register MEM_SS_INFO_GLOBAL [Number of populated channels] field
> definition is updated with an encoding for 16 channels.
>=20
> For 16-channel configuration, program 1111b. A programmed value of 1111b
> must be interpreted as 16 channels for memory bandwidth calculations.
>=20
> WA: 16030862157
> Bspec: 69131, 68859
> Assisted-by: Claude:claude-opus-4-8
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c   | 18 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dram.c | 11 +++++++++++
>  2 files changed, 26 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 41539fdfeac5..f1197ce2d9fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -272,7 +272,13 @@ static int icl_get_qgv_points(struct intel_display
> *display,
>  		case INTEL_DRAM_LPDDR4:
>  		case INTEL_DRAM_LPDDR5:
>  			qi->t_bl =3D 16;
> -			qi->max_numchannels =3D 8;
> +			/*
> +			 * Wa_16030862157
> +			 * Xe3p supports a fully-populated 16-channel LPDDR
> +			 * config (4 memory controllers x 4 channels); earlier
> +			 * D14+ platforms top out at 8.
> +			 */
> +			qi->max_numchannels =3D DISPLAY_VER(display) >=3D 35 ?

Should this be =3D=3D 35 and later be extended as and when WA is extended	?

> 16 : 8;

Since this is a WA lets use the intel_display_wa framework
Which would mean defining intel_display_wa enum for this wa
And updating the function intel_display_wa()
Then we can call this function instead of=20
DISPLAY_VER(display) >=3D 35

>  			qi->channel_width =3D 16;
>  			qi->deinterleave =3D 4;
>  			break;
> @@ -624,10 +630,16 @@ static int tgl_get_bw_info(struct intel_display
> *display,
>=20
>  	ipqdepth =3D min(ipqdepthpch, display_bw_params->displayrtids /
> num_channels);
>  	/*
> +	 * Wa_16030862157
>  	 * clperchgroup =3D 4kpagespermempage * clperchperblock,
> -	 * clperchperblock =3D 8 / num_channels * interleave
> +	 * clperchperblock =3D max(8 / num_channels, 1) * interleave
> +	 *
> +	 * The 8 / num_channels truncating divide collapses to 0 for
> +	 * >8-channel configs (16-channel: 8 / 16 =3D 0); the max(..., 1) floor
> +	 * keeps clperchperblock >=3D 1 there while preserving the literal
> +	 * truncating divide for <=3D8-channel configs.
>  	 */
> -	clperchgroup =3D 4 * (8 / num_channels) * qi.deinterleave;
> +	clperchgroup =3D 4 * max(8 / num_channels, 1) * qi.deinterleave;
>=20
>  	display->bw.num_qgv_points =3D qi.num_qgv_points;
>  	display->bw.num_psf_gv_points =3D qi.num_psf_points; diff --git
> a/drivers/gpu/drm/i915/display/intel_dram.c
> b/drivers/gpu/drm/i915/display/intel_dram.c
> index f103f7cba018..df58effca785 100644
> --- a/drivers/gpu/drm/i915/display/intel_dram.c
> +++ b/drivers/gpu/drm/i915/display/intel_dram.c
> @@ -796,6 +796,17 @@ static int xelpdp_get_dram_info(struct intel_display
> *display, struct dram_info
>  	dram_info->num_qgv_points =3D
> REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
>  	/* PSF GV points not supported in D14+ */
>=20
> +	/*
> +	 * Wa_16030862157
> +	 * MEM_SS_INFO_GLOBAL populated-channel field is only 4 bits and
> +	 * cannot encode 16, so on Xe3p the BIOS programs the saturated field
> +	 * value (0xf) to indicate the fully-populated 16-channel config (4
> +	 * memory controllers x 4 channels). Interpret it as 16.
> +	 */
> +	if (DISPLAY_VER(display) >=3D 35 &&


Same here

I also think this patch series can be broken into two=20
1st patch which introduces the WA enum and function updating along with thi=
s change in dram
The 2nd patch updating the bw side of things.

Also the subject for 1st patch can be drm/i915/dram and 2nd patch can be dr=
m/i915/bw

Regards,
Suraj Kandpal

> +	    dram_info->num_channels =3D=3D
> REG_FIELD_MAX(MTL_N_OF_POPULATED_CH_MASK))
> +		dram_info->num_channels =3D 16;
> +
>  	if (DISPLAY_VER(display) >=3D 35)
>  		dram_info->ecc_impacting_de_bw =3D
> REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
>=20
> --
> 2.50.1

