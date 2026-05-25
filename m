Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GPGBjS1FGpbPgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:46:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43A5CEBCD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FDF10E40F;
	Mon, 25 May 2026 20:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hcw4VyZh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C5210E40F;
 Mon, 25 May 2026 20:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779742000; x=1811278000;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wmI6s4y0Fkhrz+SsSuTiXbcUHRYJLPgi7rDMFGlC7m0=;
 b=Hcw4VyZh242EqG3ZmH+hX3RZhAdycDx/8N+b0vsxO0VyPGfje0Pqs0l9
 f+y0WT92CAytFywiiWyGeSMNBn4SIJI5rJqtfTMfl6b6sGk1F9PlcZFrR
 +R5r9VTalvjyUoSwhtTkCYnfaQrcXv9xGyfhWBjbp492Ix6H50UCEpfud
 lMdJNHhBe7u3NdkNAayY3gyQ2T0RjvD3Wp1ga8629+WcrDa4bPAtSDT3a
 DDIDDmQ76Vt8/Kr9XalprJ7ucsmhtddiNkb+ZZVZzuqsxrZhwuDzps46g
 uKvmtYk4b7UJsP6GISLapHnxlCa52RRC4pu6nSnsMv8v8GroZ15yOh8EF A==;
X-CSE-ConnectionGUID: 3jIxRsJdTxmNgtKWr1qThg==
X-CSE-MsgGUID: oVMMLjxPQfW8aea++z+5mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="91248608"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="91248608"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:46:40 -0700
X-CSE-ConnectionGUID: zH2tqwPBTPuJpYiAOQhJYw==
X-CSE-MsgGUID: Mc4dbAGOSBehDity9xYKpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="237511711"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:46:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:46:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:46:40 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GH4HGZ3gnG5SJoR8H6CwVZoX+UY7Bc9+s7mB4qoCAx50Mp3l03ksOYfxerv7vx9ciYzRrdT0k6v2EmPXnheSYR7eYbFPm1d4MSvi81qxmiMIFL8bsXFkOy8KA0S/+h6haX2RQIvaNK50oouSGJIJXQVSXfGE1jGpno0dT1lNzPaCz5zc3kZqQg1Dr7wMK7Y7rnRN51zIi6UHy0L67Ed++ikbp/N9YbqoHrKCYpPpb6PYN8IYCkaOdi+9+fz5YqcikjPY7xHbLXnjRg/i08uUBkH25R1dOYuT6AAyYNK0+N3clRQvqxlU0n9TnBtl3lAK+NkFJ1rdtUc0M8SX1cApRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wmI6s4y0Fkhrz+SsSuTiXbcUHRYJLPgi7rDMFGlC7m0=;
 b=M0rCBQRU5oPD1rusCHY5MPRtBTjdRfL8wnLP1WYg+KTituw9FY2jT6p0VK6iq6xfclL/h/SX/SZPiZfTbkoGgAxsL3NNCqyNklu9D7pXf6Jm/BQ01r/DOfxWgtbZpkn5Lb/mnWJZFPtuVEf8EO8o6LGoqy8jWimjOFiTBL8pzVPn2v8G1LlWWTvtYKuvdAYl6vPnae//VnZ9eqap4SHmMmpTCR55ZNUwmnkQMuE0UWGPu+Cgb9OxCOOC8GZLCZNSSezzQUb3ZrWuOVesQapEaev2RUY2k8GzNCi1OqTdsBGESAF+yLn1Whw9C36yfvTLt9+U/PK54M72rxzDBqyjfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SAWPR11MB9782.namprd11.prod.outlook.com (2603:10b6:806:4c9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Mon, 25 May
 2026 20:46:38 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:46:38 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 10/10] drm/i915/bw: Do not consider tile4 as tileY
