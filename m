Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EYwE9Mo1GlTrwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:42:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A89C63A7993
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD6010E2BE;
	Mon,  6 Apr 2026 21:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bso4dci2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0835610E2BE;
 Mon,  6 Apr 2026 21:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775511759; x=1807047759;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5gieqYRmxhLWKb3feH+VuzG7f2McIf18b+eVSWp7USk=;
 b=bso4dci2j/q/KNF86eeCyx1UuH8tdp8AQly2YN3RNvula3Zy1UN6Q6Tt
 ZM5gAubiUQHwKeJOQk6ksxgwFzqD2I74F0MJ89jXRwfyegRNb2v4fUyXZ
 t2ULIP/Nn7Bbd3yCbOJ9DROjNrAIq4pv7GTYACILrzwVJY+XpfVnAx4Af
 /PrWyLEA4POBlY6PrV2VT9jKPmAfiVJXLlsUotJGUcm5w6YhdCqcuPm4/
 3TJUqbaF7CwBc8YKYw43d2xiNhGuPg5DVavxq7zFkg6yK88yK/VfwYyXS
 pWxYBxtam3RgT7xcT5GutPRq4O+jB+4wODHODASFWgc1yxIskBT00NRO/ A==;
X-CSE-ConnectionGUID: e45IxQE+RleV2KuuQXKn7w==
X-CSE-MsgGUID: dkwyMRVvRna2GmN94Qblig==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76362408"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="76362408"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 14:42:21 -0700
X-CSE-ConnectionGUID: JtauWgwhQa650hrU5olJMQ==
X-CSE-MsgGUID: nYz9tKISTFyG/NqKu2pxNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="227147630"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 14:42:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 14:42:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 14:42:20 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 14:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y4ScVjMnE7dT2/lKwAXYV0Yzzeg25HuyHlR4q6S5V+75kxz6SAeX4c3aWeHH51DlAO+YXVYXw9yl8V5krW/M7YJ7vKDluWCwOGR/n0cO1W1HVat7b4rD4p3u3zTJ7i3RGuLJkgr1/bdOO6hb3Uv+K/TStyg0EZZM7B2w/Vegchcdjistt+JF7Jtnp5T1qqttnJ1fa4qoxaaDHYKfjlnh7UBFoSZbDw0ABWhSDamd8p3TJBdWw4sLsZigEm8e3tFmX6Z3cUHtbqqDBsauFcNwV1fOmarJndF4l5uwkUIlcebTbUnaP2ZiRDEqpK8qL9tIx2mOW9Z7UauPpLH1LmeybA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=17Nei+myiWioniETCC0ZyB+zsIiKS7A4dNiesgOUK/c=;
 b=HRrIBU+cxGapagzRmw1jCzHQQJKsRXiMSp1b/WrdQ7KgN61oGUab71hxq46JHVNNzMHl94zIJgNAe4onrJ0FpzkOsAagZBf5+WKNPj6CG4eVxrDBDdyxXfTgfvg4pR9ADWD0DpTXqTiGCozHityjPghMkj51ilao8pY2FrUvfP0vZUGHwbG8OObPSXJFZGmqFIEDDjWEsmC4BzCDq1a0xeRUXWFm/5pv7+aVqU+lXdLqR1DCEPVWFZ5QsFo9hzitnZdnDzZRmzKcLvPjks24G/AJit9ZhF7ucCwIVlncy/xqFwk7K21b6MR5XQeSgKi4tYaHimticxOv/5a/CdLsxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PHXPR11MB9661.namprd11.prod.outlook.com (2603:10b6:510:3cd::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.33; Mon, 6 Apr 2026 21:42:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 21:42:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 12/12] drm/i915/cmtg: disable CMTG if dc3co entry
 condition not met
Thread-Topic: [PATCH v3 12/12] drm/i915/cmtg: disable CMTG if dc3co entry
 condition not met
