Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIEAG7ld3WmadAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:18:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC28B3F37CE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C2610E260;
	Mon, 13 Apr 2026 21:18:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mA/8kLMP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8576A10E16E;
 Mon, 13 Apr 2026 21:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776115126; x=1807651126;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0tErF0UWgq1zhIwReIRhcfzJxi50nEb5DrJQdUOfV/c=;
 b=mA/8kLMPX+RHEvqxB9LAOh8SvCflVThC3K1TFqQDbZ9Qx1rMqS39Y9zG
 b9q578kokNwsl+3XyZCcwp+foDCAW3Od74Hx5+PahdypzcIokeSi/fV5x
 jkwjda/3BQvDB3rW5tVbnb2cNSAHJCOfB9ZpMqcJgFRbm8Vgb3AfLqwrq
 ibjLblOYmhYB09vynUsAe016fepIbKqXfeO37CsHi9opp5k/yjGo+/qUm
 T4FfWkaaDW9KTZL+mIHIMKlqRjOt2x6Nv1Hl6+pd4O88uH3bMVqM56/4P
 RS1uFS6FP6l4He4HUFcgvsCUB+vQcczbhchGs83N7/RNZB0xsdN8890Vl A==;
X-CSE-ConnectionGUID: cykYTqBHSjmUcFxgoisMSQ==
X-CSE-MsgGUID: mLv1trhsQBe3oOiELKquxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76092928"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="76092928"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:18:45 -0700
X-CSE-ConnectionGUID: R11YZamASPWdjljgXDGWAg==
X-CSE-MsgGUID: X5eQqNfNTUuyu0tm2EsN4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="226732853"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:18:45 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:18:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:18:44 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:18:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FWhGLN3oG+ETGGg/Y35ZtptWVc5vXqI8VOCf5iLrBq9xFl6z4HfXYDo+HXRKkudg8wxRaJ5udoeWMHoACcVI8BG9GmkiAe53R3G2VMJ9RAuO/zdj/AHKgAOMRDKPV/Jb63zlVVs7ljE1YxuZi+5xJkq5bd8TFXzucR4w2N0YcY32zRgzxRSj7G+lx39bDBaY4TR4v1CP6DV6SP8lHiUy1MwBpQRxHXo+xJOhINIQhNBFl3Z7eAi/UE3zvOWoOZTeyxL6GvKdKTRTa/GNc/jpo614Zz9SQc5yKnlMFQcEh9ZQddyCBlGtEoY3BicfCPP9tSqTTw93fjlz7m0Ss39vKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBLKH2F26JlnHMmgwMZ9vjipAQYDDwuyBAC9s/kjqvo=;
 b=kg5bQpYneAdbeC/ne0LskfGkx9ovzrKvixfzHj9vDvJxVf0MmkbFBz9lIBMNPRmyOoEAitww4Y3ApQjXPFH6oU8F+Z2UP9nAgCOuocCunbju6NyHXsY769JN5u2GTFMnY0cuVAGSGlSt6bLcONh/H3XQTsqbBxoYv4hiUnGOGl6a55OTJv6nPQypntpCVZlV8uBSLNOYCd+K5lhcA/lAoLDr+79KckMBGPZam9gS50ySY+EoAfuswUSb+bUAeONFQeYqNtrTAOnkNwfAmbc2GmAdxXvyM1Sh6+eBdbsm6lZJBJv6Duo/3qUk0O/Zp0EVw/8VGebdrRIWLAC1LqekKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.46; Mon, 13 Apr
 2026 21:18:36 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:18:36 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 07/19] drm/i915/display: Add helper to check DC3CO support
