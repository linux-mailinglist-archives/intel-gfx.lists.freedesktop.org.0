Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58506BDFA3A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D6810E879;
	Wed, 15 Oct 2025 16:25:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XnLv18gF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5AEF10E33A;
 Wed, 15 Oct 2025 16:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545512; x=1792081512;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=dBhAZ48DQ3lXa8RWQBE98nkxHysGjEpxc7cywPInVJs=;
 b=XnLv18gFaxPigkLXJRSxZqIRVYS4byFI/GQCNLmHpalEoXs4DNzLa0j8
 PA62isA/8TIW/wenjJtGX0FUZlHpCGv70mfihYU494cnxGqZM4URvI5Nx
 CB9Wer3eYLI8XCBzJuN7FkKhXerearpjBCmNST11kGyGWFH/2yzNB+32V
 VtjohiEzMO6qi0eWfYCwdxl4inVe9L8lP/i2AkvzVXVPmxLn83N9mhPLY
 lYJABKQ/VvsjGKYyCnlouc6/C8HzwfXp9SAuuwYgKxj9Xl9yxNAqavsAU
 9Lfkl9oslthEwXkLBpdzrVnP7BExyrbEhOijxE0VwzJvXYIHjcKp76GnZ g==;
X-CSE-ConnectionGUID: PAK0T203TJ+LCUxjoJVCkg==
X-CSE-MsgGUID: O8O89uZMT1KTiSHvMHrtBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="88195711"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="88195711"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:25:12 -0700
X-CSE-ConnectionGUID: zJfIAFcnTomZyUiU3xgIWQ==
X-CSE-MsgGUID: Dz+nUYTQRjKvlZSsxHfj1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181883377"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:25:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:25:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:25:11 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.13) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:25:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q8YykWW6c5jleEwPrMNRh0SsCLKMNWBT9tuYEKacreG81PULlAeHXreMsw9xlgphzIebjhCkT+QCx44CVD792pv8UZypccFdYgi7P57Kr6OgRFWCenchN0veJupNrqDTCOjWMjCxDwBDK0ttKFVlQXgyIHtU32GUvyC7yQX1h3GewWoPg+Ug/PruSN5diunHEX3M/+FrfU+2X1qBJIi2cdE5K6XqElfSjIN3lTuRxUPGjPRNXDoJekvpzhhQA7f1KP8H2cp54U9Aw84hciBWQq1+RojfEeOtHwNBhrcqqkINPN5UCdPFogmyax9Fj4r7XwZqMGiTufJ5jqcjcG7piw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7esxnSHQc9iPzulOn9/ZnbmLbQ6RZjtJ0BnKspRkfQ=;
 b=t6SE8sfDj8TBl/m2Wn4yzu9ncqo+lPOygmffPJjVnSQQk3phw9uSvuDEDGwhlVh6GqcYLAcT2PcQ9W9bPqCTHRFig4LncoK19AHkYJICLkB2h0hF97GuWCir1Amu6/tlAd+qF3O1YdRvN5SK8j7Sy1lEi019a3HlGPR8QgEtPJ13KKIdWWvsaHfmQzXmYxJW5bfCmkUT6GHRkC88h8ATfKj7hLD/xDajcB7+roJxvAzbL2PYYOv6IbHNIH/4qODGFF2dKGM/y0mkrZsKxAp62u6B92ZCsvaRsORpcrT6fmrGOImdeeu68ydk0Av4oYSRawbsYnMWk6861fIh2FA+2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:25:08 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 16:25:08 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <bc0b111384b7c28187aa5e7fef1cd39718ab1f75@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-29-d2d1e26520aa@intel.com>
 <bc0b111384b7c28187aa5e7fef1cd39718ab1f75@intel.com>