Thread-Index: AQHcswMae1dcB6Twz0u+KREyXJgt87XSteZQ
Date: Mon, 6 Apr 2026 21:42:13 +0000
Message-ID: <DM4PR11MB6360785828C631BCDF03C229F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-13-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-13-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PHXPR11MB9661:EE_
x-ms-office365-filtering-correlation-id: d45da2e2-89da-4f8c-afdb-08de94255d33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: +liGqZdq9uLpGmGUD501nX7HKNYH9QADmwn7Xf05JW7Bp9NMtnZaZe9BqkSxEI+xQV/7oGb9uynM5uwBWRv0STw+NQ86JCboWbD4t02vlftWyjIA677QqQyxw3qoAm+itKHD7fYZ8JzLd+mhnW/5v0tgBH0Q1khMHLeHE8C64BIfV7va+bn5SLSDBVGgyGqGFc8mGVQty368B25VhTqhAUD8bxIMT1NHwGEIx0v8tnGQczqgJKNrelwRO4GticJbwj9ko+LLcSmeJNVFphCkwK8epU89ZiZ20MJbYDZG/CxryVPpSCLbWUhBxBVkSOjURjVTfQ6+pTEX6al91GYKcxvvnxVhxhAh3lmS+j2BDB98RGEFqjSZMArmVNtBIPsZx4/kYLqzNwr+zn7E8BxJCvQm/mTa4Lqy0nIiGWWvV5qEjknv7xRnrZ4rCjODsFrf9GpI9H22kyjVEVch9y5HM9U8qik/dDPf5xhfj1kgysDRt+svemNQPbDhS1WZHViof/3lbKPBgHXATjJ5fo6AfaV5Ez8s/x/RDkkH/icTj3GuEpQe6Wju50i0bkXRYXqAfkDN6Q0v7eExfsHCI3KfoxtsVezlAktU+3elD1NZaaO2H64XfpTiYq/Ld79FK4Hl1Wsc0i2vhgIoQphmBFnHnUHgZOnHApI2YscHTPTq23QIVT0ohlE9hK3aouuAvo0DkQh34cpiuJs+aYRzOUH9h/S7r/CuDCkYL8+oSz1FZ997IBrV1JTNM70q6/nYheRWm/l/QKZRap2STCUHF6zf3oog+UiDFC0w0yu0j6mXvKM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QqQnVP0CzCA5YdJpAlmlxoxL2HmXc5hrPAya/DydmcAdib3cIvw/qE38vQOa?=
 =?us-ascii?Q?C9fYpD/RG6kTDPF5X4/XTBFyh5+lAOC/OcR5lKe7nKjnVNEv0+j0yAUspoZl?=
 =?us-ascii?Q?fOy9bna1UO/8w0AeEDgfIp/jSEGg78a9lOHMfW2rSjbtVdkvwE8qDphbly43?=
 =?us-ascii?Q?c30Ff3Llnw/ViFso2Z3UHSyecWsKx0VsBIvMktTJWmVn0B+E3L9FxsY8xe8S?=
 =?us-ascii?Q?8Ah82DEFL5ZtZ2+CeMr2767YcJfoq7xm4/gF5akAiQGNzoE5suro+EmvwQKL?=
 =?us-ascii?Q?ha3F4BmN8zs4fYBXL1GQU8A285VbZGv4BCOsr6BTNQvB3uFjKLE79BJlbEWT?=
 =?us-ascii?Q?ONx+8KlpgtrmY0XR6ee7rNCbr5FyylaXRH7DwEKJmZDmJOrLTxwQAbWpFchq?=
 =?us-ascii?Q?6+w8lo+5sQGuZZxqA2jW1RxOfAfj5Z0zQFzxSnYAWX3uTLXu7SQogJx7HFCA?=
 =?us-ascii?Q?/761NXNfaRGyzWUmaN5u2lh143f7N+Qs6uGsSKkH6trt7zNiGeWZq+anN+pQ?=
 =?us-ascii?Q?iwCGLYKWEBhwaxxtM1MWclqGEXLHueYfS+2oVFMb4DfIN37e9RN4sYzFcNyf?=
 =?us-ascii?Q?6aB0s2J9bOeZXtNOYr44qSJLE7MkyGy00sSfMwIeKwk56UwoFY6R2BBCJTFq?=
 =?us-ascii?Q?9g1nxj8YkKmQrz/t3JYFbCiHUUvupzPdJjSMcBm05EPg+LzptlbTypmlYSBD?=
 =?us-ascii?Q?UNfVJjk78q7OZFnDqr8Ufie3FOcq7zz0tBznaEo0tTk9D9ijH1pv2RQFMWLe?=
 =?us-ascii?Q?64Tss0zSSaVT1u0vHvSvYgAiFTC8JOZgHqyy2drlkxq97Q9kxINKfcgCS9G5?=
 =?us-ascii?Q?YMXqb54Ntbu0ZJsXY/B3W9kQQPpqBEOOLyc2hbC65zaoApCCDCdF2OikTWD3?=
 =?us-ascii?Q?9ok4Qm1l+NLyypV1A4ppwS1DBvdGH5kEDmmQ7zsWikCLINN+x2oZUfdEFrvw?=
 =?us-ascii?Q?aubFRu3vDcM3evQlK2o5C4Q/SpGv0mqP780EoD9VPXknjkgWhDYaEQ59vV42?=
 =?us-ascii?Q?MvY8kGGgqGRPx6sgs8+7eGXsDg1n1i/7nEosbKsjDDk3LP5nz8qGmo8w7IxD?=
 =?us-ascii?Q?8wrAvmjDeqYrfGuT17Zx+jsVN7k7qYbZOwNI2A5utmwMHfxNBLnFcEZaeDnI?=
 =?us-ascii?Q?n5ozDZ+2e+YR/Apv8qBLCiIxLhUiEyMbBdq09PWIZ6iFj1g4JUrqehE+AS3j?=
 =?us-ascii?Q?pE8rv5LUIC6Q42BEotaP5pdALjx4i+zfJFpUMuc+aXmuHBzXcQPTyFFXhGhn?=
 =?us-ascii?Q?CrJhCZYcH7NDtkOZtuwlZ3H0dNzul5LoxllTIeMXGJEpngROImAdpnAbeZvb?=
 =?us-ascii?Q?wslqIY/IFywRSS0GY9mICcuIpYlBmFF5xusjO6feB0XGdlpvR55kjbqR721i?=
 =?us-ascii?Q?oc0kpugPnQZvhf60DPOIxli7Uvrzm1t1LYfHtMxHPiGngwQP16+N26mrkGNC?=
 =?us-ascii?Q?mJSeftcdp3KyM3NyzT3CrdnIFr0BLgoTPopt1n9akaUCtFuNwWGYP6VAjisT?=
 =?us-ascii?Q?y0Ixz/SM40UcK48oeTNQUtCA8MZZuXl9SFSQytMihZ0V9t3MKg8J5IQFVMrg?=
 =?us-ascii?Q?IKwSkQ9CIZ8p+EAQJ/y67/rYK94HOVtcabpYIQB/mKx/H3vuRMPBR+cPglwW?=
 =?us-ascii?Q?qsHbBRdy7Hv+AyjppzDMbSB3qkAFMYoAni5yFWE74j4Ppj5E5nuFgm8BEIzE?=
 =?us-ascii?Q?3VgAdnUSSsM7jUMrbn/rrjLhYzybmZukfR9HfLTEglejsvO0eSLCLpSQWdg+?=
 =?us-ascii?Q?P6gLLYfV4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DIOqMsniqzi5Hw7bWUwekFCJr0OU3iTnpH8hpcc3mer9YZZemSLsSI7i/EgdIVMbNiYTC+kroq8FK7gdST9dJ/TIxPKnGgpvi4EOfPalS8o/ZO2nlLuXC8vbJoWC7lKLy+au+yMiUk7jkUmejGhlHKPcxefFo4i+g2S7xpKELSTI719jzGsfFAs2tPfHLTUersJNYjI89i+YBMKHzBQDMpgMPgEgpH1rh9d6HWBl0Zi+iumB3ew29DAz+p2ZuExJupCBCSr+MxjRXseuI64auPtwqhFJXdxSasa6RzPQ1sTEqlBclB1s6gzoAaw2duSTW99ZqYXMGwCLWDNxInvhBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d45da2e2-89da-4f8c-afdb-08de94255d33
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 21:42:13.1412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ytTfmbe9Wr7MP+cnl0uKgYNSJ65AFyX5vi6oPaBJe6FukstaYJe8TD+MC4fq95AOxaLlpQjY0VOWHtBFTIuFrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PHXPR11MB9661
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
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
X-Rspamd-Queue-Id: A89C63A7993
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
> Subject: [PATCH v3 12/12] drm/i915/cmtg: disable CMTG if dc3co entry cond=
ition
> not met
>=20
> DC3co entry condition can change dymamically and disable CMTG if entry
> condition is not met for DC3co.

Its not entry condition, but when DC3Co is disabled due to relevant reasons=
.
Update the commit message accordingly.

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 6febf569889f..f20d5ebe06ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1029,6 +1029,15 @@ static bool intel_crtc_lobf_disabling(const struct
> intel_crtc_state *old_crtc_st
>  		 (new_crtc_state->update_lrr || new_crtc_state->update_m_n));  }
>=20
> +static bool intel_crtc_dc3co_disabling(const struct intel_crtc_state
> *old_crtc_state,
> +				       const struct intel_crtc_state *new_crtc_state)
> {
> +	if (!old_crtc_state->hw.active)
> +		return false;
> +
> +	return is_disabling(dc3co.enable, old_crtc_state, new_crtc_state); }
> +
>  #undef is_disabling
>  #undef is_enabling
>=20
> @@ -6926,7 +6935,8 @@ static void intel_update_crtc(struct intel_atomic_s=
tate
> *state,
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
>=20
> -	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc)) {
> +	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc) ||
> +				   intel_crtc_dc3co_disabling(old_crtc_state,
> new_crtc_state))) {
>  		intel_cmtg_disable(new_crtc_state);
>  		intel_cmtg_mask_interrupt(new_crtc_state);
>  	}
> --
> 2.29.0

