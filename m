Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PvML/8n1GkwrwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:39:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A52B3A796B
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:39:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E0010E2B7;
	Mon,  6 Apr 2026 21:39:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LolsIQmm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4A310E2B7;
 Mon,  6 Apr 2026 21:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775511549; x=1807047549;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bF+Xhezuy0oxIE4m1J1yiZJYzIgaTTdVU7Tg8ZfeZL0=;
 b=LolsIQmmWCJsJVueAfbqRahxEf0uRsAYQBDm5GTdCWPo42ZFy4vilUmI
 Sgwg6BmvVvRTtsZ5lXaFUCHWGsVXr0W4Hqm5b/6ZDxEYxFgehUv4ItogN
 Nd6TisXauLfmkpRaCqb/bHY5V03W6X7fLg52Bs5R6Y0rbilYGc+uRZEpm
 VvkYkeoQIbptz6lVqP42n6kHZ+mSGLQUMru4RkyBYgoKz2G4nnqMgf53I
 R5GNIAlraX/dTtFvSeGlY37TIaRrH5LuBPQgC7h4YRVg4O9JBxYBfj1Cs
 I8PttO5vHUOB1zGIjhFVoyyMg8g/8HLXPQbw0jsK0+UjZGcuxo5h6oiW5 g==;
X-CSE-ConnectionGUID: Z6B3rgkAS1KhV4yp9c3xdw==
X-CSE-MsgGUID: 8Rli5Mc4QrWgbbbqyIv/Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87091481"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="87091481"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 14:39:08 -0700
X-CSE-ConnectionGUID: b/J5k9/zQduGzZbWn1s16g==
X-CSE-MsgGUID: uhn9UMy/TuqtUHudNT3GTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="223679702"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 14:39:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 14:39:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 14:39:07 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 14:39:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+lUo0Yh3nGNQdErmRNVozaNXHonfNoRa5Y8Ll2O9m8Ej+ZdsoOqW738iGRsyGlUWUvuRaGiPFSSmQUTIrCchabSThXGWK2jhDxwTFGLWAUK2SjYG5Bhg/IeoiMkXKCutNG6B+1NXRYGLpEp9YIpQBsBKW9whKXh0ZbnKE544tPWZwCPTl/8UgFxQ4Q5wdp4KwqQd4bUqaTcPLpaKRx7NzIOAP7Hksos++mpv7TjS1nvCMQb7sxRL/c98GQt83XWS7m0N1oddyiStCj1MTxdU/H1PFHebwirrQOfyRESpyKZoLhB7/C1OACdIIzpKiB8dK8PGSFM9YVw963HvGfGew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GS5cwOZDbLM+786CYnsdI+Qmk6TYy6IyXs9lhpOolM0=;
 b=Hng1zcGfGbNwcBRV3LqYDjE0DwozRKeBeZ0O6mhgGUJ5w/zDnSbokBL5vWurgZUmTO3VB+SVaigAsPApIG1t6vKXxJieuq5qdFWg0hP8zKvxfloP2pwY0cDPatExAjvNRFvyrA7j9tQfo+AZnYj/RG3xK2czty58OnIjLmzstXXbxPkCocjTDW07VjcgnCgiO3KjAv4/aXEosYgcfT/S3JHNpic9SUnt1bdcCxKLo8HHAtJchZvIKfG8VeYlPuKquiFeTvg9tGy78IafmrqWj/pF6xcLGTEkxDmJanPoMqgMOKQn9XoyRmbqiXa2spLpop9FCTYtDtbK4BH28Es0yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB5824.namprd11.prod.outlook.com (2603:10b6:303:187::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Mon, 6 Apr
 2026 21:39:05 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 21:39:05 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 11/12] drm/i915/cmtg: set dc3co_enable flag for
 lobf/psr2/pr-alpm
Thread-Topic: [PATCH v3 11/12] drm/i915/cmtg: set dc3co_enable flag for
 lobf/psr2/pr-alpm
