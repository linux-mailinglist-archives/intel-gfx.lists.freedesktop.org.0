Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMbSMfyigGkgAAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 14:13:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218FACCA0D
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 14:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9459310E2AD;
	Mon,  2 Feb 2026 13:13:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fa9VCPMJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C399F10E2A7;
 Mon,  2 Feb 2026 13:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770038008; x=1801574008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1959+Rk0xOcLLs5LvDPWzpF9N/wdR/xiWxVkUNGHI30=;
 b=Fa9VCPMJlLPLmUK3IcCRpzr+dvYckIic9sMMTPGDekoHtXAJMBt8hjIT
 e9OOE3FjQ7GYUDFPMSWPtBt0vsr780K2NaAy2D9Kmya82twbjA9f49IKb
 dTwvHwELDJM+6/y5qu6qD7ipiRl/KuA/LfN8LVGNb9iP7dQ4uGFGeK3Xl
 l6HDLQEl7NRGlG08MZCtuqzrW/IQMUX6EEjRwYTs4uSxH6h/YbT6ppg/o
 pHxNtnt6y2w4M+I8oMDDmDecf+t+GCbQEUnsgDStZXtv+UQsbep+lB/N6
 5IFo4RJ0InV8Lf65SUGV78KPBNZYztz/ifcKQSTKSC4F40HXyNW/YWXvY g==;
