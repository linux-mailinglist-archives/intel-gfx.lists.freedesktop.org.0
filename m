Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCO+E/7T7mkKyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:11:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A801146C48C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D6810E175;
	Mon, 27 Apr 2026 03:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Im/eJ9zC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF37B10E08F;
 Mon, 27 Apr 2026 03:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777259516; x=1808795516;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cOL/buvFysFgUV0sF+u9SdRj/XbmwZVvJsOat847jF0=;
 b=Im/eJ9zC8CDhNmL3n9aErvrzlDv77k88sqsKpQ3WjZbPqh9mZdCvNLFl
 SDKqZh4sylhQnuzkCu1W9Okzb2YbqHHWWZ/8bf7q6Mv1fTJtxfVi1o9jM
 rGN7tILtxeU34fjDjxEGbmRmocdm+S9CbZMxoV4IMgLwgwkCXseojWeFD
 ppeFK9VAgc/H7Ey6Lc7p6tFZ/kqM6FPO+rBwjl09PWHTMbbJh4AF1v6Tc
 q0X394XamagUeIwRbFHrFWSUJIvjXiyf7evf2nyRtVXk6K0MjOVZy9Sf4
 WoFFN/tleLaVlkVwCO04nd4kG0SeBjP3vNtJv16GE0wqknP/mZ81INRd3 A==;
X-CSE-ConnectionGUID: 7Bd7R5lBRZOLB196mS9RAA==
X-CSE-MsgGUID: UUSnMzQASGezljXPG9RvXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="103603722"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="103603722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:11:55 -0700
X-CSE-ConnectionGUID: gDcFJUSwTF6XlWvWjHIZcw==
X-CSE-MsgGUID: QPUItQWFSvGDdgZ0hIOMQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="257033203"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:11:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:11:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 20:11:55 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:11:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CZVp7VtBTl1HlDpSJGUFB03Ab4jV+7JUUOOVZlj19Piknm8n1PGhO8zfkGQS+Z78xLQlku61Vk8BmVp925MPEjkFcOd+Qx87JsdUJxQzmSNYWbbolHekQMdqTyWX9UqsZlFMIYQQkHqdqxVlS2dD3osjXdH1YiEjrNlsjtQZ/WFCjwX2USu9zPwAm3Rw06qMLt0ghH54sgwk2AMYmdcA898FW7+hTiov7gJosvTqiAzhTMB4rZjaYLWqY5zPyYycEfrHctTy/Myfkp1nBXWnwBdnZZ5kpv7BSGcnPNkJcd6vRQ9I9C0rkaWMGNh2DuV3Uo0IE/Zxkqn0UgrpxtRoLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lwHqbSCOsoKbX0GP2gdh/feicVO39SPnhtb45F9nUAw=;
 b=DMeN7Y8B6UGifABC7GBbT6q2ktd5O5Ny53OCDHUygy61WoXiyD01z51L06ruRSHdwG0qiscSH51E4VWvoJTcXOGFhi5JcL0I75b1Lci0PoyaoCvwZ7NN7ogXHxdwhXOa7Er3vZN/zj8zhovjd4WNfcV1h/zFA8B5uUP6OPS5+pVUajrd9E60TvZNzUdigrYnahHNMQDY4andSdExTGj6kby7nWj7RVxxxpXKbfFy8vKmDFIuv/FOqWcOfi2PcPtMWeijsYt8Z/vuSPedH6LyyzYXOOATjSQ9/KRX2bdE81qA3PEdmVkeFy0aZnGzpoJ62j6zy/OQ43QJIcY8T9y/KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.15; Mon, 27 Apr 2026 03:11:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 03:11:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 08/13] drm/i915/display: Store DC3CO eligibility in PSR
 state
Thread-Topic: [PATCH v2 08/13] drm/i915/display: Store DC3CO eligibility in
 PSR state