Subject: Re: [PATCH 29/32] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 15 Oct 2025 13:25:04 -0300
Message-ID: <176054550462.3168.930912579291937601@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0228.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB6127:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d623c30-e758-4e80-6ae4-08de0c076826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk0rOGhGbVByMnk5WVpFc2RDNm1ZRnFYM3RMNzNNSEZSOEVERmxyaHZ5OWgw?=
 =?utf-8?B?N1hZbXJGTUpFL0ltZ2JDekliRnpqcjI0ZW9nSm1UTlFDWXR1MUlCQ1p3V3NS?=
 =?utf-8?B?TUJ4dzNwVlFpdHhtL0h4UTNRUnNPaHJmVWFDSmhXa1BxUlM5Q2VsRjRoTFNw?=
 =?utf-8?B?VURJY3Z2eDJWcm40eDcvSFhST2lsOXdIVDF1cGExbytYcVlETk9iRGg3c2pR?=
 =?utf-8?B?MlRCckwvcUFZQ09lRmkrUlVvRUJ0K0RMMW1WclJBUGp6ZURZWXJJUEZpaXV4?=
 =?utf-8?B?Q3MyRzdvMDJKQ2N6dnkvemRaNmUwYlJSUFVkZXBwdjJhd1BqNWtwOFlOMmZu?=
 =?utf-8?B?M2ZrTi9FcVdMUzRLWnVjK2x6RWhKODBabmI4Y2ZsZ1JoaE1WUnc2UGhSOWFn?=
 =?utf-8?B?d3UrNk1COGcrMThKeUc3c2hFUVhIUnd0Tnl0bms4UEovTzd4TWtEZHEzamhM?=
 =?utf-8?B?S1ZlN0xuUkRzNHYxdEFRNzJueURKNHpFbXY2THZvc1pIMkJRTEdKU1R0Mm9I?=
 =?utf-8?B?WWVZTWVMbStnMnB2OHZiS1BuZ1QwbmkyQWVrTUx0OVZPYUpVRHE0QllNNUE4?=
 =?utf-8?B?VnBLa1lNUmN1amVoY2U4UXhBanUwbzl2SEVBY2hyYlpvRmxxVWh0b3E3T3hW?=
 =?utf-8?B?bHltZHhEVisydWVvRHo3SVd2dXR4NHdLWEhmMHRQc0YvUUdkZ1dtZktOSi82?=
 =?utf-8?B?M0h1bjJYS3ZtL214SzM1eDNzUTU1WUJGSitrRWdmQnYyc3hQRWIvNkR0Wkth?=
 =?utf-8?B?ZUJwSkJDNnNNS2dXbDFMZFBmd1lwemxabTZGckgrK1dzci8zUGhFRE82WHZK?=
 =?utf-8?B?MGVrMzZrZjNId3JVMzJwYmRENk1GbmZPTnJ0YVBXb1RjOUJ5b1ZMeUtYQ3pm?=
 =?utf-8?B?R0Mwc0l0T2tPMFFYWmhHc3Zta0gzVFM4NlNvSjRvNkVuanRSTVRhL0FSVlAz?=
 =?utf-8?B?aU5OVjhUZFBiNDRUcHMrY0NwV1MxMzVZZVg0aWV2U29JMktpN1pMMUNXdUht?=
 =?utf-8?B?SkRnSDBEdmZVVkRSempmMll6ajl1aXp6UVV5QXdlUnAvdTFkaVBwRHNFYU1u?=
 =?utf-8?B?azR3NXNRRXB6VmVpd3RTWDJDMjZZZ1FaRWp0RTJ0TVFrRW5QSVV4VllUdEh3?=
 =?utf-8?B?NDlZYm96WlBCQ2hNUWtvM2MwMUNyZE5wL0loRnFwY1RhSVE0N2tDRCtaZTdq?=
 =?utf-8?B?ZTFYaWhFemNxMkJFYmdGLzBEMUp4c2tKczJtWGRVQmpVZEhqTGNZMGRaODU0?=
 =?utf-8?B?ek54OE1MUHBuRXliblRGVUd3amRlY2xIdVppY3lDcUgzMld0blFoMWxDVGI1?=
 =?utf-8?B?QVVUSnl6eWw1WDMremw1ZzBVcnBXQXZxRXBWNSt4dXFKcER5M2xBTzVIZ3FE?=
 =?utf-8?B?QWFVZFljQ2hxcUtVZnp1WWVUaUVVcStCTXJZbjluQ05NekdWTzd1bWdEYVRW?=
 =?utf-8?B?Z3NTdEpQUWpkb0d1cUJQdnpmWTF5YUNSZ2R5Q3c1MEUwUjU3V1pHNU4rY0F3?=
 =?utf-8?B?a2x6enk4amlBZHUzcnhwUzNVZW5xZ2FlTDgzandzRURZWS9tQXJlUUM1Q2tZ?=
 =?utf-8?B?QVcyK283Zzc4TkpUSWk5NkpRVzFNNDdKN1phdGFMVHNhQzRVQzRsL1gzcG5h?=
 =?utf-8?B?ZzZyZUJoQTh6cEFqcE1RTTF6Tnp4RHZKYkFNbXE2TFZETU1xMWJzMkF6dXJU?=
 =?utf-8?B?TnlPa1puSis4VE5iVElVZGhNTlhnQllIdlRURS95bDJMUXBYSEo3akIvNk9G?=
 =?utf-8?B?a281bzNVODQzVXpxTGdtRlZiU0daTExCT20zOWtkRDBVbjErVlNoUXBVbTYy?=
 =?utf-8?B?ZEowV09tWGFreGVPbDY0bU50bCtTQmJ1eHA4WHdBRmdxeG4rR3M0elQrMXlE?=
 =?utf-8?B?VFExQWd1MlhtSjlrRHc0aS9MUXpwK01HTlJBVUYyMGJ0WEpkV0tDZWRGVDJh?=
 =?utf-8?Q?N9104LLvYJ/iiouIs1cbeqIiVSbsfG9f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEdjdWl2ek9EakN6UXlHMmY3Y0NrU0h3RGpMbWNHc01CRm03czhjZHdTWFhv?=
 =?utf-8?B?R0xycFo2b0JvQ3MwaUY0cEJsUlFadUNYRFlOcVJDYUJ0TGc4azNEanljSTdl?=
 =?utf-8?B?VGlDSUtneGMvZy9hLzUxcDBpUTI1U3duOERGcVI5Y012UDJvLy94b3M2b3Ni?=
 =?utf-8?B?VDN6dmFKWGxCRHIrZ1hTTndHWW0rdXhBYUs0WEJGQllKNnpMTTB0aVpTQUZl?=
 =?utf-8?B?VmczRVRmaGZVOUFla0RqRnBQT3BaY3NnQnF4MElJbTBIU2Q1RDRzUFN3Uk1m?=
 =?utf-8?B?MXVxVktDaHBWZktKNjJwZVNWY1duWUVLak5pSXZPcGUyNnZmV29OSmVjMVJv?=
 =?utf-8?B?R2hCbmJyR0J5OUphSUVqQnRCN2hhMW12b3AyM0VQYWtvUlJNZVhpalJIL3BU?=
 =?utf-8?B?bmVoR2RTbEFCWktEbE9PeXpBcVdCWVl3amNLWmNtbFlRaCswY0ZadC94NUQw?=
 =?utf-8?B?R205aUNkMlQ3TTBOTWh0NDdrN3FqMjFHTlFhN0tNWkp1by91aHVPSzc4ejJW?=
 =?utf-8?B?Q291dW9JQ2hrNGgyYk1VUmZETmFiMDg2OXRCYVphTDhzS2RzV2N2eDg5SWRV?=
 =?utf-8?B?Y21ERHhLbGUwQ3lEdHFmUlFxWFNBM1QrMWl2YnovZG5MNnZPcElVQ1kwQmxa?=
 =?utf-8?B?YWVnREhMc0s5NW1sbkJpQURSUVBmNDIxVXBvTHhYbHRadCtxVVMza1hIVWY2?=
 =?utf-8?B?NmpuZWlReHVjNkhpU0JJTzNOam1TZWUzeVpmaWRXejk4ZXhZdWNEUU9ZUEdR?=
 =?utf-8?B?MEJFSWErM1lVNFcvWXNQTGJualRRbXNubU04dTFIb1pDNklFWE1HRm1NOFRz?=
 =?utf-8?B?UnZhM3Y5S3k4SkRUSzA0eVdxeW9vN2doaks1RDBZTXRzQ1BUYUorVXlkS25F?=
 =?utf-8?B?alBQZkZxSHV6WkcvNW4rV25MOXY3SDVJR1R6V1RDcXNzUjNENFhVRWRVNUtO?=
 =?utf-8?B?ZERVbjFNUWlucVdVbjFmODNTa1l2Y3lmZnlHUFlMTUtMcmVCOHM5STExR0FL?=
 =?utf-8?B?YnBQb3pxdENXenl4YmhXL1RRcEJQVTJZM3dveU9vVzBZa0FnR0tVcjd3RGVC?=
 =?utf-8?B?cUhTZUJjeFliT0diTUhtbGxDT28xdGg0Yy9vbjRzckU1SEJNQVRqbHp4QUJ3?=
 =?utf-8?B?cTRLWHpqa251M1ZwRmpycE1NZlBsRWNLOVI2dFVwajdTK0JwTitLR05iRU1I?=
 =?utf-8?B?K1BzRTNxUkpTZFp2QWlZeC9XVnIybkF2UGJ6ckppNXBxOGtXM3oweUUxOW1O?=
 =?utf-8?B?d1RkQ3VyV3p6c0NSZ2doYkt0QWoxWVptNnY5ZWE1ZFU1NGt4R1AybHZsTFNm?=
 =?utf-8?B?VEFPb1dnQ09waWZNZ25SR3RoQzNnZkZENmV1MnJmS2tXYlY0cHJ1M0tYN0xO?=
 =?utf-8?B?QVNFZG5ZL2Y0YVlzdTM0RmJKUjJQTXRnTGt3MC9JcDlNLzNMV29mbE54S0s4?=
 =?utf-8?B?WWxBL1FScUZLOXlNN1Rrd3ZGK3ZHUHpLN21QNXRKQXRzTHlQZWd6RkF5Y1VY?=
 =?utf-8?B?am10NlV4M25icjFuTWcwWW5yS3NYalI3b29udUthZlk0OHFUaVdRK245QWJL?=
 =?utf-8?B?UVZFc1JSZ3I4YVlSaW9lMlN5YnQ3WVVLRDR2b3dPcVVEOVI4OXBpRm43RkU2?=
 =?utf-8?B?cE9PNjVadFJ0aVhqR0lhUlFVcy90bWVMTjdLcXl5RkYrM3N3RUx4RXlPK3ps?=
 =?utf-8?B?aWsvQXI0NmVwUnVxdStXTjV0b2hqK0JhWlVEcjIrRm1oblZSRzlnUDFTdUJU?=
 =?utf-8?B?VnBnRVBadXlQV3ltZXRkRnhrTWpINlU2S2Q1NTl2djVYYmF6bXU0Mm5FanJJ?=
 =?utf-8?B?eU9EM09qS2xGVm9rSlllOExpTGNBb1VJWkROSHRGamlNMHBuUWoraSt6U0dQ?=
 =?utf-8?B?ek85dTJCbTZxdUIwSXFRVWFUVlhuTXhWanE0VTB1OFZhSzdySytjSW1pMjlu?=
 =?utf-8?B?Y0dyY25idmlNU21PaFNiSDBXWkE2Z3paTm83SWNOWGszOVZHaFdLQnhneGt2?=
 =?utf-8?B?N3BybXpocWJjaFBXNW54SmtFSjhoWXgrSWVTK3BmWnJ5Nk56Y01JV21YWDlj?=
 =?utf-8?B?akNYbUdzL2xybnpPUkk4MVJFUkVBZWEyQndZS0NBQWk0OE00anB1dWVtek9l?=
 =?utf-8?B?c2lFRy9yRHFrdi9Md0x0aXBTZ1ZCdFdWNnljQjNRL0U2emZsb3FQbHozTEJ0?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d623c30-e758-4e80-6ae4-08de0c076826
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:25:08.6949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dIt4V8xm+yKGzP5tBJt5O4QFIHMCzbQ6Xuwrrez8HLGn4bc80Dhoe4Ncx3/sdG+uUNYr3zZPV09gMPo8Ei7c1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
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