X-CSE-ConnectionGUID: wiFzDj95RR+lKkH6l2lFgg==
X-CSE-MsgGUID: bpCn7mWbTz+ntsblvBTsjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71104419"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71104419"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 05:13:27 -0800
X-CSE-ConnectionGUID: 4GfeI7wRROiVPMGuxvu7QQ==
X-CSE-MsgGUID: av4TIuHAQk29PP1+DAn6lQ==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 05:13:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 05:13:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 05:13:25 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.12) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 05:13:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CESX6Q5q6PDfkxEowDEd7zV+YdbXQDxD5p0lXbs6QKdSkcoRcOzcTF8990M08qCChH0zNwoz7SruJBFWs4CfCorL0okekIcLDT8mZTsxw/BrOpjR2oavUk+lXZ0UXHmoNdPyr/ZWAunySUrdIKA5R1ODtkv5EDfR9J9/BO1w/pTNMw8LRtL02NLMp3X6VHf4UPYdaIaaT48YLP7obmV1EN3E+4yhG2d0FssRCXjC9b47bxv6rmnv9Q50a8nG0XzjcjN6ouiEIekjcW6SZQgZz8qu1uUkgqrHqiik+A/Dt+CDXzeQTJmK1Z04ImrSpRHRAPbXZj0zeWospieWd5RacA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1959+Rk0xOcLLs5LvDPWzpF9N/wdR/xiWxVkUNGHI30=;
 b=yQHi0iC9ar3mpbPC+WrCdkEh8Bgf11xQMrr94H4y7rNkMTqTNcsN19vpd/7NChn5p4THj8Z4ExIQ2tJAr0qGnBqkIrF1h30JMXdbHu4RCs9AY221w2pu3jRJFGKF0rxKrGz0txq5UDRzlfWBNgGBRHwTsYYJYPzLMIGsMKZ/NtI8JsWv2/zP9C+VWX6DixR3w4Hkv6hzdfpm3JwvrfVRNzZjgUcvwYjMbW82XNxVlVym+PYnPNbpZhVhE3Nu86k7cYwBByCjwagJMPozE5VnZf5bgNzGcz1IKx0yRiIBdxnrMsr22+01FOLL4Hi+Qr7tNWWBOlRTmnUAsPU7juMB5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB7524.namprd11.prod.outlook.com
 (2603:10b6:510:281::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 13:13:23 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 13:13:23 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915/power_well: Enable workaround for DSS clock
 gating issue
Thread-Topic: [PATCH v2] drm/i915/power_well: Enable workaround for DSS clock
 gating issue
Thread-Index: AQHcke7E06aOvkR+lkyU9atsh4icT7VrDQYAgARZ0uA=
Date: Mon, 2 Feb 2026 13:13:23 +0000
Message-ID: <DS4PPF69154114FB1AF8097CB9C3B814154EF9AA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260130134534.63118-1-mika.kahola@intel.com>
 <20260130184420.GD458797@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20260130184420.GD458797@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB7524:EE_
x-ms-office365-filtering-correlation-id: fdc9ef36-7f70-4d2c-dbc0-08de625cd847
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bERLUnhTajBqZWl0VW1xeDFLQ0tpcXJ0ejZBTlpnRkFmZXVmc3B2aHlwQkZ6?=
 =?utf-8?B?Z1RvVHFGcHhVVEZrMUNSaW1CVXUzaW1vd2p3WFNMWVJTaGxiMm0ycWovVG53?=
 =?utf-8?B?TzRwL2p3WjRrbG9kSHF5bmduSjd3RTNnK2J3Z3pDVWoxRkRWaUN2N00rbnRl?=
 =?utf-8?B?MVY2d2dpVGprQWx4VUlzb0w0cTQ5UmlqdkMwbHJJYnJXS204ci9yR1hWc1ZP?=
 =?utf-8?B?R1k5V2kxcjhtSTNTOGJuNy9wWnJ3dG1qQ2haT2xpRXZUQ29mUjEyWkVnZ0tp?=
 =?utf-8?B?cVRObWN3ejVEQ3U0dkdUc0Ixb1BxU2xqTTlLbXlDTUsxNkpPSjBycGpvUGtX?=
 =?utf-8?B?UHNJa2U5LytTdTNUeDVydHFQTmJnWGdmUzAzUnVvS1lIV1c0L25kWEtBeDZB?=
 =?utf-8?B?WTdEaEF6ZXlPRTdkMkUxUzdWREpNb0tFdzJKbDJtVmttOUdQcFc5WDNURzBL?=
 =?utf-8?B?TUtmYjRJSHh1dCs0L1p4L2UyMHkxcTNmMnpPVjhEZ0twRkRINC9hV0NyYnhx?=
 =?utf-8?B?d0RyTWwySXk4dEpYR3A1MlhaZzhHY1ZDOEowWjV4S29GRWNQTStGL2Z0Y3ht?=
 =?utf-8?B?NmVFVEx6bG52bkRQOUdTYjcyVW4waVk3R2kvdVhtRGdINGN0bS9Mdzc5V2hQ?=
 =?utf-8?B?ODl5TkpiUllnb1Z3NHh1c2g1UkQvbnVaWC90ajFoaGhMMTFXblZEK0EyUTBR?=
 =?utf-8?B?S0QxT0xTWEJyVlFoQ1dSMVNNSkRxMUp0WEpoRi93d0ZtMFpFNHMyZnRFRVlO?=
 =?utf-8?B?S0d5Q2tDcFN4c3o4UmNna05JOUI0Z1ZVOUg4UE5XUVdFVW9NeUU3MGJneGdE?=
 =?utf-8?B?UGJ1WDBFYWFKMlJMbTFyOHUrdTFxSmdMR3pHSlpJZEdUUFdOTW1lYVgxVmtW?=
 =?utf-8?B?bENPd3B4Qkd6T0FiZmZzUDIxR2ErSytuZ09iYllZSjlPc1A1VlBrR3NrTXM1?=
 =?utf-8?B?MUd4NVZrYjlieTMweThJTmFBNWg1SllsY2lUWEpETzV3NWNmWm4vRS94anhz?=
 =?utf-8?B?Ukc3OEdrMGUwZmZFNW5pN3VkbzR1c1JHR2R3MzVxWDJyNk9RU0lGZEYzUWpa?=
 =?utf-8?B?QmhDNXZMbWpvWm44RERnZVR5cXI5WXF4ZmJYSmtBTWhtUksxdWFaNUxhVFow?=
 =?utf-8?B?QThGOHBaL1VjOEN3Yk9wYk5KTEFTSVBvdEl0L0NsVWVJU1RGVlJ0UnIzdi9l?=
 =?utf-8?B?RjZ6dnFlc0tDNyswRkhLaUxEL2RUVU1NNUYxY0NROHR0akdBR2RGMEZhSnRQ?=
 =?utf-8?B?YldJWjVJcjdVYUZhWnlaNGFhczkrbGkrdE9zR2IxVlliTk8vVVN3YjNscUdC?=
 =?utf-8?B?aElMbjRGMUdTZDAxODRvSi9scGlRaEt1UjRDMG53MEE5Q0RibURzSkM5ekpS?=
 =?utf-8?B?ZCt2TmVCSGNheUlhdGoxaWYya254UkZoYlBWVnF5bjFKZ3N5QWhvQXhDbkZU?=
 =?utf-8?B?Z3ZQcHlqUVZvODJNYjdOKzFZNGFwSmNuVDlMaHJ5VXVhaTJKTjNZc0R4SVZO?=
 =?utf-8?B?Q2xSK1czazk3RGZ0eUNDdVgxRHQ4SkhUNjBtaWdobFNSN2ZQTTBBdmpEQTZk?=
 =?utf-8?B?UjlNdFdRcFNoNHUvZDFKTytma0lsSjZUY0puVjNQdGRkQzNGVUpvUTRRZ1dp?=
 =?utf-8?B?YU9XZGJJMDVPOWFML2dDbjF5ckZpYktUYVg1cDVNTG5GYXAxVTh2UVhDaStj?=
 =?utf-8?B?ckdkMHBwWXpLSWNTUm5SRTdoSUxHREpad1ZaN3plc2NmWFlIemlXWVloaG9j?=
 =?utf-8?B?SEZBWHBFOVFNWFlOMitOUGlhWkVpUzZpcjh6VEFCb3lEeTF0d0paK0NDSlFT?=
 =?utf-8?B?dzlhdFNPMnNsblJNMHE3S0dabWJQRzRoUEd2UElPMGtlYmJyUld3UzJnaUsy?=
 =?utf-8?B?R1RYSG9UN1lhdnJJU0x4a0h4bzYycHBhQ0Jxa3NLNk1EcUp4ZEdmeVRSZkR1?=
 =?utf-8?B?cG0yYjJLamVZR2RjeUF6QzAwd3NVQXh2L1FuQ3VNY3djMnJSK0FpRlV0emk5?=
 =?utf-8?B?WHJZZUthaDE4cEs1T3hSSjRXVEJQVzlhdHJTT0cwZ244M2w2M2hVT25LV1lh?=
 =?utf-8?B?ZWFnOGkwUDR6QUZzN2o3NVBSWnBEbzZ3ZDB6M0g2Yk52aE1NUzRSdzcwUXZh?=
 =?utf-8?B?WFVibkQ2R1FXdmZvOGtXdWgwbmlwb0pBRVU2dTI2aUZKa3lIL3R2RTJNcVZs?=
 =?utf-8?Q?auwb/fTqWNV/FhfppVjp790=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0RCdjdENkllaVVkRmZtcGNpY0plUEl3QnJqZ09oK3ByU2x3UE9Rcml1UWpQ?=
 =?utf-8?B?REJBYU4rVlpLM2FwSnczNE9aQ1J5TDAyb2lwYXViclNObEVWYTUxclhhM2oy?=
 =?utf-8?B?RlMzeTZ3UysxTDA5SDdpVG1ia0wzWURKU2JRbUZ6K3JkK2pZbmJPSjJoN2M5?=
 =?utf-8?B?RlU1aGtHdzU2dmlCL1NWK0ZRQ2s0U1lyYmdWT1dtQ1FpMWo5T3NRMWUxcnBV?=
 =?utf-8?B?Wm5qYnJLUTVWNDdDTDEzU25SRnZkay9OTUp3K05FazVjb01oc24rcUUxR1Iz?=
 =?utf-8?B?dkZwUktaQlRPVkRRRC9kZzhITVJOanY1MW5oLytCbmVnaEVCWVhxRDY1Y3Mv?=
 =?utf-8?B?c3RleTBaVEFRdHlkREI0WUpSVHk0WlU2NU5EdGFJTjQ0OTZLczE0czg4YXMy?=
 =?utf-8?B?VkFMa1RXTFFGMGdIUUJlNVI4ZEhNRFh4ZTEwQXpVMnF1bXc5Y0JpZ2lnTEE1?=
 =?utf-8?B?eHE2elgyd211eXNLZ0FST3o3TmFoaUJ3cHdzd0pWNGpHRHdwdnYxQ2IzUW0w?=
 =?utf-8?B?a1BTdFMzS1pKWURTYTBNQkpmd2lTa3haTFk1SUx1UVBVd0dHNXdyRU9raUwy?=
 =?utf-8?B?N0wzaTdkanZKM1VNUkF0bjk4SlBaRkJURDgzYWYxaUlQa0xKcGtYS250NE16?=
 =?utf-8?B?MzI3MUlndXN4SWdDbm1zRkN5R0hBTVpLaVJXc0g0eGRlVEpPbThFSWlsMEsz?=
 =?utf-8?B?QUxmcXh2OG4zVWhMVldBSTdsTE01YTY2UzNsd25LK01EZXNwS0dZS2cvNTdT?=
 =?utf-8?B?a3ZqZXJMSTlxWnY3V280UHkxRmdoRW90UCtwZ0FRRHFML0JYcmdJSUovcmZs?=
 =?utf-8?B?M0lpeVFUeUVGcXpvZFZhcS9hUldDbC9zWjQ3dVZJK1VHZVRrSVY4R2tPZnNx?=
 =?utf-8?B?MkV5SW1QRXlhclFJN3VudjZ0cnoweURzVk5nUXRqcUhycmltUGZlditSSW9K?=
 =?utf-8?B?UE15SE85NTdtbEo5Y0h0eTlhRlFacFJHVDV2SHhvbCtjRXIvcDc2QS9vc05i?=
 =?utf-8?B?clJydng3bWJtQkc2YW9Wc1VJVWo2Z0F0aGQ5c3kweEtwcWRkTjJyUmlqWmdQ?=
 =?utf-8?B?akcyaFRseGpHcSsyWG1rSXU0M0VYWjludGFyY1NJS2xtdjRWVjY5MEFDSjBD?=
 =?utf-8?B?NjBaNUZaT2RRbU4rQlo5Wks0VVB6TGtwb3piSUF5Y0RFam9wSXBYd3NobjVL?=
 =?utf-8?B?SnZFdzZZYjRlVEJUUkx4S0pBSXVLNFZ6RUVHeElKMnd2MTgrRXozNFBFcHFu?=
 =?utf-8?B?bVBBRDI1bmMwQTNzUVdBN3I0K3ViZFlFaCsvN296VkJ0emlvR1dRd2xGUUNa?=
 =?utf-8?B?RFdYb1FRSTBOd3JDVHdLYlc5T0grdDAvckN5WkxKOTNGdk94MnN5RTg5QTFP?=
 =?utf-8?B?bytlWU5vTUkvb2dFMVNlLzlGWUhndDNrSGM4SVpEbjhocFhIMjlSNkd4eDQ1?=
 =?utf-8?B?aEVTdmRQckd0eXp0Z1BIZUk2SzNsT2doS0JuYUg3Z2huNGpobk5GVWNRT0Vi?=
 =?utf-8?B?UVl5bytLVVlEVlR1UWYwUFlmVEc3bnlHajBVVytybS8xOStZeHJvYzJpUVdD?=
 =?utf-8?B?MWZIMEliNWVmY2JXQW5sNHcxMzlpUnVXWmg4Y25HRkVwNVlzSVF5Z1h4VUFq?=
 =?utf-8?B?NWJSRXJLVHNnUjNpM0xKUEdGNG9sSnlWSCs1eU9BcXVjYWdNSmNPZ3A5anhw?=
 =?utf-8?B?c3FsZUZoSVZvZ1hMVjhQSFRJT0tZUFBPTVAwVWtHT0cxWmordTBOdUZ5OUpa?=
 =?utf-8?B?T25KNTM2YUQ4MGNib25aeU5IVlVKVkZObFZKRUMyRTNvZDFMVWZWSCtERklw?=
 =?utf-8?B?aUg0TEx1NExqN1ZFaGtGUUVnK1ArMUd1bGhWQTBmNkN2VkdYd0VaZ0NhR1hR?=
 =?utf-8?B?WGViMU1IOEI5aXdLWDc3cWpoSlVjRjJmbWlzV1RZbnFON0dxZ1BkeUpIbHRT?=
 =?utf-8?B?d3duNDkrMHpaNzlvbUlQME5QSDcrajFkeGVtRUw3NWhadUE0dVpwdVdDeTBr?=
 =?utf-8?B?c2JsK25TODA4UUcxSERPUFh5OXRGOWtEbkpZN1pVenNVWkhmL1NoTTUyRFlK?=
 =?utf-8?B?RmRHeGY0RnZ6M2k2SU5lWHJKSEFKcEFIMlVFS0U5UWY1WFdyRmRJb0Y2bmNV?=
 =?utf-8?B?dzVIQXFDRGgydlN2ZEZFaXJLd1RZQmtIMzhUZVBPemZoeU9ZR0prNTBmaWVM?=
 =?utf-8?B?ZFJNTWNuaEswb1RDYlBkTkZDM3NXV1IrMFNxL05QcFp4V3BvZGdIVkJJQlBo?=
 =?utf-8?B?bHFzSGtSVGV5ejJvbjdENFdGM1FMSHpUMjZZTGptWmJRT3VXdHlwRzZoQ3VT?=
 =?utf-8?B?blBETFhBMjhFLzZOekc5R3Zlb2dWb1NxOE1LRDF5QmlsWDQvMXNJZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdc9ef36-7f70-4d2c-dbc0-08de625cd847
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 13:13:23.8000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n2iIF3elt5FYzJxjUrwgLjVla61kOPn+YvCFYL18BEL4rGVvH1YJVPskM1xg/yU1L0t+moC8gdQSLV8J35zsKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7524
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 218FACCA0D
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSb3BlciwgTWF0dGhldyBEIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIDMwIEphbnVhcnkgMjAy
NiAyMC40NA0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47DQo+IGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyXSBkcm0v
aTkxNS9wb3dlcl93ZWxsOiBFbmFibGUgd29ya2Fyb3VuZCBmb3IgRFNTIGNsb2NrIGdhdGluZyBp
c3N1ZQ0KPiANCj4gT24gRnJpLCBKYW4gMzAsIDIwMjYgYXQgMDE6NDU6MzRQTSArMDAwMCwgTWlr
YSBLYWhvbGEgd3JvdGU6DQo+ID4gUHJldmVudCBkaXNwbGF5IGNvcnJ1cHRpb24gb2JzZXJ2ZWQg
YWZ0ZXIgcmVzdGFydCwgaG90cGx1Zywgb3IgdW5wbHVnDQo+ID4gb3BlcmF0aW9ucyBvbiBNZXRl
b3IgTGFrZSBhbmQgbmV3ZXIgcGxhdGZvcm1zLiBUaGUgaXNzdWUgaXMgY2F1c2VkIGJ5DQo+ID4g
RFNTIGNsb2NrIGdhdGluZyBhZmZlY3RpbmcgRFNDIGxvZ2ljIHdoZW4gcGlwZSBwb3dlciB3ZWxs
cyBhcmUgZGlzYWJsZWQuDQo+ID4NCj4gPiBBcHBseSB0aGlzIFdBIGJ5IGRpc2FibGluZyBEU1Mg
Y2xvY2sgZ2F0aW5nIGZvciB0aGUgYWZmZWN0ZWQgcGlwZXMNCj4gPiBiZWZvcmUgdHVybmluZyBv
ZmYgdGhlaXIgcG93ZXIgd2VsbHMuIFRoaXMgYXZvaWRzIERTQyBjb3JydXB0aW9uIG9uDQo+ID4g
ZXh0ZXJuYWwgZGlzcGxheXMuDQo+ID4NCj4gPiB2MjogVXNlIHNpbmdsZSBpbnRlbF9kZV9ybXco
KSAoSmFuaSkNCj4gPiAgICAgU3dpdGNoIHRvIHVzZSBkcm1fZGJnX2ttcygpIGluc3RlYWQgb2Yg
ZHJtX3ByaW50ZigpIChKYW5pKQ0KPiA+ICAgICBSZW1vdmUgV0EgbnVtYmVyIGZyb20gY29tbWl0
IG1lc3NhZ2UgKFN1cmFqKQ0KPiA+ICAgICByZW5hbWUgZHNzX2Nsb2NrX2dhdGluZ19lbmFibGVf
ZGlzYWJsZSgpIHRvDQo+ID4gICAgIGRzc19waXBlX2dhdGluZ19lbmFibGVfZGlzYWJsZSgpOw0K
PiA+DQo+ID4gV0E6IDIyMDIxMDQ4MDU5DQo+ID4gQlNwZWM6IDY5MDk5MSwgNjY2MjQxDQo+ID4g
U2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgLi4uL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYyAgIHwg
NTUgKysrKysrKysrKysrKysrKysrLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9yZWdzLmggfCAgNyArKysNCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfd2EuYyAgIHwgIDIgKw0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV93YS5oICAgfCAgMSArDQo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgNjMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5j
DQo+ID4gaW5kZXggNmY5YmM2Zjk2MTVlLi43OGY3MDdiMDA1NTAgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
cl93ZWxsLmMNCj4gPiBAQCAtMTgsNiArMTgsNyBAQA0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV9yZWdzLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JwbS5oIg0KPiA+ICAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV93YS5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGtsX3BoeS5oIg0KPiA+ICAjaW5jbHVk
ZSAiaW50ZWxfZGtsX3BoeV9yZWdzLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4g
PiBAQCAtMTk0LDYgKzE5NSw0OCBAQCBpbnQgaW50ZWxfcG93ZXJfd2VsbF9yZWZjb3VudChzdHJ1
Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsKQ0KPiA+ICAJcmV0dXJuIHBvd2VyX3dlbGwt
PmNvdW50Ow0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHUzMiBkc3NfcGlwZV9nYXRpbmdfYml0
cyh1OCBpcnFfcGlwZV9tYXNrKSB7DQo+ID4gKwl1MzIgYml0cyA9IDA7DQo+ID4gKw0KPiA+ICsJ
aWYgKGlycV9waXBlX21hc2sgJiBCSVQoUElQRV9BKSkNCj4gPiArCQliaXRzIHw9IERTU19QSVBF
X0FfR0FUSU5HX0RJU0FCTEVEOw0KPiA+ICsJaWYgKGlycV9waXBlX21hc2sgJiBCSVQoUElQRV9C
KSkNCj4gPiArCQliaXRzIHw9IERTU19QSVBFX0JfR0FUSU5HX0RJU0FCTEVEOw0KPiA+ICsJaWYg
KGlycV9waXBlX21hc2sgJiBCSVQoUElQRV9DKSkNCj4gPiArCQliaXRzIHw9IERTU19QSVBFX0Nf
R0FUSU5HX0RJU0FCTEVEOw0KPiA+ICsJaWYgKGlycV9waXBlX21hc2sgJiBCSVQoUElQRV9EKSkN
Cj4gPiArCQliaXRzIHw9IERTU19QSVBFX0RfR0FUSU5HX0RJU0FCTEVEOw0KPiA+ICsNCj4gPiAr
CXJldHVybiBiaXRzOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBkc3NfcGlwZV9n
YXRpbmdfZW5hYmxlX2Rpc2FibGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4g
KwkJCQkJICAgdTggaXJxX3BpcGVfbWFzaywNCj4gPiArCQkJCQkgICBib29sIGRpc2FibGUpDQo+
ID4gK3sNCj4gPiArCXUzMiBiaXRzID0gZHNzX3BpcGVfZ2F0aW5nX2JpdHMoaXJxX3BpcGVfbWFz
ayk7DQo+ID4gKwl1MzIgY2xlYXIsIHNldDsNCj4gPiArDQo+ID4gKwlpZiAoIWJpdHMpDQo+ID4g
KwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBTaW5nbGUgaW50ZWxfZGVfcm13
KCkgZm9yIGJvdGggZW5hYmxlL2Rpc2FibGU6DQo+ID4gKwkgKiAgLSBkaXNhYmxlID09IHRydWUs
IHNldCBiaXRzIChkaXNhYmxlIGNsb2NrIGdhdGluZykNCj4gPiArCSAqICAtIGRpc2FibGUgPT0g
ZmFsc2UsIGNsZWFyIGJpdHMgKHJlLWVuYWJsZSBjbG9jayBnYXRpbmcpDQo+ID4gKwkgKi8NCj4g
PiArCXNldCA9IGRpc2FibGUgPyBiaXRzIDogMDsNCj4gPiArCWNsZWFyID0gZGlzYWJsZSA/IDAg
OiBiaXRzOw0KPiA+ICsNCj4gPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19E
U1NEU0MsIGNsZWFyLCBzZXQpOw0KPiA+ICsNCj4gPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwNCj4gPiArCQkgICAgIkRTUyBjbG9jayBnYXRpbmcgJXNkIGZvciBwaXBlX21hc2s9MHgleCAo
Q0xLR0FURV9ESVNfRFNTRFNDPTB4JTA4eClcbiIsDQo+ID4gKwkJICAgIHN0cl9lbmFibGVfZGlz
YWJsZSghZGlzYWJsZSksIGlycV9waXBlX21hc2ssDQo+ID4gKwkJICAgIGludGVsX2RlX3JlYWQo
ZGlzcGxheSwgQ0xLR0FURV9ESVNfRFNTRFNDKSk7IH0NCj4gPiArDQo+ID4gIC8qDQo+ID4gICAq
IFN0YXJ0aW5nIHdpdGggSGFzd2VsbCwgd2UgaGF2ZSBhICJQb3dlciBEb3duIFdlbGwiIHRoYXQg
Y2FuIGJlIHR1cm5lZCBvZmYNCj4gPiAgICogd2hlbiBub3QgbmVlZGVkIGFueW1vcmUuIFdlIGhh
dmUgNCByZWdpc3RlcnMgdGhhdCBjYW4gcmVxdWVzdCB0aGUNCj4gPiBwb3dlciB3ZWxsIEBAIC0y
MDMsMTUgKzI0NiwyMyBAQCBpbnQgaW50ZWxfcG93ZXJfd2VsbF9yZWZjb3VudChzdHJ1Y3QNCj4g
PiBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpICBzdGF0aWMgdm9pZCBoc3dfcG93ZXJfd2Vs
bF9wb3N0X2VuYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiAgCQkJCSAg
ICAgICB1OCBpcnFfcGlwZV9tYXNrKQ0KPiA+ICB7DQo+ID4gLQlpZiAoaXJxX3BpcGVfbWFzaykN
Cj4gPiArCWlmIChpcnFfcGlwZV9tYXNrKSB7DQo+ID4gIAkJZ2VuOF9pcnFfcG93ZXJfd2VsbF9w
b3N0X2VuYWJsZShkaXNwbGF5LCBpcnFfcGlwZV9tYXNrKTsNCj4gPiArDQo+ID4gKwkJaWYgKGlu
dGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwgMjIwMjEwNDgwNTkpKQ0KPiA+ICsJCQlkc3NfcGlwZV9n
YXRpbmdfZW5hYmxlX2Rpc2FibGUoZGlzcGxheSwgaXJxX3BpcGVfbWFzaywgZmFsc2UpOw0KPiA+
ICsJfQ0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIHZvaWQgaHN3X3Bvd2VyX3dlbGxfcHJlX2Rp
c2FibGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gIAkJCQkgICAgICAgdTgg
aXJxX3BpcGVfbWFzaykNCj4gPiAgew0KPiA+IC0JaWYgKGlycV9waXBlX21hc2spDQo+ID4gKwlp
ZiAoaXJxX3BpcGVfbWFzaykgew0KPiA+ICsJCWlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXks
IDIyMDIxMDQ4MDU5KSkNCj4gPiArCQkJZHNzX3BpcGVfZ2F0aW5nX2VuYWJsZV9kaXNhYmxlKGRp
c3BsYXksIGlycV9waXBlX21hc2ssIHRydWUpOw0KPiA+ICsNCj4gPiAgCQlnZW44X2lycV9wb3dl
cl93ZWxsX3ByZV9kaXNhYmxlKGRpc3BsYXksIGlycV9waXBlX21hc2spOw0KPiA+ICsJfQ0KPiA+
ICB9DQo+ID4NCj4gPiAgI2RlZmluZSBJQ0xfQVVYX1BXX1RPX1BIWShwd19pZHgpCVwNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiA+IGluZGV4IDllMGQ4NTNmNGI2MS4uOTc0MGYzMmNlZDI0IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5o
DQo+ID4gQEAgLTIyMTEsNiArMjIxMSwxMyBAQA0KPiA+ICAjZGVmaW5lICAgSFNXX1BXUl9XRUxM
X0ZPUkNFX09OCQkJKDEgPDwgMTkpDQo+ID4gICNkZWZpbmUgSFNXX1BXUl9XRUxMX0NUTDYJCQlf
TU1JTygweDQ1NDE0KQ0KPiA+DQo+ID4gKy8qIGNsb2NrIGdhdGluZyBEU1MgRFNDIGRpc2FibGUg
cmVnaXN0ZXIgKi8NCj4gPiArI2RlZmluZSBDTEtHQVRFX0RJU19EU1NEU0MJCQlfTU1JTygweDQ2
NTQ4KQ0KPiA+ICsjZGVmaW5lICAgRFNTX1BJUEVfRF9HQVRJTkdfRElTQUJMRUQJCVJFR19CSVQo
MzEpDQo+ID4gKyNkZWZpbmUgICBEU1NfUElQRV9DX0dBVElOR19ESVNBQkxFRAkJUkVHX0JJVCgy
OSkNCj4gPiArI2RlZmluZSAgIERTU19QSVBFX0JfR0FUSU5HX0RJU0FCTEVECQlSRUdfQklUKDI3
KQ0KPiA+ICsjZGVmaW5lICAgRFNTX1BJUEVfQV9HQVRJTkdfRElTQUJMRUQJCVJFR19CSVQoMjUp
DQo+ID4gKw0KPiA+ICAvKiBTS0wgRnVzZSBTdGF0dXMgKi8NCj4gPiAgZW51bSBza2xfcG93ZXJf
Z2F0ZSB7DQo+ID4gIAlTS0xfUEcwLA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiBpbmRleCA4NmE2Y2M0NWI2YWIuLmY4
ZTE0YWEzNGRhZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gQEAgLTg0LDYgKzg0LDggQEAgYm9vbCBfX2ludGVs
X2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gaW50ZWxfZGlz
cGxheV93YSB3YSwNCj4gPiAgCQlyZXR1cm4gaW50ZWxfZGlzcGxheV9uZWVkc193YV8xNjAyNTU3
MzU3NShkaXNwbGF5KTsNCj4gPiAgCWNhc2UgSU5URUxfRElTUExBWV9XQV8yMjAxNDI2Mzc4NjoN
Cj4gPiAgCQlyZXR1cm4gSVNfRElTUExBWV9WRVJ4MTAwKGRpc3BsYXksIDExMDAsIDE0MDApOw0K
PiA+ICsJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzIyMDIxMDQ4MDU5Og0KPiA+ICsJCXJldHVybiBE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNDsNCj4gDQo+IFdlIGdlbmVyYWxseSBkb24ndCB3YW50
IHRvIHVzZSBvcGVuLWVuZGVkIHJhbmdlcyBsaWtlIHRoaXM7IGl0IG1pZ2h0IGFwcGx5IHRvIGV2
ZXJ5dGhpbmcgYWJvdmUgdmVyc2lvbiAxNCB0aGF0IGV4aXN0cyB0b2RheSwgYnV0IGl0DQo+IHNo
b3VsZCBvbmx5IGNvbnRpbnVlIG9uIHRvIGZ1dHVyZSBwbGF0Zm9ybXMgaWYgdGhlIGhhcmR3YXJl
IHRlYW1zIGV4cGxpY2l0bHkgYWRkIGFkZGl0aW9uYWwgdGlja2V0cyBpbmRpY2F0aW5nIHRoYXQg
aXQncyBzdGlsbCBuZWVkZWQNCj4gb24gcGxhdGZvcm1zDQo+IG4rMSwgbisyLCBldGMuICBPbmNl
IGEgaGFyZHdhcmUgaXNzdWUgaXMgaWRlbnRpZmllZCwgdGhlIGhhcmR3YXJlIHRlYW1zDQo+IHdp
bGwgd29yayBvbiBhIHRydWUgZml4IHRoYXQgd2lsbCBpbnRlcmNlcHQgb24gc29tZSBmdXR1cmUg
cGxhdGZvcm0sIGVsaW1pbmF0aW5nIHRoZSBuZWVkIGZvciBhIHNvZnR3YXJlIHdvcmthcm91bmQ7
IGlmIHdlIHVzZSBhbg0KPiB1bmJvdW5kZWQgcmFuZ2UgbGlrZSB0aGlzIGluIHRoZSBjb2RlLCB3
ZSdsbCBuZXZlciBub3RpY2UgYW5kIGtlZXAgYXBwbHlpbmcgdGhlIHdvcmthcm91bmQgZXZlbiB3
aGVuIGl0IGlzbid0IG5lZWRlZCBhbnltb3JlLg0KDQpUaGFua3MhIEkgd2lsbCBlbmQgdGhlIHJh
bmdlIHRoZSBsYXN0IHBsYXRmb3JtIHRoYXQgd2UgaGF2ZSBpbiB1cHN0cmVhbS4gSWYgdGhpcyBp
cyBuZWVkZWQgZm9yIGZ1dHVyZSBwbGF0Zm9ybXMsIHdlIG5lZWQgdG8gdXBkYXRlIHRoZSByYW5n
ZS4NCg0KLU1pa2EtDQoNCj4gDQo+IA0KPiBNYXR0DQo+IA0KPiA+ICAJZGVmYXVsdDoNCj4gPiAg
CQlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIDEsICJNaXNzaW5nIFdhIG51bWJlcjogJXNcbiIsIG5h
bWUpOw0KPiA+ICAJCWJyZWFrOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiBpbmRleCA0MGY5ODlmMTlkZjEuLjc2NzQy
MGQ1ZjQwNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfd2EuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV93YS5oDQo+ID4gQEAgLTM0LDYgKzM0LDcgQEAgZW51bSBpbnRlbF9kaXNw
bGF5X3dhIHsNCj4gPiAgCUlOVEVMX0RJU1BMQVlfV0FfMTYwMjM1ODgzNDAsDQo+ID4gIAlJTlRF
TF9ESVNQTEFZX1dBXzE2MDI1NTczNTc1LA0KPiA+ICAJSU5URUxfRElTUExBWV9XQV8yMjAxNDI2
Mzc4NiwNCj4gPiArCUlOVEVMX0RJU1BMQVlfV0FfMjIwMjEwNDgwNTksDQo+ID4gIH07DQo+ID4N
Cj4gPiAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXksIGVudW0NCj4gPiBpbnRlbF9kaXNwbGF5X3dhIHdhLCBjb25zdCBjaGFyICpuYW1lKTsNCj4g
PiAtLQ0KPiA+IDIuNDMuMA0KPiA+DQo+IA0KPiAtLQ0KPiBNYXR0IFJvcGVyDQo+IEdyYXBoaWNz
IFNvZnR3YXJlIEVuZ2luZWVyDQo+IExpbnV4IEdQVSBQbGF0Zm9ybSBFbmFibGVtZW50DQo+IElu
dGVsIENvcnBvcmF0aW9uDQo=
