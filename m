Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDvYHKEumGkzCQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 10:51:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CFA1666A7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 10:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABE710E79C;
	Fri, 20 Feb 2026 09:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lpo0Yj6b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C4A10E358;
 Fri, 20 Feb 2026 09:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771581085; x=1803117085;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ibmPQUw6ORN58hGeV93olnWo//2oO00lucUi2uxZnDI=;
 b=lpo0Yj6bJbykTpxSy6Hi3qAXqjVCbdmhUDWl+3u7Sm4ePvc5avAhMqop
 QDOummYk4HFrYSpDVpfzUShUX+9gjy+cFgrX4jPVd7fJSgOt0XqD7/y0o
 ikaEqY4KUctN8iRdOtyfQ9/HEQoBeagGdRFDVy/xH7ahNZp8AjBuMlvd7
 Cb7XXufXHwSVl3OksoUXjJG6+B8aY6mrqcgYcodEyUsryZst+gGZm0CfV
 zxum5vMHIBdKwWbg8hXw3TbylO39vCfgNVW43manRtnAxYBdZJwkCjM/p
 gLLQs4G9vpcJnOM1+VSgQZaIEeneEMqGc9Dfr4pGkmhlq9WnPOPawcq5G A==;
X-CSE-ConnectionGUID: 9AhU9I/eRo+a1ONViMUSmw==
X-CSE-MsgGUID: TR3GCv31QNCcBdHW07H4Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72772410"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72772410"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:51:25 -0800
X-CSE-ConnectionGUID: DQS0Q2lFTBCM2Su4iIqEVg==
X-CSE-MsgGUID: 3taTJ1xzTIOQLOkAOP2lbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="252492468"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:51:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:51:24 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:51:24 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:51:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XS2b+IeLaDF2isCCADe37ffyqX+sJTe7hcoKwAU0ZbP6zyEg6P2kapADv57QinqIqhPP9AEds1H4zPeSzsrR3Saz286nrATpfNo013gE/d6umGvN5qc8xu56N/B9wSxBmxWuawpHzW4MqW+CPtzTUb9IbQs3F+4hxrvUwBT7XRa7jPs3ViBJnunM1fZTT2hXz+SJRbIzdA4AZAEG+wohyrxop7edMm0qpQNIhuvH2pYvTpKJO65JyFxihyNhxRl5JHqtK3Z2a7S58oThiZsetVL++40nS31bQ/lmKsVaL5e0nePdd5eHGDgBSznCiXDiTokbGR6lycGwyO2+3z5GZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibmPQUw6ORN58hGeV93olnWo//2oO00lucUi2uxZnDI=;
 b=w97LV26MJk/yIHrnpAkR7R5e5tPRiOumLO8WP0idXyDnOhQfhuLF7EwASrSvg1w0gbFWwHRghNbfT28n20fVhoKX76PgNc/3Ye14dW126/0abJFseB5wMfTiCAc3zQWCjMMyeOX1ydRe0AzKDouGjCyTG1L+gqHp6WV3dDAku89TnVtG8ssal8FMw5k6SKABy6DiZVEFCjetj9ltgIYEU+tM0hTVz9hMe8SXrD/OusN0TH1kHZPc/bSlyHq7J5BX24Ha0tCXrAPRL5y/9vVV09lDHiojc7He5MUhkp2Q/cIlC3mAcP+JqKz0xy+5NdyLISPAm1FqpC8Fd6fD83xYJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BY1PR11MB8055.namprd11.prod.outlook.com
 (2603:10b6:a03:530::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Fri, 20 Feb
 2026 09:51:21 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Fri, 20 Feb 2026
 09:51:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/19] drm/i915/lt_phy: Dump missing PLL state parameters
