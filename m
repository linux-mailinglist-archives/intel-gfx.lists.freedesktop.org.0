Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JoQ4HN3/RGpm4woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:54:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD686ECFE8
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:54:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=CIxbqekf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE4710E517;
	Wed,  1 Jul 2026 11:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F4910E350;
 Wed,  1 Jul 2026 11:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782906840; x=1814442840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bVIyL8qBnWP6NHENPA4Tqp/urQrCcguS/X249TRTW04=;
 b=CIxbqekfQ26NKZ86YmFQr2jJL2WUtiWGdN2U5Q3NYr0JLGbvi02WrnRR
 rV9Kbbu/S8ICOwRce3yO7p7M+KzwBWLZ+z+6GQFrre/9h9Ukjj+4v+R/T
 tpaXIel/0+p6zL8BE3/0aLI9bTqA1/yBcl3Qu99jxyKlt9HtV2oG/XvL4
 Wr4459vT5zTXvC265yL4zfInqZpxaHMtcly8IY6LMuh9O7BGPQZevHfDf
 AgMVoai5L7GuR7ThHAAvQ8sztHRgb1AxnKHU+7UHVPyTU8p+lHJCWq9Qv
 MBMmoqL39i/5+YcS9TCVnTNSrzqHUv+XJ3TigFgc7KseIhvz0CE2EzM7b w==;
