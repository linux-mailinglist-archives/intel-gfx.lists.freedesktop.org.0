Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE31A30DB8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 15:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA0C10E2F7;
	Tue, 11 Feb 2025 14:06:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DklVXMF6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D3C10E2F7;
 Tue, 11 Feb 2025 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739282771; x=1770818771;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FTPR0zQLN7DY8sr9SRUwf6+Ivxmc8W4M4FqzwhrKimY=;
 b=DklVXMF6VXCYFngQYpxLoxH6HXOO9647QZQaaMSB5/ZkS6GdJ2nc0L9C
 m4dpSgQ9BkvqoIEFo1SuNgnDw/5C1boT9d7Vxz9wVXuiwrWauNH+5WNwt
 lpxuSigCNCefL0R7GmFw0ZHpzoCss4e7AgKnFQYxKyqrecvtZ4KMCia0C
 2ERz0UKOi0TKqS2vthcqEYCPcFHWh/CfZs5vUI6UwnjDBlA5PpnS0kOST
 nIminL3si4HRUgtGey00bayH83Ql10ARtQknxlZ9Zz3DQ7SClgBhs0Lza
 3zElqILRoqKfj0IpmVE+Da6Ylb/7y5eU8L7aDHqQx48buL3cQK9MmP31a A==;
X-CSE-ConnectionGUID: sw52FudnRsiJ8b0oUGZiPA==
X-CSE-MsgGUID: ESuLtIGwQxKH2MmFEkHtQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50537218"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="50537218"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 06:06:05 -0800
X-CSE-ConnectionGUID: O1fmIss9TUCQWZWbHNOzZw==
X-CSE-MsgGUID: iMp8pRDDRZGHHSyxS3OgxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="113038469"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 06:06:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 06:06:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 06:06:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 06:06:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RKq7F8Z36RnhGSL3et7lpYi9RpyuGS+GQdy+ID9D4ImrDwmzOzsBXjJWSctgm5Hx718LZwOXePsxkvnXqb3bekO4Xj6OSaZ37HQ1/uRFKIfPTmtxUNYBAuPPfcatnSIuLYt5v6xpJLbrJ4OCmq13TwwSjd6syTi9empPvQLoh8zZPoQJdzNPUMGy7kAhI1Hgk7qeiI61f3BlNyP3KKj/CG+GQWdjdzHHQh1SHAJ/st+lC+hhhG88XiCPXCClIVI1Q7woZG6MkT3XmlqRAthyIK3JV0blR7Xw/1sK3gJUpqclf/lQFsj6LHu+lkJWkF2bZzz95MB214xs+Q8+UG5bPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FTPR0zQLN7DY8sr9SRUwf6+Ivxmc8W4M4FqzwhrKimY=;
 b=B57DJ/yVFOmVuhXGrdyS5LXt+1BnsCHZr1zf464dxI67/wXZBR89WaxMed6pfYJkRERMjXBN2YOmGG4aUg9uor/9PcvcEjvucNJuiNGJOezXzNWNj3FfQkZnN6k7BN+cwj2ceq82L1FdpD/VV0Oo7mheiX1SJR4yc0KmdEIRmF7qZ5D57yl+ZOPURKgCMDmttcRJZzGv3QVsmxhBOElHOBuGz4n+CuGWhz98KdeEzfxs7CqpBWge+A21BPeqZKlKvho2lclY1eBqzFjVqYS7A2BYEfJIxKSGNPy4iH8yYWZBGE5WaMR3TzGH0kF2QUWBezEgMrAoHJlRACgs60m39g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB7552.namprd11.prod.outlook.com (2603:10b6:510:26a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 14:06:01 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 14:06:01 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 14/17] drm/i915/ddi: Reuse helper to compute the HDMI
 DDI_BUF_CTL config
Thread-Topic: [PATCH 14/17] drm/i915/ddi: Reuse helper to compute the HDMI
 DDI_BUF_CTL config
