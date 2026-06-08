Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TP9VHOubJmrNZgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 12:39:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12EA65535D
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 12:39:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="ifP/W3kJ";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD8E10F141;
	Mon,  8 Jun 2026 10:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1258410F141;
 Mon,  8 Jun 2026 10:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780915176; x=1812451176;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=p6ZbxfUFlSDEpQ1fQTI5djCfPmcAmNtN79cxAGcpfcA=;
 b=ifP/W3kJojAVJcb8Tx2LdUwWBSWxcJt1d9R7yQVv6lBkG6i4IxE6f+qA
 ZtpmBvBnbzs372kTDtWH7m9LRF2NWkPn2TcX3ntEoMmrEzLAkROF6ZdLZ
 7g7CXCy0pZ9fSpN6jnB2NlvbIVtqor+ka5SrSKB7mqlMMqu4veelkfMob
 QHW9Evjb5VqEAi6kQ6qotGUOVirFOnuU4ZLIBhK5phIp/jr97WNqCfZvX
 06EgK+RP7309y3AQxW3FP2DtlBaBGaediCYCPRo0FGDA2cSR2RCfRzdGo
 Qed9dV2nWhVkL6BWfImryM0Oe1b5tBei10iE5aaPdjuHiwqpAVGCgpR4e Q==;
X-CSE-ConnectionGUID: BTHraYSPTgOsBHF45uRoaQ==
X-CSE-MsgGUID: IVVoBYFhQi2M1qetR4tKDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="92326621"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92326621"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 03:39:36 -0700
X-CSE-ConnectionGUID: nkiDr8oaRPS325JmRnv7rg==
X-CSE-MsgGUID: 6Mm/uvUCTfqq8MVfoaOPNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241346369"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 03:39:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 03:39:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 03:39:35 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 03:39:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jpqpVC0Hlhu+SAD89VC+mk8RP0qc6I2X3g3KBdqkf+R1mhPDjNuzklfK/C/LVwYtf25TBT5rmC9YO4wcXtYrXkiJU2BcO+pHXqFbfnp00Ts/NomP2gBnrhMc4pgmwSTx3ZxKkzkZV16hB47g7be8b5HwGgY7/3W+wywPNA/O1YR0M8zDwWlqI4qQ6Z6kOy6M3XpXlg8DkJmzf0yDjbxXiJeMd7K9Sw0V3fJKAoUHkKFO8X77kavUxbAIqignks2/jwRvRLQrYD2kHnw/ER5MTBZDXK+S6eTzHeLyC4xWmsnOv6WSQuxBFw8x184MaGVNUviGijzJrHr4K3gkEJDYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6ZbxfUFlSDEpQ1fQTI5djCfPmcAmNtN79cxAGcpfcA=;
 b=OcuQOwtBNIvy+QL9/P+/mo037b6WkqX6FHf3syqYtp9t3fNebkRKLGBPPwXVnJmJs20ZRlLGBWg88dhowKkdefh18yTKV/WnT9FUTSdqFqkBlvx/WtUZjehAeLy5ZnlDj/b6UWAcUaVR3PEIC91PETqPpMJfzaYeL3ComR/DRiYfP09P0ZwxCtAdjP/SHv9aFVu1Vfxp4vs7FSZ0G0litcW8mRTf062RCl/S5JBuI/EjzkcoeBMuOicf5YObOjsvMC3WqOucx0Vs0vgZz9Nl0nv55nIjxj6bK4HEL63NbFno7DoUXW63SG6t6e4EDTnYXDvSnTLZJVuf12FU/UhukQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH8PR11MB9830.namprd11.prod.outlook.com
 (2603:10b6:510:3c3::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 10:39:33 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 10:39:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 21/22] drm/i915/dp_link_training: Fix kernel-doc of
 intel_dp_init_lttpr_and_dprx_caps()
Thread-Topic: [PATCH v2 21/22] drm/i915/dp_link_training: Fix kernel-doc of
 intel_dp_init_lttpr_and_dprx_caps()
