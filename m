Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D83BBFBAAD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 13:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC5510E760;
	Wed, 22 Oct 2025 11:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kjRjaoya";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A183C10E75F;
 Wed, 22 Oct 2025 11:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761133060; x=1792669060;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2axBKy8niYTVAvuXxinLG0/15JBMQthwgMqb9Af60Ww=;
 b=kjRjaoyaLhHXRwBENcYe9zdcx23HIXoEUaCLNZO/4qINLGNrFM+ogOkd
 /+OvHCwXacNLO4GIrF1kYdBd6V6nmAcc7w0SM3+rqbSHMx5+kApYrlLst
 4+mNSv5lq0UE8EqHrQ9GVBDkLk8FQvVmqtxnfC1EtRJ0p+/ABDfO64Nev
 ao6L4Y3Z4Pk/rCcY+ORHBtZIVRDGg1g7RjzLj6AvUUZgIoPutcHWE0Evj
 7eCNj/6Wz27qFEXPDU2xxAMKNFCvBkOcEt6RzgUQMe9WHamIhhyso5Cv4
 KpitERN8lQDqPTGA7OHkxW+HwPf624LrMe5ezh5iTIPVezNRK4e7SprZ2 w==;
X-CSE-ConnectionGUID: ull+Rj5pQSuFsJvUqhHBvQ==
X-CSE-MsgGUID: 2M3lZwO4QR6029IqVSvIzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63180627"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63180627"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 04:37:39 -0700
X-CSE-ConnectionGUID: 0Ob48fKzSk6TsQSkww4+0w==
X-CSE-MsgGUID: wRLE3kThTHe0ACC4AMOheg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="184630457"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 04:37:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 04:37:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 04:37:38 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.52)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 04:37:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CX+6Cq2T9gLdmtzwO0zjuhhjN5DsndFSUAMwu6kinAbtZHRDxRFzVnB3BUeihmysKfHs1f8K4oGXthEcxZdw9B/RjTLuK7ZVoMQsG97E1vqCbXp/lBL2pRNb+7dZbWj3BHbF+K27vqkdeP9brpb2fibyTD4LjRoPkrb0wO1qlHbKm6h3/SjG4Jwmhoq1IDtELAbeG5YM2wWl2Y8t10dD6u752FMW1BEOl4J8s5UHGxfuQ/UEHXEm+x2cLSJXIDEIUmYN+IgZzW/9bcW8YbG8ZfE1fv7JbE8mbSEP78p0t/sQbZHC2QEIoAn4yjJ5WsdT8D8OLJdViXh5f9JSLuFblQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lU715Nm9vdyiKPIp+ca3LaVl9sKYJjANHwP6GWcgZks=;
 b=fwKon1/LYM4KkGHDUh9C7H5xQsjs4F4ax1AmmCMndy4Aw1rMSCe/WH5MM2lHfl+pt6Y/0SdjFHQhD2H4gD4+X+CXhpH0W7jyWxvuaDjczyXk/Ssc8FYrmIqtP0U3Q47DaEceKm7ZCSXipdHwaPNnWW63S+qEF2sEVpI49P2lMiGbeeSSTW0olVjPFbI5u9AvlGDXxHMzwSEC8lxu5bt6pGZwBEf3AQrALdal8ndmc+ETrWr/DiPi5Riq1uvhJGyi1VV6o3eE6pYgqQ2t+VbrnpEPD7ndiYc7q54SUHuHr+dIBc+5pszjP9YOHunX6MVHmBwqURfy5Pj1uxarvK6f7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB5094.namprd11.prod.outlook.com (2603:10b6:510:3f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 11:37:36 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 11:37:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-4-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-4-10eae6d655b8@intel.com>
Subject: Re: [PATCH v2 04/32] drm/i915/dram: Add field ecc_impacting_de_bw
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 22 Oct 2025 08:37:30 -0300
Message-ID: <176113305088.3231.10655916383519142084@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR11CA0074.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB5094:EE_
X-MS-Office365-Filtering-Correlation-Id: ae874fc1-b13b-481c-d296-08de115f6583
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUFOQ2ZFVkpyUEJnWDJwTjViakdJNzRaQTdPRGZmZ1ZVOFBvZzJXdjM4VFhD?=
 =?utf-8?B?eDdEdDh0eVlqczIzTFhHcmdvVmkyQ09CczBhdTY0Zk9jWFR2Rk9yMWY5eHVY?=
 =?utf-8?B?K1JyNnA4Vk94WlhFVGkwdDZzZzhFM2UyeTlBVnhWcGJzcXZTTnVKSlpSVk0z?=
 =?utf-8?B?YUp1aHNxSVdOeW0rUnlyUUl6Ly82b0g1a0JRNHJrMFVYUUw3TXIwa0hIa1dk?=
 =?utf-8?B?U0h5V2lzdGhIMVdJR1MzaDRSTkpISXFMR3Bxa0ZWVjJnMFVMVTVsb1M4aWM5?=
 =?utf-8?B?WXRJVFRqQWRZKzlXY3JJSTNMNFhVZXQxcTBxYWhsdWc2eDFOam85dlEvRklK?=
 =?utf-8?B?L3NCT3NwV3kzTVFXY3crT0RmdkIvT2dtdmZkdTV0WG9yakJnLzNhWGs2RFN0?=
 =?utf-8?B?ZXVQVXJVaWk4cDhQZGVPc2V3Q2Qwb3RBV2U4WG92TFNhbFJ0SlBST0xHVjNz?=
 =?utf-8?B?RU0yMTREMG5aUUExdWhsOVlGb251c09hdGRkeXBBTHVGTGQybGR0TFRyUytk?=
 =?utf-8?B?ZWhyY2EvTzBIZTlxNmJaME1CcmRqUlZIVlZiblpNNU5VRUdFcklzM2VHTzdm?=
 =?utf-8?B?aWxXdVNpYzl4QTQ4dlRNYnAvaVdzWmFqenpSVTJyUVMxaXdRMEsxQUF5ZkRG?=
 =?utf-8?B?SS8rLzR0YnNVUkVza0p6VWpxMGF2ejVTTmNuZEgwWG9lTkhyazJMVnFPQWV4?=
 =?utf-8?B?UjQ2TCtURWh5L05nSzYrQlRLSTZYN2wzT2lHdXUrelVRWittMmdLL1NCcElU?=
 =?utf-8?B?cm9KUWljYmkxakZwYWFhNnkrTHhxeDFQZk1tTm9lWmc3a3dtU1JCR2VMWnI4?=
 =?utf-8?B?UGQ5LzlwOVBtN0tORk5heCtZay9wN0FPeWFuakgzKzJQek5RdmJnNUJ0eHZN?=
 =?utf-8?B?aGNoOS9EOE44cllyM2JGcGdPQVpFQ2hRM2pBYVFMR3RFcU5leisxZ1ZGZmgy?=
 =?utf-8?B?QjN2dzFRdU5rRmdrbmQ5eFdFd3lHbjVuOEUzN3lFczJRcy95NDV2VFZLelc1?=
 =?utf-8?B?aGhYTmpmYmUxb21UQ3E1ZWJCTzdaci9OVHNKWGJCV1l3Q1lOMkdrWmxVMkVw?=
 =?utf-8?B?eG5vNXdZc3ZPWWtmZTZnWHR3MDN3WUcwK2E1WWhjWjhCNFdXUUN0a1A1d0Vn?=
 =?utf-8?B?RmNYdG1UKzlRTVRWVDFLUXRJRjk1Z2lMSlQ0OVYvL0YwWmJlZ2l5MnZsN2w4?=
 =?utf-8?B?d20xdER2Y0tZZUdiSVV5eHpuTjlSMC9Na1kzRXJaZWFJenNjRmRxSUlVbGxU?=
 =?utf-8?B?M3hOTThBQWNZMnEwMldleHBydnJJTEZhR1YzaVB0LzBHb3JJcHhicGhpTGtX?=
 =?utf-8?B?dTRKWnc0cEVYbDNrYm81OWU3YmMydWZXUzN4NHpnakl3UWN6YmhCVS95UFJn?=
 =?utf-8?B?Uk02cWRIRG1KT1puR2Qwd0ZxTzJrRXM4R3UrOEUyMTRIMExITEVBTTNXaGpD?=
 =?utf-8?B?KzNvS3VrWVd4ZWpwN1JpTXBiZElFMzFWaWVqa3pka1NHckoyWGFkMlNrNk9S?=
 =?utf-8?B?eFkzdGxFM2hLSC9ac0lTNkJrTDVXZ1pHOHBRS3o0enZuQ04vZTU1bDdtZTBV?=
 =?utf-8?B?MTUwWk5IV2pCeHh3emtZMFlEbkNONjZMRERlMDYzQWtESFNSVGd3Z1lwNEVh?=
 =?utf-8?B?NCtQQksxNE1RTGxmdmlDcVgzQ29OTUZ4VWZuckVjQ0dyMlhmZXcrajBlcFFh?=
 =?utf-8?B?d2dCZDZLR2N6b2FHZGM3dTZyV1psUkxLYXJ4SGpoTzFCSW5xT200OEdWcFcv?=
 =?utf-8?B?emFVN2JFTGJwc010dDdUOTFoSm9SRXorbkhGNEx6bEpPS1d4U3J3c05hd0I5?=
 =?utf-8?B?cXN4WlVUZVJHeXIwNEJuaGlZakRSRWw5WU9KWEN2T1UxTXRqU2RiQUZXVW9Z?=
 =?utf-8?B?NGg3cG5FVWhIZld2TGRuU2ZVSFNNUnh3NEFPbU9sMzhBbzJsUXlvR1plU2c3?=
 =?utf-8?Q?zVKNTH1DE9BQ8rLDzO8Xt8bS4/wG1I2d?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q01TTENYWC9HR3c1V3ZJV1E2TUtGcGlvQnY4VEQya2tjdlZwV0VCa1FOL1FL?=
 =?utf-8?B?SjhZMS9lVXR0TGZSRzR0ZThWbE53NWhHTGpsMXJqVWowSy9zeWd6ZVAvR1hQ?=
 =?utf-8?B?NVZ0N2FGU0VvRmFYSjYraHpHZzF0eDBhcXBmWXhyWHFSZU1qTjdBcG1GZlhi?=
 =?utf-8?B?emhHLzFDNVBTdmk4R1k5cFAyV1RRR050bEorSXRBeVpFYTBFSjQwdmhuRGdW?=
 =?utf-8?B?OUh4QTdlVDR1eWZvSGQ1OU1McnZFeFhYRGg4UmxXVk1WZ2NBRmVZbDRQNkFQ?=
 =?utf-8?B?WUtwdXExUlNwVWpicDNtbytPVkVkRlVlbFBGQmcyVkZUVWd2YVkyRXp6eXhm?=
 =?utf-8?B?QkZONkJLdlhXR0RYbWhYcDE3dDJHYmxsZCtaempCUHpJSUdRRnlwR3pxL1JO?=
 =?utf-8?B?OEtyNFNrWDZpTVlUc3dhN2RrMkdCSTNlbEh0Z3BRandpWEx2T1R2L0ZuVkZo?=
 =?utf-8?B?M3Mzd1Z5b2tiUE9RUW5HSkpHVGtydUEzSjZYQ0VtOWpKMHVNSlZtT0dwZnR1?=
 =?utf-8?B?NEN5eUVzQllXVk9PWjJYZ0h3RTdUWmlETjlTOEUvYkY2b1RXdTdzeGpOM1F0?=
 =?utf-8?B?R0pMOXRaZTk5YnY3d3BuSUFMTHpQdFE3Z0dKT25DeHIvcGd5MDRjT21YMGhG?=
 =?utf-8?B?MktmaGpjQ3o5TG10bU51UlpWUE5nZ3VLSW1jQ2k4L0U1b3ZNK2lJQnFCSjJz?=
 =?utf-8?B?Sk1nZStXUWZ0MTRzS2tEY2Z6eE42VVhUREUycGNIQVBySDY5aWVNRWZjT1pk?=
 =?utf-8?B?VUg4NWZublpuMlROMlpmYW1sUzNmKzJ1TzM0UzNSVHVvYi9aK1c4WnIrSURC?=
 =?utf-8?B?YjRoVTZySkV3NXdaZTJFdUwrZlNKeUwrclEyOGdUbmt5VnQwdHpzaDFRaFNO?=
 =?utf-8?B?T2VoZDhIbW9pNXdyVHZPY1BNZktaV3UyQkkwdUNaWjM1YTF3YVU4OER2Y05K?=
 =?utf-8?B?aDJxYllvQW11TkJsb0NSOGNRalN4TjF6NW9XajdxMDlac0JEeXpuR05pa21p?=
 =?utf-8?B?Um5wVWRxcmNpMWtPZUlKOXpKQ3dzUGNOc3BIdXo3WE04eHI5R1pKdUV4YTFu?=
 =?utf-8?B?YzBqRGhpNU9mT25PL3k2aVBkL2F3ZjA4ZVA3SEFZY2t0SURWc25CS2UrZzZ5?=
 =?utf-8?B?NFlFRHNiY3RhaUlsRCtlb1FWRUJxUk9HMFZpb2dhM0xVUW1NMDBXcUIwVTVL?=
 =?utf-8?B?RzNIVTZJU3l1Y05vQ3hXQ241NUM2U1FWdzl0NkZRWHJSdjFnZWhsUVNDbTZG?=
 =?utf-8?B?blhndmVYU0tQcW5rUDU2WkpJTkpVVXBjZVpzRmFyUW5mUyttLzB0Yk5Id0ZU?=
 =?utf-8?B?VEZST2ZRbGx1b1RuYXJNVUM5blc3UFhaSTV1eG56aWVTaEdvMkVONFdJYk5O?=
 =?utf-8?B?SjZIak5BZlJFaUFQM3UzRUxOVmx4aStpc1hiSVovKzZOWUlEc1VEMWlZWWVn?=
 =?utf-8?B?aDliWk1COERqeFU1RTQwUjFaYVY2SUo4ZDE4MlZnVkRRMW8rMDBRZFFodk5Q?=
 =?utf-8?B?amlmSWRKQWY3d1Q4em52bjBDeVI0Rll4T3NFZ2xQM2V4R2dGZm5COG1BcEhD?=
 =?utf-8?B?aUplS1lWL0RzWm5jdDArallqZ3cvTVA5b01uMUNZUFdzUitBMnMxNmszRlQ5?=
 =?utf-8?B?dzBoL1JLdlRWNmZMUCtvaG84dmZ2bnVpZjQ4cW5WNWlJRHlOaFpzMlFSdkZP?=
 =?utf-8?B?cmVmTmdFZ2VJTTk4TDRkRXBleTh2ZVEzRUQ2ZE5WYjVtOUJ4L2JUcCtyQTdm?=
 =?utf-8?B?MDNMN1kzYWFjK2tKVDVJc1lseVFmWlprNmkvMEkxVU5ha2VsYVhaajNqaWUx?=
 =?utf-8?B?ZmhKMXo2MWpHOGJGRVBuUlZLWURjYmY5bG10emNlZXhUNFRBTGdiUy9kcVhu?=
 =?utf-8?B?WnJwVWc5YkR0aWMrSDZPNlpEUjdqOCt1YjAyL2tXNy9wYjlOZjBwTFo3NkZF?=
 =?utf-8?B?QkNGS3ZNSjZreGhBVVZBZU82QktEYmE3Y2p4aXRZYThnV2krcXF6WHExZnIz?=
 =?utf-8?B?TmhFRTJtM3BRc05zMStsU0tTcmtqM3h1SDk4QTQ3WmxRTUgwTFNWeFRndzBt?=
 =?utf-8?B?ZytqTjBNYzBkRVV2d0JkYmNyMUlaZXNHZS9aTEgwZXJZWVpCQWg1ZlVVeHJl?=
 =?utf-8?B?WjFjWUFUYlNWWkhJajBSUEljbkVzb2picDJ3T2pZNGxTZWdsVlhXMEVwTEEv?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae874fc1-b13b-481c-d296-08de115f6583
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 11:37:35.9721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/8P+JaNQ60CNpYQTZoRPGgd99Q19vN0F/mJJ+zhtm6TyPlsWZI3OD/NExhnb9HTZiXkQG7AcRFIpyUQgrtdRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5094
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

Quoting Gustavo Sousa (2025-10-21 21:28:29-03:00)
>Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
>that indicates whether the memory has enabled ECC that limits display
>bandwidth.  Add the field ecc_impacting_de_bw to struct dram_info to
>contain that information and set it appropriately when probing for
>memory info.
>
>Currently there are no instructions in Bspec on how to handle that case,
>so let's throw a warning if we ever find such a scenario.
>
>v2:
>  - s/ecc_impacting_de/ecc_impacting_de_bw/ to be more specific. (Matt
>    Atwood)
>  - Add warning if ecc_impacting_de_bw is true, since we currently do
>    not have instructions on how to handle it. (Matt Roper)
>
>Bspec: 69131
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++++
> drivers/gpu/drm/i915/i915_reg.h         | 1 +
> drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
> drivers/gpu/drm/i915/soc/intel_dram.h   | 1 +
> 4 files changed, 14 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index fc173b2a1ad9..57d65e6e5429 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -802,6 +802,14 @@ void intel_bw_init_hw(struct intel_display *display)
>         if (!HAS_DISPLAY(display))
>                 return;
>=20
>+        /*
>+         * Starting with Xe3p_LPD, the hardware tells us whether memory h=
as ECC
>+         * enabled that would impact display bandwidth.  However, so far =
there
>+         * are no instructions in Bspec on how to handle that case.  Let'=
s
>+         * complain if we ever find such a scenario.
>+         */
>+        drm_WARN_ON_ONCE(display->drm, dram_info->ecc_impacting_de_bw);

Oops.  Just realized that DG2 does not have dram_info.  Thanks, CI!

I'll fix this on the next version, probably with:

    drm_WARN_ON_ONCE(display->drm, dram_info && dram_info->ecc_impacting_de=
_bw);

--
Gustavo Sousa

>+
>         if (DISPLAY_VERx100(display) >=3D 3002) {
>                 tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info)=
;
>         } else if (DISPLAY_VER(display) >=3D 30) {
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 354ef75ef6a5..5bf3b4ab2baa 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -1233,6 +1233,7 @@
> #define   OROM_OFFSET_MASK                        REG_GENMASK(20, 16)
>=20
> #define MTL_MEM_SS_INFO_GLOBAL                        _MMIO(0x45700)
>+#define   XE3P_ECC_IMPACTING_DE                        REG_BIT(12)
> #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK        REG_GENMASK(11, 8)
> #define   MTL_N_OF_POPULATED_CH_MASK                REG_GENMASK(7, 4)
> #define   MTL_DDR_TYPE_MASK                        REG_GENMASK(3, 0)
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/=
soc/intel_dram.c
>index 8841cfe1cac8..73e8ad1a28e0 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>@@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_private=
 *i915, struct dram_info *
>=20
> static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dra=
m_info *dram_info)
> {
>+        struct intel_display *display =3D i915->display;
>         u32 val =3D intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOB=
AL);
>=20
>         switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
>@@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_privat=
e *i915, struct dram_info
>         dram_info->num_qgv_points =3D REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_=
POINTS_MASK, val);
>         /* PSF GV points not supported in D14+ */
>=20
>+        if (DISPLAY_VER(display) >=3D 35)
>+                dram_info->ecc_impacting_de_bw =3D REG_FIELD_GET(XE3P_ECC=
_IMPACTING_DE, val);
>+
>         return 0;
> }
>=20
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/=
soc/intel_dram.h
>index 03a973f1c941..8475ee379daa 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.h
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
>@@ -30,6 +30,7 @@ struct dram_info {
>         u8 num_channels;
>         u8 num_qgv_points;
>         u8 num_psf_gv_points;
>+        bool ecc_impacting_de_bw; /* Only valid from Xe3p_LPD onward. */
>         bool symmetric_memory;
>         bool has_16gb_dimms;
> };
>
>--=20
>2.51.0
>