Thread-Index: AQHbcoi83BMtpOI4c0e0QR1ny1S1x7NCNviQ
Date: Tue, 11 Feb 2025 14:06:01 +0000
Message-ID: <MW4PR11MB705424A46B9186342C210CC8EFFD2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-15-imre.deak@intel.com>
In-Reply-To: <20250129200221.2508101-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB7552:EE_
x-ms-office365-filtering-correlation-id: 4bc8971e-d19a-4d47-7ec8-08dd4aa53762
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ek5vbnlsaml1VzlDNllnNFhCRFpSTGpkekVOTGlUampQV1crOGxkdzQyU2VL?=
 =?utf-8?B?SHJFd3lmNS90MkcxdzBkazA1TXMwRit1ZFR0c3BsTDRTQTBMTEZMTmJ4ODRF?=
 =?utf-8?B?elRFZGhTakQ5TW1zSDI2dlhOZE9vbk9yYno0dUhZY3o3SkZVd2pSUTBJVXd4?=
 =?utf-8?B?WVIrZUlMcEJFSHZCM3RVRExUaWJWaHM5RnNsWWk3ak5MVmo5MGMwaG9hM2JY?=
 =?utf-8?B?OFl6OU1Odnh2ajEwRnF3TmN6ZnlVUVE0NUxFOEx5VDR3OCtDU00xTitiVkJu?=
 =?utf-8?B?WWlZK3hobmF6VEgyQk44YzR5dnpocHhGd2tFclVaajhpVjhmbVI3TzlqYTV3?=
 =?utf-8?B?bmZ0RzdabTBlOEU1UlN6TzhGT0lXa2dLdDJCbCtTbUdqNGgyQ2lPelVnTkI5?=
 =?utf-8?B?UFZRRW5pL1RwczlhcFhoZnEwZGtQa0dXM2pUS2U2cHhHZ0h2akJGeDhTN3Fk?=
 =?utf-8?B?Tk1kUWxnVmFQakJsSlU1OUtYYWthWEJ3WFdxMzNhOFZUOWtDczJHSmZ6TU9u?=
 =?utf-8?B?TU16bU8zN3pDeWRjTndpaWJVbFJUZ2UyaTh1SktkK2FIRWxJOUl4VmVBTHJG?=
 =?utf-8?B?OGw0c1dCTlZiUHUzUk1zY3gwTXNxZ2Z2ZXgwMXZRalZWNStEbW0ySks2NllQ?=
 =?utf-8?B?YThJTkpoVlVnWmVzSnFBOHM1NjZCTUMvdmlJcU5EU2Izd2o0Y2JrOEtEZGg0?=
 =?utf-8?B?OWlycWtkNXBxd1VNa3lyTklwV0hkdS80MlNrSEtrcTh1N2k5K05DOHpENDR2?=
 =?utf-8?B?a1VBRnpZNE1KS3Q3amVNL2NhRHdoS3VqZHMzR2srTDZmV21ka1BEd2dRR1Z0?=
 =?utf-8?B?bGFHMU9Ucjg3RW1qOUh6WG5UYmRMQ1YzNGJjWjJvUkhvUzJIZnRRUXQzamFF?=
 =?utf-8?B?V216ZkJwMGdsaE5YNEVCTWNoMU1GeG5pa0loUzZvU0Q2elUrbHZWeEplN2hr?=
 =?utf-8?B?ZW9hZzF0ajh3ZmtHWFF0WVl1RVc0S3hCenhFcll2L3ljUHpWazNBWHp2YVZL?=
 =?utf-8?B?NWNBZ01pdmgyM1NoYWlMS1dWaU9lemxFbkIxTDlUYkY1aFRJOHQxRjBUeWJB?=
 =?utf-8?B?WmM1aFRWSFRucGdZUTlPTnhqS2J0UDRvaUZzRThSWXBuUHc5aEkxWDllQzF4?=
 =?utf-8?B?dEZZNERsYnRERyt3SVAyNEc0ZDZ1elB0b3haMTd5eENRQ1NUM2FCV0JpblJq?=
 =?utf-8?B?NmRjUUJpQ0dtbEtwU2hCWE5hemtEYll2VXNMTVQ0cU91U2VoVkpBZGJCSHNz?=
 =?utf-8?B?OVNvVkppYXp1UHZaRnNPdWlwTzZ1UVJRUUk4SFRYd0c0TEsyNExQTTB1LzZB?=
 =?utf-8?B?TmV4TkFDMFNiZVpJKzQ1Z1NNcUU0VU4xU0FpdGRkSUY3eEtwYjVldzgyVE1y?=
 =?utf-8?B?bTB1NlZjNXVneUhIdVFpNFc3TFIrei80NzhCU3lqdDE4TjlWV29kNU1PUEdi?=
 =?utf-8?B?cXpxclhiTTF5cGt5Q2U2bEgrdHFHaUlBeVhXRDdrYzBYekVPN01oRHB6cFYy?=
 =?utf-8?B?cGU5b3VoQUZvd1UzRklOQ1ZZMkZJVVV2Mzk3MDNsMkppZTZNTTRZcGtDQng4?=
 =?utf-8?B?aWZBYVpKWCtZMjZzdDdGTjR5M0xUTEtwWmRDK1FtTlFzZzBlMG9OeHBnbEZn?=
 =?utf-8?B?d0JKNFNZU3FWd3hmcVhJekloTzVsYjUvc2krMmF6NGQ3bEx5YXUwcldORWIv?=
 =?utf-8?B?aHI2TXJiUHRDNStQdW9YTnFmMzFCQk9XZzdNRUYwZzZMSmd0TStZamNVclNM?=
 =?utf-8?B?UFVuclNkcmo3WjhWOWdrRzE5YmY5cEtMU0V2eGZaRmNWL0M1eDNaRnFRVkdP?=
 =?utf-8?B?RWY5VUJwWmtkZ2JvRGtHUUIwV3daSzNBV2dIaGJhUzExUnV4NE1nRGF5d01O?=
 =?utf-8?B?T0hrcTNqa2pYbHhqZkdNL3VYclZQWmVxd0gyWTZyYWFwSEt1dkcrYWJkYkZZ?=
 =?utf-8?Q?iBSjPiaGOThFN5ZSkV2xvvmSOWq6q8cG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a09kNGgzdEU3R2I5M203dkxnOHliWEhSNXRwS1VEK2NsU2lHTkRqK1BMV0xz?=
 =?utf-8?B?M21LM0dFUU1xR3pjTHRDRGl6Z043TTFpRTBMRmtCYnFENHJpMXhtTXJtZGQr?=
 =?utf-8?B?LzNyTmp1ZWpXZEtHTThha2tWR3BCZlg3akx3YmJwcTZCcmVNUUhYOE9HUit6?=
 =?utf-8?B?TGt6NWNwUDR5cnFtaUtIZ3Zuckx0RytoR0ZQUXVhVFFqdFRKNE5TRy9aQy8x?=
 =?utf-8?B?eXorLy9SY0JENnhHUFJ0SVA3d3NEWHN0WjlodlErSlVLRWZyeTFaVXpaS0Qz?=
 =?utf-8?B?Nm5IaG95N0ZxQzhzcUtKcytIejA5S1FOb3dqSm5BRnM3ZVFNZTUxQisvcDRW?=
 =?utf-8?B?blh5RVYyZmR1Umw0bGtIMC85ZVRHays0VjRybUtSQXBTalcwajA5OVVvdXJZ?=
 =?utf-8?B?UG5yWjMxSGhmVjZTWjF6Zm8vVmRLbmF6N3pxdWtNVFJEczhONmN2VkxzTUVD?=
 =?utf-8?B?cmJ2UEorVmV3NzREbmRSakkrUm9zMDVCRmJ6elFod3prdDhqbiswQ09rNUZU?=
 =?utf-8?B?VnhSN3I1cVhpNzBHaU95Wk8xa2RWQkNHYW5xcFJlalBDM3QwQlFpZHEyQUdy?=
 =?utf-8?B?WDZxczN4bWw3ZXVVQ1h2ZWlVcXBNaFE2amVCZjdlQWZFVk1Ic3ZZcHQ3RVps?=
 =?utf-8?B?M2tRcEhWaEJVT0haYXhKcndpbHNpdTBwUkJMbUQwc2w5VXczcEJCS1pOMVFY?=
 =?utf-8?B?MmlSR205UXZNbnVyVHhDUWxXNlNzVjJ5aCtaaStiNVQ2QW44aDZhQWNIWGtD?=
 =?utf-8?B?SjBQVEJnRXNRREh5bHVSTTM4d254MzZHWmJPSjRHd1ZxZEt4KzYyd3ZERWJB?=
 =?utf-8?B?VGI5c1FBbFBFd2FIclFzOFZhMUV1R29acjFBakNIRXlEenFIdk9UUU8zMVhC?=
 =?utf-8?B?S1ZldXFWMnFITm40MVp5U2xUb1JPQmFHQkRaSXdjL29tM0xKTkl1T25pRWla?=
 =?utf-8?B?REFjS0l0bDdkdWd2cS9qNXhiSHIvbi9sZ1JoOGxCZ0w0U0RPQXpKTGt6MGk0?=
 =?utf-8?B?a2xpS0phYzltU1NVZVRjZG5pYndTUjhFWktlK0xYanFENlpTUzRmVFBNKzZq?=
 =?utf-8?B?eGRrNjZZbVhNeVlZb0xWL0lvZDMyZkhDcWJRcmlYSGk5OGFzbTRjZzRwL1pK?=
 =?utf-8?B?Z0Q3R1crVGRtenJUZjEySGNOUlJLU096VUREWFVGMkt0a3VnNGlGOGRDTFJH?=
 =?utf-8?B?QnVGQytOUm5iWTB2ejRWaWI1L0gyVkE5YkV3QzhnUnB4allvOTAzL1FYekRQ?=
 =?utf-8?B?SGRQVm1McktiZ0ZYQkdFVjB5OFN1Nm00SDhjblpGd1lzUXQyWUpRZGt6amcz?=
 =?utf-8?B?VzBjV0pmYVUzY0NGYUFSQW9wZ2FnMkpRVXhqWk8zUHFWZlRQWFloWVN0WmU0?=
 =?utf-8?B?SFVSbFE1WFdJUS8rNnRCbUQ4b2lZQy8zM1pZUDNJWm0vT0t3TVFrdUdMeUxq?=
 =?utf-8?B?akJOVXVYZkp6bXVoY3RuVk0wN0laRkNBTWdwYkRyaHFONHpqTGhVZ1diRHZ3?=
 =?utf-8?B?Y1B3NjZWdFFjS1diM1dHNWJWMXQxSUlBTnFxWEFWVG1CWDR1R0NMSWVLQmZE?=
 =?utf-8?B?TDQyTWRVZDY3bFlRUFVIY0J5TkRyUlRMRW53U2x2UzRJbm9NT3duYzd3R1NH?=
 =?utf-8?B?QVRJTVY4MndaQVVCeUo1Rnl6N0diWnYyQnBoMUpnMHRWOHVMZ2p6VTNhWUdG?=
 =?utf-8?B?OFlkaTJSeXhCWW5EMVQ3U05uT3VJUlNWdTVUSUh0WC80djlGSndRR0Ryb2VF?=
 =?utf-8?B?bVllSGQvdnFZM2kzQ2VFSFkxb3pWWWxCQVRwQ2hhL1ZRaDZxL1ArN3pzL2g1?=
 =?utf-8?B?OFVWTHhXaFNOekEwVENJaUVmOURDallrV0tFbkJ2K1VzNnE0Vi8waElWWEta?=
 =?utf-8?B?UHNKbEtiakM2eGhKeHdGdXQxRnpJUFQzbDhqZjV3SUhsR2pIa0RNL3prMDRK?=
 =?utf-8?B?YWdVK0dENFdjd2dGSjNxNllHZjFiZGdGWkFNblBNU2NQTHZ1R3JHL28zSnd0?=
 =?utf-8?B?Z1E4ODBHN2UrbU8zbXZaMlhwVllGa1J3MDJvWHhCR0g4RmRyUTdWRFArL3FF?=
 =?utf-8?B?em5ObXJZaG1ubmV2L3NYVWhWdWVMb3NPYW4xOTZSTG1lTlZPZVArVk9LeTRh?=
 =?utf-8?Q?TO4/WkDRpe0IBsmLhaKXykrPN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bc8971e-d19a-4d47-7ec8-08dd4aa53762
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 14:06:01.5401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6IDda5AlZioiDdbpc1Embt4w9JboDldjtQ9SippybsI0bAbWk6H1YjH3MkEFUhGeViVT70/dv/MI7QRkbjldLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7552
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBXZWRuZXNkYXksIDI5IEphbnVhcnkgMjAyNSAyMi4wMg0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IFN1YmplY3Q6IFtQQVRDSCAxNC8xN10gZHJtL2k5MTUvZGRpOiBSZXVzZSBoZWxwZXIgdG8g
Y29tcHV0ZSB0aGUgSERNSQ0KPiBERElfQlVGX0NUTCBjb25maWcNCj4gDQo+IFJldXNlIHRoZSBl
eGlzdGluZyBoZWxwZXIgdG8gY29tcHV0ZSB0aGUgY29uZmlndXJhdGlvbiB2YWx1ZSBvZiB0aGUg
RERJX0JVRl9DVEwNCj4gcmVnaXN0ZXIgZm9yIEhETUkgb3V0cHV0cyBpbnN0ZWFkIG9mIG9wZW4t
Y29kaW5nIHRoaXMuDQo+IA0KPiBOb3RlIHRoYXQgZHJvcHBpbmcgdGhlIFhFMkxQRF9ERElfQlVG
X0QyRF9MSU5LX0VOQUJMRSBmbGFnIGlzIG9rLCBzaW5jZSBhbg0KPiBlYXJsaWVyIG10bF9kZGlf
ZW5hYmxlX2QyZCgpIGhhcyBzZXQgaXQgYWxyZWFkeSBhbmQgaW50ZWxfZW5hYmxlX2RkaV9idWYo
KSdzDQo+IFJNVyB3aWxsIG5vdCB1cGRhdGUgdGhpcyBmbGFnLg0KPiANCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAzMCArKysrKysrKy0tLS0tLS0tLS0tLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCBk
ZDhhZTVjZjk2YzcwLi5lMDNlYzlhMjM1ZDMzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTMzOSwxMSArMzM5LDE0IEBAIHN0YXRpYyB1MzIg
aW50ZWxfZGRpX2J1Zl9jdGxfY29uZmlnX3ZhbChzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3Bs
YXkoZW5jb2Rlcik7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1
KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsNCj4gKwlib29sIGlzX2RwID0gaW50ZWxf
Y3J0Y19oYXNfZHBfZW5jb2RlcihjcnRjX3N0YXRlKTsNCj4gIAl1MzIgdmFsID0gMDsNCj4gDQo+
ICAJLyogRERJX0JVRl9DVExfRU5BQkxFIHdpbGwgYmUgc2V0IGJ5IGludGVsX2RkaV9wcmVwYXJl
X2xpbmtfcmV0cmFpbigpDQo+IGxhdGVyICovDQo+IC0JdmFsIHw9IERESV9QT1JUX1dJRFRIKGNy
dGNfc3RhdGUtPmxhbmVfY291bnQpIHwNCj4gLQkJRERJX0JVRl9UUkFOU19TRUxFQ1QoMCk7DQo+
ICsJaWYgKGlzX2RwIHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiArCQl2YWwgfD0g
RERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7DQo+ICsNCj4gKwl2YWwgfD0g
RERJX0JVRl9UUkFOU19TRUxFQ1QoMCk7DQo+IA0KPiAgCWlmIChkaWdfcG9ydC0+bGFuZV9yZXZl
cnNhbCkNCj4gIAkJdmFsIHw9IERESV9CVUZfUE9SVF9SRVZFUlNBTDsNCj4gQEAgLTM1MSwxNCAr
MzU0LDE1IEBAIHN0YXRpYyB1MzIgaW50ZWxfZGRpX2J1Zl9jdGxfY29uZmlnX3ZhbChzdHJ1Y3QN
Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJdmFsIHw9IERESV9BXzRfTEFORVM7DQo+
IA0KPiAgCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkgew0KPiAtCQlpZiAoaW50ZWxfZHBf
aXNfdWhicihjcnRjX3N0YXRlKSkNCj4gKwkJaWYgKGlzX2RwICYmIGludGVsX2RwX2lzX3VoYnIo
Y3J0Y19zdGF0ZSkpDQo+ICAJCQl2YWwgfD0gRERJX0JVRl9QT1JUX0RBVEFfNDBCSVQ7DQo+ICAJ
CWVsc2UNCj4gIAkJCXZhbCB8PSBERElfQlVGX1BPUlRfREFUQV8xMEJJVDsNCj4gIAl9DQo+IA0K
PiAgCWlmIChJU19BTERFUkxBS0VfUChpOTE1KSAmJiBpbnRlbF9lbmNvZGVyX2lzX3RjKGVuY29k
ZXIpKSB7DQo+IC0JCXZhbCB8PSBkZGlfYnVmX3BoeV9saW5rX3JhdGUoY3J0Y19zdGF0ZS0+cG9y
dF9jbG9jayk7DQo+ICsJCWlmIChpc19kcCkNCj4gKwkJCXZhbCB8PSBkZGlfYnVmX3BoeV9saW5r
X3JhdGUoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayk7DQo+ICAJCS8qDQo+ICAJCSAqIFRPRE86IHJl
bW92ZSB0aGUgZm9sbG93aW5nIG9uY2UgRERJX0JVRl9DVEwgaXMgdXBkYXRlZA0KPiB2aWENCj4g
IAkJICogYW4gUk1XIGV2ZXJ5d2hlcmUuDQo+IEBAIC0zNjcsNyArMzcxLDcgQEAgc3RhdGljIHUz
MiBpbnRlbF9kZGlfYnVmX2N0bF9jb25maWdfdmFsKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiAgCQkJdmFsIHw9IERESV9CVUZfQ1RMX1RDX1BIWV9PV05FUlNISVA7DQo+ICAJ
fQ0KPiANCj4gLQlpZiAoSVNfRElTUExBWV9WRVIoZGlzcGxheSwgMTEsIDEzKSAmJiBpbnRlbF9l
bmNvZGVyX2lzX3RjKGVuY29kZXIpKSB7DQo+ICsJaWYgKGlzX2RwICYmIElTX0RJU1BMQVlfVkVS
KGRpc3BsYXksIDExLCAxMykgJiYNCj4gK2ludGVsX2VuY29kZXJfaXNfdGMoZW5jb2RlcikpIHsN
Cj4gIAkJaW50IGRlbGF5ID0gZHBfcGh5X2xhbmVfc3RhZ2dlcl9kZWxheShjcnRjX3N0YXRlLT5w
b3J0X2Nsb2NrKTsNCj4gDQo+ICAJCXZhbCB8PSBERElfQlVGX0xBTkVfU1RBR0dFUl9ERUxBWShk
ZWxheSk7DQo+IEBAIC0zNDE3LDcgKzM0MjEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5h
YmxlX2hkbWkoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7
DQo+ICAJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGNvbm5fc3RhdGUtPmNvbm5l
Y3RvcjsNCj4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7DQo+IC0JdTMyIGJ1Zl9j
dGwgPSAwOw0KPiANCj4gIAlpZiAoIWludGVsX2hkbWlfaGFuZGxlX3Npbmtfc2NyYW1ibGluZyhl
bmNvZGVyLCBjb25uZWN0b3IsDQo+ICAJCQkJCSAgICAgICBjcnRjX3N0YXRlLQ0KPiA+aGRtaV9o
aWdoX3RtZHNfY2xvY2tfcmF0aW8sDQo+IEBAIC0zNDgyLDExICszNDg1LDYgQEAgc3RhdGljIHZv
aWQgaW50ZWxfZGRpX2VuYWJsZV9oZG1pKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiAgCSAqIGlzIGZpbGxlZCB3aXRoIGxhbmUgY291bnQsIGFscmVhZHkgc2V0IGluIHRo
ZSBjcnRjX3N0YXRlLg0KPiAgCSAqIFRoZSBzYW1lIGlzIHJlcXVpcmVkIHRvIGJlIGZpbGxlZCBp
biBQT1JUX0JVRl9DVEwgZm9yIEMxMC8yMCBQaHkuDQo+ICAJICovDQo+IC0JaWYgKGRpZ19wb3J0
LT5sYW5lX3JldmVyc2FsKQ0KPiAtCQlidWZfY3RsIHw9IERESV9CVUZfUE9SVF9SRVZFUlNBTDsN
Cj4gLQlpZiAoZGlnX3BvcnQtPmRkaV9hXzRfbGFuZXMpDQo+IC0JCWJ1Zl9jdGwgfD0gRERJX0Ff
NF9MQU5FUzsNCj4gLQ0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpIHsNCj4g
IAkJdTMyIHBvcnRfYnVmID0gMDsNCj4gDQo+IEBAIC0zNDk3LDE3ICszNDk1LDkgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZGRpX2VuYWJsZV9oZG1pKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiANCj4gIAkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBYRUxQRFBfUE9SVF9CVUZf
Q1RMMShkZXZfcHJpdiwNCj4gcG9ydCksDQo+ICAJCQkgICAgIFhFTFBEUF9QT1JUX1dJRFRIX01B
U0sgfA0KPiBYRUxQRFBfUE9SVF9SRVZFUlNBTCwgcG9ydF9idWYpOw0KPiAtDQo+IC0JCWJ1Zl9j
dGwgfD0gRERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7DQo+IC0NCj4gLQkJ
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAyMCkNCj4gLQkJCWJ1Zl9jdGwgfD0gWEUyTFBE
X0RESV9CVUZfRDJEX0xJTktfRU5BQkxFOw0KPiAtCX0gZWxzZSBpZiAoSVNfQUxERVJMQUtFX1Ao
ZGV2X3ByaXYpICYmIGludGVsX2VuY29kZXJfaXNfdGMoZW5jb2RlcikpIHsNCj4gLQkJZHJtX1dB
Uk5fT04oJmRldl9wcml2LT5kcm0sDQo+ICFpbnRlbF90Y19wb3J0X2luX2xlZ2FjeV9tb2RlKGRp
Z19wb3J0KSk7DQo+IC0JCWJ1Zl9jdGwgfD0gRERJX0JVRl9DVExfVENfUEhZX09XTkVSU0hJUDsN
Cj4gIAl9DQo+IA0KPiAtCWludGVsX2VuYWJsZV9kZGlfYnVmKGVuY29kZXIsIGJ1Zl9jdGwpOw0K
PiArCWludGVsX2VuYWJsZV9kZGlfYnVmKGVuY29kZXIsIGludGVsX2RkaV9idWZfY3RsX2NvbmZp
Z192YWwoZW5jb2RlciwNCj4gK2NydGNfc3RhdGUpKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9p
ZCBpbnRlbF9kZGlfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAt
LQ0KPiAyLjQ0LjINCg0K
