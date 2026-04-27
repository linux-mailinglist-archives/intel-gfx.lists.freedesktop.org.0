Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIuwElLU7mkKyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:13:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A778F46C49C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:13:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2720F10E08F;
	Mon, 27 Apr 2026 03:13:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AYyrQ1PG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7EA10E08F;
 Mon, 27 Apr 2026 03:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777259599; x=1808795599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LonQC3NfFPgLTHYAPO2IjjS5EJ6Ci0Nxvt6qcvJtoZU=;
 b=AYyrQ1PGCMurGvQpdmfMvYTTUn+TDxp8hZ9nx1nDuw13P79udVwNeLjV
 DJpiwv5zXssc5WxzTm2Qz9hv4Np1tLIX+NmyWNpDL7SBnnfFNg0af+Dec
 SiX4OL/kwkVCJ5VJcBDoua/roWhQrEXDXfUInJEtMNko0p4hBMbBalVwX
 KgCQQ9QkzYmmlwgrcYoSmUaPtJ9JdnegdlhIPX3rtkY8Tauo+45QpLy2m
 UNRPQts20x4jGFwPPLzWree5/9sgKEgdobvtKciGegf/ctVAdxGHAHuc2
 vJMTt3xUucLx+kATm7/MdIKKMqDEYrmc0/ffg5JFfKlEXdF7qDvF1MY1X A==;
X-CSE-ConnectionGUID: 6nj/3m4dS0WETSVJBDCRmA==
X-CSE-MsgGUID: pUyQzYZjS4iyh3nLb5NYyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="100796355"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="100796355"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:13:19 -0700
X-CSE-ConnectionGUID: zgNFW2PWRJGvmArGTx244Q==
X-CSE-MsgGUID: DhUWnilqQPOHNtxAuqlvJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="232516176"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:13:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:13:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 20:13:18 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:13:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Um4VdIwBkyVF4BYCD72aF0nFOSEGJLha6AnkXGTkoYiOOyoEXDAq6avv4GgBM4udCtkEQZbwEP1EsFr+vq/qC8EiwY/juDXkLGke+jMU/gRm/gl3QSO2+GpE8qS7IP0TkIkeCXx1ow7CiglkVFx9TOP/D2Wjwt9jJYDxYMh1t7rzg5JvVbfz/GqVaQeZiuT5TzlGoRXCsByuZNgPJdGk4DqGNnzhFISUGHNvW2qtBR6SU+vW3wccN/BtiiBPwyjM5uR0AtJnIktIWo5N8ivCx4Wy7aq3Aq3x/bURFenhApIwlOVPP801OAmgIqKVJwZb7lsjJXPaL5BthP+AnZpPqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zAbKDv9yPTbI3rv8BouJXc0wTXLx2EYjSxzfzYi2RAA=;
 b=nBwmapoj+gEKwpGzAJ9MsYf/0hQ4K42EwjojYjeR7mSqQHbZXnuzUdA6I/YbJMaifFWoB2eCjUsWi5P2rC4msWQ96K5tGUg2Spwoi/ErmfBRTp8clyTZkI50Zrf1v/5pdRGx+CA4ohgSnMq2+VQ1GjqFT7DPRGOmuYzRyY41GayWK8grVVSe45vW/NwV+Vhr8A1rOE3mXZkkQwtPyWVaH3o5/aAmCQB7g9gb/+ykzfNUbKKlnCoU0jJiETCqN3OuECSLl79PDsFoNNzV7HvXQyWxWbGE51UGgTv9We3lN8WIW2mbK/1dHRXtmvmAi2N+7T0tYxQllRZUh83aXZyDfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.16; Mon, 27 Apr 2026 03:13:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 03:13:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 09/13] drm/i915/display: PSR2: Set idle_frames to 0 for
 DC3CO
Thread-Topic: [PATCH v2 09/13] drm/i915/display: PSR2: Set idle_frames to 0
 for DC3CO