Quoting Jani Nikula (2025-10-15 12:33:31-03:00)
>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Starting with Xe3p_LPD, the VBT has a new field, called in the driver
>> "dedicated_external", which tells that a Type-C capable port is
>> physically connected to a PHY outside of the Type-C subsystem.  When
>> that's the case, the driver must not do the extra Type-C programming for
>> that port.  Update intel_encoder_is_tc() to check for that case.
>>
>> While at it, add a note to intel_phy_is_tc() to remind us that it is
>> about whether the respective port is a Type-C capable port rather than
>> the PHY itself.
>>
>> (Maybe it would be a nice idea to rename intel_phy_is_tc()?)
>>
>> Note that this was handled with a new bool member added to struct
>> intel_digital_port instead of having querying the VBT directly because
>> VBT memory is freed (intel_bios_driver_remove) before encoder cleanup
>> (intel_ddi_encoder_destroy), which would cause an oops to happen when
>> the latter calls intel_encoder_is_tc().  This could be fixed by keeping
>> VBT data around longer, but that's left for a follow-up work, if deemed
>> necessary.
>>
>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c           |  7 +++++++
>>  drivers/gpu/drm/i915/display/intel_display.c       | 19 +++++++++++++++=
+++-
>>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>>  3 files changed, 26 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index c09aa759f4d4..6fcbebb81263 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -5343,6 +5343,13 @@ void intel_ddi_init(struct intel_display *display=
,
>>                          goto err;
>>          }
>> =20
>> +        if (intel_bios_encoder_is_dedicated_external(devdata)) {
>> +                dig_port->dedicated_external =3D true;
>> +                drm_dbg_kms(display->drm,
>> +                            "Port %c is dedicated external\n",
>> +                            port_name(port));
>> +        }
>
>With the information print added in parse_ddi_port(), the printing here
>becomes redundant.
>
>> +
>>          if (intel_encoder_is_tc(encoder)) {
>>                  bool is_legacy =3D
>>                          !intel_bios_encoder_supports_typec_usb(devdata)=
 &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 6ac718192e1c..46474199d1ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1778,7 +1778,17 @@ bool intel_phy_is_combo(struct intel_display *dis=
play, enum phy phy)
>>                  return false;
>>  }
>> =20
>> -/* Prefer intel_encoder_is_tc() */
>> +/*
>> + * This function returns true if the DDI port respective to the PHY enu=
meration
>> + * is a Type-C capable port.
>> + *
>> + * Depending on the VBT, the port might be configured
>> + * as a "dedicated external" port, meaning that actual physical PHY is =
outside
>> + * of the Type-C subsystem and, as such, not really a "Type-C PHY".
>> + *
>> + * Prefer intel_encoder_is_tc(), especially if you really need to know =
if we
>> + * are dealing with Type-C connections.
>> + */
>>  bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
>>  {
>>          /*
>> @@ -1863,6 +1873,13 @@ bool intel_encoder_is_tc(struct intel_encoder *en=
coder)
>>  {
>>          struct intel_display *display =3D to_intel_display(encoder);
>> =20
>> +        if (intel_encoder_is_dig_port(encoder)) {
>> +                struct intel_digital_port *dig_port =3D enc_to_dig_port=
(encoder);
>> +
>> +                if (dig_port->dedicated_external)
>
>Why go through all the trouble of duplicating the "decicated external"
>information in the digital port, when you already have encoder
>available, and can just use intel_bios_encoder_is_dedicated_external()
>right here?

I believe the last paragraph of the commit message explains the why.
Are you suggesting that we handle the lifespan issue right in this
series instead?

Using intel_bios_encoder_is_dedicated_external() my first approach, but
then we were hit with an oops because the VBT data was not available
anymore in the driver unbind path.

--
Gustavo Sousa

>
>> +                        return false;
>> +        }
>> +
>>          return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
>>  }
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 13652e2996a4..b5b9351501b1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1909,6 +1909,7 @@ struct intel_digital_port {
>>          bool lane_reversal;
>>          bool ddi_a_4_lanes;
>>          bool release_cl2_override;
>> +        bool dedicated_external;
>>          u8 max_lanes;
>>          /* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>>          enum aux_ch aux_ch;
>
>--=20
>Jani Nikula, Intel
