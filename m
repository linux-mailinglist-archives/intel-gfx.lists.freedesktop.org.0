Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CM0/O0YzsmkuJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:30:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B18A126CCA7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD31810E94B;
	Thu, 12 Mar 2026 03:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSPnQOLC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68BF10E947;
 Thu, 12 Mar 2026 03:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773286209; x=1804822209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zN0ODKY/upKsm+pXGds2BmIldtM5OwEpJ/36WQ+VIDE=;
 b=LSPnQOLCfQlK8hSyt6/wGGVdtV7gKr4nUiOF29VG54lBMuXdhXCUPkCy
 Jp0xQNVkdRBmK/BkImtjY7jcXrSVF+oAO+qSLl+Ab4/V+c0xQYELqKpbU
 eTPaBXdPvRV1w+mpA0fM9hqBviJVjupaMVs09OT1hirW1NV8VmIG+p/nz
 K589MGG9YcvLMlDO68lwawYy/L7e5tKulSZR/zArvHSTXzY/QXWB6n2mS
 sjK27h4LcexR3pdYJBetZ0IpIja4NZ7eiqEwj9m07lhk3s8McDg0O1Ct4
 CcUtiVDDC7alropsF9G/2irjsw6KmgzCe+OTDzHX3ITlsLtcKnzHRzpT/ A==;
X-CSE-ConnectionGUID: bO2bCKRsQm2gOMxTDned+w==
X-CSE-MsgGUID: 3JE27ysVQT+ja8PSmpR/jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74247756"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74247756"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:30:09 -0700
X-CSE-ConnectionGUID: GCfmto+HQ6KvQXiE8WEu/A==
X-CSE-MsgGUID: mrQF+jYRSU2r7WAlZ9e/CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="220733053"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:30:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:30:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:30:07 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.13) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:30:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qOQfQ9PKW1URjQL9kCwFGVGyw9Q07JJo6TOWSKfuxBldqX4f4LsVWL1OhKXpRgO1NB+uCYBPVcByTxXe+jupQlgCydwouBYsaj4GMQKy9Z5gzqslQkwgo2wE8mE/4dXj15uuNjpDBFDT9QcBklvhAZ3PzmCFsY89J9Oq6nJl852nFUB9W/kvqkVbawINq2+XlSKFU/+8xIlv/90LaTMNCZRd6uLmGt7RWloqOmWT8G26K78WgGpcVdNVjvye9Dka4GG7VnoiQRq3pGaBfI6YU3i5YWYSWqiWS0XGLv8psypHX4XE26QO5g33tnNCpfQ8nCHfPDJLvmbSzHAESrabgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zN0ODKY/upKsm+pXGds2BmIldtM5OwEpJ/36WQ+VIDE=;
 b=Zg2odw+3a+GJgwMdfEDVYEEGMPITp9EVxmTp/00k5cGD+oayGLmNESlPFAXmfGNXIuqIsjA0C4H8Wn2/L3VD9acdRhVi1dHOefFF6+JYZCVWhWk5xnafYi+1se++vuF2fX4Afi80Znj9HGnipdllhxcfPmNGzf64Pbtxh+PEtzgXyC7RkGFtQC5dP0a50+NpoSFbJD6x36x0xmd0wFclxKTIH0D825rIjGdaHHr8cg+04bC45SEnPGL6bcwvVYZ9iOkc8l35L566lAhsj0XgHZbxAlZ1D5399TQLvFv6seoOT333IQ7TPEPU47DX9vB+DjxaO4fhBPMGA7FZKBH7kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA0PR11MB7187.namprd11.prod.outlook.com
 (2603:10b6:208:441::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 03:29:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:29:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "B S, Karthik" <karthik.b.s@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH v3 00/24] Refactor LT PHY PLL handling to use DPLL
 framework
Thread-Topic: [PATCH v3 00/24] Refactor LT PHY PLL handling to use DPLL
 framework