Thread-Topic: [PATCH 10/10] drm/i915/bw: Do not consider tile4 as tileY
Thread-Index: AQHc6iZNieIFl50/XUqBapjPavowTrYfOtsA
Date: Mon, 25 May 2026 20:46:38 +0000
Message-ID: <be0786ea2815f0d62ea24ceb5982272bd10b5262.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SAWPR11MB9782:EE_
x-ms-office365-filtering-correlation-id: c7858faf-5709-4eac-7b4f-08deba9eb79c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003|11063799006|4143699003;
x-microsoft-antispam-message-info: n15+Y+zAsdMslKLEnQkD23XH+7hd6CmgqwgqzysLssQPJhOYF9dLnQkItptsSr7GsJDEwT4/EsLnPptsMrdyAF3qF61r8onUauswdsBWtBdIVDy+eoHZkQd0UwqUIG4kc+E2X1ID0hQXg7uTe+4zE7eelT9W6giB0Ou1ogL6Zaj9fYWr6TulyisVtIT9JUg/k62gPYIJn0jwjIwbZk7tVIZ/LahLHpUcNgIRNGPv3CyJhb/VCtJLbaZ3JRssK6ef6GLUodmiyK79oE9jccEiiDQLWZM1V5mtEFgKmsGitxlCvD/1mmviKD73GJzKDnnqLwqIvxHNozFnZn4opcBoiczEjYjYiEsr8MDpUPIQHjqrcpRoRPwThnOaKl7cGee5rXyG6IR23DSfzvNBXQtMHGhRRPkhNJk4pP/ux4PnBvt5pOeearofwiyYzwL0RoBA313GqI0lgeeKahUkCZyoh/Yj0jXYIvPfp0CiAOUU7x0wlL/lV5EcIRUcm33fmMC9hzDNeEKQoJ95kD3tyG4EX6dFZRMimIphp229m0wbh99klncd0K0b0GQg2ZuODhQFpSKFMkteUfeQPA/GCZwJiKoiyulIUDoqxZG0x/kcivjLYBFt5zizzmym7aCTfGglGb8UZ9Zi8GD+WDg8iM6qCwYrfRDhaxl70iM2gkLfouXvBvZ7HETM8IlA+62ouxOgDlN9/UQA478NrTq469+8piq7gg4smq2Fqof8ucay35ghKI5hjOKfvVq7rnTMBou5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1FQWkVZcWYwWE9WbGJ6U1YrYU5vNkdpWld1ZFRBbU1STStMZkVaejVIc056?=
 =?utf-8?B?WDRuNDIvbHlEbFREaGN6N3VhZnh4cXNhVDljclZPMEt2aXlQbkRsRllUWU5i?=
 =?utf-8?B?b0p4R1lNVlI2aGlxSHhyVFUyWW5FUkpwZTdLSThjVmhOdGJxMzJGelFYMDlS?=
 =?utf-8?B?clZwUnB0Y3NySWtvMUZEc0hjNEpXQWVFd2lGbGRzeTRXZE9zQ1B0QThUSEox?=
 =?utf-8?B?d0RHV1RWMzZpVEYxbUl2KzkrQWVyYXpTUlI1QWtabWVxZWhyRjNYb29WT1NN?=
 =?utf-8?B?UW8yUXNjY1Y2OENsMDVyT3grSlBrZ0tEdlJDV1orWDBMYXQwYWxjL2pscnhx?=
 =?utf-8?B?dmd1QTZtZEFuVllhL0JlRzB0OHY3LzBDL2tFOWpPeUlYV0I2aVQ0ZkV6Q0lM?=
 =?utf-8?B?SjJETk5sREVUU2RZVDFhUlBmK2h4R0VDZWRkZVpZODlBQnV0aWhNbUdwUTM4?=
 =?utf-8?B?UDRpeWtpYUN6Z3Y1bkJrMnRVR0w3ZmtXS2luYi9oRmxNd0p2Wm9iTXE1VVNP?=
 =?utf-8?B?N1lVZVh1WE82NWhua1RZTDg3U1RzT2tVY1g5VzhKaENucGFGSm9IVDhjd1Vk?=
 =?utf-8?B?YzdWRDJsY0IvK0oxTFR4bHl5Tk5ZVVU2eENSdDZUZy9EVUhwV2Iyamp5VUxx?=
 =?utf-8?B?Um5sWkxjOHh4QUJaU1BxVGZVeVJtQlJXQUdBeEhCdDB3S1RTYUZHNWV3Umt5?=
 =?utf-8?B?cTZWdUY3T25Fam8raGNVVEljSGloVSsvMnpkQWNtYXhOdEg5MEFqeHVrVnRk?=
 =?utf-8?B?TlJyVkt3QlUxSjZQTVlESXZ4Z3Z4M3lzM3RuMysyUGd0SEw3R1VkQTZYR1Jv?=
 =?utf-8?B?Z2xOeWNLaW16bEY2M3VMTFg4MktIM0MxOE5NenFnYUorOVExbWRTR0NDWUJn?=
 =?utf-8?B?YVRMbUcreVZhQk5KUGNHUXozZ2E3cUx0UUxlRUdRRUdSdVF3ajhrN1NWbmwr?=
 =?utf-8?B?Y2R0UHVVRlIxTlUxZHI3S1crd1JzSUkyeFdqUWUxK3hmcGFDWm1lYnB0NEVC?=
 =?utf-8?B?bDdjcnVqRGdyWTVzR1Qwb3NZNFd6bjN3NmJqRmFFbXVmU3BHcXlWTGxhb0Ny?=
 =?utf-8?B?NTNjeXZaOXhOaGhwNDBMdDBFVlc0UUhjM1RxbCt3aWZpMVlOZm5tdnF5bk5l?=
 =?utf-8?B?OS9tdnA0aVBwbGNHNGwvTjY0YnRIUHVuMCt4VkZ0V2VrTnFjQVVpNStvTUxx?=
 =?utf-8?B?TnRvNURFamVRendDSFM1RnlMY1p0QWNhYzNsYlBUbTBLdWNRcHZ1VHZUWlZV?=
 =?utf-8?B?SGxubU12cXB5ZGVMQ0VwVFB0MlBMYzVZR0Q2MkxndTJBM1Y3aVRWTFVBZHZT?=
 =?utf-8?B?aVNxUXZUNWZnYWFBM1FrUFQ3NmhHNHBySVUzYXRhRmE4K3VLZGRYbkxRZlB5?=
 =?utf-8?B?N1ZYTmJMS2VkNUludEhaNGRBRXMyL0Y2Uy9STll6Z0NWZFpVTmkrRXR0RjBS?=
 =?utf-8?B?dmd0dHJMenJSMzZHalZHdlkwTWJqODlOdkd6S2pmdStUcmhyS1VOK1pNSXUw?=
 =?utf-8?B?RVBieStlTnVGUDcvSWtHd3hEeU81am5KNzg3T3h6b242enR0L0NoUVFUQngv?=
 =?utf-8?B?ZGZjR2ZFVUVGR0haRWlmTlRSUkJVd3lqcCtMSWY1Tk9yOStxZnFVN2xFVldS?=
 =?utf-8?B?U0ptbVBBUG1BVkFCMkNiTW9JUi9WQUxPMkZldVN4VlNvOENJOWxQTEt1VlFo?=
 =?utf-8?B?ZHoyQVdPUjNxdFZNb09xUGs4a3dPY2c5VlJxSk9RTkFFM2NncTA4U1ZFWXF3?=
 =?utf-8?B?QXh4N3NBT29HWVFhM1NOdjlFV3hub2VzbWR4SEJGWmRYTkZDanc5REFYRjlu?=
 =?utf-8?B?OUhXdGdldk9jZEFMWndIL2IxeSs4dGl0VWdhOTltcGRuVUZZMWcwaGk2aXpO?=
 =?utf-8?B?WmJJN1hBZE9ucWF6d0F0VmZpRUVRenMwTFNiS0FyZHp2YjlwVW5kNzZySXVK?=
 =?utf-8?B?RURpS3Vmd1BVamlpbnVaaVUxb2FMTVRzdjlaUUdveEoxK1FJTzRjM2wrcFdr?=
 =?utf-8?B?YndlTGIyOTRDZnF0ekpWOVB6M3JQd3VSQWpNT0t2SUdXUWFuUjU2YnRLMlRZ?=
 =?utf-8?B?Q3YvT3RwSmE4Z0lidHdTOGNSS1VrTkpQVXVDV1JoUUVLT2g1NUR1TFI1QnBa?=
 =?utf-8?B?VlduZHJEaWYzY2k2cFdhZEM3K0JXV3NvTllzRjFJOXR5SGQ4THlxTi94UTgz?=
 =?utf-8?B?dVFQZmRCdVVhQmxDTVFNVEFteDZXT3RnckV5bnd3enhaYVNGRWdsTGFvTG1O?=
 =?utf-8?B?MTZmbEtWdy8yV2RCRkJTVXdRN2lmaHBUbzhNZDNIYnRRNDVSemtQVEhwR2JT?=
 =?utf-8?B?VXdEVnh5TkxDa2NNcDhvOTJOYnFXQVZSS3pHVnFKcGJxRjNheVFYVDE4eDhG?=
 =?utf-8?Q?qKJgI88HibsUvLAGHe7qp2FGsgio7nMIbE6lDZiJ1uuNE?=
