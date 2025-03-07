Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2780FA5676C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:02:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849E210E9BF;
	Fri,  7 Mar 2025 12:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BlqTez0b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE8610E9BF;
 Fri,  7 Mar 2025 12:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741348950; x=1772884950;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qgFq+YzjriP4uI2coRlQI8BxB/ZelQXCzPugnwq1b0s=;
 b=BlqTez0bo9IlhzfJeeoFty4NIc8FVr47JOBZ2kBQtS+qoTFmrO3tUAr9
 Yt2yxVCuYOmBhXi+Xct+rWMkNvWoLPVQzSOeb3Fae6OoT3fzm5dn1mkXf
 IZsR4yo3fM+GU1ERFXng7H3n3sw81lYWDe2bXYPArLUKdY9K9bdGvgI7T
 SP4+HEs14WLqs6o6ghPV8gJNT5mE44zy2koCijNV7xkuJJey7N1WhbyTl
 qKXPSVvXj63AcZdVxVYm9fInxXy/XcBVnaPPAcZWf9y58gnD0pO4FsQpy
 f8s++QR8e2+3OFkrboXGLv/EzjNxKzaDdk7hTqpdHxPbkMxZ3LrDaA98P g==;
X-CSE-ConnectionGUID: EUiamPv3RqqI+yCgZno9lQ==
X-CSE-MsgGUID: IIol+qHBQHW1zxtqMfMdWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42250405"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42250405"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:02:28 -0800
X-CSE-ConnectionGUID: 3kFDoU6TS7CXwYgPq0absQ==
X-CSE-MsgGUID: gRhHIeXhS+2jO8Uum+uVCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119475997"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:02:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 04:02:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 04:02:27 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 04:02:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R9SDSx+GOB6GWZ1YAXwL1OhEeknjPZ0q0+qkCDRpFxQIzobaza8mu5xIk/LkEI1sYFMHfz+BIK3uflJExPxVSCgw8CDUSJilkRSCVubrf/t9kZhTpYTzjKwtzmKbZL4g6rF8QaFZPw8zMPMkJL+AKrAsF1sTeXU9SaRABJkXRaiHa3+R9Lpk9qBFB9+QvnFx/hPy+aKg3TndB8WccBT78XubsvzObcVtnGQvcLR+cItnh75UVIRhbCAodhGffSgJ0Xcqls+kk3R05NNa+uYP0gDRo0boFm7Wwt+TKWksv7Oq2xDWTXHjX8BYzI5I3SZSP7EoOSZr+fdyLK4rE5jrwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qgFq+YzjriP4uI2coRlQI8BxB/ZelQXCzPugnwq1b0s=;
 b=Mempy0zLsUzFXtqSKX5PkV7jcughn2k6+TQkMhtIsqJiSMXU6oCjsgmYFv27yLsIVOIVzxzmAoDIEeLagN5yJj3hKCBlo6/GsRoYWpAJ39ReC42HdAySly9KfyRYkX5G7InE/Q/L2zmxd2w9daEpy9NiqrX6QJf7+p88jVwe49+11i3t2baqD6PNnS49Xw5BnssKi6kc4ywaO5ig869/IijzoXBTy19XrWfq/bJ6/E2hS7e+mAn7nVnftBtVaGKyKUTjGxOkzz96P/d7fvBz10H6yeZi9kDjFTQ1S10ASsUQU6jxqfCzGXqJ/HOasTsjUklG+LpVuwEfFTOAXD686w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA2PR11MB4795.namprd11.prod.outlook.com (2603:10b6:806:118::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 12:02:09 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 12:02:09 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Topic: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Index: AQHbh1ynRu+x3xAGZUKqZGUbQfZCF7NXtOSAgAACNYCAAA65gIAAX8sAgALNkICAAde+gIAAEhOAgASKQgCABjbrcA==
Date: Fri, 7 Mar 2025 12:02:09 +0000
Message-ID: <MW4PR11MB7054AAB47E26AEFE4A0AEF4FEFD52@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-6-suraj.kandpal@intel.com> <8734g276o6.fsf@intel.com>
 <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SN7PR11MB6750A509052EF04B959BA7C1E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87ldtu59fb.fsf@intel.com>
 <SN7PR11MB67505D632A7CCE485E8FB81FE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <Z8HHsZbQWxr04C9k@intel.com>
 <SN7PR11MB6750E346CE1E741FE225D52CE3CC2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <Z8Wl1KbPnzUfN3z3@intel.com>
In-Reply-To: <Z8Wl1KbPnzUfN3z3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA2PR11MB4795:EE_
x-ms-office365-filtering-correlation-id: 20c7acc9-7ebc-4594-9f0b-08dd5d6fe356
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bHc4eDZzOFpuVXZoWHFpbFlDaTQ4NnhPalI1dFhoVEZlU1FFZmxrbkpnTWlM?=
 =?utf-8?B?VDJpd0lkZ0hRYnV4UGd2N0RENGc3ZGxDb0t0RUh3S0lKV3M2UFgrRzgxUTl5?=
 =?utf-8?B?LzFNeE92VG1Zdk1zN3h5d0xmUGZhTmorRE1HNTNkSytJaGFTRWNZSVJEZE1M?=
 =?utf-8?B?Nlc4WkRuVTQwM0ZLM2pTRzVmS09KTnJON0FiVmZuMFpaZ045MWRnb3dNVEFO?=
 =?utf-8?B?c1hpZGdJZWc0NVNnelhQVGtXRUlmZFNvSXoyZ1VmdUdZY1JGS1d6WFc3UGN5?=
 =?utf-8?B?c3Jma01XTHFIUWdtRjl0KzI1MnppUWRkZlNUYWhqT243TFRORmo3QW9BcHdE?=
 =?utf-8?B?NHlnZFVDR3dhQUR5U0g1WmJtSk9GS1Q5cG1MZ24zSFpMbVo2WE1pZ2FSYlZi?=
 =?utf-8?B?ZVFJc0ZRUnJxUzFxUXNMWUh4RFpvM2FYR3hDdVNJUE5xVXRWa1p2ZC91VEVD?=
 =?utf-8?B?eVVmYjBiMXIvU0JvemVHaVo2RWZrVnhINzQ3MG0yNUJXOE5XUmRVVDdSR1FZ?=
 =?utf-8?B?Znkza3lEeGJ4WjQ2cG56THJzNnFoaE8vMFgrTVdMbzEzUENrQVVNZG1oYXB1?=
 =?utf-8?B?M1d3UHdGSmpXVTJXei9TeWtIeWVDU2hjNFpvZmt4Y3V3Wld0TEIraWRvQUpQ?=
 =?utf-8?B?VUV0TndQaGI2NnBSOE1na2RHSTgreThEdmJ3R2dGZktITnZmMkdaUHQrV3Bm?=
 =?utf-8?B?b3liaVhrOWxNN1ZkYUpZL3FIN3RhaFFHTEE5RlZJemhBcm9qQm5QMk92SHBt?=
 =?utf-8?B?Z2VQTjhKOW54NGJQR0M1UnVRaEthUkFxSlc4Nmd5UDZIcVNDeDVWdkFkdGQz?=
 =?utf-8?B?MG91WG1hR0tDSkllbzU3NzBaQjQ0dHFBcDhzYlMrOEVBemZGeTRGamRpTDZW?=
 =?utf-8?B?YStyZU9TaUVROEhnbzZzOEZrSmIzLytZOWpFT3ZJZ3BMTzhPMFBrYTdDemJW?=
 =?utf-8?B?azJ3OVJoUlVia2dVb00vRTlNa2w2Ry9ESjB5Zi82VHFSMzRqZ0lUdXlkUVll?=
 =?utf-8?B?S2ZTT0xCeDRHSkNSUkNqY1RXSlMwKzBCSVRqRG4rUUl4TysxNzNKekx0aFpB?=
 =?utf-8?B?NC9nNWlQbE5yVmNxcXFCTlJsTkZaMkZFbHNYbEd2LzduUkw3R2NtNnF1UjJw?=
 =?utf-8?B?NVVRQ1hFUzQ5cDJZVkRjMU9HVGxocWcyQ1FDdDdpbzA3TGNDNmZjTTMxTGs1?=
 =?utf-8?B?ZElzSk1NOHdVa0hzRlg4QzJWaGIzOU1HNks3UDc3R29MTVdldWdTZk92YjVG?=
 =?utf-8?B?dUpwZFhKcllkQm5abDlxUzBmMUVUcC83eStmQi9uSGNTQ0xhTlVzWUE3Ylc5?=
 =?utf-8?B?VldiemEwT0VMbU5iMEM3RDJjNWkvSzlSV3dEQ3VONXBZcU02V3ZsNWtkVmdG?=
 =?utf-8?B?bm9FWU5EdDhucWRHaGMwUzEvV1VhUTB1NmYzRHFBWG4rZXZwRWl5NXdSOGln?=
 =?utf-8?B?aS9kd1pEMWtEU0Jsd21pSDBpN01lMU9MdWduTWU3WllpNEpITk0vUVFRZ2ZR?=
 =?utf-8?B?a3h6N1hmWWxxRk5aTkRuQ2xGcEpkZWRRM2haY0ZicVFJOExwU3o1REV4dXZJ?=
 =?utf-8?B?LzBqSG5leThwb0RTdE5qUjJzZnBPVS8xa0tzaE9OVVkvTlgzYmZMVGZFb3FH?=
 =?utf-8?B?UEdINU8xK003cW85bnptVmlNVXNnUTBsR0t0WXgrOUY1emNYWUN2SVJmTC9v?=
 =?utf-8?B?SUpFazlpcWZOaktnU1l4aUg2SVRnNjdMejNCSkIyZzl1cE5ZUVZ0bFRwdHBO?=
 =?utf-8?B?TSttWVcwWnIxUFQ0SE4yV2k4U0pzYWlZbXlqd2VqN2NGVVBmYUs3dGpoRU02?=
 =?utf-8?B?SXUvVytlaXVDdDRFc0hoVGZSSjd1OEc1OUE4aklkc0RObloyOWdhM3NOTHdk?=
 =?utf-8?B?Tm5ZUldWUm1vZ3Jma3ZmYmNEb041NmxscXVxSDlISmZIcE9WOXlRT1NuNW1s?=
 =?utf-8?Q?tXr4ZbC60xjjwzzd1EOGCBGry2Lxylpp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2VhR2dvT3g2ZUdDdWFISllvNlQvZmdXRUdpNkh6TTZBbGV3WEM0SlUza29i?=
 =?utf-8?B?K3lXYW1UQVk2bWY1ODEvTVZseVNwejJXanRxVmVQdmVoT1h5NFVjd096Z1Fx?=
 =?utf-8?B?SXdUbjJaVWtSTGwyZEJBOWRGSHQyV2VuSEc2dUk5R2x4eS9nSnlmSko1WHRH?=
 =?utf-8?B?K2lZYlZad0RYQVl6RndzbmhlbTdOeVVXWFlpZFZOZmpWK2xUbWdDQ3VXL0RL?=
 =?utf-8?B?eGlZdUJjeVRIT2hDNVozbDI2R2tXOXhwVHROM05kaExmYUVaSlF4YTIwL3N3?=
 =?utf-8?B?WkI4a1lzOHB4eFRlQUNpbloyckhzWXZHQjhjbmZRRGtNZ2lEVFZlL2dqQURu?=
 =?utf-8?B?NCtSSFBhS0xhSnlwcjNZRGphUVZlQzcwTlhKYnJYUEl2bVNuekN1S3Nqd0dV?=
 =?utf-8?B?R2cyZWtNRG5oM0VxUE9OWG4vSVl6ZWxMdHZjeHBSZTRWRVN1WmxoTlYrU3ZU?=
 =?utf-8?B?cEFMVG9rTjIzMjU1WDEvdjZZUkNqSS9NeDA4NjJPTzQ0eFhtU2lVdS8zMEkx?=
 =?utf-8?B?bzR1VXZtaWRiZ0dsMFlmSkpadFRwZDJ6TWJiOG80R3QveUJ2WG81VDByaUI2?=
 =?utf-8?B?UEVsWUcxSk9qOU1ROUE3WVdZOVJuc3YrK3NmaktQaEtQQmdmOVJta1FHQ0Ja?=
 =?utf-8?B?NElxS2VMUmVnbjVzb1dDYnllcTBaQndlc0t2cTIxaVJiU0FoM2VSREF0eUlN?=
 =?utf-8?B?MEFLOWtXaWZ4YkpsenVGdVQ3cGIrTVVhQ3lRWHJOZ2tKRGowdDhLNEJSZWZO?=
 =?utf-8?B?QmxFckpnTHovOHRoKzVxUXBBM0hWTEd2MXdiSmMxbEhmdDNIZWo0WkZPb0h1?=
 =?utf-8?B?NFE5eFR2NmZZK3YwbzdmeDJRTENxOG1XOEJUTUpUVFRQSG03MXdCMnpqaEdZ?=
 =?utf-8?B?SHFZUDdUeWt3TGhMaXNLekVMOUJvTm1HSnFPOTZnbWpCU0JnM0RTcUdLdWZW?=
 =?utf-8?B?OEk4ak83dHpsYit0YU9zckw3Q1BZME1tV0NFRVI5Q3hKVTRJcThLczBVOTNS?=
 =?utf-8?B?SmY5aDhqME9NNSszeGdoM2dJTnhUdnhBNDEvWk1SdDQrcms1WDZJeU0vTHpH?=
 =?utf-8?B?OUs2OGpjTGpwVUNvQXgrTU9kQTFTSjh4cnZPdkozdkQ4WHl3Y2Q5UWQrZFU2?=
 =?utf-8?B?NFRWa0hSN3ZRZ2tXNlFPWEZGYVZpM1VNcWdZWTFtVzlWSWRBM3dIdURUd2Nu?=
 =?utf-8?B?T2J1QXdYZnJDY05Tczc3d1czR2xPTFJlSmRCd0E0cC9aeFpZRllUM251ZjZN?=
 =?utf-8?B?clRDYWJOb1NzMWt1UmRVK1orOFV2K3VzSU9PakhqeFVvVE16Vks4VFczdnE3?=
 =?utf-8?B?cGhZR0VqdGhDN1pvUVNLck5SUytZVUV6WFB6eFpPVVppeFUwVVE2QlJhRzBw?=
 =?utf-8?B?L1VKYnNkVkNvVnAzR2F0ekM0MFZ6OENaaS83SWxqZW9jQjQ5MXp6VXRNWXpy?=
 =?utf-8?B?N3hyTXJySWx3VU05eitTaG9hTjNUN2dvNUc5UmRoYkpwMVY1ZXB3Wmxmd2xB?=
 =?utf-8?B?UmNzZHBWS0dvQlZmcGYzejlCdGhaNkY5MktNYTFQQm9KeEc1amVRdERDY05P?=
 =?utf-8?B?MmtjNzI2S0laT05QS3FTZTFvRmdIUWxwMlZXZEtrT1pVVkpxMjNrRE4welhZ?=
 =?utf-8?B?SHc4LzlJcTFDSnRiUmh2VkVFSzhycE13QkFxOUhRSXJBL2lPY0tUYXkxYk9p?=
 =?utf-8?B?VjQ2VXR1dmxZS2VlSkJQMktKTXUyZmhRK09aOTVpaTBJQW5rUlNvZEwvRVcv?=
 =?utf-8?B?TGsrd24zOGE5akN1Vlp5TURyUjFXdndUSTRQN2Q4emVzWUMwRU5iNyt2NVNR?=
 =?utf-8?B?QXkzVHhMRWFtdXp3S29iVjRGSnpvWlRsd2RpZi93NWlrZ3NtK0NKdExiMWZu?=
 =?utf-8?B?RExsL1NLdi9iMTRmbEtsVG5iMDhLWEg1V3BiYThENzNJZ2xVOUYwRzNuWDNB?=
 =?utf-8?B?VCsyTVUyZm5FSHN0NFpUNDV2d0hoU254TDRBOXNtMndUUlo1b3p4dmlGL0hv?=
 =?utf-8?B?SlRLRXRuMkU1YnF4REF6bWVVa3Nzazd2MEdoNkVSdjdjaEswdEZLeC9saE1m?=
 =?utf-8?B?dnZocisxV2tzQnJVcDdsaXlqZ3QwSEc4WXgzeE9pUC9pMC9ySG5DcU05QVBi?=
 =?utf-8?Q?s31EW6X6KMvjaDMbCr6yEKmV+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c7acc9-7ebc-4594-9f0b-08dd5d6fe356
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 12:02:09.3276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PiJx2dsryldI9bBCdvOLMTt7SZBwY6zdRkn15tYaEvzD/RDzOCs0fQK2vCb70kVefwIth4+bUrxXbs34PO9gkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4795
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIDMgTWFyY2ggMjAy
NSAxNC41Mg0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0K
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgU3lyamFsYSwgVmlsbGUgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPjsgTmF1dGl5YWwsDQo+
IEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjsgU2hhbmthciwgVW1hIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+Ow0KPiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwNS8xMV0gZHJtL2k5MTUvZHBsbDogTW92ZSBhd2F5
IGZyb20gdXNpbmcgc2hhcmVkIGRwbGwNCj4gDQo+IE9uIEZyaSwgRmViIDI4LCAyMDI1IGF0IDAz
OjMxOjM5UE0gKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBGZWJydWFy
eSAyOCwgMjAyNSA3OjU3IFBNDQo+ID4gPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRw
YWxAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5p
bnRlbC5jb20+Ow0KPiA+ID4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+ID4gU3lyamFsYSwgVmlsbGUgPHZpbGxlLnN5
cmphbGFAaW50ZWwuY29tPjsgTmF1dGl5YWwsIEFua2l0IEsNCj4gPiA+IDxhbmtpdC5rLm5hdXRp
eWFsQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsNCj4g
PiA+IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCAwNS8xMV0gZHJtL2k5MTUvZHBsbDogTW92ZSBhd2F5IGZyb20gdXNpbmcNCj4g
PiA+IHNoYXJlZCBkcGxsDQo+ID4gPg0KPiA+ID4gT24gVGh1LCBGZWIgMjcsIDIwMjUgYXQgMTA6
MTg6MzFBTSArMDAwMCwgS2FuZHBhbCwgU3VyYWogd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+DQo+
ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gPiA+IFNlbnQ6IFR1
ZXNkYXksIEZlYnJ1YXJ5IDI1LCAyMDI1IDk6MDAgUE0NCj4gPiA+ID4gPiBUbzogS2FuZHBhbCwg
U3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsNCj4gPiA+ID4gPiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4g
PiA+ID4gU3lyamFsYSwgVmlsbGUgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiA+ID4gPiA+
IENjOiBOYXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+OyBTaGFu
a2FyLCBVbWENCj4gPiA+ID4gPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWth
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gU3ViamVjdDogUkU6IFtQQVRDSCAw
NS8xMV0gZHJtL2k5MTUvZHBsbDogTW92ZSBhd2F5IGZyb20gdXNpbmcNCj4gPiA+ID4gPiBzaGFy
ZWQgZHBsbA0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gT24gVHVlLCAyNSBGZWIgMjAyNSwgIkthbmRw
YWwsIFN1cmFqIiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gPiA+ID4+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4gPj4gRnJvbTogS2FuZHBhbCwg
U3VyYWoNCj4gPiA+ID4gPiA+PiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAyNSwgMjAyNSAyOjI1
IFBNDQo+ID4gPiA+ID4gPj4gVG86IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRl
bC5jb20+Ow0KPiA+ID4gPiA+ID4+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4g
PiA+ID4gPiA+PiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+ID4gPj4g
Q2M6IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IFNoYW5r
YXIsDQo+ID4gPiA+ID4gPj4gVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBLYWhvbGEsIE1p
a2ENCj4gPiA+ID4gPiA+PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4+IFN1
YmplY3Q6IFJFOiBbUEFUQ0ggMDUvMTFdIGRybS9pOTE1L2RwbGw6IE1vdmUgYXdheSBmcm9tDQo+
ID4gPiA+ID4gPj4gdXNpbmcgc2hhcmVkIGRwbGwNCj4gPiA+ID4gPiA+Pg0KPiA+ID4gPiA+ID4+
DQo+ID4gPiA+ID4gPj4NCj4gPiA+ID4gPiA+PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gPiA+ID4gPj4gPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50
ZWwuY29tPg0KPiA+ID4gPiA+ID4+ID4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjUsIDIwMjUg
MjoxNyBQTQ0KPiA+ID4gPiA+ID4+ID4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT47DQo+ID4gPiA+ID4gPj4gPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7DQo+ID4gPiA+ID4gPj4gPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
PiA+ID4gPj4gPiBDYzogTmF1dGl5YWwsIEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwu
Y29tPjsNCj4gPiA+ID4gPiA+PiA+IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
PjsgS2Fob2xhLCBNaWthDQo+ID4gPiA+ID4gPj4gPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsg
S2FuZHBhbCwgU3VyYWoNCj4gPiA+ID4gPiA+PiA+IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4N
Cj4gPiA+ID4gPiA+PiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMDUvMTFdIGRybS9pOTE1L2RwbGw6
IE1vdmUgYXdheSBmcm9tDQo+ID4gPiA+ID4gPj4gPiB1c2luZyBzaGFyZWQgZHBsbA0KPiA+ID4g
PiA+ID4+ID4NCj4gPiA+ID4gPiA+PiA+IE9uIFR1ZSwgMjUgRmViIDIwMjUsIFN1cmFqIEthbmRw
YWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiB3cm90ZToNCj4gPiA+ID4gPiA+PiA+ID4g
UmVuYW1lIGZ1bmN0aW9ucyB0byBtb3ZlIGF3YXkgZnJvbSB1c2luZyBzaGFyZWQgZHBsbCBpbg0K
PiA+ID4gPiA+ID4+ID4gPiB0aGUgZHBsbCBmcmFtZXdvcmsgYXMgbXVjaCBhcyBwb3NzaWJsZSBz
aW5jZSBkcGxsIG1heSBub3QNCj4gPiA+ID4gPiA+PiA+ID4gYWx3YXlzIGJlDQo+ID4gPiBzaGFy
ZWQuDQo+ID4gPiA+ID4gPj4gPiA+DQo+ID4gPiA+ID4gPj4gPiA+IFNpZ25lZC1vZmYtYnk6IFN1
cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4+ID4NCj4g
PiA+ID4gPiA+PiA+IC4uLg0KPiA+ID4gPiA+ID4+ID4NCj4gPiA+ID4gPiA+PiA+ID4gZGlmZiAt
LWdpdA0KPiA+ID4gPiA+ID4+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuaA0KPiA+ID4gPiA+ID4+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbF9tZ3IuaA0KPiA+ID4gPiA+ID4+ID4gPiBpbmRleCA2ZWRkMTAzZWRh
NTUuLmVmNjZhY2E1ZGExZCAxMDA2NDQNCj4gPiA+ID4gPiA+PiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oDQo+ID4gPiA+ID4gPj4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaA0KPiA+ID4g
PiA+ID4+ID4gPiBAQCAtMzg3LDI0ICszODcsMjQgQEAgc3RydWN0IGludGVsX2dsb2JhbF9kcGxs
IHsgICNkZWZpbmUNCj4gPiA+ID4gPiA+PiA+ID4gU0tMX0RQTEwyDQo+ID4gPiA+ID4gPj4gPiA+
IDIgI2RlZmluZSBTS0xfRFBMTDMgMw0KPiA+ID4gPiA+ID4+ID4gPg0KPiA+ID4gPiA+ID4+ID4g
PiAtLyogc2hhcmVkIGRwbGwgZnVuY3Rpb25zICovDQo+ID4gPiA+ID4gPj4gPiA+ICsvKiBnbG9i
YWwgZHBsbCBmdW5jdGlvbnMgKi8NCj4gPiA+ID4gPiA+PiA+ID4gIHN0cnVjdCBpbnRlbF9nbG9i
YWxfZHBsbCAqDQo+ID4gPiA+ID4gPj4gPiA+IC1pbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQo
c3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiA+ID4gPiA+PiA+ID4gKmRpc3BsYXksDQo+ID4gPiA+
ID4gPj4gPiA+ICtpbnRlbF9nZXRfZ2xvYmFsX2RwbGxfYnlfaWQoc3RydWN0IGludGVsX2Rpc3Bs
YXkNCj4gPiA+ID4gPiA+PiA+ID4gKypkaXNwbGF5LA0KPiA+ID4gPiA+ID4+ID4gPiAgCQkJICAg
IGVudW0gaW50ZWxfZHBsbF9pZCBpZCk7IC12b2lkDQo+ID4gPiA+ID4gPj4gPiA+IGFzc2VydF9z
aGFyZWRfZHBsbChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiA+ID4gPiA+PiA+
ID4gK3ZvaWQgYXNzZXJ0X2dsb2JhbF9kcGxsKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiA+ID4gPiA+ID4+ID4gPiAgCQkJc3RydWN0IGludGVsX2dsb2JhbF9kcGxsICpwbGwsDQo+
ID4gPiA+ID4gPj4gPiA+ICAJCQlib29sIHN0YXRlKTsNCj4gPiA+ID4gPiA+PiA+ID4gLSNkZWZp
bmUgYXNzZXJ0X3NoYXJlZF9kcGxsX2VuYWJsZWQoZCwgcCkNCj4gPiA+ID4gPiA+PiA+ID4gYXNz
ZXJ0X3NoYXJlZF9kcGxsKGQsIHAsDQo+ID4gPiA+ID4gPj4gPiA+IHRydWUpIC0jZGVmaW5lIGFz
c2VydF9zaGFyZWRfZHBsbF9kaXNhYmxlZChkLCBwKQ0KPiA+ID4gPiA+ID4+ID4gPiBhc3NlcnRf
c2hhcmVkX2RwbGwoZCwgcCwgZmFsc2UpIC1pbnQNCj4gPiA+ID4gPiA+PiA+ID4gaW50ZWxfY29t
cHV0ZV9zaGFyZWRfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ID4gPiA+ID4+
ID4gPiAqc3RhdGUsDQo+ID4gPiA+ID4gPj4gPiA+ICsjZGVmaW5lIGFzc2VydF9nbG9iYWxfZHBs
bF9lbmFibGVkKGQsIHApDQo+ID4gPiA+ID4gPj4gPiA+ICthc3NlcnRfZ2xvYmFsX2RwbGwoZCwg
cCwNCj4gPiA+ID4gPiA+PiA+ID4gK3RydWUpICNkZWZpbmUgYXNzZXJ0X2dsb2JhbF9kcGxsX2Rp
c2FibGVkKGQsIHApDQo+ID4gPiA+ID4gPj4gPiA+ICthc3NlcnRfZ2xvYmFsX2RwbGwoZCwgcCwg
ZmFsc2UpIGludA0KPiA+ID4gPiA+ID4+ID4gPiAraW50ZWxfY29tcHV0ZV9nbG9iYWxfZHBsbHMo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ID4gPiA+ID4+ID4gPiArKnN0YXRlLA0KPiA+
ID4gPiA+ID4+ID4gPiAgCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiA+ID4g
PiA+ID4+ID4gPiAgCQkJICAgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsgLWlu
dA0KPiA+ID4gPiA+ID4+ID4gPiBpbnRlbF9yZXNlcnZlX3NoYXJlZF9kcGxscyhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlDQo+ID4gPiA+ID4gPj4gPiA+ICpzdGF0ZSwNCj4gPiA+ID4gPiA+PiA+
ID4gK2ludCBpbnRlbF9yZXNlcnZlX2dsb2JhbF9kcGxscyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlDQo+ID4gPiA+ID4gPj4gPiA+ICsqc3RhdGUsDQo+ID4gPiA+ID4gPj4gPiA+ICAJCQkgICAg
ICAgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ID4gPiA+ID4gPj4gPiA+ICAJCQkgICAgICAg
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOyAtdm9pZA0KPiA+ID4gPiA+ID4+ID4gPiBp
bnRlbF9yZWxlYXNlX3NoYXJlZF9kcGxscyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4g
PiA+ID4gPj4gPiA+ICpzdGF0ZSwNCj4gPiA+ID4gPiA+PiA+ID4gK3ZvaWQgaW50ZWxfcmVsZWFz
ZV9nbG9iYWxfZHBsbHMoc3RydWN0DQo+ID4gPiA+ID4gPj4gPiA+ICtpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiA+ID4gPiA+ID4+ID4gPiAgCQkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KTsgLXZvaWQNCj4gPiA+ID4gPiA+PiA+ID4gaW50ZWxfdW5yZWZlcmVuY2Vfc2hhcmVkX2RwbGxf
Y3J0Yyhjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiA+PiA+ID4gaW50ZWxfY3J0YyAqY3J0YywNCj4g
PiA+ID4gPiA+PiA+ID4gK3ZvaWQgaW50ZWxfdW5yZWZlcmVuY2VfZ2xvYmFsX2RwbGxfY3J0Yyhj
b25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiA+PiA+ID4gK2ludGVsX2NydGMgKmNydGMsDQo+ID4gPiA+
ID4gPj4gPiA+ICAJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9nbG9iYWxfZHBsbA0KPiA+ID4gKnBs
bCwNCj4gPiA+ID4gPiA+PiA+ID4gIAkJCQkJc3RydWN0IGludGVsX2RwbGxfc3RhdGUNCj4gPiA+
ID4gPiA+PiA+ICpzaGFyZWRfZHBsbF9zdGF0ZSk7ICB2b2lkDQo+ID4gPiA+ID4gPj4gPiA+IGlj
bF9zZXRfYWN0aXZlX3BvcnRfZHBsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+
ID4+ID4gPiAqY3J0Y19zdGF0ZSwgQEANCj4gPiA+ID4gPiA+PiA+ID4gLTQxOCwxMCArNDE4LDEw
IEBAIGludCBpbnRlbF9kcGxsX2dldF9mcmVxKHN0cnVjdA0KPiA+ID4gPiA+ID4+ID4gPiBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5LCAgYm9vbA0KPiA+ID4gPiA+ID4+ID4gPiBpbnRlbF9kcGxsX2dl
dF9od19zdGF0ZShzdHJ1Y3QNCj4gPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gPiA+
ID4gPj4gPiA+ICAJCQkgICAgIHN0cnVjdCBpbnRlbF9nbG9iYWxfZHBsbCAqcGxsLA0KPiA+ID4g
PiA+ID4+ID4gPiAgCQkJICAgICBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSAqZHBsbF9od19z
dGF0ZSk7DQo+ID4gPiAtdm9pZA0KPiA+ID4gPiA+ID4+ID4gPiBpbnRlbF9lbmFibGVfc2hhcmVk
X2RwbGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gPiA+PiA+ID4gKmNy
dGNfc3RhdGUpOyAtdm9pZCBpbnRlbF9kaXNhYmxlX3NoYXJlZF9kcGxsKGNvbnN0DQo+ID4gPiA+
ID4gPj4gPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgLXZvaWQNCj4g
PiA+ID4gPiA+PiA+ID4gaW50ZWxfc2hhcmVkX2RwbGxfc3dhcF9zdGF0ZShzdHJ1Y3QNCj4gPiA+
ID4gPiA+PiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7IC12b2lkDQo+ID4gPiA+ID4g
Pj4gPiA+IGludGVsX3NoYXJlZF9kcGxsX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpOw0KPiA+ID4gPiA+ID4+ID4gPiArdm9pZCBpbnRlbF9lbmFibGVfZ2xvYmFsX2RwbGwoY29u
c3Qgc3RydWN0DQo+ID4gPiA+ID4gPj4gPiA+ICtpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsgdm9pZA0KPiA+ID4gPiA+ID4+ID4gPiAraW50ZWxfZGlzYWJsZV9nbG9iYWxfZHBsbChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+ID4+ID4gPiArKmNydGNfc3RhdGUp
OyB2b2lkIGludGVsX2RwbGxfc3dhcF9zdGF0ZShzdHJ1Y3QNCj4gPiA+ID4gPiA+PiA+ID4gK2lu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOyB2b2lkDQo+ID4gPiA+ID4gPj4gPiA+ICtpbnRlbF9n
bG9iYWxfZHBsbF9pbml0KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPiA+ID4g
PiA+PiA+ID4gIHZvaWQgaW50ZWxfZHBsbF91cGRhdGVfcmVmX2Nsa3Moc3RydWN0IGludGVsX2Rp
c3BsYXkNCj4gPiA+ID4gPiA+PiA+ID4gKmRpc3BsYXkpOyB2b2lkIGludGVsX2RwbGxfcmVhZG91
dF9od19zdGF0ZShzdHJ1Y3QNCj4gPiA+ID4gPiA+PiA+ID4gaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSk7IHZvaWQNCj4gPiA+ID4gPiA+PiA+ID4gaW50ZWxfZHBsbF9zYW5pdGl6ZV9zdGF0ZShzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4gPiA+ID4gPj4gPiA+IEBADQo+ID4gPiA+
ID4gPj4gPiA+IC00MzcsNg0KPiA+ID4gPiA+ID4+ID4gPiArNDM3LDYgQEAgYm9vbCBpbnRlbF9k
cGxsX2lzX2NvbWJvcGh5KGVudW0gaW50ZWxfZHBsbF9pZA0KPiA+ID4gPiA+ID4+ID4gPiAraWQp
Ow0KPiA+ID4gPiA+ID4+ID4gPg0KPiA+ID4gPiA+ID4+ID4gPiAgdm9pZCBpbnRlbF9kcGxsX3N0
YXRlX3ZlcmlmeShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4gPiA+
PiA+ID4gIAkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOyAtdm9pZA0KPiA+ID4gPiA+
ID4+ID4gPiBpbnRlbF9zaGFyZWRfZHBsbF92ZXJpZnlfZGlzYWJsZWQoc3RydWN0DQo+ID4gPiA+
ID4gPj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiA+ID4gPiA+ID4+ID4gPiAr
dm9pZCBpbnRlbF9nbG9iYWxfZHBsbF92ZXJpZnlfZGlzYWJsZWQoc3RydWN0DQo+ID4gPiA+ID4g
Pj4gPiA+ICtpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsNCj4gPiA+ID4gPiA+PiA+ID4NCj4g
PiA+ID4gPiA+PiA+ID4gICNlbmRpZiAvKiBfSU5URUxfRFBMTF9NR1JfSF8gKi8NCj4gPiA+ID4g
PiA+PiA+DQo+ID4gPiA+ID4gPj4gPiBJZiB5b3UncmUgcmVuYW1pbmcgYWxtb3N0IGV2ZXJ5dGhp
bmcgYW55d2F5LCBJJ2QgYXBwcmVjaWF0ZQ0KPiA+ID4gPiA+ID4+ID4gbW92aW5nIHRvd2FyZHMg
bmFtaW5nIGZ1bmN0aW9ucyBhY2NvcmRpbmcgdG8gdGhlIGZpbGUgbmFtZSwNCj4gPiA+ID4gPiA+
PiA+IGkuZS4gZnVuY3Rpb25zIGluIGludGVsX2Zvby5bY2hdIHdvdWxkIGJlIG5hbWVkIGludGVs
X2Zvb18qKCkuDQo+ID4gPiA+ID4gPj4gPg0KPiA+ID4gPiA+ID4+ID4gVGhlIGRwbGwgbWdyIGlz
IG5vdG9yaW91c2x5IGJhZCBpbiB0aGlzIHJlZ2FyZC4gSSdtIGFsc28NCj4gPiA+ID4gPiA+PiA+
IG9wZW4gdG8gcmVuYW1pbmcgdGhlIGVudGlyZSBmaWxlLCBpbnRlbF9kcGxsX21nci5bY2hdIGlz
bid0IGFsbCB0aGF0DQo+IGdyZWF0Lg0KPiA+ID4gPiA+ID4+ID4NCj4gPiA+ID4gPiA+PiA+IEkn
bSBub3Qgc3VyZSBpZiB0aGUgdGVybSAiZ2xvYmFsIiAoaW5zdGVhZCBvZiAic2hhcmVkIikgd2Fz
DQo+ID4gPiA+ID4gPj4gPiB2ZXJ5IHdlbGwganVzdGlmaWVkIGluIHBhdGNoIDMuIE1heWJlIGFs
bCBvZiB0aGVzZSBzaG91bGQNCj4gPiA+ID4gPiA+PiA+IGJlIHRob3VnaHQgb3V0IHRvZ2V0aGVy
IGZvciB0aGUNCj4gPiA+ID4gPiA+PiBuYW1pbmcuDQo+ID4gPiA+ID4gPj4gPg0KPiA+ID4gPiA+
ID4+DQo+ID4gPiA+ID4gPj4gSSBhZ3JlZSB3aXRoIHRoZSByZW5hbWluZyBJIHdvdWxkIGhhdmUg
dmVyeSBtdWNoIGhhdmUgdG8ga2VlcA0KPiA+ID4gPiA+ID4+IHRoZSBuYW1pbmcgc2ltcGxlIHNv
bWV0aGluZyBsaWtlIEludGVsX2RwbGxfZnVuYyBidXQgdGhhdCBleGl0cyAhDQo+ID4gPiA+ID4g
Pj4gaW50ZWxfZHBsbF9tZ3JfZnVuY3MgYnV0IGludGVsX2RwbGxfbWdyIGFscmVhZHkgaGFzIHNv
bWUNCj4gPiA+ID4gPiA+PiBob29rcyBkZWZpbmVkDQo+ID4gPiA+ID4gaW5zaWRlIEl0Lg0KPiA+
ID4gPiA+ID4+IEkgY2hvc2UgZ2xvYmFsIHNpbmNlIHRoYXQgd2F5IHdlIHdpbGwgYmUgYWJsZSB0
byByZXByZXNlbnQNCj4gPiA+ID4gPiA+PiBib3RoIFBMTCB1c2luZyBzaGFyZWQgUEhZIGFuZCBQ
TEwgd2l0aCBpbmRpdmlkdWFsIFBIWS4NCj4gPiA+ID4gPiA+PiBBbHNvIHJlbmFtaW5nIGludGVs
X2RwbGxfbWdyLltjaF0gd2UgaGF2ZSBhIGludGVsX2RwbGwuW2NoXQ0KPiA+ID4gPiA+ID4+IG1h
a2luZyBpdCBhIHByb2JsZW0gV2hhdCBpZiB3ZSByZW5hbWVkIHRoZSBmaWxlIHRvDQo+ID4gPiA+
ID4gPj4gaW50ZWxfZ2xvYmFsX2RwbGwuW2NoXQ0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IEph
bmkgd2hhdCBkbyB5b3UgdGhpbmsgb2YgdGhpcyA/DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJIHRo
aW5rIFZpbGxlIHByb2JhYmx5IGhhcyBvcGluaW9ucyBvbiB0aGlzLiBDYydkLg0KPiA+ID4gPg0K
PiA+ID4gPiBIaSBWaWxsZSwNCj4gPiA+ID4gQW55IHRob3VnaHRzID8NCj4gPiA+DQo+ID4gPiBJ
TU8gaXQgc2hvdWxkIGp1c3QgYmUgaW50ZWxfZHBsbF8qLiBXZSB3YW50IGFsbCBQTExzIHRvIHBy
b3ZpZGUgdGhlDQo+ID4gPiBzYW1lIHVuaWZvcm0gaW50ZXJmYWNlIGZvciBlbmFibGUvZGlzYmxl
L3JlYWRvdXQvc3RhdGVfZHVtcC9ldGMuDQo+ID4gPiBXaGV0aGVyIHRoZSBQTEwgaXMgc2hhcmVk
L2dsb2JhbCBvciBub3QgaXNuJ3QgaW50ZXJlc3Rpbmcgb3V0c2lkZQ0KPiA+ID4gdGhlIGFjdHVh
bCBtb2Rlc2V0IHNlcXVlbmNlIGFuZCBQTEwgc2VsZWN0aW9uIGxvZ2ljLg0KPiA+DQo+ID4gQnV0
IHRoYXQgc3RpbGwgbGVhdmVzIHVzIHdpdGggdGhlIHF1ZXN0aW9uIHdoYXQgd291bGQgYmUgdGhl
IG1vc3QNCj4gPiBhcHByb3ByaWF0ZSB3YXkgdG8gZG8gYXdheSB3aXRoIHRoZQ0KPiA+IEludGVs
X3NoYXJlZF9kcGxsXyogbmFtaW5nIHdoYXQgZG9lcyBpdCBiZWNvbWUgaWYgbm90DQo+ID4gaW50
ZWxfZ2xvYmFsX2RwbGxfKiAoc2luY2UgaW50ZWxfZHBsbCB3b3VsZG4ndCBiZSBhIFN0cmFpZ2h0
Zm9yd2FyZCBhbnN3ZXIgdG8NCj4gdGhpcykgaW50ZWxfZHBsbF9nbG9iYWwgPw0KPiANCj4gV2hh
dCBkbyB5b3UgbWVhbiBpbnRlbF9kcGxsXyogaXNuJ3QgYSBzdHJhaWdodGZvcndhcmQgYW5zd2Vy
Pw0KPiBJdCBpcyB0aGUgcmlnaHQgYW5zd2VyLg0KDQpBYm91dCB0aGlzIG5hbWluZyBjb252ZW50
aW9uLCB3ZSBoYXZlIGRlZmluZWQgKGludGVsX2Rpc3BsYXlfY29yZS5oKSBzdHJ1Y3R1cmUgZm9y
IGludGVsX2RwbGwgd2hpY2ggY29udGFpbnMgc3RydWN0dXJlcyBmb3IgaW50ZWxfc2hhcmVkX2Rw
bGwgYW5kIGludGVsX2RwbGxfbWdyLiBXb3VsZG4ndCByZW5hbWluZyBpbnRlbF9zaGFyZWRfZHBs
bCB0byBpbnRlbF9kcGxsIGNhdXNlIGEgY29uZmxpY3Qgd2l0aCBhbHJlYWR5IGV4aXN0aW5nIGlu
dGVsX2RwbGwgc3RydWN0dXJlPyBPciBzaG91bGQgd2Uga2VlcCB0aGUgaW50ZWxfc2hhcmVkX2Rw
bGwgc3RydWN0dXJlIGludGFjdCBhbmQgcmVuYW1lIGludGVsX3NoYXJlZF9kcGxsXyogc2ltcGx5
IGludGVsX2RwbGxfKj8NCg0KPiANCj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