Thread-Index: AQHc0nTJ8IX0SCGRZ0Go8B+nF6jUSLXyQnaA
Date: Mon, 27 Apr 2026 03:13:13 +0000
Message-ID: <DM4PR11MB6360EB028A27F3B6533F4065F4362@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-10-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-10-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL3PR11MB6435:EE_
x-ms-office365-filtering-correlation-id: df1071ec-8e49-40a9-0dba-08dea40aeb49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 9+ppq3zaQYYY4o9PdJZEyproKgXUfmmSf2/UrSDPQJNcEvTBeYnKgXUdMSYRYRaskZtaSbZ4+bG5TegUS/1UcqItMKYv7g7tv3pVVOfqZYQPjWoBzQOZDxQfYqolvWxFYf1ZBJawIlmDd48GMnZLxRue2WjT/ZzaF0UcxEEYfyiq9oAh400CriRfX98S+kB3nZM23ZPH3ZHJQVvGntf8joADDXXgfnMp55/eui8HFZRSx1yiTeRnAHeO1MZAnu1A1bXsGX2thQBvFflwt3Heg940tNv0m34lVJ69cARsI2tzjGKHxkFEfx8Wlq3ig/QlJMM8SZ87VeTDZC+mAdgWmrAX1E3xSAkzYUz0yGrZ1onhwYm+fY4T1ZOfQX0HTzqtfFtSlpsIO9YuBIuRTN0aK99+ZHGcplM1cRxqdVKXW0iiBG6l8oumiJ1AWg3Lx9CWWUYcnlA0sP+6kUsf5xqun/LTpu44iRi+WawzOqWVq4lPzLpW5g17WHx+NK9+wfd8DqmFqHRREreDhTBIsAwXj6tTObYUHJsrMlEerrWJXKMS9OAocZUfy4Se7zimA8QN6rDy0RqNEjwJF9zqrMcZ6RfDbIWMlWsL8l96B4XKhJmlzBNn7xSNHdT6OpqCo+sjIXSq/CUtE5ru0P0m/qqqdt1mGYW7RyreXgaChrEUVpYyQhzJPalna7gD1YbnRpFV3jEonyj1Nugwb9Ouo/j1hKXCsttOJ75XI+3RC972C3axh2OHheJ3v+0wyfyXkptAdlqQXnmEtugbW722vkZROUUV1zo6NSokc/YtUbuQD2E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VsyEYC4Rau4geRDOGavGLkI0MK/DCoJn2ka4E6wtiPIkOnRRzM0tzN4YVSAy?=
 =?us-ascii?Q?HnHvBmiWGv5e9asHmqJZv/3AUeLnGzUcYasLQcAVB7ND/1Z4+GlFY9kG3uj0?=
 =?us-ascii?Q?E5nZLN3+kC4KyNwpeWX5FHpD4SUfCtr4y0Tx03WPZhfeQ8hlDPWcRhh32NjB?=
 =?us-ascii?Q?myYqFL7hOM+a2qlL54OqETdkIiUC7W+n1etcsnUxcw/eVxe51P6Lmg3SqYAi?=
 =?us-ascii?Q?otrTqIfwCMVkhhwEw+Ft7MKcGZUSKR6alL9XpE98jlR6QDGHP6Xo3O+qI62c?=
 =?us-ascii?Q?CO/URUe+rjSoC2qWzi8uO4cDGXGqM66PZsQu+Hge7pZkk5+FppyvZTDMyOfO?=
 =?us-ascii?Q?ATpJrM+Mj4wCAC4ZJVLcSMrUGKdtELMLPSKvJ/cFsaZjtCBH/xtGtGkT8mBh?=
 =?us-ascii?Q?xDtGGeADA9iyYLLPqP0l2gO/gUBjBGL1sD6rkSCkiPJaqfQ0+zLu7DVTisKO?=
 =?us-ascii?Q?ppkWmdI8tX4SQ78xfUaPkahrOUteCfZA+OFlZhm/THue1SatmPYABq9SOSJU?=
 =?us-ascii?Q?5MYQRe4C4vhrS8oTOFZiRCQY6NrB6Gt8VdfqJ0bweGdhzxmCt/aie4WOlYoB?=
 =?us-ascii?Q?NhwSNKxaemKggflcUDeJ3paD73TW4MqpFbCtMWtMVTLR3tetH/b/rO1SIueE?=
 =?us-ascii?Q?fE+p4WHjTmFSQtVbDafNL4yX8JJ3USxP3ot0jHZcK/Tqlv6WIiAHHy8qNK6O?=
 =?us-ascii?Q?dBINz4Ih5LufkFVEsql1muVv9dag5/i1/SefcePE1oymXn6oSG6KDsD1VI25?=
 =?us-ascii?Q?fPsXvuuWiudSVkCJHRgm6+zm4igUZRlxpNLK5Df3KXpe193P3X895rNJqcvW?=
 =?us-ascii?Q?4RB9seAxt2hDQaL7DuR89gYO+f3G7Vp5NMeey9RSEToV6RC4C7hJUNFVu+Iu?=
 =?us-ascii?Q?mFqTeaUHyG23L0XdiSKtccPucmZIaCvwhxip5oqYbvQZ5PXWcpZgi701AC8t?=
 =?us-ascii?Q?V16qqqUMbys4cK6ammSeJY80Ts3QDyoRa43RrmWOqtiO3Z4ibuGkQ2iUgwfb?=
 =?us-ascii?Q?hWbYOWubjx16uZc6lQH7HorFmcu0ko4hWw+VAsNq8SB5AD46Q9s6GeBNCExC?=
 =?us-ascii?Q?eonAco+dTcbjhh5EPsBFRruUNBTlhFHmlUfSBydYPghAv4foSOzLZXvqMvTl?=
 =?us-ascii?Q?4tXNBmIPoSxO3Zm08fMQ/EmX2BXI9p1vvbs/4/u0sAePx+08evvP6dNLKDEy?=
 =?us-ascii?Q?jN8ynX0uBn6TZwA+YjpieeibghfUrozx/SwwKmtZdtMohMgSq40DfiesYrv1?=
 =?us-ascii?Q?RVy9Pz06apRwccF3eHQEDn+XQ0Cnae5adeFoGC9Tm36P9eqhM3Ltc2wI8SMm?=
 =?us-ascii?Q?t5wowkIJnH8w8UIDzITzis3S1dBppNg7ShTYI+SzqGb2Z0/0nnLQZfP0uJTo?=
 =?us-ascii?Q?VVlEUJexQ4xWhkf1MDnUC0sWWvegKNx87DHYRHLV6uXrw3TPEpAEVL6trmlp?=
 =?us-ascii?Q?9CUjoF47saATr9VdLVlhOBGmwLainTxptEkO7oFdC5aGVvBmdbS5dp+8Fhxb?=
 =?us-ascii?Q?NbINB8eeGp8ETBE/FALqHT5cxyHjbtkkQpk2GKRAVDAtPnMMSifF8vC9kR6G?=
 =?us-ascii?Q?SK6pIpRbtqWM+oF8ZFm7KxjyUCJ8CZmEyECLAamEQxkuYTWWYbPUsX+t3Ywx?=
 =?us-ascii?Q?rBRFIWou0U6jqdrFFIBn2YLitK8ytLp1hGJ9FCe+PpEstmAEmDfQdT2HnDhX?=
 =?us-ascii?Q?9TsooVrurHaVcPuUiUXb7MPDrqUfoCRCu1TKYEHuhRYFpR0bZhzohho3a4us?=
 =?us-ascii?Q?+2ycVNkwFOvvwNNTmPaxgzLppkDh9Qte9SEY6/TonILw89SbZJVrhnwO4jXY?=