Thread-Topic: [PATCH 07/19] drm/i915/display: Add helper to check DC3CO support
Thread-Index: AQHcvUQs8mxUo12J1EqdZKmjHc/wBbXdm4HA
Date: Mon, 13 Apr 2026 21:18:36 +0000
Message-ID: <DM4PR11MB636081E10E13CCCF2D5C5981F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-8-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-8-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5899:EE_
x-ms-office365-filtering-correlation-id: d442a871-dede-4668-5480-08de99a239c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: aBpqRalnU4a68m7EZ7WAjcws+zu4Q161J9Qyn+nZHlqf5+6lp4uH32xwdWEdYfpiwH9whGP8xsW+cGKz03OD7c0gNElIWAe+P5wPX3OnfyBceQRg8p3kbl92u7jRvwtaonNaVuZnprtYtmQOBHeo3pZKqFnee2F0TelJcYly9Lly5oK0P6HIweau2Sps8LPJEFcBbEDPWH7c8jr7qvpf/WiIXM/Hbn42iu0M45dhkRcXC7tEpoKp6i7/ceaf3Fe3watzAP5nHw4Y0rsAlwbpxQ5GkiM20fPLCsInwK/Bj9vulR9z1jzcu5M7DTEmTWmex9oBJ7fKOaquRoc5cck4UqkN7jyL5H/MmzgLqGGRyoFti8by3GQlXJ8x+bdy0XsmmKhSooApnpNYo/4bjSejT0ln98ehxz++UeiMuQPOYLJStNt9EelTjYCFq4muoLSPv41I7x0T8X/CTFA2dysEpsb7HIB+4PnUBrIkOtBXE497tr2GRIfLETXrAvvhLHeRcgXiRaNIJGwRHvWTP8tXvI9R1fCOTVtScNPsrjV2L3EIySMomjfUY3o8bYnoBrwvgLhdHrPxTfrXOubCpzGldDDDyDVVhLL5YBA2LAEZuNwr9SVJuPLHTZ9J14Go5w4MK0N+yjKjJsGdieBYZYRNzlSETx7rK9Kr89RCtdMOJUFJ5bJtJq2N1jrFqyFDxiAIIZI6IRUxSYkYkUfwGVmFWx1CU4tsPQpRs9j7vLoKlzNO0DQlJT1Uld1yrKaLFK9lpvF9knfp43Y/b2j1zX38ZPEHVRFztKzggVZNdCFtuh8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WN9SmpNLTySh3Nm58SPukme66JvlGx3uKeEe60cnexgSsQXF1nUWx87Mn6Tz?=
 =?us-ascii?Q?5nHwG3PgxsdGnwNrO80y6q0s+VMx2T8lHjpo8t07LTcFI809X6PU/5YVpntk?=
 =?us-ascii?Q?RDu1xTe9/VMzsdw4Iu8EwVGxe/apdCwP2+zV0DVAS04Oyip3oLOoVJvFJHOX?=
 =?us-ascii?Q?TdGbVOHBAJLSIijyk4J9kywYT5VuIC/M+wbxL7ql1vXcssv2GAQYwYMEm0S1?=
 =?us-ascii?Q?aaKH/px+/FSC+WA/r4TFmtHWrtIA2G3Qqjsp9q7NsPudmgfgFH8Le65SoOlN?=
 =?us-ascii?Q?TECLioM2ogYd0tS/lZyz4VNrDspbVULDZbOBoaA/2QxB908dt2nw0i1O7q3F?=
 =?us-ascii?Q?oFkPGr3RsEf/ApAyfb4TQPNsZ3wlWlrhwmE88saIJ9vfRT3Hfr66aRyi8Y2i?=
 =?us-ascii?Q?ktwvzphR0Qup8sjYfsXLxNKIwA8gl0fZH0p8qt+iE3WhaLr/SOJB8xHOixBj?=
 =?us-ascii?Q?JNgg7cxf1ZEDkRXH4iFOcBG67+oB6vZlkTWbA+ad6whRlO9o7vr0TEVWAmce?=
 =?us-ascii?Q?jc5uZAKY60CpLdQ4+DmSpMKhWzYVLHao5B1f7FsfwiuA9ZncDFhqpVzv3FKq?=
 =?us-ascii?Q?JBfowxXR9HlqBg3dLQ47fxLvo3ry0NHLmWEM2S5P0ERNBrBkDN6SI8muUhxG?=
 =?us-ascii?Q?nZEKlxo0EnQxBSHNRmD8lul/ToGXLr0tKhAY8SVHT2JCpbMN78iy3AV8ASGb?=
 =?us-ascii?Q?4esZKmrB0ku/NLfOiJOu+C09TLiD0Q3Drfxr7KwNH362nGa7WW+dOc6x7VDK?=
 =?us-ascii?Q?RvM+xpJ64dyyhaqh7Uruyu6HNcqA/8eyIx/Gw0Tr242lrmX4JjQfsJxJjAag?=
 =?us-ascii?Q?6b0FV++7RainPYtFmEGHL13Efzpo57DZF8zJOYN03DCZ1R+NtlloEVO1TLln?=
 =?us-ascii?Q?/gjAsHapYaHAlXCW1lunvGpNnFpjBQSTbsW7IyzYMehzSAJLXHUHCFXgB4Pm?=
 =?us-ascii?Q?+qiMRs2x5YAW6SsmLwFYdnpapwMtzgRGftcxT5r6vkRV+IRaYvGkXiLJ5jQY?=
 =?us-ascii?Q?RuJ9ThGhrOYQQS61HlQM8h0KLyalmx7mXV5vSFCkN3an5iW88XmPbNgXMroY?=
 =?us-ascii?Q?xY9bzoPxD53jV1wia+IT8ver5mUCeLf6OI1d+VuVpdyHC318B0CFchiif+nL?=
 =?us-ascii?Q?n81VvItdI4oI5NI5T6as42lgUiiq/trzc/hL1vs3CdwAJ1OKc5R6L3+dvasU?=
 =?us-ascii?Q?tJi4Qvh12KKGijRt8nDcWhlRTyoNVKLY1488qBH6BblLOQPCG+SgGVjRkWXj?=
 =?us-ascii?Q?M6u+XDRmnuuYZ9gyzKMWm0UGjCyiLRJ8xGSIP1mVNWMrbLgTjlQ6dvigcFwQ?=
 =?us-ascii?Q?pvTL2jPIzCxPlNtVHo45mtt5yTbf2Znt3FHbqfuB/X3qjuaXci9Wx4W9R0PC?=
 =?us-ascii?Q?3kX+boI2/J0rMlrzS3iMTi4ehyxUDfY+OL3teYd7/c3ThmgafIEx/YKrIG7E?=
 =?us-ascii?Q?IBW+/7R+IL8DIIefUmJnGTCtpW2alAJ6dNTbhsz3UTLJPZWH1O9LLBEa7vBw?=
 =?us-ascii?Q?iGwXonnJJh38DLqihunH8nyIDpew3t/iBAB8+LAdN+83F/lCNW6+kdXtNSjo?=
 =?us-ascii?Q?xTqDvT1GuCzJPbNIGv/nAJ8dRfeqSmZ1QABfScleL/CwgreQ6K4Hq2fGYkmU?=
 =?us-ascii?Q?PPaKSoamucBrBAhHxTaqZZJIsamJRK+ZmxIvfrcfjOuCRrBsYP5IrT0c1GxJ?=
 =?us-ascii?Q?TVyGXR7T+rffj51k6QltW8V1rqf0luhxAZKEGdiCUvi7rPC5coDtD4HtfV3a?=
 =?us-ascii?Q?ZIpzE9iw8w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kEFpafKdRm1baR+1Uslvw086E1Dp+qJdrhAiPTtNJv4zVX+BxcF5HVaurmL9zMPtGV0lHkwNKtMWgsg1HUKPBoGbuJDUWLivp9ZUUvY73cI031TFf+O4XIiMhdfHMBebV/fb3sw5oLWicVS0GSV0WnxWjAST0j/qo3gUZh9TcXmhwbpy172VjLtX90Tb6yWGvUXIcu5KePeMhIXfhkSKv531JPZ1ydMYPtH0L7ZrYE/1V2au3orh9MVtokQSDYx7l8oIJKu6TgjQ2WJYj81Z1pwZAprjhDDsz046UtWpGDQoB6h+mkbHRPsUFqTbI4XP0m6fbZGxe94m1dmJyqZnaA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d442a871-dede-4668-5480-08de99a239c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:18:36.5727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WssetYeiytKsng1oOsIEqwux+hPsdlW9rLzFL+KFNRvFBAXv2V4k0q4LQc/qvcp3cMwu+u8tpzwX/EWppzZpmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5899
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: CC28B3F37CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 07/19] drm/i915/display: Add helper to check DC3CO suppor=
t
>=20
> Add a helper to query DC3CO support from allowed_dc_mask.

Change looks good but I feel this can be squashed with some earlier patches=
.

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++++
> drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 12967db27c8d..a3b0c8ad8bb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -365,6 +365,13 @@ u32 intel_display_power_get_current_dc_state(struct
> intel_display *display)
>  	return current_dc_state;
>  }
>=20
> +bool intel_display_power_dc3co_supported(struct intel_display *display)
> +{
> +	struct i915_power_domains *power_domains =3D &display->power.domains;
> +
> +	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D
> +DC_STATE_EN_UPTO_DC3CO; }
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)  { diff
> --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 3fb45154864e..f57ce99a6039 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -201,6 +201,7 @@ void intel_display_power_resume(struct intel_display
> *display);  void intel_display_power_set_target_dc_state(struct intel_dis=
play
> *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *displ=
ay);
> +bool intel_display_power_dc3co_supported(struct intel_display
> +*display);
>=20
>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain domain);
> --
> 2.43.0