Thread-Index: AQHcswMRHhQw1qCj6EKK2RbK9MzKI7XStUiA
Date: Mon, 6 Apr 2026 21:39:05 +0000
Message-ID: <DM4PR11MB63603D1DFA924294A2913771F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-12-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-12-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB5824:EE_
x-ms-office365-filtering-correlation-id: 783fc018-9e5f-401d-d473-08de9424ed6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 57uFxen/lCeDi+SMBJX7WgLrPZWqz3emSc1Wj4SXqSfAJtY4u/viTqxK8NEk6XusQEpjB6M1Durh8L21lXMJF0D6db3sKpk6hqwtKiCBhp9af0wYkpHkK11p9nrOf+xuCbHj9T/QSubxcBOF2Ccd1dlF/eqOwiSdpwXdMharK5y6lgoHzJA0zhc6o+D4lIwwgJFdPfbpoE72z4dHuQp1flQcw0wKnJBoGGnj2yhCWc1aI2bkHLLl82YWtY3C9Hq3ZQaJdhRQlpkHvmOLB3kWYdWwrvatTSjCLfyvYjoBKOqPMiiLn/JzaIJvWok3y8qqFNr4VhRHy2ERXgX1WC8z3xti7e7bQomKvTzbUKQwF0hfc8ZUkMK9DWPmzRd0NbepisIeZhhhoChT0XDU0SqRQHWnIe2bsd0dLGZPTPhwQmDdbfjEcdI9oTBH/+DPrBF/cu6dvc8BhASeb8rlWWlMy4ceE5SF+/bn7BHcKV0iPYdL1vXf/g2rARjU37Fmhw9spY9cceT+PGe5VvTVCbcW6/2hJNb/3r85VXfEuQgitX5//+kgHRZXG3MRO3Bn3LPuvICRMpMYVVigdF/+pyF8s3VjHNLzKlO1PYnjiBrAHypeDXEbnsxmK5SjypV69cLvyYRBhoXVRHXhB+blPfHSdKn2PF0hHDbgngRIjzMcOTjrLEqeccsO4oHaDQ3A84dGY6TGIadfA4IvNqC2R/uHtAyVb7c73cZirsvfdp4CdnCbK/Ar/ndDseSw6htg1z61rHiW4cotq/qXZyFOhgq/0ecXmF2BTYw0w8wJAwnuxv8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KquGl2WZHibPZidpiNBO+n3IbOB3fySV6/mtd2A6qHGXlEI2JWkJkD6VLsdm?=
 =?us-ascii?Q?9RL9g9LpI3PD96cNowRuwGN89qMpiwNSNHpXqu7luBBuHwUxdyNFyEK40sVt?=
 =?us-ascii?Q?r8qRHWW2HyXaoU3LALL3MivWhc4X3B/PK9zteQa8jSk2JlMceielwNpodh4Y?=
 =?us-ascii?Q?QTBY7WbwaQiRntpHOtxmcR/mMrGs95+X2iR/l25+t1or+6kvf/y6E/itw2N5?=
 =?us-ascii?Q?n6CjLhKTc9UiqDDE/EBzbC61T5cztJglXuMaFjtXj76QtcZFZp8X63YEjogd?=
 =?us-ascii?Q?xRKUBflxj6U7nvCJvQA/6sCW0dDWkyBNmQkr6UPmJvQ7nTwwkqUHtKoPuVqM?=
 =?us-ascii?Q?2Mi2z5Gvopv4WDmly2/CapGFjauoXrbk6tka9rjliJ902Nolx3gOpoirHZqv?=
 =?us-ascii?Q?zwOSH1aj/B7Y8BGFloS9GE+6tCmw4kRQ0BLVySaSMMq+g1vuoXw/STA+rdrr?=
 =?us-ascii?Q?xSMojg8HnrwhwRw7UgyRVkqdkLQIw8TZ5swpPiFJopNo1AAt/Vb2qm6lW0W5?=
 =?us-ascii?Q?DTonUBCQDp/0PyhZhckukWnVuLE9D/bvmA6ymmNgv9kHx94/WylnZwSBFQ86?=
 =?us-ascii?Q?X1d08sikO15nAq5FqZKlRkl7eC2jZpL4c8ToSKoL0yCtgrn/B1LY5tI9jGzY?=
 =?us-ascii?Q?j0fwTgllEgSlO4xg7dVpw0n3Qs4ooINmVJtYEsRT96OpvtkCNZmynqWeBudU?=
 =?us-ascii?Q?ZeOytsvztG0PR3xrTtFzcHX47+VZ10zwK8f9nq48SktpTQZOxZP6+SNP5XFZ?=
 =?us-ascii?Q?O4YIAhfI3RJKxpSnNaciWjroubkmk43ckaYapKMlEe6jzMdNsYsur1BMiF9d?=
 =?us-ascii?Q?IAFLDY0yc4TSw0TOuOmqDefkiYKwaT38JxDmVcvf0bxm2cAiLQuLJsgjEXqP?=
 =?us-ascii?Q?1/kImyx+wTMywf02AuvFJIKjJmvCObcVw5RSmAsWYuadl9PP1XBW73/OEYXK?=
 =?us-ascii?Q?3L6Z94pkOyCSGab39C9gESNGX+uSVu7luHgYKu2Nbq1V/hZOdKPxJLYlNaMy?=
 =?us-ascii?Q?bhTmEFPVAGoEMrAWKfdngq/oeLObCf5Lx627h27fs+GAgSSohfXKZoqhdsF3?=
 =?us-ascii?Q?zy/ayU7UZCQMRRfh6uf0E7hZbmlVRtL1mJzATLnA/GK/+7nsJ/4/dclpaLHd?=
 =?us-ascii?Q?fwHEgRRrj9JcSGokf+LuzQhb6lE6oLxUp/2TlKK5/NdqxTsMMjmQ2ta5gg3x?=
 =?us-ascii?Q?Zl4Jw1bmhItqrJqRVo2D/oqv2rXqbyeJkm1rMElxgcpnULPerrzw1Su2meTG?=
 =?us-ascii?Q?/1Q8WmZMqTO8hWPZt3QtSvx1k/qGq+uvpSWoDgR67KrNFXvD7Xr71aX4DFG4?=
 =?us-ascii?Q?MHnvZ2Isvl0wohhSJNTF3Gf+YLkWeD/sebtaNWAIPFt8Z5BhEme09AKpLu0W?=
 =?us-ascii?Q?75pXFudOcmU5zhCQFMsitEr/LokyC+5tTtJB82IQGP9wHyPFmfH/sskY2Pgp?=
 =?us-ascii?Q?RB3smJrPk6BdSaT8cTdDrscS/jKJB4YfWUNzxa05SCxShwbWKCeto+NaCooa?=
 =?us-ascii?Q?Ihs8qYob6hRf3b6iNIdccE1JvXDyIo7nyx0Gj4O9uEOxa0Pmuu57JDuyrCrH?=
 =?us-ascii?Q?73DZuQX9NPghbrlpvIWxXKMDYWdUZWBKbP+6iXSJi3gFM9UiWRvoEyq20Xzk?=
 =?us-ascii?Q?PaXf62A/Q4rjTR1xyt0+CS9EJIiVE5EhdDIcLfniMlV97/9S6SB1W1dIGfs7?=
 =?us-ascii?Q?FAd7mgadn3+afrqJeTWnf8/1x9ZncrDaj/SqpgZL9nCanF56hdRZXmeoBGWW?=
 =?us-ascii?Q?tEf4mk6ivw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NR/AlGgl774HrfvDbSfMifk/l9H77UDHNyPcptARtNf2Rwr63pBuSVTcTpYCzGabBuVYZgNdmUfzhIK99t/iaKalW2mQujAPQq2mzRDn1UuBAQm5Jz8HmTdTDiq/l7nb9Jzs/xCckknHdPdtEub/x2xrzIqviZ51LHM295tJgzCAoUp/rFjlDJAeCt2uriXjqxQoXmKcOPfuj/sOF7YISQTCWT56uhHC8fp2568B66TO32ml2ZdUsMkF5Ly3TsFoRQVzy3ZhDApwUjjF5nb8ntSWyWKdOrOTX1s6NUct2eOUV2VHrqk+A9idheT2pV83B1lvYLRFz9TRvBn8zeV7Yg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 783fc018-9e5f-401d-d473-08de9424ed6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 21:39:05.5685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: prR5jDqVFd8To8LfE1j+Hutr7agN62AXSFb+h/CaodgtEHGPRcUnKZfx57ig1yKP1EIkypYN5Tr17FtxkKyMHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5824
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2A52B3A796B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 11/12] drm/i915/cmtg: set dc3co_enable flag for lobf/p=
sr2/pr-
> alpm
>=20
> Set the flag in specific scenarios such as LOBF/PSR2/PR-ALPM, where DC3CO
> enablement will be targeted, allowing CMTG to be programmed.
> DC3CO enablement will be implemented in a separate patch series.

Yeah, this should be done once DC3Co changes are also in place.
Plan merge accordingly.

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbb5e2f9c241..53982d1e39dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7327,6 +7327,7 @@ int intel_dp_compute_config_late(struct intel_encod=
er
> *encoder,
>  				 struct intel_crtc_state *crtc_state,
>  				 struct drm_connector_state *conn_state)  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	int ret;
>=20
> @@ -7338,6 +7339,13 @@ int intel_dp_compute_config_late(struct intel_enco=
der
> *encoder,
>=20
>  	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
>=20
> +	if (HAS_DC3CO(display) && intel_dp_is_edp(intel_dp) &&
> +	    (crtc_state->has_lobf || crtc_state->has_sel_update ||
> +	     crtc_state->has_panel_replay))
> +		crtc_state->dc3co.enable =3D true;
> +	else
> +		crtc_state->dc3co.enable =3D false;
> +
>  	return 0;
>  }
>=20
> --
> 2.29.0