x-ms-exchange-antispam-messagedata-1: XfRUj9Cos7L2Og==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dp5GAT/H2gi2OLcKO57VVISjvG0MIuEkcy0LPqHNhHgblttD7TSTUhdePJEf2G+1iZpXtyPExjX1UKQaRHyxpKiTPbxntNqg0NKMBVlEXa33n85Bvsrn+MN8fmOCzVCGK7u8eOw+85ESNOPTRXdJjUsbj3zQ3VvRT7k9mq2x+aB6FO2DmGttdeJY3XCg60k121AhzaP/B4niacEd9W0oonVtd9mhuvQbO/xY1th4/7W3Ht12pvQqXrpUT+m2obS8AFEpsaYPkOf0LxBq3n8crq5LXRIX+l1mRBN2IaO3honusgqwma78SB7wILoT5ofi3TanxOgP+zWLOQEqqBICiw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df1071ec-8e49-40a9-0dba-08dea40aeb49
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 03:13:13.7021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w+M/3VqU210aZQe6v0Ezgkvw+Xw/OAaOUqqySYttPn5gTqkqhIEt8ykRRfoz0Bc96vVmmHUzkpMgLEwbDiB5zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6435
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
X-Rspamd-Queue-Id: A778F46C49C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
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
> Subject: [PATCH v2 09/13] drm/i915/display: PSR2: Set idle_frames to 0 fo=
r
> DC3CO
>=20
> Force idle_frames to 0 when DC3CO is eligible.
>=20
> Changes in v2:
> - Extend existing Wa_16025596647 condition
>   instead of adding a new if block (Uma Shankar)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2e0478e3d560..ff9ce7d2a5aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1069,10 +1069,11 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
>  	u32 psr_val =3D 0;
>  	u8 idle_frames;
>=20
> -	/* Wa_16025596647 */
> -	if ((DISPLAY_VER(display) =3D=3D 20 ||
> -	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> &&
> -	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
> +	/* DC3CO / Wa_16025596647 */
> +	if (intel_dp->psr.dc3co_eligible ||
> +	    ((DISPLAY_VER(display) =3D=3D 20 ||
> +	      IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> &&
> +	     is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used))
>  		idle_frames =3D 0;
>  	else
>  		idle_frames =3D psr_compute_idle_frames(intel_dp);
> --
> 2.43.0