Thread-Index: AQHc8a4ZpTgx31ig10eUoPZQJtdu87Y0gruQ
Date: Mon, 8 Jun 2026 10:39:32 +0000
Message-ID: <DS4PPF69154114F002213110BDF7D9B7B7DEF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-22-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-22-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH8PR11MB9830:EE_
x-ms-office365-filtering-correlation-id: 9e1ea14e-7fd9-4b24-7ac1-08dec54a3a43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|6133799003|18002099003|22082099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: qqGSKvhqscFL4+tYca5D4tA3hTD72qwRSEr9j/2viEqcFuz3ygsNHo/SfuczT35em3uOwXUnxsQwH15Vy2UXsfrNnyceJyE+7lY3G/9Awq72VDTAe2nk7+yOpgrPKz8tif16ApAXRkSqz52zkUot8OjzThFe7Vz9axoSIKZnoa93OWNwWYLxMNxQfsQCeHNVRx7SdWNQ6ft947fsE5S4lN9kBNbqTRfkoCAyHXs1bs2Ffr9Tpn6/f0B2/e5IIvxq+SlmDGu+XgGOe0IqKqR2L9pd7ujg4DMGFUzLyMMkNg97xpsINxtSxSRn9a3QjRf2dq3h0nzW5Ir/c2rcPb4yLGhbUcKw8dyRvpcIpMJ7uHy9Z8hb8/ttMrdEjcRZjkbnTUo76gBwf4FgQNxCngJSwxX3PMvRKxmTyQ4fsaFwEq6WpW83ZqSTn8DYSjnTD180T36zs7vOVjrM43+ywEJhbhaeT10S7DfO7ps9CfuyiVLBm0k0ZXcA5R8XMwtyt0HZfOfVxaj+cKWPgzHr+nMtGw/QIKZ4MGbat2uq0Y9cSP7OlWg7F/cWcbxWC7SPJoL9GCh0141p3zRR6NXi5kXRovFjZ7cKL7x78UvKxD8F4dagtGDntW7wMAgmULDiU7uO/u3sGRnwDWsPgNN0p3Mk15zNqhGlkclBkWtRnxtfYgEHo0HU9z+Py22GcTneWus4vX8t+XgXzw0t+jWvcTQHSU4emttFGKbwR52+uB0f28mjKMFfQk5AOhLpP6LPH51E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(6133799003)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2NDaDJNSnh3eFJDeGQ4MnBKUmE4OFZqYmRLRGtQeDFzdkdNSTVBbmIwMkIz?=
 =?utf-8?B?MHZsd08zZWZuamhqMGFnWDI4TXdkUmdMeFh6bGdkVnBsdXlUVEVyTExobmtF?=
 =?utf-8?B?QVVIY0pWSHlBYUJPcjVDckE3U203NEV0QTlmK0ExK2E1ekZVM0FySlhJeWIr?=
 =?utf-8?B?UE1lVFY4Y2FmdG1aaVRkdHNVdGREVVAyU3dHQy9VVlh0b0U4dVlZcHZYcGRm?=
 =?utf-8?B?OGpUL2toNWRpTW5mMFR0b2xESHhNcTg2V3Z4YjltclIwdWFDMWpSd0dhOHQ1?=
 =?utf-8?B?dGFxNkZaQ1F5NTBvTExyV3FBZXMybVNuQlNHNVJMVjBxUkF4YmUwRzIrQ1dm?=
 =?utf-8?B?RndQaGozKzErdWJ3TWpveWF4U3hQck5seUZ5eDFTV0hGVC9rQzczam14Y0dh?=
 =?utf-8?B?NFVOTXhLcmJSb21DY3puZFMzdHI2aVRuM3hNZEkzWTl4Rzh2dDY5M0lCaSt2?=
 =?utf-8?B?QmpyODJrT0tZcE9iUWNZcmxnYm12SHY2OTMxL2N3MDZFbDd0eGgxc3RzSkt0?=
 =?utf-8?B?ZnY3T0xjMXBPcUIvbFFOdWpnRlFpeEhGdHJlNGluZCs0Q0RheTkwaWh2dUpl?=
 =?utf-8?B?dHBBcHhJQndmK0F4NGlQUWJ2bG93U29QTzRoVFFOY1FOTmVXN2lZMzlTcUxt?=
 =?utf-8?B?ZFI1REJhLzRGaS83Y0FiYzlVcTRyWkI0VkVXVFFKeG5qejk0ZUJnd0F1QmpP?=
 =?utf-8?B?NFVmNmFobzZCbFkyQVQ0Y2ppNVZ1L1NqeHQzbS9aaHhGMGRlNkpEcnhNR1dn?=
 =?utf-8?B?ZUM2TXhXVXVkanQwTmpzSXEreWJ2VHlOZTlveEU0NkE1eW5pN0F1QWhYaEpz?=
 =?utf-8?B?TGdKSVJ3YVd4RTJ6VklHczUwTFBUc1RaUm5Ca3ZuWFUvQ3NXTnpoR2drOFlM?=
 =?utf-8?B?aUpqa0c5MTRPNXphdXJvd01WNkdHZTFZTEw2S1NYbk9kYnk1SzBNMGVYRUNj?=
 =?utf-8?B?TXN4cm9ESGlPU3Q4OFlmZ3BPZ04rL2JiOFVkYndHZ1ZOUCsraGhON28wc0pI?=
 =?utf-8?B?bk9iVmdwZ1FiVnAycWFSRDRyWTlmMG9GZk5pMlZnVlNzOTlRUHNyemNsNi9z?=
 =?utf-8?B?MllCQ1Bsb04yYVpPajloUWVqNXR1dzR0VFd6Q2tQdEhpdHhkR0licWp2VE40?=
 =?utf-8?B?NUEwZXJJcFNJMFNBd01RT3lGTnRzYmZScnRXWGRwclJBMEQyR0lBb25nWjNK?=
 =?utf-8?B?Q2Rrdk9RcmRvZk50M0llUHViSjZnNGl6eHlVbnBRU2JTZXluQjR3SEJwT1hw?=
 =?utf-8?B?dGxUKzhxbTdlcnF0d3p6alVBK0tIUWxHTHZnanpQa0UrV2gwUUxMc1hvR0Ev?=
 =?utf-8?B?dnJpVmttbHBqbHFIakpiMFlqYTdhYWxnc1hMRGs4Zi8waDBuWFRncDB3UEp6?=
 =?utf-8?B?a1lHZmR2SU0zZUE0c2tWZ09qd3dSYjdyOEpLOHNhRHJJWjh3ZU1BNHQwWXRn?=
 =?utf-8?B?WnZIelB5VE5CUVZ0bXBoVkk0WktmVGNYUjczTlFEczI2YzZQejBuM0RLV3Q5?=
 =?utf-8?B?bWxjNUlIS0xRa1hVT29OOGt5UFhJS0QrSkpDRFRZa2VNb3ZXd0ZmcmFlSEhu?=
 =?utf-8?B?aE5uOXVFRUZJVlI3azFUNlNUeDNRQVo3TzIwSkRuSGtJN2hIR1piY1NLeDR5?=
 =?utf-8?B?cDRCMXBDVHZJb0wrSWlteU9LclRzdFZFd1g3S0RCaHNwcHNGaEU0MXhxZy9a?=
 =?utf-8?B?NWpPR3czcnl2MlVYallHQ2JlMDRESmE0dWpiTGMrT2hiSlg2dzZHME9nbGZu?=
 =?utf-8?B?ZTJyZlBrRG1pK0RuVlR0aWVQcjErQWd0bEhoUTREU1JRcEZ1YUFWSHdmVW9L?=
 =?utf-8?B?YTlOYXlzWEFyRUVVdVBzNllwQmlWWmt3bGZMSWxNVGVvVWdFTUk3eW4weFdI?=
 =?utf-8?B?QjJocndSeElyRDVpTWdYVzNGZksySVV2NUNLbHdyTnUzZ2ZmcTV1R01MV1BB?=
 =?utf-8?B?bEZRK1UzbnpNOUdpYUlvc3pOemhUTjRHM3E5K0svK09YVkFGREtaR3JxWFBO?=
 =?utf-8?B?a0o1Z212MkM4clUrcVNwVHJoUVZuV1dlTThsTUJ6cWdEL05leHIwVkdhdnZI?=
 =?utf-8?B?UlBpREkxcVFEMHhoQkFYMlYvMmNWRDFhUzZQbHZ4cnZCTHlTZWsrR3lVOGh3?=
 =?utf-8?B?K1Q4K2UxOFBwNk81N3NsK2NFclkrcHBPZERWQlBlelZWc2ttalhrR3FveS80?=
 =?utf-8?B?dlNXWFhxVkZYU00rRE9qZjFHRHlxT2k4MTBnSkNtNWsyTGV4YzlxQ0VBbkhK?=
 =?utf-8?B?aXhxNE00Zlc0eFFXbmc4TWlwSHNzQkRkN25oRFpVSkxKcWZjS2tUdGh6MXRl?=
 =?utf-8?Q?CkXz0N4+1bVrR1SJEI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: svgki5hSxb+ybiiwipvufdrR39eiwlOofRJCNFYxgeV7mwAzrj88Dq1IZIivOMrxRwli0blSvc+PrKXDV/DBgZT9a0gXoUpXTcNLRQ96tRTbMokkxAxzBgOXTV8cw2yDEmVuo00q+kzaalt/ShJL/oBxf8Cc1sjZSrWA4vjhzBfedK/dUp8T1HmRtxsZSrXDDNKYTDVJCDMBX+L/bXmsC8/g9ZqEraYjf3IqFyW1bncoJrsr0OIMWAWF82+i7fA72Th1GXJLuklrlKcz5LRaweosJsnbKdAML5oR4xHVD+MuB2/eEOpaZFHe/XkwY+uSamzOAWTKPrxXENBODnFyyg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1ea14e-7fd9-4b24-7ac1-08dec54a3a43
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 10:39:32.8756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: In+u2PxpPXPsZdmSLFCv2BwluP12+sFlzb+xZYORVFYpHIyv1heSr6vu2zyHuSlj91rqhmXlGYmkKuz51gWCgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9830
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D12EA65535D

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDIxLzIyXSBkcm0vaTkxNS9kcF9saW5rX3RyYWluaW5nOiBGaXgga2VybmVs
LWRvYyBvZiBpbnRlbF9kcF9pbml0X2x0dHByX2FuZF9kcHJ4X2NhcHMoKQ0KPiANCj4gRml4IHRo
ZSBsaXN0IGZvcm1hdHRpbmcgb2YgcmV0dXJuIHZhbHVlcyBpbiBpbnRlbF9kcF9yZWFkX2Rwcnhf
Y2FwcygpJ3MNCj4ga2VybmVsLWRvYy4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8IDEwICsrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBp
bmRleCA3N2U3YmViNjVjZGQ1Li5kYjdiNDc2NjVjYjc2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBA
QCAtMzEyLDEyICszMTIsMTIgQEAgaW50IGludGVsX2RwX3JlYWRfZHByeF9jYXBzKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsIHU4IGRwY2RbRFBfUkVDRUlWRVJfQ0FQX1MNCj4gICAqIHRyYW5z
cGFyZW50IG1vZGUgbGluayB0cmFpbmluZyBtb2RlLg0KPiAgICoNCj4gICAqIFJldHVybnM6DQo+
IC0gKiAgID4wICBpZiBMVFRQUnMgd2VyZSBkZXRlY3RlZCBhbmQgdGhlIG5vbi10cmFuc3BhcmVu
dCBMVCBtb2RlIHdhcyBzZXQuIFRoZQ0KPiArICogLSA+MCAgaWYgTFRUUFJzIHdlcmUgZGV0ZWN0
ZWQgYW5kIHRoZSBub24tdHJhbnNwYXJlbnQgTFQgbW9kZSB3YXMNCj4gKyAqICAgICAgIHNldC4g
VGhlIERQUlggY2FwYWJpbGl0aWVzIGFyZSByZWFkIG91dC4NCj4gKyAqIC0gIDAgIGlmIG5vIExU
VFBScyBvciBtb3JlIHRoYW4gOCBMVFRQUnMgd2VyZSBkZXRlY3RlZCBvciBpbiBjYXNlIG9mDQo+
ICsgKiAgICAgICBhIGRldGVjdGlvbiBmYWlsdXJlIGFuZCB0aGUgdHJhbnNwYXJlbnQgTFQgbW9k
ZSB3YXMgc2V0LiBUaGUNCj4gICAqICAgICAgIERQUlggY2FwYWJpbGl0aWVzIGFyZSByZWFkIG91
dC4NCj4gLSAqICAgIDAgIGlmIG5vIExUVFBScyBvciBtb3JlIHRoYW4gOCBMVFRQUnMgd2VyZSBk
ZXRlY3RlZCBvciBpbiBjYXNlIG9mIGENCj4gLSAqICAgICAgIGRldGVjdGlvbiBmYWlsdXJlIGFu
ZCB0aGUgdHJhbnNwYXJlbnQgTFQgbW9kZSB3YXMgc2V0LiBUaGUgRFBSWA0KPiAtICogICAgICAg
Y2FwYWJpbGl0aWVzIGFyZSByZWFkIG91dC4NCj4gLSAqICAgPDAgIFJlYWRpbmcgb3V0IHRoZSBE
UFJYIGNhcGFiaWxpdGllcyBmYWlsZWQuDQo+ICsgKiAtIDwwICBSZWFkaW5nIG91dCB0aGUgRFBS
WCBjYXBhYmlsaXRpZXMgZmFpbGVkLg0KPiAgICovDQo+ICBpbnQgaW50ZWxfZHBfaW5pdF9sdHRw
cl9hbmRfZHByeF9jYXBzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+IC0tDQo+
IDIuNDkuMQ0KDQo=