x-ms-exchange-antispam-messagedata-1: KCc9phZlFtRMv+8seMu4rVKSzHQmQ1bjMS0=
Content-Type: text/plain; charset="utf-8"
Content-ID: <22FDFD7A2F6A104FA0049AAD57391C50@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HCjdCPTqWsMwEuZ9Oc3cARlDWt3cXp8s7zkD7bcHQ6k5OUbtBObdMsXRY5C8JGvaqqFR04KIFNhh1731s9/ezUtNhwHsx8ODYmp4eHvTEWgcc47i4NpF4ucacqMNPb8NE8ZcxJ+BXHqnnp1gglDa3JBd5v2OiuKsTNr1Uiglf6AO0iQEQViiQ098On09RRWYN0q8XdjCNaGeWcLEOc6rp984b63s6JpWci0TazCOyNc00txIlC4oibH3U8XJsUgjEaE6MYs9OxZzmVVXvxrhgSHvLIg6tnfaQBEG57GTyYZnmzGckfrngPnjBotiAscioNfgdWU+LU2rJWLZBMyPww==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7858faf-5709-4eac-7b4f-08deba9eb79c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:46:38.0689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 54jggO3ZmEBhOxLBKbo7U42jvFRV0/tKVJBAf/g12irito5yaP39nbyMg11hu8pxhMbfEW8+OeT2KuZ+NY5w+M6kHpE7N6kAObLJLlWtSz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9782
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7A43A5CEBCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRm9yIHRoZSBwdXJwb3NlcyBvZiBtZW1vcnkgYmFuZHdpZHRoIGNhbGN1bGF0aW9ucyB0
aWxlNA0KPiBzaG91bGQgbm90IGJlIGNvbnNpZGVyZWQgdGhlIHNhbWUgYXMgdGlsZVkuIE1ha2Ug
aXQgc28uDQo+IA0KPiBUaGlzIHNob3VsZCBub3QgYWN0dWFsbHkgY2hhbmdlIGFueXRoaW5nIGFz
IHRoZSBhZmZlY3RlZA0KPiBjb2RlIG9ubHkgYXBwbGllcyB0byBwcmUtTVRMIGludGVncmF0ZWQg
R1BVcywgd2hpY2ggZG9uJ3QNCj4gaGF2ZSB0aWxlNC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDI5ICsrKysrKysrKysr
KysrLS0tLS0tLS0tDQo+IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyks
IDEzIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkg
PHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXggODI1NmFkOGJjYzhiLi4zMGFjNWI4M2QwMDMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gQEAgLTI0
MCwxMCArMjQwLDE1IEBAIGludGVsX3JlYWRfcWd2X3BvaW50X2luZm8oc3RydWN0IGludGVsX2Rp
c3BsYXkNCj4gKmRpc3BsYXksDQo+IMKgCQlyZXR1cm4gaWNsX3Bjb2RlX3JlYWRfcWd2X3BvaW50
X2luZm8oZGlzcGxheSwgc3AsDQo+IHBvaW50KTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgYm9v
bCBpc195X3RpbGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICt7DQo+ICsJLyog
YXNzdW1lIFkgdGlsZSBtYXkgYmUgdXNlZCBpZiBzdXBwb3J0ZWQgKi8NCj4gKwlyZXR1cm4gIUhB
U180VElMRShkaXNwbGF5KTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBpbnQgaWNsX2dldF9xZ3Zf
cG9pbnRzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkJCcKgwqDCoMKgwqAg
Y29uc3Qgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvLA0KPiAtCQkJwqDCoMKgwqDCoCBzdHJ1
Y3QgaW50ZWxfcWd2X2luZm8gKnFpLA0KPiAtCQkJwqDCoMKgwqDCoCBib29sIGlzX3lfdGlsZSkN
Cj4gKwkJCcKgwqDCoMKgwqAgc3RydWN0IGludGVsX3Fndl9pbmZvICpxaSkNCj4gwqB7DQo+IMKg
CWludCBpLCByZXQ7DQo+IMKgDQo+IEBAIC0yODIsMTYgKzI4NywxNiBAQCBzdGF0aWMgaW50IGlj
bF9nZXRfcWd2X3BvaW50cyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gwqAJ
fSBlbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMikgew0KPiDCoAkJc3dpdGNoIChk
cmFtX2luZm8tPnR5cGUpIHsNCj4gwqAJCWNhc2UgSU5URUxfRFJBTV9ERFI0Og0KPiAtCQkJcWkt
PnRfYmwgPSBpc195X3RpbGUgPyA4IDogNDsNCj4gKwkJCXFpLT50X2JsID0gaXNfeV90aWxlKGRp
c3BsYXkpID8gOCA6IDQ7DQo+IMKgCQkJcWktPm1heF9udW1jaGFubmVscyA9IDI7DQo+IMKgCQkJ
cWktPmNoYW5uZWxfd2lkdGggPSA2NDsNCj4gLQkJCXFpLT5kZWludGVybGVhdmUgPSBpc195X3Rp
bGUgPyAxIDogMjsNCj4gKwkJCXFpLT5kZWludGVybGVhdmUgPSBpc195X3RpbGUoZGlzcGxheSkg
PyAxIDoNCj4gMjsNCj4gwqAJCQlicmVhazsNCj4gwqAJCWNhc2UgSU5URUxfRFJBTV9ERFI1Og0K
PiAtCQkJcWktPnRfYmwgPSBpc195X3RpbGUgPyAxNiA6IDg7DQo+ICsJCQlxaS0+dF9ibCA9IGlz
X3lfdGlsZShkaXNwbGF5KSA/IDE2IDogODsNCj4gwqAJCQlxaS0+bWF4X251bWNoYW5uZWxzID0g
NDsNCj4gwqAJCQlxaS0+Y2hhbm5lbF93aWR0aCA9IDMyOw0KPiAtCQkJcWktPmRlaW50ZXJsZWF2
ZSA9IGlzX3lfdGlsZSA/IDEgOiAyOw0KPiArCQkJcWktPmRlaW50ZXJsZWF2ZSA9IGlzX3lfdGls
ZShkaXNwbGF5KSA/IDEgOg0KPiAyOw0KPiDCoAkJCWJyZWFrOw0KPiDCoAkJY2FzZSBJTlRFTF9E
UkFNX0xQRERSNDoNCj4gwqAJCQlpZiAoZGlzcGxheS0+cGxhdGZvcm0ucm9ja2V0bGFrZSkgew0K
PiBAQCAtMzA2LDcgKzMxMSw3IEBAIHN0YXRpYyBpbnQgaWNsX2dldF9xZ3ZfcG9pbnRzKHN0cnVj
dA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkJCXFpLT50X2JsID0gMTY7DQo+IMKg
CQkJcWktPm1heF9udW1jaGFubmVscyA9IDg7DQo+IMKgCQkJcWktPmNoYW5uZWxfd2lkdGggPSAx
NjsNCj4gLQkJCXFpLT5kZWludGVybGVhdmUgPSBpc195X3RpbGUgPyAyIDogNDsNCj4gKwkJCXFp
LT5kZWludGVybGVhdmUgPSBpc195X3RpbGUoZGlzcGxheSkgPyAyIDoNCj4gNDsNCj4gwqAJCQli
cmVhazsNCj4gwqAJCWRlZmF1bHQ6DQo+IMKgCQkJcWktPnRfYmwgPSAxNjsNCj4gQEAgLTUxMiw3
ICs1MTcsNiBAQCBzdGF0aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxh
eQ0KPiAqZGlzcGxheSwNCj4gwqAJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9kaXNwbGF5X2J3
X3BhcmFtcw0KPiAqZGlzcGxheV9id19wYXJhbXMpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxf
cWd2X2luZm8gcWkgPSB7fTsNCj4gLQlib29sIGlzX3lfdGlsZSA9IHRydWU7IC8qIGFzc3VtZSB5
IHRpbGUgbWF5IGJlIHVzZWQgKi8NCj4gwqAJaW50IG51bV9jaGFubmVscyA9IG1heF90KHU4LCAx
LCBkcmFtX2luZm8tPm51bV9jaGFubmVscyk7DQo+IMKgCWludCBpcHFkZXB0aCwgaXBxZGVwdGhw
Y2ggPSAxNjsNCj4gwqAJaW50IGRjbGtfbWF4Ow0KPiBAQCAtNTIwLDcgKzUyNCw3IEBAIHN0YXRp
YyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0K
PiDCoAlpbnQgbnVtX2dyb3VwcyA9IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsNCj4gwqAJ
aW50IGksIHJldDsNCj4gwqANCj4gLQlyZXQgPSBpY2xfZ2V0X3Fndl9wb2ludHMoZGlzcGxheSwg
ZHJhbV9pbmZvLCAmcWksDQo+IGlzX3lfdGlsZSk7DQo+ICsJcmV0ID0gaWNsX2dldF9xZ3ZfcG9p
bnRzKGRpc3BsYXksIGRyYW1faW5mbywgJnFpKTsNCj4gwqAJaWYgKHJldCkgew0KPiDCoAkJZHJt
X2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiRmFpbGVkIHRvIGdldCBtZW1v
cnkgc3Vic3lzdGVtDQo+IGluZm9ybWF0aW9uLCBpZ25vcmluZyBiYW5kd2lkdGggbGltaXRzIik7
DQo+IEBAIC01MzAsNyArNTM0LDcgQEAgc3RhdGljIGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0
IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+IMKgCWRjbGtfbWF4ID0gaWNsX3NhZ3ZfbWF4
X2RjbGsoJnFpKTsNCj4gwqAJbWF4ZGVidyA9IG1pbihzb2NfYndfcGFyYW1zLT5kZXByb2did2xp
bWl0ICogMTAwMCwgZGNsa19tYXgNCj4gKiAxNiAqIDYgLyAxMCk7DQo+IMKgCWlwcWRlcHRoID0g
bWluKGlwcWRlcHRocGNoLCBkaXNwbGF5X2J3X3BhcmFtcy0+ZGlzcGxheXJ0aWRzDQo+IC8gbnVt
X2NoYW5uZWxzKTsNCj4gLQlxaS5kZWludGVybGVhdmUgPSBESVZfUk9VTkRfVVAobnVtX2NoYW5u
ZWxzLCBpc195X3RpbGUgPyA0IDoNCj4gMik7DQo+ICsJcWkuZGVpbnRlcmxlYXZlID0gRElWX1JP
VU5EX1VQKG51bV9jaGFubmVscywNCj4gaXNfeV90aWxlKGRpc3BsYXkpID8gNCA6IDIpOw0KPiDC
oA0KPiDCoAlmb3IgKGkgPSAwOyBpIDwgbnVtX2dyb3VwczsgaSsrKSB7DQo+IMKgCQlzdHJ1Y3Qg
aW50ZWxfYndfaW5mbyAqYmkgPSAmZGlzcGxheS0+YncubWF4W2ldOw0KPiBAQCAtNTg5LDcgKzU5
Myw2IEBAIHN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ICpkaXNwbGF5LA0KPiDCoAkJCcKgwqAgY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfYndfcGFy
YW1zDQo+ICpkaXNwbGF5X2J3X3BhcmFtcykNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9xZ3Zf
aW5mbyBxaSA9IHt9Ow0KPiAtCWJvb2wgaXNfeV90aWxlID0gdHJ1ZTsgLyogYXNzdW1lIHkgdGls
ZSBtYXkgYmUgdXNlZCAqLw0KPiDCoAlpbnQgbnVtX2NoYW5uZWxzID0gbWF4X3QodTgsIDEsIGRy
YW1faW5mby0+bnVtX2NoYW5uZWxzKTsNCj4gwqAJaW50IGlwcWRlcHRoLCBpcHFkZXB0aHBjaCA9
IDE2Ow0KPiDCoAlpbnQgbWF4ZGVidywgcGVha2J3Ow0KPiBAQCAtNTk3LDcgKzYwMCw3IEBAIHN0
YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5
LA0KPiDCoAlpbnQgbnVtX2dyb3VwcyA9IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsNCj4g
wqAJaW50IGksIHJldDsNCj4gwqANCj4gLQlyZXQgPSBpY2xfZ2V0X3Fndl9wb2ludHMoZGlzcGxh
eSwgZHJhbV9pbmZvLCAmcWksDQo+IGlzX3lfdGlsZSk7DQo+ICsJcmV0ID0gaWNsX2dldF9xZ3Zf
cG9pbnRzKGRpc3BsYXksIGRyYW1faW5mbywgJnFpKTsNCj4gwqAJaWYgKHJldCkgew0KPiDCoAkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiRmFpbGVkIHRvIGdldCBt
ZW1vcnkgc3Vic3lzdGVtDQo+IGluZm9ybWF0aW9uLCBpZ25vcmluZyBiYW5kd2lkdGggbGltaXRz
Iik7DQo+IEBAIC03MjgsNyArNzMxLDcgQEAgc3RhdGljIGludCB4ZTJfaHBkX2dldF9id19pbmZv
KHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAlpbnQgcGVha2J3LCBtYXhk
ZWJ3Ow0KPiDCoAlpbnQgcmV0LCBpOw0KPiDCoA0KPiAtCXJldCA9IGljbF9nZXRfcWd2X3BvaW50
cyhkaXNwbGF5LCBkcmFtX2luZm8sICZxaSwgdHJ1ZSk7DQo+ICsJcmV0ID0gaWNsX2dldF9xZ3Zf
cG9pbnRzKGRpc3BsYXksIGRyYW1faW5mbywgJnFpKTsNCj4gwqAJaWYgKHJldCkgew0KPiDCoAkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiRmFpbGVkIHRvIGdldCBt
ZW1vcnkgc3Vic3lzdGVtDQo+IGluZm9ybWF0aW9uLCBpZ25vcmluZyBiYW5kd2lkdGggbGltaXRz
Iik7DQoNCg==