Thread-Index: AQHc0nTF+yWGkg5DRECXx4KgvP5jQbXyQiAQ
Date: Mon, 27 Apr 2026 03:11:52 +0000
Message-ID: <DM4PR11MB63605EA6AF69301554144DC0F4362@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-9-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-9-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV3PR11MB8508:EE_
x-ms-office365-filtering-correlation-id: b5a742c5-61b4-437f-3806-08dea40abacd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: c267aRdNp6lxGo+y3MwV7IQrEipj+8/GyeMc3x8UKKmppMF02buvrSZqynNIaOGF28jrdbuXk1CtCi5822/PS+nOkncQDqPqLBrFaedznIPnuu3W/VVRMIhAkV9ACUXliALroFcgz1n8LNVN6LWHouBg9a3ZXCg8xRZ5Zlkp1YRx77HMFDGwtKyWe1uVJNclgbi/arzvFfhRY5kXA8Qv6QFbPscxDykAFcRylkO4t2qwBzgA4aYGRBoBaXLakLfZINgbND/oeDqYyjcy8jdIHoklc04+qwD9RZCyYAPQFfKeHydf6FM17/vOw+mta18uO73tmxfq17rfOIOZKe8nGsuzx9Gv4YjDIv1q/A42ax+ru5aBmD9YHS9tkfcUkZ+yTuOrMb+35pnVmYpE3+2IVhqcVId9S04HzlTV1uQI/BGjBbqK9BrmwfZgOLFpLgC0768s4Dg+V5Z/ysRcF74dIzdODfaxd0O7gcKw98nBMzfwUVgbdr3qktcSMCwj1GRYh448731f9TMTFXQhk1LB2h1oFhcW9J6E+Ynvj8jVjVBdHnp3e69qaJ2LKGerkCL0rJS62QU38OgPmqSMQXRppvw0axqHKauL1D8awVFZRc27bt11b5Hva4DGhPf0tj3JHcNDuoXnebDmXFMfm8t+zFSJEM8tX83ASb6b8xS7tUdOPJidb0DA6dK1nUmJSydep6VATNx4UjhGCrQaOfj3RsjVat06WivlZ0GLNiCN9GH5znBq8X1DrzMF/cNm7VXXfumKDxxaP3gkCffn94FB7x0klBJvA/bjqCEN47IhppY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rzbl3Diqm0MIhhB5rkm3TsafvmlFHBsuT3PtgX54/hygSTuNHLwM3b8cJI6k?=
 =?us-ascii?Q?G6jlM2Bo2kRv1a40E111plhU5otjh8hWWyKXbZYaW9hhCvBatWNK4mbPjf6I?=
 =?us-ascii?Q?J04pOXvSLaZ9yATqQVHDxyKfbDdT25WvVEq5uRqBhxaFqrJ4sJRY5Lrn1XnN?=
 =?us-ascii?Q?1vEU2jKQpxlOkx5E4+/6YYBUpoZGqxpFihS3IaqCWuGXCD12FJv7U0YHHaj8?=
 =?us-ascii?Q?IWdDVZUYki/i5hC4thDoy7ZQSrGmSb7Tnh+hn59TJofqpMI7aH4wimlnou+o?=
 =?us-ascii?Q?YzCO82edOLaPhG2+3n1Tg5ixnr1KsdUcXGCtF5W0j/Nuz28i1kR3UzQsiheY?=
 =?us-ascii?Q?q8uQkMdjauUHizwi7R4pkdMgimUo+SEerz+1S0hJ0sJuiKyaXrIbsdR/xNa9?=
 =?us-ascii?Q?Icsd0WG4b7gzFLEBhdmn8i/Q8a97EeWC4/fyk+ROsYtW1TTdPiIs4xCjEdxU?=
 =?us-ascii?Q?UBnheCIZfJfh5ofvDN7j4Q4HjP2rQY2f6eNHhoVobDTsStAhiVBF5Jzzr9yF?=
 =?us-ascii?Q?hUqHSdVzTIV+v6GcNp+A30mG57ncy7qSD5UoOHWqP0kl6EG32kruNULxOa5g?=
 =?us-ascii?Q?oIRv5zn5uZTzsEmmNFI8J+iFIWMZwkIgBcO4xEX8E30j6TfA7YxVND0ET7W2?=
 =?us-ascii?Q?rWLxL5/SXMsJ7P9wFo597bjzi37bMobVfK7v+VYMgAaTHN/oMw61YNdsotmF?=
 =?us-ascii?Q?CHlk32KfBKsniM32oMsDrzAmeZLTbF5dy0r5oDkB41qoCtVlGKczZNm2nU5k?=
 =?us-ascii?Q?22Mz+jmYAXSiyn0YdVqefx4QIhPI46Psrsa6NIjue++oL+IjxCLasIQ8Cko6?=
 =?us-ascii?Q?glsMOfmNCLXyvbW1zB4oOkJf7ir7NhskjoHF1/teWsJ5k7AAgtBq7KovE8/c?=
 =?us-ascii?Q?SVPQAR59ujpmQW4vfIL9v6LMAPKJ91KVdg7bIRylTl8o01+nd0/7Lz16Y3X+?=
 =?us-ascii?Q?51qa39rVmnBMSdoGHG/XKpDLk8okHPkvfEbzZ7a3OpzUOZEIgCXaDYcOI4KD?=
 =?us-ascii?Q?gefkD6sGOXWMucAS2jB0KVmFZEUO17wmJtRuxMPOm8Pi0JYgjij85XrOimFM?=
 =?us-ascii?Q?7XG6+KulCCxceBFTkNbUC6/TSmshfT6Ig0qEuogb5JbHKMr0Pf+ooJ20aONQ?=
 =?us-ascii?Q?meoDxO1rw6QTazdF9knju27MMbr2cWjw3bFl0N4s/x2x7rVuRfMtIVcPo//x?=
 =?us-ascii?Q?Xrbi3/CBMjs86EOtwjWvQZE23C1LJuPvLGpJBFxqHsze8Dc7zOz3vVMAgkfi?=
 =?us-ascii?Q?ZFdutQgwPnsm2+3ig9UT/yHP6RNomUEKf/xfVD5scKZohu7gOj8fhW/bUYeo?=
 =?us-ascii?Q?z5xoRTkgDsyD3/P5MvswmIM3uBJ6g7W/h7oQ599bEGyFOIr2WUE1BSK4QiWf?=
 =?us-ascii?Q?fWElY5LOCot8r0wVOGnUZLm3+w+DlNvFpaC7/YzAVqBZ/Y5xVXYYL6fZwGDI?=
 =?us-ascii?Q?qCb80c4ly4Y7QxprP6kl8ubo+z7rpxyucRQPEpMGgL9JmCeydrVsSalMSS1c?=
 =?us-ascii?Q?s4TEgEsYNq+R+dRmIXNvUclOM+WgJHo+AFn5FtphSN9zvZJsg58hAgWo+63L?=
 =?us-ascii?Q?oPcWpjrTU/qW52A4kvpRsiAUKdWkIXxKQno8jiKiESXJnGAfVIBjThZzJTTh?=
 =?us-ascii?Q?fFaf1UPYsZCzqIssr0e8GY4TxQyhyjnoeywMNlq5XuMzcVt8SwEHeMfM9FQh?=
 =?us-ascii?Q?yaqmrRrWog8I98YwVDrjkvWQ8Pcf2kn1eLkA0u4xrRFgwZveDSWgVsfBiA8S?=
 =?us-ascii?Q?jRdFa2FNSywEV2qGAoeoNe8tiOTOzZpdRHy0G1ZVDtSX9l6NUYAbEXhItL5i?=
