Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EVhxEUKZJmrMZQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 12:28:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3480D655120
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 12:28:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bMaBSxvW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7286210F130;
	Mon,  8 Jun 2026 10:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A81C10F12F;
 Mon,  8 Jun 2026 10:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780914493; x=1812450493;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Tbp8dcEcw8nTtWlj2wmBrRZXtHqBv3jgyYhxpVktQdQ=;
 b=bMaBSxvWgMM4x9s+arzUQDKJaZpWneS5WgVtiptdbYOFO2+4o+g9RB/J
 JqR3e40kIK2+Vp8d07g4p66kmBA5Ds0ofEFxPVt4gy3WNJyMsRX1hEO7/
 5mdNX5SNyi2FsSKsZoXEu7t2a77TVBQoxtIqFzBzEKjrsMP/g1m5Rkc9k
 jBtbGxq69/H38sWYnSWXr5Qbb2WoSkWQajV+sRbM4egFbEK5UlxGSCdjL
 ysTZ4pxr8AgDeJOqrhACCg7weGNFgcHcKEyLdaBdlMbbCLcRJPxoarW1D
 TqmG9QhVpZph9rKit4JCP9Dl/IJAJSu3lUIaFCiN3st/ZxXh+Ot4sVJZa w==;
X-CSE-ConnectionGUID: 1Jj8UDknTxa8oHuxD6iemw==
X-CSE-MsgGUID: GAr0Jsi9S2S0/3GEKRvMWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81709566"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81709566"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 03:28:13 -0700
X-CSE-ConnectionGUID: D7w82gabQIe1NOD1p69BMQ==
X-CSE-MsgGUID: p1pyOYExSCuAqIMfqRb3Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="275713190"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 03:28:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 03:28:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 03:28:12 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 03:28:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a0Z1WF4kD43ILwhCG05uwuPiimd6c+F1I7VRlnuNdXQwSY7lr4b+n5MSvaJLAu8Q+M2R2JkZswtU7Ke0uiFZfCW9soxqfjz9WWPtZQiwN9xuVMyHiTY9WAbOuyqR503Zq/huMoTs0+vdIKxJit5+SfFviRK9T2VEwO8+xmhyVDx5ZCay4rVzXP3x97i0pAhOq8/TJ1+2MTQNgOqkAzfdHI7YN3kepzbjamkWhvBkl0rmHjPOEUSCvH94O1PpuCRU/mtsAkA2o5iNFNzrM2nhFcn4c7hNlQba/s6qMZ14Etko12Y/4pNIn2p3yeqz1Nv/JQadQuDq1MSgYSyXk2DVAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tbp8dcEcw8nTtWlj2wmBrRZXtHqBv3jgyYhxpVktQdQ=;
 b=s3NStaxdrezzgp2FMbvriX2Zlwb8eGa5iNREkEbB+V/uFwM/Nw1nkkZxQCeRu9NS8MLFBHEeSNXzDKOBT5Ts7KWoM7LK90uRfzQJLaxTxgcMO0I06/RRFRYkjfAP1T2mAhDWvskLopYD37eCgm9W1n43ur8+ttMkuVHZKkIiqWSw9gY4DvzxXih2bDQU2bCplDOCh9AKiHmQIWF7BLz5aBWUBEGrn8Zg2qFITzqh42onae9JB5JZeP6T79RSTxWq8XFkm8xYd7xMUzHU5EBPmNEkUtPZGkBe+lzOvyyFTCq3YjSg7Uan2eZANDK1EYel42mr24f+ahb2XqznvzavAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA1PR11MB8812.namprd11.prod.outlook.com
 (2603:10b6:806:469::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 10:28:08 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 10:28:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 20/22] drm/i915/dp_link_training: Disallow autoretrains
 after failed modeset
Thread-Topic: [PATCH v2 20/22] drm/i915/dp_link_training: Disallow
 autoretrains after failed modeset
