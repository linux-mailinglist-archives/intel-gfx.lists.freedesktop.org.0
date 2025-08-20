Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A667B2D9F1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 12:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A270910E6EC;
	Wed, 20 Aug 2025 10:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftKtCB2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD7A10E6EA;
 Wed, 20 Aug 2025 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755685316; x=1787221316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O0R1FhTz4pEZsmvoglIZXsT+r5cltRSwaA05gOugYdQ=;
 b=ftKtCB2KMDgqqET5KA9wdQU8aTahQP4nrl9luxyqQR4NM+qJIybRzQSx
 C8zwTSslowk2WBxug/p4WLsaPpq2IYUSBZe0YGX+PcRjVGFEFemslAzSY
 W7aPYryJWCtWT55110181okVEmcd1/qJxUT77Swjy5bsaujbpSRVpq+oN
 IOgu5+D//gCMCAw+S0zgiMk68+HjHW4oc3FpbbB5wx+dA+nc3xlE9kjwR
 CYTMYUOdvfzMBl5+vfvj9/SfBMMhqAFUgarv1wGsvsPHJZOZdf72lovP7
 r8xb/E0j0nGtRFmxMN9p33acSu/Qjonojd8PFkxzdSu9B7T9ThY7XK5hG A==;
X-CSE-ConnectionGUID: /xZxDQNFTbiqqlasYXEwRg==
X-CSE-MsgGUID: 7OdMMQiRQfCOxITz6wig3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="45520989"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="45520989"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:21:56 -0700
X-CSE-ConnectionGUID: UNH8QVH3RSK8JGSvFFO9nA==
X-CSE-MsgGUID: WHAO6UXVTMGSnytfjfa1kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167716868"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:21:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:21:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 03:21:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:21:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=btFFl39ANT9pxtIOfdlhwTVeD4VmwNQcD0+rhXNlDSo3vrNyYrnf2QzceweX2JtJtYHoVw7VRu5fO1MAnW2N/p88udL9CIHGcsLsHROCVLKqtDs3e657QhxFmEQA6mNXzCC5iNpexFHDdgD8kNXxrpeN3LbsGXhfyVywVlwa0dZ/eVsssjaeeUw3G/2vBj1oMU8XSM6KxLbcq6TWZTYQ0hXsibfw1Bn7qjF725edMULdLF5KBZfxD3+uamIOIEMgt/EOJJ1dTAHOt1i6NdkeK3N/6IjiBUwDT05AkvtlamTGWf38sKJb5A0+q26/fthz7zG022PukWXzy6ZgkbGJ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O0R1FhTz4pEZsmvoglIZXsT+r5cltRSwaA05gOugYdQ=;
 b=oloOCisEHT9gUmvb9u4MHpkvST2JOhfq29w/PEKaCCb6t5xqI+viJ6WLTBb5vyBC6lN9fPwATL4Fdm+8UVdW8WScJB/zELyQTEpeUwkIMJIVS0EMaK15OFCrvqXq+3Uf9DPlqtJBND1oxEJoe659XDxh7VK10gndaGUBgv4q8ZIaTO+kxyaV4V0+/ZWmNsO8grrDEZb/ghzHLJ6TBegjeBJh0ZZShL3GD0y98kwG1iq27uqj5UzFERqWUCQ6M+9venkV9dgMwT/2G/KbBio9Rz0vXRzJcDZ48EPf2X4kOkCIKITc3v5xpdKMyZAaLM3D3L7ZtlBBLQ8V+Wc1UgZSZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB7587.namprd11.prod.outlook.com
 (2603:10b6:510:26d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Wed, 20 Aug
 2025 10:21:52 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 10:21:52 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/psr: Check pause counter before continuing
 to PSR activation
Thread-Topic: [PATCH 3/3] drm/i915/psr: Check pause counter before continuing
 to PSR activation
Thread-Index: AQHcDcHzyI+zayh7E02cVU0idlKMa7RrXORw
Date: Wed, 20 Aug 2025 10:21:52 +0000
Message-ID: <DS4PPF69154114FF59951FAADF24AF1A58BEF33A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
 <20250815084534.1637030-4-jouni.hogander@intel.com>
In-Reply-To: <20250815084534.1637030-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB7587:EE_
x-ms-office365-filtering-correlation-id: 886d18bc-73a6-42c4-28f2-08dddfd361d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eFdQcE1ycXpTWHY4QUxLL0FIb0xmMXZLa2tubDl5L3JtWVZqZ1lmMDlZclI4?=
 =?utf-8?B?T0VJVlExZGNWSFE0MzZDRmFSVXdPanBEU29tQUo1RDhRdTNJeEx2cktWNW1r?=
 =?utf-8?B?V0FEWWNQdFhZWEJjOVJRamZab2xZT3BHUzQ2NEtTNGcrYWVPdWlLVk95SFRV?=
 =?utf-8?B?M0doa2tMZGpRS2N0Ui9xU2JrRjF2eHRHN2xyem5tVGZGanVGOVhxaVBVcTgv?=
 =?utf-8?B?ZHl4Tm9UWjZaRWs0T285LzZOZ3EzVDdMYTZES0pZUHdiVTlLczQzVlJta3Uy?=
 =?utf-8?B?WjJrSU5jUyt2Zm5TNk1RVGNpcG4zeWJEbENLbVRESXMzZ2RBajZ5WG5yNi93?=
 =?utf-8?B?TnhhUW93OVhBL2x4WXlpVy9oWU1qR0d5VW5pNHg5a3h4bnNTUnZHMFZjQzNN?=
 =?utf-8?B?NWNNTy9pdEJkSTNxQWpUNTJjK1ZBSXNWRXpwb0MxSnYwY2FQRWhrY1JIZlV6?=
 =?utf-8?B?cFRYaEl6am04WC9oSTI2dStzOGFFNStFaytzMmhsdWxYSU81Y3JObXBLaDBD?=
 =?utf-8?B?d2tYWjYyNWttUUNDNFArcEcrb0JnZU9qT3lESmhPSlJ6d3ZEZFdXMUJIakVW?=
 =?utf-8?B?Qm5FTDZwYXhmVlE1SVRuYkRQRno1VE92N3FMVGZKMEZjOEtQT05OVlovWklu?=
 =?utf-8?B?cmJnRVlDbUd6Y3E1NTBGN3pWYjc5VXA1eUVteFEwQ3N2Z045RGlySXBCOFV3?=
 =?utf-8?B?bkxXK0U4MXpjWDNGUTk3a05aaDRvU1BSelUzZ1J5dmJrWDY0VUFyOWdZMFFX?=
 =?utf-8?B?UlhseGdpblRvemQxekNHbVpua3JmbHYxbS8yQTBQQzJrV0NYUzNRTk5lNUcr?=
 =?utf-8?B?bnpzSXhUdUt6T21PdnYrU1l2aWo3Y2tuNnczZ3JyS1NTSUJJdkFnYklEc2Zt?=
 =?utf-8?B?bG9uQ0xwdUFlcmhWRlEvMkNZMVFKaVVSRmpjZ1FBWWZaNmdVaS92cUhiNGZZ?=
 =?utf-8?B?Z2JzYm9CcjBnakFEMUxXcEd3NUh1Rzg5cm9OTndiOTBZTlNwYWFZVkVyanVK?=
 =?utf-8?B?a1NvZlBZZWFBejFwY2dPVmRYcVcxNWNrbzVoZ2g0SUVXaXVTOVNNclZQT1A3?=
 =?utf-8?B?OFhHbmdNOXFYbmY3eXVjR1pvTE9pRGw2RzlscWU2NnJWWkVBOXpnL3psRjZI?=
 =?utf-8?B?OGg2aWc3S0ZPQ3lsOTZFT2pwdSswZ2lZMWMvUE4yK0VZMjRqRUV4emNxU01m?=
 =?utf-8?B?NWdUVUlsdWZVcVBZb2FFczRvYUNYOHRTOXV4MXhWL1RiaEdpNFhKMTFkYTJZ?=
 =?utf-8?B?RFJUV3JkUGVRU0NzUitjVXA1bnlZbThYaHBwSTJTVVBORWtSU3A4UFFtaVZH?=
 =?utf-8?B?enlsdmJ6R09Ba3hkTU5IQXB4QktFUG9PUjZsRW1MYW9NZW5FZVhKeDNLdDJC?=
 =?utf-8?B?c3psdkZPcGFOamZKQlBETXN6VG5HY0FwSlpWWkpjR3RDV251V1BYL28wZXR5?=
 =?utf-8?B?M0dZb3JEaXowT0ZTb3pnbVdnQUZjUWVkMThMZXBIVXhNQW0zTVBCdzJJQWly?=
 =?utf-8?B?NDFWZlAwMmxHOWVVSkpNZDVtSnJ3eUlqTko4TEZEL1NpdUEycjRRTE1PSWZD?=
 =?utf-8?B?eGdhclJtcTFQcEFKbGJ5K0VVWXZEZXFVZmhYNFRqYi9pMy9JWDFRMXZCZytK?=
 =?utf-8?B?aGdua0tCN3ZXT3IvNWJhNlVQb1h4c0J4a2J0MHhRdHpjMTA2TVk0dzNSOXdm?=
 =?utf-8?B?NEduemFXSng2VjZNUXN6dkFYMXlCN3N3ekJKVDVSbmRDQWltQjQ0VkQ2bzhE?=
 =?utf-8?B?S1FhUkhndEx6OUVpNzVWN0dYZjY1UnlwOVVrcUpTOVVGSTluQkhxTzNhTE55?=
 =?utf-8?B?QndMSG0reENiZzJlSWh3N2dFM2dWYTVCSUorYnc2eUlaV1pZa1FnempySmpw?=
 =?utf-8?B?c0ZpSnlRVkYvQUlneHcwRXFya2pCbEYyUitDSWQ5Q2RlTmxZY1J5SVlmN0c1?=
 =?utf-8?Q?aZDN68lBCGc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QU5jdjZ3WmJxT0hUMXROaEc4YkxrV3dvRytTelJIUUdFbTIwdTRaY3V1QmJQ?=
 =?utf-8?B?Wjd4dTZMWjNPaktTZ0h3MHJocUE4emxNZUdlYktKc2dtWTQ5UkhsdlFBRGsv?=
 =?utf-8?B?ck1zekFtR2RhQUk5NFZFVmdoM0tCQWtZeWxDMWRoeTJXVHczUElnb2JYemFl?=
 =?utf-8?B?Q01ENXZpZ0MwQXZHRmtEajFEZHFvMExUcTlWcVpKeW9VWGt5aHZ1aUlPMTll?=
 =?utf-8?B?V3VQQk4yRldrRXhEbkZieDZsUDhTeE5zdjVZeHlxM2RwcVJHWHJmck9jQ1pX?=
 =?utf-8?B?RXExdDFGdXhyZGtFK3JyZkVQMi9qcGpQaEliQlBUTzVaZGZzZXFKZlgxK2NB?=
 =?utf-8?B?UkZDZjRBT2ZQVFhWWDROR1l5cXl1N0VxOWx1TWhJdERTaGVPSU42NGZUdVVm?=
 =?utf-8?B?WVJkOVUxbXNCa0VSaUFNdWkzTXFsSnVSaWNLOEZNV014SnZ2M0w4cWZyNTEz?=
 =?utf-8?B?aDM1dGNhVWsza3d4Wm4wWHBBb3lwMWdrMTE5Mm9jYVBic0NaQ01qK0FiRmlK?=
 =?utf-8?B?cERMbTg4VnFHTFN6bnVsU3Z5WGdGVzRuamxSK0ZnRUIwSlFhYlByNmxEUjhx?=
 =?utf-8?B?L1hKV2drMTE1VXJ0b2VUbG1uY1dpbkVsVGN2OE1sUFJhelk4Y0pOMy85Z3F5?=
 =?utf-8?B?SHcyM012YzBoSDlya2pZMk5TcGRzejJhenZibmdJT2I1ekZZQTJlZUp1VjZ3?=
 =?utf-8?B?R2NJSjJMUDR4Z0xuMW5MU3hPSkx4ZjBoZEk1NTBUR2IvM1pUb1FCeUtzSjVH?=
 =?utf-8?B?UHR3MVV3T3FNcFFTa0U1M2h5UVloV3BLV3gwVklvL3VYaDVxTVdDbnUwa1Zx?=
 =?utf-8?B?UGN4NXlEL1VNY3VsR0lCbVJVd0t2NTdybFNQRTJ4dW9OZW9RRXFsekR3c1hV?=
 =?utf-8?B?aENTbmZTSkpaUk5UMlJta3h5ZFNyU3o4dmtYbGVWbTJVekVwOFNkdlpMNkRC?=
 =?utf-8?B?cG5YV2EyU3M0UUEyVFhaR0ViMlNjM0JRaUozZjBzVnhkVCtib3duWUFUMlZH?=
 =?utf-8?B?b0FjZ3o5aTlTM3gycHYySVBCeG1QZkp6WVZhQTF5di8yUFVBdE10bXZXM1hy?=
 =?utf-8?B?a01oOHU4YUpEUUVRa2RTQ3hrRENJU0k5RDFaeElaN01Dc3FrWm9mcVRWUzBz?=
 =?utf-8?B?ejB0cUU5Nitmc05FKzJvT0ZyS0FlamllbWRXZWh5clBiUDBJWnY2dktyOGdW?=
 =?utf-8?B?UnBPcENsWXJzTzdWNVA2NjR2OXByUHVGMGNKVzZDNUFJSEdxZjArNWp6am5S?=
 =?utf-8?B?SEFISzJERGdUVVZudDBqTkdDbWZIdUlsWTZ4SjRMQUlBbVI0R0pQUkhOSndl?=
 =?utf-8?B?enNHWGRXMXRsNy9laTh4YU9CWDNBTUlMVm5Pb1RkdDNHcVB1Ukx5QzEzdU1x?=
 =?utf-8?B?b0pBNldpOTVyTGYzOFBnRUlJUjNkeGRIZzVXWWU3eGtrMURQUEFuS09UUmcv?=
 =?utf-8?B?Rys1a2xzN2lsRWppU2h4VUJxbmsvaFV5dEMzaVU1OWt1ajBxcnoyVCtOVjJ4?=
 =?utf-8?B?ajVEaFFkZnozOVdZalZ4RllKdTQxdXJhSXlQV05KT0dSVnVIcWtGanBPMDdF?=
 =?utf-8?B?KzNVUzBycG9RNmhIOEkyYlFGTmRyQ0M4Z21NbWRTUnZGWVBpckVFK3N3UUNp?=
 =?utf-8?B?YjhBNXkyZUFnMFltWWRwSmloMVo5WnVlNGh1S21CRXRoeFo1R01lTVhOTXNy?=
 =?utf-8?B?cURvb3BON0ZCNUtraDRrSU1Ua1M4VXVKcTVHR1JYZURCSnJnN0dvUklSbjMz?=
 =?utf-8?B?alI4Mk9qeitnQ2ZZM2Q0ZXZSYklLWHEzN1hLdUhaREJzd2hiSU1NVzZYcnl5?=
 =?utf-8?B?VWxLeEJNZmtJa1B0bDFrcmtEcVBIeVhESzBRdmlvenNSeFlsQ1Rjc0cvL3hy?=
 =?utf-8?B?UEdRR2lIWUVMYTNQSzMzTVYxMlNNZEZjbDQ4NTlRb212QkQ2RVR4dVpkVmtF?=
 =?utf-8?B?UjVUSWN6ZHZydHdFVTI1OWlsZVlUM1JmZzFkbXFPMktMV3FVMVZzRHZOZytR?=
 =?utf-8?B?b0dYSWVHaEJaTWczdEs1cE5nM294V0ptczBRZWozMG9ZbWk2VmpCemQrMHB4?=
 =?utf-8?B?TzFzRlUwVG5pOXJ3VEkvK1ZrUFhqcnhUbXQ4NUZjVVVJTWZ2ZnRVTXIwYjd6?=
 =?utf-8?Q?qhtEdLEU3Q2Oy/AevgMzM1Ypj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 886d18bc-73a6-42c4-28f2-08dddfd361d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 10:21:52.8058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kmvgR4IwNpUoFQscvBPpfJC9eXL/9UQuJdabbFve8K3o/vDJnZ3fT+YPpbqyhFfKIBsUYgasDSTM9anqVqSI/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogRnJpZGF5LCAxNSBBdWd1c3QgMjAyNSAxMS40Ng0KPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIDMvM10gZHJtL2k5MTUvcHNyOiBDaGVjayBwYXVzZSBjb3VudGVyIGJlZm9yZSBj
b250aW51aW5nIHRvIFBTUiBhY3RpdmF0aW9uDQo+IA0KPiBDdXJyZW50bHkgaW50ZWxfcHNyX3dv
cmsgaXMgcmUtYWN0aXZhdGluZyBQU1IgZXZlbiB3aGVuIHBhdXNlX2NvdW50ZXIgPiAwIHdoaWNo
IGlzIGluY29ycmVjdC4gRml4IHRoaXMgYnkgY2hlY2tpbmcgcGF1c2VfY291bnRlcg0KPiBiZWZv
cmUgcmUtYWN0aXZhdGluZyBQU1IuDQo+IA0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQ4MjINCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgKysrDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMzkzMGQyOGUzNDg2Li5jNjcxNWRkNDQ0MTggMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzIxNCw2
ICszMjE0LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0
ICp3b3JrKQ0KPiAgCQlnb3RvIHVubG9jazsNCj4gIAl9DQo+IA0KPiArCWlmIChpbnRlbF9kcC0+
cHNyLnBhdXNlX2NvdW50ZXIpDQo+ICsJCWdvdG8gdW5sb2NrOw0KPiArDQo+ICAJLyoNCj4gIAkg
KiBXZSBoYXZlIHRvIG1ha2Ugc3VyZSBQU1IgaXMgcmVhZHkgZm9yIHJlLWVuYWJsZQ0KPiAgCSAq
IG90aGVyd2lzZSBpdCBrZWVwcyBkaXNhYmxlZCB1bnRpbCBuZXh0IGZ1bGwgZW5hYmxlL2Rpc2Fi
bGUgY3ljbGUuDQo+IC0tDQo+IDIuNDMuMA0KDQo=