X-CSE-ConnectionGUID: XsHjxGDXSDK3OIEsA4/o3g==
X-CSE-MsgGUID: /uwD/8ppQqeqysGk/ssp7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="109184559"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="109184559"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:54:00 -0700
X-CSE-ConnectionGUID: HM0cPyNlT4qku3kTZgvVhw==
X-CSE-MsgGUID: UCgHPei2QsCkO9wPwIWfkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="256465458"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:53:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 04:53:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 04:53:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 04:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=grPjR7moIJVFtaSdrVq+glLlNlHfdCjUIWhN3xzrJ58PNO6x2WQ1xQ0G04npYbKk3xHn4RGPMeqmIbiD3YFeuJAzHPMiLSRYL7KMK1838V7qXJVEBmG/juSqrFOfBBYXwqznWbl7apelmrk61vPyOeSsW9jSXDFqGuQjMI/lYL8B3YlMhRJ8lD/N1AFNNKOHfLw5OAQ4FXbgPFpg+4INCx7mTuGPVaXcLex2V7T9UM/dOpEDQY1F5rrEa01wtGK3x6S3IUDjxxT6J60bDbOI4iGBaRdRufT3MP/Ggua/a9LJ9uCfQqMaGynImF7TJIwcsjmXJZGHwXcfJ8vTXOtryA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LlNhxczYx6XH5sCaGLjcZlnS2nVBpJN1m8djcqlwplM=;
 b=VAd6JOmwpakWU2ur3xDKaDp14mIMkAbrviPFWgEw0Ee4WbeAwXRFxXGUMVvxf2AiLIBE/1B7LwAQcPHDU6fXtJIXHVGMuCikjZVcDnnaqG7I3Tr1sxtV8dcawGAAbePo7OiR5E04Dwd5e9Gzrsbts+dPEc4F8WnrlYAZWcbPB0fwyh6I14Cb2cTbov7n6jaWjVxJN5419WfwCo8n9Y6yC09TXr8/pGJFelkaFAPOBM5CvO8/DuaJ08GWQ7rZ7+yezNsOC1UVb+kcevgW9yoXp6nNEbl43RPoJI0oTM0Bu6G07+KpY8N4MMHOH2uUVjLf3F+t3zvOwuNNh5oQHMRqFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6SPRMB0009.namprd11.prod.outlook.com (2603:10b6:208:479::8)
 by SA1PR11MB6920.namprd11.prod.outlook.com (2603:10b6:806:2bb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Wed, 1 Jul
 2026 11:53:50 +0000
Received: from MN6SPRMB0009.namprd11.prod.outlook.com
 ([fe80::4af4:988b:1af5:e328]) by MN6SPRMB0009.namprd11.prod.outlook.com
 ([fe80::4af4:988b:1af5:e328%2]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 11:53:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH v2 0/2] Fix array-index-out-of-bounds in
 intel_cmtg_disable()
Thread-Topic: [PATCH v2 0/2] Fix array-index-out-of-bounds in
 intel_cmtg_disable()
Thread-Index: AQHdB/YBOm4x1/NQ5EineAgPVpLyXrZYkDEA
Date: Wed, 1 Jul 2026 11:53:50 +0000
Message-ID: <MN6SPRMB000950F9F877E493652EB016F9F62@MN6SPRMB0009.namprd11.prod.outlook.com>
References: <20260629180236.1353704-1-animesh.manna@intel.com>
In-Reply-To: <20260629180236.1353704-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN6SPRMB0009:EE_|SA1PR11MB6920:EE_
x-ms-office365-filtering-correlation-id: ddcce894-04ae-41fb-ef4a-08ded7676aa9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|6133799003|18002099003|22082099003|11063799006|56012099006;
x-microsoft-antispam-message-info: x2LGHmRFo+drmaNnCVCCN6LjcKWxeOZFxP+LjLAlA8+6cYHhfupuKz7M/QmcvkoDEEtTSVsYj13w+nHS/nsCec6p+iQ8JE0Nn/GuLrysQYOKuvp0aXK0+fwtTfbUCVdlHRM9I0Rly/uYluePJeu4R6Ep7W9f53z5KLCtLUBHzi2USZw5JsMUdZQmpyQihubyYWolTPg16BKOc32q96mO/z+hHLszJ0+ZH/v6dOIWn0VCWwDWXqKTnyCEMwEQbIzxXQ1fR5ETWK142HXrg5ANqXaOtZFO13hcPUwaUES7UHuzILMSkSahnRwY51Quk1U0xaH/MmkEZhRvymqXLC92PtUQh7/ai7QNqPuGDpp99K5UZqVUuR6RIwFVmaCf/VPyGUudWgQnwON/NRevKx/eQ+DN+MuUmS1ogCZxPucoQmrHF3Ixk9mMfaH/rCn3uIMuVKpR4JkvcZqXnWXLzM5pQs433Z+adhl0G7bZpXaDsPEbTIYuT6G5sXpU+FfxdHCRDrdi5fUPAUE5/leMJZT3MMRsosezhvIlg6/rgoGdvwhf9H6t07vewxgU0JuAd1/57eddV0Xknu+WYxdEhkHe8SAfFW8Xh0+yBX8pnEx7dK5ZU6hwSPhshvPzgIUNBl+4enSn+nVyhKxgKRuncALToFFso7tZtI2JrF1B25ZzfWGXXOeZNkoPKhTwXquQ22c+Lheupv3AY7ge9Qc3i4eii0GRxeZ1epddGaJuzjfQFuA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6SPRMB0009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(6133799003)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zbhFdzwl4MjK9A8OCeOFvroKgk+q5U+7FAeRjNyobqQtMy3nfzJ/EUDI2wTj?=
 =?us-ascii?Q?gJQWPbzbmyuFKSeft9y4LAoWESEhdp/O9VhsgnXtGQnWf8Fu1V1fTTxrIpYj?=
 =?us-ascii?Q?d5TAj5p9pOxqK/NUrmk+s4rNt5cRgNDFo+Ve3elkMQMOnRqJTgYhpt/I1xek?=
 =?us-ascii?Q?m/Iq3HXE+ALtAJHm/r27iayMFhDdq4RPKy/i8F9BhMEeXQcoIlGnaqlJnEMB?=
 =?us-ascii?Q?4xBZsF0cRulyjRL4QFkxcm1pPMAWTzuojn82j/+LdYJaQC2LL8XJExfdMitw?=
 =?us-ascii?Q?ss7b7dmxo+qyiHj4IYpI+Y4EYneufXPVC37JBLARupuFm4QtSwtQWd01CKI5?=
 =?us-ascii?Q?H7wBogoepzBbHsC9f0OJQ1STDud9ttxIa/FYxLLoHPzTcmHcBBfJqH0BM048?=
 =?us-ascii?Q?CVchBEoVwXIA2FNH5ibi2xQWdVg8t0qMPK2QX9tRp9Zx6GPJ0sxmzEl113Jg?=
 =?us-ascii?Q?fq92rjV1mzm42h+9cDz8l2Cx8l3p73oPoy9XTiFR80NbNLKVqwGGMZaaqV/H?=
 =?us-ascii?Q?45nFKeTajxa+z+CmFVdSL7Te1elAyQIfwgnmxEMCEsbHMTpBip0LeWEKaJKD?=
 =?us-ascii?Q?/ZDgbdlwiQPvdpkoLGzGv36NSGf43Pz8IcHDVd/yPiIZBuvRY7FLOSCIZMvU?=
 =?us-ascii?Q?vWwJB0LTKRKE4u6OH/k/MS9MeWein2JOjgiGFM1sMjr83txI2kF3ZBimFczr?=
 =?us-ascii?Q?mKGdRXCSNkg/n3fE1rujpUyroRqiNepkp7NIH3y/X3y4d++dcifNuJGyYv3f?=
 =?us-ascii?Q?VIl4e/BdODqSzoFB/voU0NXokD2GdTFRyPlsQhZurqk1BCnoXGd7EaDAL2nu?=
 =?us-ascii?Q?3/EY15ZY4Hg1aYPBcja9oejMKB068gIfcDY7tJwrcTqp0rrBbU3zixm6pvmI?=
 =?us-ascii?Q?yaT+5vgP9YEA4PHdmaVuF/HU799wKGyeE73veUcbovridKCAjcpJNMRqbTm+?=
 =?us-ascii?Q?0QrrkCt1S9YR6UsbR718HM0RnvCu/WRRAY/TMoJ1YiWVzpJ6iBYr58s0ltVC?=
 =?us-ascii?Q?WhxjI8VI/jFb/prMu+lOGhbiUxccRIP2eF48cWcX5MiqYHfintlpydBXrHqx?=
 =?us-ascii?Q?IhZDebXs6cUy4LC1X1DmDeAX7XCWWeB61PzxHLeRkjmOm56sCFjvltfpIZom?=
 =?us-ascii?Q?MgzUmGQRGdwfwghpNyP6292XeagONhIpveMt6JaAIZgaZOckmpftD35tzSsG?=
 =?us-ascii?Q?I8rrWjHlruk10kKgMygnJSrFb3leJZd0unujJ+wc45y13/fP/jZ7ZZ2OPuR5?=
 =?us-ascii?Q?PBI+/qoAPCc3D82Ah0yn0RE3SVl+IMXXPtfeQAPgtYcjrjeRWt6x7Fs81LWw?=
 =?us-ascii?Q?cs2Au2a9zE3/sgnKe36Ibf6Yisfew9KvYfGGDV3KtYmx+3u4YMdTlV3zotqr?=
 =?us-ascii?Q?8uxMRNXdMsrdpb7Ym2lcb44pHrLNL5gzpIpM/LksrgrnriX7/DVlC7tuXWGv?=
 =?us-ascii?Q?55BDGqb+m+otNDhshcgtXYPVVVSNunZ6kx8r6cD6s89q9MudtZttjNaErQ4Z?=
 =?us-ascii?Q?h6tjAE8klxX5DUPg2CYslgDFe+Muc3qWJUafWL7M9Qz+YGKhqqrC4GDAUXoW?=
 =?us-ascii?Q?HbaVKtBtu4mres9QSou5CxViKHa1+1k+Smr7HSfuxuUTuOIrJVnDc9/29MLm?=
 =?us-ascii?Q?ai3s6RAcG6SjLuA7UUVhMgFKNTsoVY7mA9mllVA6h2/aPI79kKAKzNji+L6n?=
 =?us-ascii?Q?kngBSKTVM5pFrSzjcpb6qVxBqllIpjkL9yAD07LN3v6l1oM8LL2kMN7DyKAS?=
 =?us-ascii?Q?drNopzVBkg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WIkwCCtU3CPf10zaF/N4JY0cBPqCYPSReGdJ5thb6HbMGkEZmau2LaGjJTCdUP/lhF9+twYlTNphuzt6W7cLRpGmTIljPCeWGiZMLXwxciakJ4A7QhvgtPod6tLeqAySoDFTXH8fA+yWlcyeSAgPZCG1eNHjWgs53hzbpHGP0FFo68UQbuzJkJGUQK2r2ulffU8lt5JnSyDK0JDsVu4DgPXAJ+T+ykkK5lLC8I/Cla5GnIJYoVeC36DvpC8YFAIouuxuN1qBLpvgAfV++9IyRTVNj3SyRv/IWL96awnzTuQP6JuIyXHCETfYEcqIkKQdm1k62g+zF+mzwIORjzCX+A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN6SPRMB0009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddcce894-04ae-41fb-ef4a-08ded7676aa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 11:53:50.4266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mOI0l7ZDXXzxL3eAjc6XmpQUEhJKRHxxZrdUMtcuVbHI+A0QQCI4eEdJ+totls/PPRFwJXFw+7xapuvUfSpD9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6920
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,MN6SPRMB0009.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BD686ECFE8



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Monday, June 29, 2026 11:33 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v2 0/2] Fix array-index-out-of-bounds in intel_cmtg_disab=
le()
>=20
> intel_cmtg_disable() maps crtc_state->cpu_transcoder to a CMTG transcoder
> via to_cmtg_transcoder(), which only returns a valid transcoder for
> TRANSCODER_A/B. The disable call sites only checked the sticky
> crtc->cmtg.enabled flag, so during a big-joiner reconfiguration that
> crtc->moves
> the eDP across pipes intel_cmtg_disable() could be reached with a
> cpu_transcoder that does not map to a CMTG transcoder. That led to a
> negative register-array index (trans_offsets[-1]) and a UBSAN array-index=
-
> out-of-bounds splat.
>=20
> v1 fixed this with a silent early return inside intel_cmtg_disable().
> Following review feedback, v2 instead gates the call sites with
> intel_cmtg_is_allowed() (the actual fix) and keeps a drm_WARN_ON() inside
> intel_cmtg_disable() as a backstop that documents the invariant.
>=20
> The patches are ordered so that the series stays splat-free at every step=
:
> patch 1 prevents any invalid call from reaching intel_cmtg_disable(), and
> patch 2 then adds the drm_WARN_ON() that should never fire in normal
> operation.
>=20
> Animesh Manna (2):
>   drm/i915/display: Guard CMTG disable with intel_cmtg_is_allowed()
>   drm/i915/cmtg: Warn on invalid CMTG transcoder in intel_cmtg_disable()

Thank you Suraj for review, changes are pushed to din.

Regards,
Animesh

>=20
>  drivers/gpu/drm/i915/display/intel_cmtg.c    | 3 +++
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>  2 files changed, 6 insertions(+), 2 deletions(-)
>=20
> --
> 2.29.0