Thread-Index: AQHc8a4gf/dzaEDdM06OEPuWkvHUprY0f35A
Date: Mon, 8 Jun 2026 10:28:08 +0000
Message-ID: <DS4PPF69154114F56EA4EF3D3F660085091EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-21-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-21-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA1PR11MB8812:EE_
x-ms-office365-filtering-correlation-id: f392d013-6243-4c85-ed9e-08dec548a257
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|11063799006|4143699003|56012099006|6133799003|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: YmGqN5KiYuHTEnYu3vfRXfeZr9Zk2dOvAi0xDhUuU8sycUaZ8zVNYTIqSdCprsYSSArRZFLKkjnpM7q7a/LhyjGCoUhZvKXPwBiHI82c26yNmETgVno4pNUTZ3B8X+eNdv97NDHLWpZoRMwiuY8tgyuzUIKi5b6R1OAA9Kq4Z48ASjhbbLdfCVlNWc2AP44wkDgvvW9vWxR0ALndzrr7PFQfkrkCzOadAAWGscXCT8WmSnmXKICwk4B8rMcxiUZAChz0tnJa3TSf9Mme8MAKykF6q3CZpNtHPbrkaem90a22jnK43un97OTQJzb7rtDhJjuvHsjmURXLuC8g8ax9TGFMwVu7zDPb5eWqe+xWT8oKhdvH8ruse0j1aNC5a8dhSnE3tf8U6vEJH2zTXSke0pidXyW2SwAWMMmbUlSrcItqz43tcUdvlXjHny2Eyku6h/K3qzbzm1EEwIKA0SObVLldi8N2lq1xD7y/tqJ8csj08BSgjsWcvWRgW8xbwM6Q6Oc8e7c9gMyPymaaXvI4/8lBU13Kl/NwyTlahHI+wAAZP2qP4N1f+eG5SgrERY5HsOsHPedkzUM6dl4DBeE98wpp7soRtwMEhD4q+s9bE1aUp9jI10T4Za1trZqG1nFlgCulKk9qfx3bWdkGXwvpB8Mj/8+696zsAW0UOFa69Nyb17ZpE6CSwLYcYM2XZj8OR90nxWQ4asfbAwTp9enY7kFgqJWfiJ2QS5YPKw3W+uornG4F4/F6QRut0h3elafu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(11063799006)(4143699003)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZWIrbG5pVTNkUXZKMk15emhvcVYvdjZjNmFRMGQ2VjN1QmMyQVk5ZDFDU1pa?=
 =?utf-8?B?ME1YNGlTU0J2LzRGMHlJdjZhNXBWc0FHQitXS2NQNnB1djBYTnltVnVxT3I0?=
 =?utf-8?B?aW5BWTRxWTBpSHI3TXNYQVRLNlB6bENzbHhoWEJXVHNhYVl6aGNpK3hKRlk5?=
 =?utf-8?B?blpKTkMzY244cFlXSS9TU2ppZ1I4VmdzRlpNMUxKRWN3Yk02NkkyRFJQaUsy?=
 =?utf-8?B?SVRGd0lXUGZYY3dnQzduK0d3SWdyQmZmUXNVbjI5N0JPOUhjTmM3OXk5Mjls?=
 =?utf-8?B?cDM4cDg4SllXWkQ3aEJWNG9Dd2thUmU4eVZncitQcEp6NG5xcVhocXFlZis1?=
 =?utf-8?B?emhsSHMwV2x6Z1pkVmd0TlhjYy9rRUg2U3BzVmg3Y3NMeEtGTzlkZVlpMXRk?=
 =?utf-8?B?cjJjcHlrWnJldUx1NUhNR3d1U1lHY29RRHQyY0FEOUNxU0Y0bU92L3RKbU1Q?=
 =?utf-8?B?YWt5MXlHTk1yQXd5YWtUNjZ6QVRaUkxEeDU3bXcxaFVQcW00blpCekhEYkJj?=
 =?utf-8?B?WjZ3R0xFNGZ4d3RVeG5sVlFHMzNNdXRJTU1oVjltcFpESVRVcVkvWTZsYXJO?=
 =?utf-8?B?a3JQTHdRZ2NYM29maFdZVVk0K0FzV2VwRVJIbEN4R0JmRWNPaTE4UTB2RW9Q?=
 =?utf-8?B?bDBiUjFKZTFGaUdFYlkrWVVTd2ZwMVNaQzVhU1dONUxIdWtqQ0Z5NlU5OWk2?=
 =?utf-8?B?b2JTZVJBRHZuSFNKR29uUkpqTFMyNmJWZXZBQVpRanpSY2hhMTIvcWlNcTEr?=
 =?utf-8?B?TzhHU3YvT2NidGwxZVNVZTJOVGhXVHF4bkR6YVB4enNNRUpKemdFYWVOWkFH?=
 =?utf-8?B?WG9sakhlVGdNV2RHWXQ4U0FtUldZVEI2aVJTanlOcFhoa1BqNjk5bVA3VERI?=
 =?utf-8?B?L2JLZ2pBMXU2NW54YktBaFVhTkRkUlM2UXJjZnBacVIweTdxZWcwV1J0K3l2?=
 =?utf-8?B?eWhiaUMrbEJzZU9TNlp4K3M3S0xRRXlkMTQ4dnh2bXVrbDQ3ZFpvVElWRTM2?=
 =?utf-8?B?blc5ZzBPVGFmUm55NVdaelZoM1NWMStnNHlOVU9tMkFIeFdGWEVXZkFNdXJO?=
 =?utf-8?B?b0dXWEpwZURRN1FWTk5KQXluTkI2UTJyRVFMR2JyMWwxaEJvdC9MRWVLdE5h?=
 =?utf-8?B?ZXBtYUNxSUNaTmNoQzFqTGNLRzZ6Tjc1NlhZN1d2a3ladUdSdUM1cXJlQVI5?=
 =?utf-8?B?OGpZUUgrd3ptN3R5YmN6RGZrWm05TjVsbDRKWWtmOUoweTQ3MU1QZFpubUtm?=
 =?utf-8?B?N091bjVkNm5JTS9IK3Jnb3lJdmZpWTIrSG5RNUMwVzRCbmpJN21JMFh0RGhj?=
 =?utf-8?B?ZUNBSHp1ZEhmb0xPMitCT2EvUDFKVWxrcGVpTkZUS2lVdzJ5eUFKWmlzODM4?=
 =?utf-8?B?VmFSczFubS9hL2E1MDdLVitSWjlyZWtlOCt6dlM4elcySXhWYlBjN1RPeEc4?=
 =?utf-8?B?MTI1MVQwVVVOUFhDWXgwVVVheXZWcDRWQVVFRktTWTFZc1JBN0JlU3hHMTZ5?=
 =?utf-8?B?ZWZDc2R4WW1lV1ZUUUtBSVFMOUpwSHlTY2pqZ1o3UXdWYkdvRThUbUlsZEZn?=
 =?utf-8?B?cnpUN2tGM081WGdEMEJZMkVXUStpS2VvT2IrWCtqNkI2UkJMT2NxN3QxUmpq?=
 =?utf-8?B?R01NdGc1Uk5xVWpLMTF6MEJxUytvMlVJMkp3ZUlwOU02UWJDTForOWFndE5F?=
 =?utf-8?B?U3BPTC93cWFVOEZxbnVWQTVyTklZRTdLNmhRTU5IeEoycHhWUFpGSG4yMUFn?=
 =?utf-8?B?QXFReGJycW9kdlI5Z2h1c3pjWTdUb0U1U21mbmx2TWtiNWRvbmhvNkVQU2Yx?=
 =?utf-8?B?QTFrUzFFNDNZZnh5dk9OSDVvQW1LeFYxUVNaaVc3dWE2NWs4WTU1ZWdKNDBM?=
 =?utf-8?B?RDkrWWJUbFdiamx2R09paEhHL09pVTZEa2lSYytNTWdZblU3bFhrSUxKVUx1?=
 =?utf-8?B?dWRVQmRMME53VXZnWi9KRGtsZlR3NzhrZUtOc3J1dHdwaUlTUVY0elh5K3A3?=
 =?utf-8?B?aUlJSlJMNm1rUGJsdlY0UmlXYVhRelZTREE0YnZvcDgva3BraDBGVWErOWFQ?=
 =?utf-8?B?YWlvS0FvRE5MQmhvK0tuZ1RDTDRNLzhFUGdDcmgwNS9mMnQ3TjlaejYxcTh4?=
 =?utf-8?B?U1dYcXNCV1BCcm9MaTV0V3BYaGV2Q3R3bWx1NHFDd0JqNHRpM0QzcDdiOG9G?=
 =?utf-8?B?MFhlbllYUHorUkwyRWl4dHVHZVQ4Zll0Wk80WkFqOGpoVE9QZVdBVVVBZ3Fi?=
 =?utf-8?B?THEwL242V25rWHJ5TkNpQ0NzWUMzbFZjN1c5aEhIdG1BQS8vdGV1MUhCV2ts?=
 =?utf-8?Q?4T/Pf1CzmJ2PeByJ8i?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kdJFOyeSuuJ01vUNPyLpMgF72VlHOAby4O/wc4vJFAnkfG3Ek2KhVA5bvdDoryq3QJwV5zMTyw6pWyfOBQBn3b9qYS5k5mFJdGGO1hPQygHu1EX4FFplCP1VggYoEU/U3BuMUM/4NHxUNZmFnddAy2FI8JuiKYUuAgCKoNAlYQzw5ZqPd6WL/NOJFcS6GJwwFmzyiMYzfw7gwewi9qeg8tYJCigdWnNgOFqH/YM60BmiOyfBJ23kDJUobg89kw8kf8SJEVSWdrNlrI6oPEspuNPLdMTjOK+sJew8sfMvOv+4sNBvV+LiNhaVnN8X/9Klf98aDw51CXdceNflZb9XKg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f392d013-6243-4c85-ed9e-08dec548a257
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 10:28:08.4647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nxbwd+Ik5IaWCuVTdOLLu1tF5vyc2aFokVfzy1Otq+gpPPz8SvmE1TOQnvJiw982x84lwgRYvSJ57yli+cXa8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8812
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 3480D655120

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAyMC8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogRGlzYWxsb3cgYXV0
b3JldHJhaW5zIGFmdGVyIGZhaWxlZCBtb2Rlc2V0DQo+IA0KPiBpbnRlbF9kcF9jaGVja19saW5r
X3N0YXRlKCkgYW5kIGludGVsX2RwX2xpbmtfcGFyYW1zX3ZhbGlkKCkgcGVyZm9ybQ0KPiBvbmx5
IGEgY29hcnNlIHZhbGlkYXRpb24gb2YgdGhlIGxpbmsgY29uZmlndXJhdGlvbiB1c2VkIGJ5IHRo
ZSBhY3RpdmUNCj4gbW9kZSBhZ2FpbnN0IHRoZSBhdmFpbGFibGUgY29uZmlndXJhdGlvbnMgKGFz
IGNvbnN0cmFpbmVkIGJ5IHRoZSBsaW5rDQo+IHRyYWluaW5nIGZhbGxiYWNrIGNvZGUgYWZ0ZXIg
YSBwcmV2aW91cyBMVCBmYWlsdXJlKS4gRXZlbiBpZiB0aGVzZQ0KPiBjb2Fyc2UgY2hlY2tzIGZp
bmQgYSBzZWVtaW5nbHkgdXNhYmxlIGNvbmZpZ3VyYXRpb24sIHRoZSBtb2Rlc2V0IGNoZWNrLA0K
PiB3aGljaCBwZXJmb3JtcyBmdWxsIHZlcmlmaWNhdGlvbiwgbWF5IHN0aWxsIGZhaWwuDQo+IA0K
PiBEaXNhbGxvdyBmdXJ0aGVyIGF1dG9yZXRyYWluIGF0dGVtcHRzIGlmIGFuIGF1dG9yZXRyYWlu
IG1vZGVzZXQgZmFpbHMuDQo+IEZ1cnRoZXIgYXR0ZW1wdHMgd291bGQganVzdCByZXVzZSB0aGUg
c2FtZSBtb2Rlc2V0IHBhcmFtZXRlcnMgYW5kIGZhaWwNCj4gaW4gdGhlIHNhbWUgd2F5LiBBdXRv
cmV0cmFpbiB3aWxsIGJlIHJlYWxsb3dlZCB1bmNvbmRpdGlvbmFsbHkgd2hlbiB0aGUNCj4gc2lu
ayByZXBvcnRzIGEgY2hhbmdlIGluIGl0cyBjYXBhYmlsaXRpZXMuIFRoaXMgYWxsb3dzIGFuIGF1
dG9yZXRyYWluIHRvDQo+IHByb2NlZWQgb25jZSBib3RoIHRoZSBsaW5rIHZhbGlkYXRpb24gYW5k
IG1vZGVzZXQgY2hlY2tzIGNvbmZpcm0gYQ0KPiB1c2FibGUgY29uZmlndXJhdGlvbi4NCj4gDQo+
IEFsc28gY2xhcmlmeSBpbiBpbnRlbF9kcF9jaGVja19saW5rX3N0YXRlKCkgYW5kDQo+IGludGVs
X2RwX2xpbmtfcGFyYW1zX3ZhbGlkKCkgdGhhdCB0aGVzZSBjaGVja3MgYXJlIGNvYXJzZSBhbmQg
dGhhdCBhDQo+IGZ1bGwgdmFsaWRhdGlvbiBpcyBvbmx5IHBlcmZvcm1lZCBieSB0aGUgc3Vic2Vx
dWVudCBhdG9taWMgbW9kZXNldA0KPiBjaGVjay4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCA5NSArKysrKysrKysrKysrKysrKystDQo+ICAxIGZp
bGUgY2hhbmdlZCwgOTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5n
LmMNCj4gaW5kZXggMDIzMWNhMGNlYTMwYy4uNzdlN2JlYjY1Y2RkNSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5n
LmMNCj4gQEAgLTEwMCw2ICsxMDAsNyBAQA0KPiAgICogICAtIGxpbmtfcmVjb3ZlcnlfYXV0b3Jl
dHJhaW5fYWxsb3dlZCgpDQo+ICAgKiAgIC0gbGlua19yZWNvdmVyeV9oYXNfbm9fZmFsbGJhY2so
KQ0KPiAgICogICAtIGxpbmtfcmVjb3ZlcnlfbWFya190cmFpbl9mYWlsdXJlKCkNCj4gKyAqICAg
LSBsaW5rX3JlY292ZXJ5X21hcmtfYXV0b3JldHJhaW5fbW9kZXNldF9mYWlsdXJlKCkNCj4gICAq
ICAgLSBsaW5rX3JlY292ZXJ5X21hcmtfbm9fZmFsbGJhY2soKQ0KPiAgICogICAtIGxpbmtfcmVj
b3ZlcnlfcmVzZXQoKQ0KPiAgICovDQo+IEBAIC0xMzYyLDYgKzEzNjMsMTMgQEAgbGlua19yZWNv
dmVyeV9oYXNfbm9fZmFsbGJhY2soc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtf
dHJhaW5pbmcpDQo+ICAgKiBpcyBubyBsb25nZXIgcG9zc2libGUsIHZpYSB1c2Vyc3BhY2UgbW9k
ZXNldHMgYWZ0ZXIgZmFsbGJhY2sNCj4gICAqIHNlbGVjdGlvbi4NCj4gICAqDQo+ICsgKiBOb3Rl
IHRoYXQgdGhlIGVycm9yIHJlcG9ydGVkIHZpYSB0aGlzIGZ1bmN0aW9uIGlzIHRoZSBlcnJvciBz
ZWVuIGJ5DQo+ICsgKiB0aGUgbGluayB0cmFpbmluZyBmYWlsdXJlIGhhbmRsZXIgcHJvcGVyIGFm
dGVyIGFuIGFjdHVhbCBsaW5rDQo+ICsgKiB0cmFpbmluZyBmYWlsdXJlIGluZGljYXRlZCBieSB0
aGUgc2luayBkZXZpY2UsIGFuZCBzbyB0aGUgZXJyb3IgYW5kDQo+ICsgKiBjb3JyZXNwb25kaW5n
IGFjdGlvbnMgcmVxdWlyZWQgYXJlIGRpc3RpbmN0IGZyb20gYW4gYXV0b3JldHJhaW4NCj4gKyAq
IG1vZGVzZXQgZmFpbHVyZS4gU2VlIGxpbmtfcmVjb3ZlcnlfbWFya19hdXRvcmV0cmFpbl9tb2Rl
c2V0X2ZhaWx1cmUoKSB0bw0KPiArICogcmVwb3J0IGEgbW9kZXNldCBmYWlsdXJlLg0KPiArICoN
Cj4gICAqIFNlZSBhbHNvOg0KPiAgICogICAtIERPQzogRGlzcGxheVBvcnQgbGluayB0cmFpbmlu
Zw0KPiAgICovDQo+IEBAIC0xMzgyLDYgKzEzOTAsMjkgQEAgbGlua19yZWNvdmVyeV9tYXJrX3Ry
YWluX2ZhaWx1cmUoc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcp
DQo+ICAJcmV0dXJuIGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fYWxsb3dlZChsaW5rX3RyYWlu
aW5nKTsNCj4gIH0NCj4gDQo+ICsvKg0KPiArICogUmVjb3JkIGEgZmFpbHVyZSBvZiB0aGUgYXV0
b3JldHJhaW4gbW9kZXNldCBiZWZvcmUgbGluayB0cmFpbmluZw0KPiArICogaXRzZWxmIGNvdWxk
IHJ1bi4NCj4gKyAqDQo+ICsgKiBOb3RlIHRoYXQgdGhlIGVycm9yIHJlcG9ydGVkIHZpYSB0aGlz
IGZ1bmN0aW9uIGFuZCB0aGUgY29ycmVzcG9uZGluZw0KPiArICogZXhwZWN0ZWQgYWN0aW9ucyBh
cmUgZGlzdGluY3QgZnJvbSBhbiBhY3R1YWwgbGluayB0cmFpbmluZyBmYWlsdXJlOg0KPiArICog
dGhlIG1vZGVzZXQgZmFpbGVkIGJlZm9yZSBhIGxpbmsgdHJhaW5pbmcgYXR0ZW1wdCBjb3VsZCBi
ZSBwZXJmb3JtZWQuDQo+ICsgKiBTZWUgbGlua19yZWNvdmVyeV9tYXJrX3RyYWluX2ZhaWx1cmUo
KSB0byByZXBvcnQgYW4gYWN0dWFsIGxpbmsNCj4gKyAqIHRyYWluaW5nIGZhaWx1cmUuDQo+ICsg
Kg0KPiArICogVXBkYXRlIHRoZSBzdGF0ZSB0byBpbmRpY2F0ZSB0aGF0IGZ1cnRoZXIgcmVjb3Zl
cnkgaXMgdG8gYmUgZGVsZWdhdGVkIHRvDQo+ICsgKiB1c2Vyc3BhY2UgdmlhIGEgcmVndWxhciBt
b2Rlc2V0Lg0KPiArICoNCj4gKyAqIFNlZSBhbHNvOg0KPiArICogICAtIERPQzogRGlzcGxheVBv
cnQgbGluayB0cmFpbmluZw0KPiArICovDQo+ICtzdGF0aWMgdm9pZA0KPiArbGlua19yZWNvdmVy
eV9tYXJrX2F1dG9yZXRyYWluX21vZGVzZXRfZmFpbHVyZShzdHJ1Y3QgaW50ZWxfZHBfbGlua190
cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gK3sNCj4gKwlpZiAobGlua19yZWNvdmVyeV9hdXRv
cmV0cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKQ0KPiArCQlsaW5rX3RyYWluaW5nLT5yZWNv
dmVyeV9zdGF0ZSA9IElOVEVMX0RQX0xJTktfUkVDT1ZFUllfQVVUT1JFVFJBSU5fRElTQUJMRUQ7
DQo+ICt9DQo+ICsNCj4gIC8qIFJlY29yZCB0aGF0IG5vIG1vcmUgbGluayBmYWxsYmFjayBjb25m
aWd1cmF0aW9uIGlzIGF2YWlsYWJsZS4gKi8NCj4gIHN0YXRpYyB2b2lkDQo+ICBsaW5rX3JlY292
ZXJ5X21hcmtfbm9fZmFsbGJhY2soc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtf
dHJhaW5pbmcpDQo+IEBAIC0yMDI5LDYgKzIwNjAsMjMgQEAgYm9vbCBpbnRlbF9kcF9saW5rX3Bh
cmFtc192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgbGlua19yYXRlLA0KPiAg
CSAqIEZJWE1FOiB3ZSBuZWVkIHRvIHN5bmNocm9uaXplIHRoZSBjdXJyZW50IGxpbmsgcGFyYW1l
dGVycyB3aXRoDQo+ICAJICogaGFyZHdhcmUgcmVhZG91dC4gQ3VycmVudGx5IGZhc3QgbGluayB0
cmFpbmluZyBkb2Vzbid0IHdvcmsgb24NCj4gIAkgKiBib290LXVwLg0KPiArCSAqDQo+ICsJICog
Tk9URToNCj4gKwkgKiBUaGlzIG1heSBiZSBjYWxsZWQgZnJvbSBib3RoIHNlcmlhbGl6ZWQgKGxv
Y2tlZCBhbmQgc3luY2VkIGFnYWluc3QNCj4gKwkgKiBhc3luYyBjb21taXQgdGFpbHMpIGFuZCB1
bnNlcmlhbGl6ZWQgKGUuZy4gSFBEIElSUSkgY29udGV4dHMuIEl0DQo+ICsJICogdXNlcyB0aGUg
Y3VycmVudCBtYXggbGluayBsaW1pdHMgYXMgdXBwZXIgYm91bmRzIHRvIHJlamVjdA0KPiArCSAq
IG9idmlvdXNseSBib2d1cyB2YWx1ZXMsIGV2ZW4gaWYgdGhvc2UgYm91bmRzIG1heSBiZSBvYnNl
cnZlZCBpbiBhDQo+ICsJICogdHJhbnNpZW50IG9yIHNsaWdodGx5IHN0YWxlIHN0YXRlLg0KPiAr
CSAqDQo+ICsJICogVGhpcyBpcyBub3QgYSBmdWxsIHZhbGlkYXRpb24gb2YgdGhlIGxpbmsgY29u
ZmlndXJhdGlvbi4gRXZlbiBpbg0KPiArCSAqIHNlcmlhbGl6ZWQgY29udGV4dHMsIGFkZGl0aW9u
YWwgY29uc3RyYWludHMgKGUuZy4gc291cmNlIGxpbWl0YXRpb25zLA0KPiArCSAqIGJhbmR3aWR0
aCBjaGVja3MsIGFuZCBvdGhlciBhdG9taWMgc3RhdGUgZGVwZW5kZW5jaWVzKSBhcmUgb25seQ0K
PiArCSAqIHZlcmlmaWVkIGR1cmluZyB0aGUgYXRvbWljIGNoZWNrIG9mIHRoZSBzdWJzZXF1ZW50
IGNvbW1pdC4NCj4gKwkgKg0KPiArCSAqIG1heF9saW5rX2xpbWl0cyBvbmx5IHByb3ZpZGVzIGlu
ZGVwZW5kZW50IHVwcGVyIGJvdW5kcyBmb3IgcmF0ZSBhbmQNCj4gKwkgKiBsYW5lIGNvdW50LiBD
YWxsZXJzIG11c3Qgbm90IGFzc3VtZSBpdCBpcyBpdHNlbGYgYW4gYWxsb3dlZCBsaW5rDQo+ICsJ
ICogY29uZmlndXJhdGlvbi4gQWx0aG91Z2ggdGhhdCBoYXBwZW5zIHRvIGJlIHRydWUgZm9yIG5v
dywgaXQgd2lsbA0KPiArCSAqIHN0b3AgYmVpbmcgZ3VhcmFudGVlZCBvbmNlIGZhbGxiYWNrIGRl
cGVuZHMgb25seSBvbiBkaXNhYmxlZCBjb25maWdzLg0KPiAgCSAqLw0KPiAgCWlmIChsaW5rX3Jh
dGUgPT0gMCB8fA0KPiAgCSAgICBsaW5rX3JhdGUgPiBpbnRlbF9kcC0+bGluay5tYXhfcmF0ZSkN
Cj4gQEAgLTIxNTksNiArMjIwNywyMSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9pc19jb25uZWN0
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkJaW50ZWxfZHAtPmlzX21zdDsNCj4g
IH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBxdWV1ZV9tb2Rlc2V0X3JldHJ5X2Zvcl9saW5rc19pbl9z
dGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkJCSAgIHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiArCQkJCQkJICAgdTggcGlwZV9tYXNrKQ0KPiAr
ew0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOw0KPiArCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiArDQo+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNf
aW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUpIHsNCj4gKwkJaWYgKCEoQklUKGNydGMt
PnBpcGUpICYgcGlwZV9tYXNrKSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICsJCWludGVsX2Rw
X3F1ZXVlX21vZGVzZXRfcmV0cnlfZm9yX2xpbmsoc3RhdGUsIGVuY29kZXIsIGNydGNfc3RhdGUp
Ow0KPiArCX0NCj4gK30NCj4gKw0KPiAgc3RhdGljIGludCBpbnRlbF9kcF9yZXRyYWluX2xpbmso
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkJIHN0cnVjdCBkcm1fbW9kZXNl
dF9hY3F1aXJlX2N0eCAqY3R4KQ0KPiAgew0KPiBAQCAtMjIwOSwxMSArMjI3MiwyMyBAQCBzdGF0
aWMgaW50IGludGVsX2RwX3JldHJhaW5fbGluayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwNCj4gDQo+ICAJaW50ZWxfZHBfbGlua190cmFpbmluZ19zZXRfZm9yY2VfcmV0cmFpbihsaW5r
X3RyYWluaW5nLCBmYWxzZSk7DQo+IA0KPiAtCWlmIChyZXQpDQo+ICsJaWYgKHJldCkgew0KPiAg
CQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICAJCQkgICAgIltFTkNPREVSOiVkOiVzXSBs
aW5rIHJldHJhaW5pbmcgZmFpbGVkOiAlcGVcbiIsDQo+ICAJCQkgICAgZW5jb2Rlci0+YmFzZS5i
YXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUsDQo+ICAJCQkgICAgRVJSX1BUUihyZXQpKTsNCj4g
KwkJLyoNCj4gKwkJICogaW50ZWxfZHBfbmVlZHNfbGlua19yZXRyYWluKCkgb25seSBwZXJmb3Jt
cyBhIGNvYXJzZSBjaGVjayBvZg0KPiArCQkgKiByZXRyYWluYWJpbGl0eSwgc28gdGhlIG1vZGVz
ZXQgY29tbWl0IG1heSBzdGlsbCBmYWlsLiBEaXNhYmxlDQo+ICsJCSAqIGZ1cnRoZXIgYXV0by1y
ZXRyYWluIGF0dGVtcHRzIGluIHRoYXQgY2FzZS4NCj4gKwkJICoNCj4gKwkJICogQSBzaW5rIGNh
cGFiaWxpdHkgY2hhbmdlIG1heSByZXN0b3JlIHRoZSByZXRyYWluYWJsZSBzdGF0ZSAoc2VlDQo+
ICsJCSAqIGludGVsX2RwX3VwZGF0ZV9zaW5rX2NhcHMoKSwgaW50ZWxfZHBfcmVzZXRfbGlua19w
YXJhbXMoKSksDQo+ICsJCSAqIGFsbG93aW5nIHJldHJhaW5pbmcgdG8gYmUgYXR0ZW1wdGVkIGFn
YWluLg0KPiArCQkgKi8NCj4gKwkJbGlua19yZWNvdmVyeV9tYXJrX2F1dG9yZXRyYWluX21vZGVz
ZXRfZmFpbHVyZShsaW5rX3RyYWluaW5nKTsNCj4gKwkJcXVldWVfbW9kZXNldF9yZXRyeV9mb3Jf
bGlua3NfaW5fc3RhdGUoc3RhdGUsIGVuY29kZXIsIHBpcGVfbWFzayk7DQo+ICsJfQ0KPiAgb3V0
Og0KPiAgCWRybV9hdG9taWNfY29tbWl0X3B1dCgmc3RhdGUtPmJhc2UpOw0KPiANCj4gQEAgLTIy
MzcsNiArMjMxMiwyNCBAQCB2b2lkIGludGVsX2RwX2NoZWNrX2xpbmtfc3RhdGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoIWludGVsX2RwX2lzX2Nvbm5lY3RlZChpbnRlbF9k
cCkpDQo+ICAJCXJldHVybjsNCj4gDQo+ICsJLyoNCj4gKwkgKiBOT1RFOg0KPiArCSAqIFRoaXMg
bWF5IHJhY2Ugd2l0aCBhbiBvbmdvaW5nIG1vZGVzZXQgdXBkYXRpbmcgdGhlIG1heCBsaW5rIGxp
bWl0cw0KPiArCSAqIGFuZCwgd2l0aCB0aGF0LCB0aGUgbGluaydzIHJldHJhaW5hYmlsaXR5LCBz
bw0KPiArCSAqIGludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbigpIG1heSBvYnNlcnZlIHN0YWxl
IHN0YXRlLg0KPiArCSAqDQo+ICsJICogVGhpcyBpcyBoYXJtbGVzczogc3RhbGUgcGFyYW1zIGNh
cHR1cmVkIGFzIHZhbGlkIG1heSBzcHVyaW91c2x5DQo+ICsJICogYWxsb3cgcmV0cmFpbmluZyBo
ZXJlLCBidXQgdGhlIGRlY2lzaW9uIGlzIHJlY2hlY2tlZCBsYXRlciBpbiBhDQo+ICsJICogcHJv
cGVybHkgc2VyaWFsaXplZCBjb250ZXh0Lg0KPiArCSAqDQo+ICsJICogQ29udmVyc2VseSwgc3Rh
bGUgcGFyYW1zIGNhcHR1cmVkIGFzIGludmFsaWQgbWF5IHNraXAgcmV0cmFpbmluZywNCj4gKwkg
KiBidXQgdGhhdCBjYW4gb25seSBoYXBwZW4gYmVmb3JlIHRoZSBtb2Rlc2V0IGhhcyBjb21wbGV0
ZWQgaXRzIG93bg0KPiArCSAqIGxpbmsgdHJhaW5pbmcgZm9yIHRoZSBuZXcsIHZhbGlkIGNvbmZp
Z3VyYXRpb24sIGFmdGVyIHdoaWNoIHRoZQ0KPiArCSAqIGxpbmsgc3RhdGUgaXMgcmVjaGVja2Vk
Lg0KPiArCSAqDQo+ICsJICogU2VlIGludGVsX2RwX2xpbmtfcGFyYW1zX3ZhbGlkKCkgZm9yIGNh
cHR1cmluZyBhbmQgdmFsaWRhdGluZyB0aGUNCj4gKwkgKiBwYXJhbXMuDQo+ICsJICovDQo+ICAJ
aWYgKCFpbnRlbF9kcF9uZWVkc19saW5rX3JldHJhaW4oaW50ZWxfZHApKQ0KPiAgCQlyZXR1cm47
DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K