x-ms-exchange-antispam-messagedata-1: zFbC7kIP3pWROQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fHsi843MpOr63jPvI58LgDqf8df/LbyTavXxrnz3hQfSxkARk/advqdcZ0ff6OuwhgJDLDfEZMDn254ifG4s77h1h0+L4Ct7PTNr0Eq1JV7MY6Aai+GURgOavpH14SmyL6vUJ3FAAmmlRx4dCjUyt5NBrObO3ADGXhgkPGz/kbaMlavWRl6rKHKG1ZZnfQBzbthQoCLMAWZ79qqToezHOyYT3Rv5Ci7L1rZL/Pc+wHzPA097C4BvZ3FSRjmM/e3nQYzudAV5jrXJqlRFDXKr8ByRaYsP23w8pYaore/c3pYz0s4bhZA+6xgZfmtdRDBk2VS2KvlpqhIoA51Lff1W+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5a742c5-61b4-437f-3806-08dea40abacd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 03:11:52.3778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5iBKf0tJC0Oo3IkJfVEVH7m/Xf6lvidhsIGB2t5xrPA52RCVz+3hDZl/G7ROhepEs6ORts7QNtWHU4Cr+fdgvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8508
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
X-Rspamd-Queue-Id: A801146C48C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 08/13] drm/i915/display: Store DC3CO eligibility in PS=
R state
>=20
> Store DC3CO eligibility in intel_dp->psr during
> intel_psr_post_plane_update() so PSR configuration can take DC3CO into
> account.
>=20
> This will be used to control PSR2 parameters such as idle frames.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Changes in v2:
> - Use intel_display_power_dc3co_allowed(display) instead
>   of intel_dc3co_allowed(state)
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c           | 4 ++++
>  2 files changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index fc283cc429ec..28ab686b702a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1769,6 +1769,8 @@ struct intel_psr {
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
>  	bool irq_aux_error;
> +	/* DC3CO eligibility used to control PSR configuration */
> +	bool dc3co_eligible;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 34e4a1ad609e..2e0478e3d560 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2263,6 +2263,7 @@ static void intel_psr_disable_locked(struct intel_d=
p
> *intel_dp)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	intel_dp->psr.dc3co_eligible =3D false;
>  }
>=20
>  /**
> @@ -3095,6 +3096,9 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  		 */
>  		intel_dp->psr.busy_frontbuffer_bits =3D 0;
>=20
> +		intel_dp->psr.dc3co_eligible =3D
> intel_display_power_dc3co_allowed(display) &&
> +			intel_display_power_dc3co_supported(display);
> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> --
> 2.43.0