Thread-Index: AQHcsWIMCknFys01NUWlpiUnA+6nwrWqPcTw
Date: Thu, 12 Mar 2026 03:29:55 +0000
Message-ID: <DM3PPF208195D8D880B96B9F858C780FA0EE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA0PR11MB7187:EE_
x-ms-office365-filtering-correlation-id: c9e9a989-19a8-4b6b-3541-08de7fe7a1a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: QpK0zattul8Xq1C3KoK9Zr5C3fWoPdDUPpYvKXZ6/YksJ71s3PtEIYDfp10hB44zFUfv1f7/C24EiDB83heSNwDC/20Oz8g7NCqWSWTioUjQ1mHZcd8IP7SLSWZdG15MqLkq1BPXPEFTQk3dsXVaGkWREk/RhPDl7VPBzBPgv+b962uomYdZ31dwvz9GAEWDFN5HaN1kNM3ElXm9N23s/HLvHJAGHfA5aGxaPYI6ficC4L+ztDvTOCaubV6Kg86eS/uyrkKCCrGBTqB06xqhnIZOIU86uPv7mWq8QQcdpDBlMya+M2U3j0KfzDgrN6In+rkQmv1LtO+DBKPrKRZfA8c3n0sEnl88qI64evRticE2XvuV7xvbJp3TNbVyqryXh7TCsWHZa8eEAq6ok0EU+iJUy10Lewd5Cru6dvMuMjbMFhCZeqs9W+0j8mI7E07tVwv+J+dCH3ofTprqijMdTu3NI1Mvxg5BA3JfTFRitgMmCmlTxjwqJfnwfSDCqPlza7DyM9yjiXp0YftjVB7cKpCzIWhbn5Suz6HViwlqobAE/WgmEU1M27rNIKomSry85EV72J/QacftWh0n/Uw5mETUGdPXNOMKc8X1Eg76Iuqo/UaAwnXGd40T+BKho13CPKNCQD2nZFADB9W4mOVOAItQgOpdekCDWJh70ROiWZyd+u0frQ+iRpkvWVba2Q/WM4bO0wpOTcCAYxVtI6t2AZmf8QCeEVplyneriOlOsptla3hcrCZHL8COr+eFUuUCk5/IZR2vxkK57h4CCnMsJJ0x+ggSaxrYrLbcBRwd06g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjhPdzhCV0JoUExXQkFlS1ZXV2YyVzFkWU9ySklkSzBqNStzaDVWOTlLWk5x?=
 =?utf-8?B?Z205TTBkd0ZXMlNTaEJkY3VRNktuUFR6UkxGano2eFYzeEdCTlZTZkRTMGc5?=
 =?utf-8?B?T25NdDYvbFdCVUNkOXdEdVFrWW1yREdoS3c2akVDVFVBQ3FqK1lWbG81YjVC?=
 =?utf-8?B?Q1NhWG8zQllnS1JiRHRHeUtEUXFnNTZ4d2dCNjZkbnh0RTh3U2E4aFp3T05V?=
 =?utf-8?B?VFZIaWdGMTY1b1BieHBVcUEwMlVZSDIxVy9uYjhrYTAxL1JMeFhYbTlHd2ZO?=
 =?utf-8?B?RVBNa3BxTzhhMVR5dHF2NW02bUpEVVVydlB3NUdseWYyMkp6RUk5K09LSEd5?=
 =?utf-8?B?VGRMTEdJdXJ4c3VmaUNaT0pYWjVKUlRJdUx6MklSeGpsTENOdGZqZXdtNnZZ?=
 =?utf-8?B?TGxrL1kvUkhvVHRpemF2V1lmKzN3dFJFY0J3Tk9MY3NHTHNWS3ZzK29nRXll?=
 =?utf-8?B?U25tKzU1UnFxNzV1OGdjN3NYdlhCc2tVbWxDNHV2NG5zZnFBV09QcUR3NWNW?=
 =?utf-8?B?Q0VjbnYvdW04elRrTGNTZGgvMURtbzM1KzFsK21RYUlIZEovRW04blllUWda?=
 =?utf-8?B?SXZFRlZ3N1ZXQStDUGtnNXRUanc5Z2lsTjkvNGhBUXVwajYxamlvNmZCSXdL?=
 =?utf-8?B?TGRhb1UyUGxjZTZCbWFGMGQ4eEZ1cG1icSthbWFSeTlQYTZ3Qjh2c2kwTGdl?=
 =?utf-8?B?SGFuS0tKNkpQZDM2MmZGUnBQdE5ENVB0S3ZUTDAwOEdtL08yYXJZS0RKNlJU?=
 =?utf-8?B?RitHb1NZekxjTStmQVN4YXVZd1NXS3k5QmM5WVpUUXRERy9qczVtMlY4WC9p?=
 =?utf-8?B?eFhnV01xZXJTR3A5a1ZuRW9vbTZNdStWMEFFdTFmTFNrWWJDbTFMZ1RlV21V?=
 =?utf-8?B?M0ZIcUtqTGlHWkZNekI5bnovbE1BNC9tUUZNa1g0ZmNhWDgrdVprblJoMUlO?=
 =?utf-8?B?bWpzQ3NwdFh1T3MrRy9mU01MOVc5N29ybkZTVTYyNEZjUEN2NjEwWmNtOXhF?=
 =?utf-8?B?RWRTclB3QU9qUXU0WG9OTGRVZlc5MFVmZVpta3pXT0NpeU85eTgxMWdmbldN?=
 =?utf-8?B?b1JQR043cktNa1pTT3VmNUVkTmlJVlpOOUZLSmxSV1lIcU5LQm5qN3pseEVU?=
 =?utf-8?B?ajNzNEFPNGJILy81YmxnY00zbGk4eUpWdjBJZGFVNmxQSkNRWUF0YTRYWm5z?=
 =?utf-8?B?d0I1VCtXZERxY2lSSy94UnJ6WGtpb0RtZHRpQkJLUnZnT0RMRFJhQmVsRjRY?=
 =?utf-8?B?aFFweEo0RHlIVWZTNnQ2Z2ZHT2F5NWVuOUQ4amN3S2pEUXE5MDBrdXVKSmVG?=
 =?utf-8?B?a2ZBaU9iMDVlb3EyaFJxMG5Qbmp1QnFsNHZ2SUxFMWM1TERaVTBKTlFFSDZt?=
 =?utf-8?B?YWduM3FNeU1keEhWNEdOZFBkR3F1YnA0R25BZ0dqMG91dFVOQjlzWXBucHRV?=
 =?utf-8?B?WTRMQUthSUowcHZwME10ckdZc1ppejNEL1hDeXhSVUo2dnAzUjhuZnpRamVX?=
 =?utf-8?B?NVp4dk1WbXB2RVFyQ2l4TWdEWjFCVU1DcGhCM05UendvVnBhK00rUE1OeEVp?=
 =?utf-8?B?VUV6NHdOTXRpUDBRa0FTemFEQWpsQ1NRSWlpRzhWRkJUZzN1a1FQOVdEUERh?=
 =?utf-8?B?L2pJWlFxekEvaWxrQm5CU2lNa1VBek9JNzFJRlMvVWJ5YkxKNXNVUkdoRHg5?=
 =?utf-8?B?a2R4N2Fwc3dSRUdUNVhwU1ZJSlc2bDVRN2I0T2czdEV6RlY3bnNGNjhBNkhw?=
 =?utf-8?B?dkp2SWFDOGh1Q0hZMExJczJrWWRBYjA0ejFScm1HczJGNnU3SlZiZnFyaUJj?=
 =?utf-8?B?ekJzUmMxaFpYMDc0aDBBY1h0dDlhYmtNaVQyOUtabHpSK2xacncyRG1CaVQ5?=
 =?utf-8?B?RDNmTTZPTEppUWZzTDk2REpVeEdSVlJTVERrZkRBN2JjUTVDN3pHUnQyTit4?=
 =?utf-8?B?RDhaVld0K203dkVha2hwL2tSZXhsQXY1NENjaE1zaEJsQmVyU3g4SlU5TUNp?=
 =?utf-8?B?OTVZeG9YdG5zYkU4SWZBdnFWK2c3cWxEYjg4RUkwUW9hMnJFQWU5M0Z1alc5?=
 =?utf-8?B?VVppOXZjckJTQ08wcmx1K25XVlpUTUE5RHJOaEUxWHdLdEhKa2J0cFhwdXEv?=
 =?utf-8?B?Qyt1Mllvc0dILzZ1S09EczAxVVk3anJSeGt2MXpmWmxXaWxVckpHY2Z6dGlN?=
 =?utf-8?B?ZlkzeDdoVHEva3pqSFo2MlNZZ3l6S3hYOGVoYnRBeXdDMWkvajNvVFlVUFlR?=
 =?utf-8?B?aUlhdi9YM2I0NDJ4M0NyNEJEdzRSL2R1VTJMSkpraUtpcnZGZTl1WVQ0WVNI?=
 =?utf-8?B?d0FiL2FXUGhpNmR6dmNUR3BjOFdlcHI0Uk0yeVVuamVtTm5rY25LQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: h/einSV7oOpCmq3r+y9arAC+boAHZwLELBbvNzo2BrNaM9wqrTIlV/w2hhTSyfWU84InuXH6iAzlKKlyeHSoSNobr70XIm/KOqgFyuIhpoilToLyy7z5S9MA1B0iU4N5CEVg9MflePUlaCemU0bNe+6SajGrRKAp5N9tx0TcKdY9sBJ2hMkv8JmX84BJHE8iaWdTR7Sy4QmqtoHEyM6tXsHQMjCuCx2MP6SZksBLCaYD8rGZQ0FtABQpn4si+usi/XctJcn5TxWnH234mMs90UNjxCcSyqac4L0UAlP0QhPb/7AXjTUbovcoIZMuNEZrJI3Go3ozXjsolgMF8AELpA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9e9a989-19a8-4b6b-3541-08de7fe7a1a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:29:55.9431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p2XBv468yBwFGOTZq0uERaEUUSWhmNvTzGbvoIoqe3JFEfHagv8Z0m2BYILB/DoViNru7Y0qYk4ObNvahQUeWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7187
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B18A126CCA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDAvMjRdIFJlZmFjdG9yIExUIFBIWSBQTEwgaGFuZGxpbmcg
dG8gdXNlIERQTEwNCj4gZnJhbWV3b3JrDQo+IA0KPiBUaGlzIGlzIHYzIG9mIFsxXSwgd2l0aCB0
aGUgZm9sbG93aW5nIGNoYW5nZXMNCj4gIC0gUmVvcmRlciBwYXRjaGVzIHRvIG1haW50YWluIGJp
c2VjdGFiaWxpdHkNCj4gIC0gRHJvcCB4ZTNwbHBkIHNwZWNpZmljIERESSBlbmFibGVfY2xvY2sv
ZGlzYWJsZV9jbG9jayBob29rcyBhbmQgcmV1c2UNCj4gICAgTVRMIGludGVsX210bF9wbGxfZW5h
YmxlX2Nsb2NrKCkgYW5kIGludGVsX210bF9wbGxfZGlzYWJsZV9jbG9jaygpDQo+ICAgIGhvb2tz
IGluc3RlYWQNCj4gIC0gQ29tbWl0IG1lc3NhZ2UgdXBkYXRlcw0KDQpTZXJpZXMgUmInZC4NCkkg
d291bGQgYWxzbyBsaWtlIGEgVGVzdGVkLWJ5IGZyb20gdGhlIHZhbGlkYXRpb24gdGVhbSBhZnRl
ciBsb2NhbCB2YWxpZGF0aW9uIHRvIG1ha2Ugc3VyZQ0KTm8gcmVncmVzc2lvbnMgY29tZSBpbiBs
YXRlci4gQmVmb3JlIHdlIGdvIGFoZWFkIHdpdGggbWVyZ2UNCg0KUmVnYXJkcywNClN1cmFqIEth
bmRwYWwNCg0KPiANCj4gTWlrYSBLYWhvbGEgKDI0KToNCj4gICBkcm0vaTkxNS9sdF9waHk6IER1
bXAgbWlzc2luZyBQTEwgc3RhdGUgcGFyYW1ldGVycw0KPiAgIGRybS9pOTE1L2x0X3BoeTogQWRk
IGNoZWNrIGlmIFBMTCBpcyBlbmFibGVkDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgUExMIGlu
Zm9ybWF0aW9uIGZvciB4ZTNwbHBkDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBSZWZhY3RvciBMVCBQ
SFkgUExMIGhhbmRsaW5nIHRvIHVzZSBleHBsaWNpdCBQTEwNCj4gICAgIHN0YXRlDQo+ICAgZHJt
L2k5MTUvbHRfcGh5OiBBZGQgbGFuZV9jb3VudCB0byBQTEwgc3RhdGUNCj4gICBkcm0vaTkxNS9s
dF9waHk6IEFkZCB4ZTNwbHBkIC5jb21wdXRlX2RwbGxzIGhvb2sNCj4gICBkcm0vaTkxNS9sdF9w
aHk6IEFkZCB4ZTNwbHBkIC5nZXRfZHBsbHMgaG9vaw0KPiAgIGRybS9pOTE1L2x0X3BoeTogQWRk
IHhlM3BscGQgLnB1dF9kcGxscyBob29rDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUzcGxw
ZCAudXBkYXRlX2FjdGl2ZV9kcGxsIGhvb2sNCj4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNw
bHBkIC51cGRhdGVfZHBsbF9yZWZfY2xrcyBob29rDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQg
eGUzcGxwZCAuZHVtcF9od19zdGF0ZSBob29rDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUz
cGxwZCAuY29tcGFyZV9od19zdGF0ZSBob29rDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUz
cGxwZCAuZ2V0X2h3X3N0YXRlIGhvb2sNCj4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNwbHBk
IC5nZXRfZnJlcSBob29rDQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUzcGxwZCAuY3J0Y19n
ZXRfZHBsbA0KPiAgIGRybS9pOTE1L2x0X3BoeTogQWRkIC5lbmFibGVfY2xvY2sgaG9vayBvbiBE
REkNCj4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCAuZGlzYWJsZV9jbG9jayBob29rIG9uIERESQ0K
PiAgIGRybS9pOTE1L2x0X3BoeTogRHVtcCBsYW5lIGNvdW50IGZvciBIVyBzdGF0ZQ0KPiAgIGRy
bS9pOTE1L2x0X3BoeTogUmVhZG91dCBsYW5lIGNvdW50DQo+ICAgZHJtL2k5MTUvbHRfcGh5OiBH
ZXQgZW5jb2RlciBjb25maWd1cmF0aW9uIGZvciB4ZTNwbHBkIHBsYXRmb3JtDQo+ICAgZHJtL2k5
MTUvbHRfcGh5OiBBZGQgeGUzcGxwZCBUaHVuZGVyYm9sdCBQTEwgaG9va3MNCj4gICBkcm0vaTkx
NS9sdF9waHk6IFJlbW92ZSBMVCBQSFkgc3BlY2lmaWMgc3RhdGUgdmVyaWZpY2F0aW9uDQo+ICAg
ZHJtL2k5MTUvbHRfcGh5OiBFbmFibGUgZHBsbCBmcmFtZXdvcmsgZm9yIHhlM3BscGQNCj4gICBk
cm0vaTkxNS9sdF9waHk6IFJlcGxhY2UgY3J0YyBjb21wdXRlIGNsb2NrDQo+IA0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgIDEwICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaCAgfCAgIDEgKw0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDI2ICstLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDMyIC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMgICAgIHwgIDI2ICst
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMTg0
ICsrKysrKysrKysrKysrKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmggfCAgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9sdF9waHkuYyAgIHwgMTkzICsrKysrKysrKystLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuaCAgIHwgIDIzICsrLQ0KPiAgLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF92ZXJpZnkuYyAgIHwgICAxIC0NCj4gIDEwIGZpbGVzIGNo
YW5nZWQsIDMxOCBpbnNlcnRpb25zKCspLCAxNzkgZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAy
LjQzLjANCg0K