Thread-Topic: [PATCH 01/19] drm/i915/lt_phy: Dump missing PLL state parameters
Thread-Index: AQHcnOP870PI55rJjk6L0lx9VLQSH7WJWWOAgAIJMcA=
Date: Fri, 20 Feb 2026 09:51:21 +0000
Message-ID: <DS4PPF69154114FC066DAD6CC450F07ADA9EF68A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-2-mika.kahola@intel.com>
 <DM3PPF208195D8D412F3313F6E435A69E60E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D412F3313F6E435A69E60E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: 9ee2c7d5-5a45-4f33-4645-08de70659a01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dGN3bEhxc2xDcjhBRzZTbjBJNG5YT0FrTDEvYU1GRUN0ZGpuUmEwNThHN2Zy?=
 =?utf-8?B?SzJLZzJQbEhQM2tZL1ZDUnVIcnFCU08zZDlmQ2Jaa2EvNitZZnhzbFdwaE0r?=
 =?utf-8?B?aU1oOUVrTDZYR1hwMzVqa1FBak1EYXNkQVBRejBCUzk3STB0WXFtS25TYUZt?=
 =?utf-8?B?SFoxNUdhRHdjWWppcGlLUHJCTndMVnpsT2pjZDBRODBzU1hSN2ZpODNOU3Mz?=
 =?utf-8?B?RWxnSEJ0UzRrVVEzWmVlYnpzZytqYlRubk9peDhabHZLOGhoVkY5OHJDTnUz?=
 =?utf-8?B?aHFwVXNpM3puM2dpbHQ0YXA2bWh5ZndHbS9xcjhzS0I0amhPQXdSYzAvSWMy?=
 =?utf-8?B?TEJ4cEpEVVF1c1M3bmVGOFJIdjVyQ2w1MGIxc21EYjRwK1B5bHcxR1V0STYr?=
 =?utf-8?B?alo5YTU0MTFKb2UzNEhuOEMzSVMyTnNBZTh6MXQ3MVM1RnNFL3dkMFJGclhl?=
 =?utf-8?B?ZXNIM1pEWHQrdVd3TUNPZlpBeXZrR1RnVTczb3dYZ0RKNHA1NUlVeG9tazZY?=
 =?utf-8?B?Q0VhV1BwYkRYMnhYY05VUGFWbGJIV283NGlXUWdpTmJrem5qN21FVkl5aFAx?=
 =?utf-8?B?OWVqWU1icjZkazZXNzNoa3E3TGpPbW1zdzEvbThkM0NrM2pTaHNJVmo3OGxV?=
 =?utf-8?B?Wk9DclRsaklHai9Dc0JMQ0tOcnNRV3daTDJLSnNKOVk4MUtNWXozYzVyY2xw?=
 =?utf-8?B?SGhHeEtDbHY3eEVTTEVCVVFFeUxEdmtacHZMWjNrRXV6cU95SGlCT3c3RDla?=
 =?utf-8?B?a3JsQWdkbVVLbmEzTDE5WkVlZ2UvakRGaE51L245aCtzbDZCQ3E2ekNGS1pp?=
 =?utf-8?B?SFcvMnFxNkg1TFF5aHpPQmxxWDYzendwZDN1RUxqUjdWbk5jYkF6d1dVRnI3?=
 =?utf-8?B?dFVuMTkxZGdZK25rWEh0emZRNmlrdko5TzI0Wld1eThmdDFKYXZwU0hlaEdR?=
 =?utf-8?B?bE5pbFJ0NVNOZUtDcjZGTURzWEtYL1FXWWM5aDZYVXM0TTB2NkFOQUdiTGxU?=
 =?utf-8?B?c0wxV0tib2JzUGdTMjZFakZxd0NOVFc1RkJxOWFFQlVxaUo4VGp5NEdML2tZ?=
 =?utf-8?B?YmNiOVB3NzNyRXgyT2t3ZStYeHBVK1dxWDEra2liTGIyRENvaktpR1NwdXhj?=
 =?utf-8?B?dTc0V01KL3BZVUlkOWVQRnNwcldQbUp5dU54WGZGejdVcFduZFlSenAzTW12?=
 =?utf-8?B?TWRoblN5SmpCME91UmNlYjhIZFlTSTBtaFhmRWNreWEvd1FGOXBORkZuOHB1?=
 =?utf-8?B?Vks1REczVkltazdNOU5QQlA2dS85TTVVcG1OYmN6bVZUeTN6Z1V2NURLUHps?=
 =?utf-8?B?eG5aYmExQW5kejVZWkFlMXRBeVJ5RHFqeGFsWndLQkZLSkxsdy9KTGdjbFNQ?=
 =?utf-8?B?QWowSmhsK0YzUjhxRW5SUUpyQTVodW1EOTN0ekVldWdvbTZNTjJFMUJaMHFW?=
 =?utf-8?B?emNGc05NRzZmUnRMSGtxLzU1aWEyczFWakJwRTVadzJEWXJON051a0RuT0ZW?=
 =?utf-8?B?UEtMbVdGenNYb3c2VlY0ek5HMU9PNDk4Y2JHbnd6Y2VEK1FkaTJPZDR2NWJ6?=
 =?utf-8?B?MGc3OGFVRmZUWGZyNTNraXR2cE95dm5rTW54TndCNVV3ZVFrdlB3OVBoNG41?=
 =?utf-8?B?a2gyUUtXV2pKdTFNSkFGcXBzWXBSTlhYM2l6bW5XRUl3eDhFOHNtd2drdWVW?=
 =?utf-8?B?WDAxV3ZCMFA5dDAydGNTUXBkUndCbW5vOFgybk84TkREYmdKMHlHem5YajRJ?=
 =?utf-8?B?NE8rT01MdmxySmcrVVlQWGJIQysrcVpxOVRCcDZ3cnBLRTN0Y2J2SEpUTlNr?=
 =?utf-8?B?SmE3M1JrNUdqNmtNUzJvS0NaYnFnQ3h2UGNwOVAwY3BQMzhnak9zS0Z5TzNh?=
 =?utf-8?B?Z1B5MHpNWlVVZkNlNHE1ZjRCNmQ1MHJQQzI0V05VdTY3L1pVWm4vNlJtL3RO?=
 =?utf-8?B?WDNKS2Yya1N0cnUvS0JGY0ZuckZLN2xQREZ2eTFYQmdpK1JqT1l1MGhMZFlh?=
 =?utf-8?B?d2ZTTWtoY0o3aURsbXViZE9NQktiM1ZoQ09uUG14UWphUEtYb2ljQi80Vzdt?=
 =?utf-8?B?SS8xM0RKYUFDOCthbHVpdnlJbnlBcXUrems3RkxVRll6clVFa2pKVGEwaXBK?=
 =?utf-8?B?UmE1c0wvdStCSXNreVVkZDNrRDhmRnowdFRnWDRiUmZYMlVDZVdVR21vck5Q?=
 =?utf-8?Q?48aB8JVNXjrKAbPoZ+eCLCc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3VTdFNFTzZ3NGF6bnZ3MW9yUGlmVFFMZ2JWWWwvNkZObkJjekNqc1FuV0Vx?=
 =?utf-8?B?S3RJT0F0akJ3UlY2SURJUnA2bVBDZEFNbkRrTFhndGFYMysyYnlJdWtjN2xj?=
 =?utf-8?B?WU5sK2I0dysyMmJQd3FlZ3g5S2U2T0dVTiswSHFQNE80M1AxZForcERUclln?=
 =?utf-8?B?OWU0bU5DVGVKWGNJNk5FWlMxMHlJcGZ3MGVzZXR5YkVMa0QybXE3UkVUREkx?=
 =?utf-8?B?YnFVdFNYZzRCNTRSMm1QRVlCejJYTGtrRGRIN01PTUhuTUUvR2h5WVRFU1ZX?=
 =?utf-8?B?TzJ4NjVaSXZ0V3YySjZUeTJ1bzdlc051ZUl2U25NNnNncUx6RXR0ckJ0OVlR?=
 =?utf-8?B?azZSMi94QjlVbnJTREQ4L29NSEN4SFVxYVVqSFpMOHNNaFo1OHRKaUpEWHdR?=
 =?utf-8?B?b1JqT2k1VVVXNjlBdko3LzM4d0RkY2pleklsQzQ2SU4vR3hyT0JYS2FjcWhP?=
 =?utf-8?B?V0kyUFdVUUtPN3RoRUR6NDlLMWZGK25BR1NqSXdtU1JkK3FpZ3ZoWWdoYXZ0?=
 =?utf-8?B?cEhCNzBWelkwMWQrZmtRSk4wN3Q0NWVQUEJJTDA3Wll0Z2RiQlJ2K2xHeE90?=
 =?utf-8?B?a1U0WnExL2hRM2ZmdFdGdHZuZmo0RjR0bzJXeFpoejBDME1OeUZnM2pvUU1u?=
 =?utf-8?B?U0g4ajVNWFUrcVRhZ3JIV2xEbURGaUtDQ1NZUUpjL0RST2tPcEd1WDRqY3Zs?=
 =?utf-8?B?ZmVid1grQVFFdDdGU2cwZmdPMkNvK1g1Q0NYelJqY0wyRXlnYWJuRkIrU25h?=
 =?utf-8?B?cXlJdkI0anp0Z2x2RmdJbUlYVUhZTEIrdDBQN0tncmdXMEVmM3NwcXZ4MWl5?=
 =?utf-8?B?Zjc5SXVQN0ZrQ1FNVGl6WENLeGVjb2lkOXZ5NUZ0RkRMNzhpWDJJYWhvMjhY?=
 =?utf-8?B?OXIyVzUwbEI1QmdtRVQxQXA4bGhhaGpha0M0YjNxZkdaOStuTjRYNUZKeEZM?=
 =?utf-8?B?bGVrTm1TVkk0M2xSUUM5OVpHZ2VnT2lKdmdSSTVSZFVwOGVhU3NReVlDQllm?=
 =?utf-8?B?UlBUR0tjRnJ3c0VFbktDL1dQM3hqREZ5WDN5QkNWUHpXUitzR01XMTRraDFE?=
 =?utf-8?B?d0hVZWMvUVhZT0FhRlZZaHNYcll2WVRXWmJOODQxSFhycG14STNHUzN3a1Bq?=
 =?utf-8?B?OEE0TnBjWm1RbnRHNXMyaVFmZkh5NVppb2NZMmxpaHdzQWgyV2FXd2QvL21J?=
 =?utf-8?B?TlFTYUhQWklGVXVDUmJBRFVrT04zM2U2YlVTa0VTN2RyVzhwY0RMc3ZER1dx?=
 =?utf-8?B?NXpUZ3pna2FkSmg5RnJQYldNLzVwd2MwQXp5bWNPMEdqV2srMjE1bkxCejhC?=
 =?utf-8?B?SEFpMG9nelNYK0F5ZnNwai91SGlGSncwaTVIbzlMNmVIdVpSei9TV21sOHE5?=
 =?utf-8?B?MFh2MWpyNE1XRXB3dDhxMzRjUXBPSjY3c2d2R2xEd0dBbWcwNDBvMXI5Q01s?=
 =?utf-8?B?Y0Zhdkhmczc2eTMrZzltY3JwRHBWdER1TGNPT25aS1hXaHBuNnZtVnJsTVFC?=
 =?utf-8?B?ck00V3dMMWRlVXladGpkSVBaZFIySkZWU2VPZkFNMnNoekpsYjhsa3R1UEtU?=
 =?utf-8?B?a08xanJqYTNmVGdTOUlzNmdnWVNxOFVHdmlSQWt4S1JGd2c4YkRwTG9xVFVT?=
 =?utf-8?B?VDIrUTF6ckVWaTV4Y1dGSmphcW9lSXE1SjBWN3E0RC9LTFBOYXdOUWpHNjdw?=
 =?utf-8?B?VDZwZEtybitDVDBOeHhZb0F5ZEpjVHZ1OVZZNUVmb2VIOTNrbjVDbDVZTVVK?=
 =?utf-8?B?MWY3Sk84WENZMTlNeWdlSTJzNGpFOTZleEhGVEQrS0EvNG5GaUsrN2p4dGJO?=
 =?utf-8?B?d0N1a0J3Q1pOV0hwWHNFVTAzb3RlWTlOaTZlOUJUa3pMK241NTNFQVczODZo?=
 =?utf-8?B?cGhRSUJlVklsTzg1OU95V0paTDRROVkwZENwSit2Qnhqc05UY2dSZ0RiOXZP?=
 =?utf-8?B?akVIeW94c0prbmd0ZDRxSW5XSUhNTXd3MThrY3VrQjkwSWlWQjlob1Y2YVVE?=
 =?utf-8?B?dGFQQWpMc2gvVHhMVUdDMzdFR0p4L3lUUmc4dHRwZ3Mwano0cjVNTE9IUENi?=
 =?utf-8?B?RmZSdEpBSVhXRWFoaWpPa21VRklmN08zNmJEWDR2MmQ1SVEwUzNiYTM3LzFK?=
 =?utf-8?B?NkZIRW1qY0xIQUFOYnNYUG82R2puUTJ2ZTY2TEx0M0VXZjV3NVhmcFRSOG9X?=
 =?utf-8?B?Tkd5SzVtMVNOelFXQTBna0lrYzRyQ0hlZDQvc2plc1BvRkV1cStoMFJQNmo5?=
 =?utf-8?B?dEFsN3FIblg5a0N0TG1pRTRpQVpKbC9NTEJqbWVnRmFhd0VjaDZBcHJyakVu?=
 =?utf-8?B?SGxzK0o3NmpaZ0g3RFptUUtZTnNvcTFZVmF0SjNTTWZPMk5LTUMydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ee2c7d5-5a45-4f33-4645-08de70659a01
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:51:21.0569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zxSywhe20UF8nZst/RunhXv4RM+s3bNJ/K5wVdM9kFqTNWkPZplFivR7E1l2EkerkrFEAnLG9SswZRM44VAstg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C7CFA1666A7
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxOSBGZWJydWFyeSAyMDI2
IDQuNDQNCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UkU6IFtQQVRDSCAwMS8xOV0gZHJtL2k5MTUvbHRfcGh5OiBEdW1wIG1pc3NpbmcgUExMIHN0YXRl
IHBhcmFtZXRlcnMNCj4gDQo+ID4gU3ViamVjdDogW1BBVENIIDAxLzE5XSBkcm0vaTkxNS9sdF9w
aHk6IER1bXAgbWlzc2luZyBQTEwgc3RhdGUNCj4gPiBwYXJhbWV0ZXJzDQo+ID4NCj4gPiBEdW1w
IG1pc3NpbmcgUExMIHN0cnVjdHVyZSBtZW1iZXJzIHNzY19lbmFibGVkLCB0dGJ0X21vZGUsIGFk
ZHJfbXNiDQo+ID4gYW5kDQo+IA0KPiAqIHRidA0KPiANCj4gPiBhZGRyX2xzYiB0byBlbmhhbmNl
IGRlYnVnZ2luZy4gUmVhZG91dCBhZGRyX21zYiBhbmQgYWRkcl9sc2IgZnJvbSBIVw0KPiA+IGZv
ciBIVy9TVyBzdGF0ZSBjb21wYXJpc29uLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYyB8IDExICsrKysrKysrKystDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IGlu
ZGV4IDI3YWQ4NDA3NjA2Yi4uOTY0N2FmY2VhODk3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+ID4gQEAgLTIxNDIsNyArMjE0Miwx
MyBAQCB2b2lkIGludGVsX2x0X3BoeV9kdW1wX2h3X3N0YXRlKHN0cnVjdA0KPiA+IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksICB7DQo+ID4gIAlpbnQgaSwgajsNCj4gPg0KPiA+IC0JZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLCAibHRfcGh5X3BsbF9od19zdGF0ZTpcbiIpOw0KPiA+ICsJZHJtX2Ri
Z19rbXMoZGlzcGxheS0+ZHJtLCAibHRfcGh5X3BsbF9od19zdGF0ZTogc3NjIGVuYWJsZWQ6ICVk
LA0KPiA+IHRidCBtb2RlOiAlZFxuIiwNCj4gPiArCQkgICAgaHdfc3RhdGUtPnNzY19lbmFibGVk
LCBod19zdGF0ZS0+dGJ0X21vZGUpOw0KPiA+ICsNCj4gPiArCWZvciAoaSA9IDA7IGkgPD0gMTI7
IGkrKykNCj4gPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJhZGRyIFslZF0gbXNiID0g
MHglLjR4LCBsc2IgPQ0KPiA+IDB4JS40eFxuIiwNCj4gPiArCQkJICAgIGksIGh3X3N0YXRlLT5h
ZGRyX21zYltpXSwgaHdfc3RhdGUtPmFkZHJfbHNiW2ldKTsNCj4gPiArDQo+IA0KPiBObyBuZWVk
IHRvIGNyZWF0ZSBhIG5ldyBsb29wIGhlcmUgdG8gcHJpbnQgYWRkcmVzcyBwcmludCBpdCBsaWtl
IHlvdSByZWFkIGl0IHRoZXJlIHNob3VsZCBiZSBhIG5lc3RlZCBsb29wIEFmdGVyIGNvbmZpZyBw
cmludCB0aGVyZQ0KPiBzaG91bGQgYmUgYSBuZXN0ZWQgbG9vcCBsZXQncyB1c2UgdGhhdC4NCj4g
TW9yZW92ZXIgaXQgd2lsbCBiZSBiZXR0ZXIgYmVjYXVzZSB3ZSB3aWxsIHNob3dpbmcgb24gd2hp
Y2ggYWRkcmVzcyB3ZSB3cml0ZSB3aGF0IGRhdGEuDQoNClRoaXMgd2FzIGFkZGl0aW9uIGZvciBm
aWd1cmluZyBvdXQgd2h5IHBsbCBzdGF0ZSB2ZXJpZmljYXRpb24gaGFzIG1pc21hdGNoZXMuIEJh
c2VkIG9uIENJIHJlc3VsdHMgdGhlcmUgc3RpbGwgYXJlIHdoaWNoIEkgbWlzc2VkIHdoaWxlIHRl
c3RpbmcgbG9jYWxseS4gSSBtaXNzZWQgdG8gc2V0IHBsbF9zdGF0ZSB0byB6ZXJvIG9uIHJlYWRv
dXQgcGhhc2UuIEFueXdheSwgSSB3aWxsIG1vdmUgdGhlc2UgYW5kIHVzZSBuZXN0ZWQgbG9vcCBp
bnN0ZWFkLg0KDQpUaGFua3MhDQpNaWthDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRw
YWwNCj4gDQo+ID4gIAlmb3IgKGkgPSAwOyBpIDwgMzsgaSsrKSB7DQo+ID4gIAkJZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLCAiY29uZmlnWyVkXSA9IDB4JS40eCxcbiIsDQo+ID4gIAkJCSAgICBp
LCBod19zdGF0ZS0+Y29uZmlnW2ldKTsNCj4gPiBAQCAtMjE5Nyw2ICsyMjAzLDkgQEAgdm9pZCBp
bnRlbF9sdF9waHlfcGxsX3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gPiAgCXBsbF9zdGF0ZS0+Y29uZmlnWzJdID0gaW50ZWxfbHRfcGh5X3Jl
YWQoZW5jb2RlciwgbGFuZSwNCj4gPiBMVF9QSFlfVkRSXzJfQ09ORklHKTsNCj4gPg0KPiA+ICAJ
Zm9yIChpID0gMDsgaSA8PSAxMjsgaSsrKSB7DQo+ID4gKwkJcGxsX3N0YXRlLT5hZGRyX21zYltp
XSA9IGludGVsX2x0X3BoeV9yZWFkKGVuY29kZXIsDQo+ID4gSU5URUxfTFRfUEhZX0xBTkUwLCBM
VF9QSFlfVkRSX1hfQUREUl9NU0IoaSkpOw0KPiA+ICsJCXBsbF9zdGF0ZS0+YWRkcl9sc2JbaV0g
PSBpbnRlbF9sdF9waHlfcmVhZChlbmNvZGVyLA0KPiA+ICtJTlRFTF9MVF9QSFlfTEFORTAsIExU
X1BIWV9WRFJfWF9BRERSX0xTQihpKSk7DQo+ID4gKw0KPiA+ICAJCWZvciAoaiA9IDMsIGsgPSAw
OyBqID49IDA7IGotLSwgaysrKQ0KPiA+ICAJCQlwbGxfc3RhdGUtPmRhdGFbaV1ba10gPQ0KPiA+
ICAJCQkJaW50ZWxfbHRfcGh5X3JlYWQoZW5jb2RlciwNCj4gPiBJTlRFTF9MVF9QSFlfTEFORTAs
DQo+ID4gLS0NCj4gPiAyLjQzLjANCg0K
