Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJJkDqKes2nMYwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 06:20:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 214C527D64F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 06:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F11110E07B;
	Fri, 13 Mar 2026 05:20:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHyLiwK9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0723F10E02F;
 Fri, 13 Mar 2026 05:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773379229; x=1804915229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2T/P4IJjB/PLHlg8rlc7ju81/wZy3c/08Hp8jEWajvo=;
 b=iHyLiwK9GmwSjsEqmAX7um6GMpKh0A0+4wjugB49JCx/UFi4jlgNXxN7
 BTey3dt/4U+0/TrixKorENaohox3WwSlqKcRniG8R7X9qAqdCtA67zliK
 MItNfawDten0Gb+RlRRkrkTj2CdWuanAz5Yf0R+WPd+sbQB4JgpvPMmg7
 01iGzhVf7cisX5jNvQrwVsLcMRMuNzJXCyWXRUwh5qHBwb6Y980HjCAnI
 HeQj7Gh8rYZEW7J1SJ+i+em0txB3Y8kno12LISVfShuCu64D81YSviN6F
 9FMuK6wl3Jn4CywhP9EwoYgxbhbRZ4ICNX6pUKE4NflzbUgFe9r5hPWhZ g==;
X-CSE-ConnectionGUID: IcoxcKIPRNedM52awEMF8g==
X-CSE-MsgGUID: mITM8ajTQpyvrL40JmaQ0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85184029"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="85184029"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 22:20:29 -0700
X-CSE-ConnectionGUID: OvzXmKvYQjaGa0ZVZuohdQ==
X-CSE-MsgGUID: wyqufOS3QzOCe9FOVtyavQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="220311237"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 22:20:29 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 22:20:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 22:20:27 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 22:20:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PizRjJ+IblaqCVrbULIfPn3gPHu/3gg1RZ4WLqsdX8nvuupyWWA+fZFb7cWljQp1xYIv5rTeHIjPnkmLK0LE66Ti1Mre9EoqupVHfjjzqoh3qsZ2mNtehzqhDc9X4qQsjWFyBgMVzmFYrqNze4h9FbCb57Gq0HWo1ad2WIfs9C6TFB4242JCbkKn9Ksidun62XHvJ3fmJxXQPWolZXy19doVJ6mj8fFmMJddTdix5+piGlIIxxV+H4fP/BidTospcarFDefPXddZ5d4JTePXNX8Gv2HWuxB+aR00QSJZTTmodUtJTY0AS0rHzQjD4PA9S+mW84wwbRmcrDJyaAxxvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2T/P4IJjB/PLHlg8rlc7ju81/wZy3c/08Hp8jEWajvo=;
 b=BVG0xPOluHpUaFAPocRRg/5kyIXnvf1Amj0HM3Inf8KAvs6q2GpoP7gThENjDnFEO0TnOXl8LMkqR2yJp0RZuiXVR/mR7Mlvp5TRpuBZ0vTZaWqYESlTPjLUFw8U175onReKjmrJDQwbhtIo9VnET6GdWKr7Dx2l1g0Q5dG9uaLUGHnnZgCY686DaKCce2hzmNNcoEuGo/7uWx48zX25gj91+IoiX2dJJbDWUGz2BB0MQZinF3YJHYW3LdFJj+UyQ3HnmU1yrtiqA2dvznH2iuuaeRKooO00whJvJcLpkt19+Dh0RyNeKuMPTAbSGkqEK6Ir03hjjUNqYCdZtuQWug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5768.namprd11.prod.outlook.com (2603:10b6:510:131::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Fri, 13 Mar
 2026 05:20:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.004; Fri, 13 Mar 2026
 05:20:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>, "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Topic: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Index: AQHcseFtvVqfVU+4l0S51ihL3Qu0I7Wqij2AgAB4/YCAAOsygA==
Date: Fri, 13 Mar 2026 05:20:24 +0000
Message-ID: <34d06e837ea473c4f1a6456ae2da55c97e58fc67.camel@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
 <abLZS_Xn2mnKAgLq@ideak-desk.lan>
In-Reply-To: <abLZS_Xn2mnKAgLq@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5768:EE_
x-ms-office365-filtering-correlation-id: eec314bf-8e6a-472e-599e-08de80c03b2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: Crf0CdteysaiasN4JiQ1d9GM8Ax/95mHss6wT/y2/JDhmpreRLfwxb2Id39AmOdTrykqeyKDlUBZ0Ds5Io9aqoyFHuMQ9WR2uoMLnujOf6SDadSb4jF8nQhlglIqEE7Om4Nt7cNfRzrUGBPkYHi4fFAFTKeSPg/3FhAYcPABOTzVheCaXHtPBRiSIgvagD5tD9sgz9QLjaP4h/YzxqSM1mQt+rE3VuMZuiwO+anZ5IKjh7UQPoKKj5e1kBaPCX74K27FwxX9EFAfJ5mGl0jTlyPywsqVhUCYxFn20/+gLv0js9UP2pNC0KWvc4SnE0in8LKDQvI3r1BL2JlnprvrzfgLwc3HTDB/DHkuq4qTlzxhsdIrHb/RUcW9cvfMKpI8OJwaT44VuCHzg6z9nahR90sTNXCXGCWmw3h74kBKeGbiYL4hrCjbR/3AVEcTFrYl48tDyO8M/FlyN5BDso0N9d8BdH3ciaSvZeNMfYaWgAtGuanOVozAQPsqITKK6dWEufREx1IO1kt8vDvDWYA+KErWTlkcrnR2V0M3hNKB2+FPi+q6A/JnQvFieA5QcfkbofR0KDkARq1GcdS/JPfQfxQaxI/I+2nyrHnUq6CnlDKJhuBIbh7zcdVXtsFaL4xsn6s95soPophUEnSYfdjrEdouc4qZELeRmBx0E6vQtOzN4eFHYjuFjvQoRIa4iFbnJ0cQtHPrkz2Vlxa/amvhyPBMIa7a4jYt5dnu7CrKauQrTXSugSx4cYYs90jPparueO49eYmA5OBtNGd0xob83ZPuw1eoG5H+zjzeyy6PdRo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QzgwelltdmQ1dzRlR1JJRy9LekhXSXVZZ1I5cDlpMHc4RHBUem9BMlg0RWUx?=
 =?utf-8?B?MU5TR1J4Nko4WVJkbmdRMUE2dmxhOEVuWWJCbVYzVEtLRUlONVRDR0R5Umtl?=
 =?utf-8?B?UWpvMEpoYUEzL3hpMTA4YTQxRGVwRHZ3bC9ESk1Eb2lXdmRPOWpvZlQzaUVE?=
 =?utf-8?B?cnl6M25ndWpWK1d0N05oN3JMcDkzOVRJdW9SZVhvU21uR0hZT1E1ZlNoajYv?=
 =?utf-8?B?M2RUSU5VRlN2WTFFME1LMTNRMlg3STVsV3RHc0pxTzJuM09yaXBFL3FvMit2?=
 =?utf-8?B?RnJ6cGxaYXJteGl2VytLZWZ1NXhUc2YxZmQ0SkQ2L3I2RGZVVHlhRi9EZ0pj?=
 =?utf-8?B?am0va0pOdDkzVmhQbEVTL2RZM0h0QzhqWHZiM1ZybXhXaWxtVUt0S2FhS2Ro?=
 =?utf-8?B?WndqbkNYNTRLamRGbXpZYzVmTUo4OXVlN1gwYTh5ajBwWkppekljSUdyTlR1?=
 =?utf-8?B?dXpuaFluWHdTdTJud2tQeWFYaUdtcFFiYWFNVjZoYTJNZGxsQllUVVZEWWhl?=
 =?utf-8?B?U2JYMHFDaWcxb3VreUw1TTZDc2tweHJyVGZhSDV6WVJjODBndis0dWI4MWZ3?=
 =?utf-8?B?anNmeElxL2svTnYrRHJBS3F3Y1AzY2hSSEFSWlpNWDltaklSNEc0M21wNHlL?=
 =?utf-8?B?WXhzclVVbVcwN1lSQ28rMDdvcGF4czREV2pKODRtb2Y4VUdBcEk2L3pleGpv?=
 =?utf-8?B?dmllaTg5KzF3ZW8yYnBXSE5jRWRtV2R6R000bDRZZk5PVFlyWGZUNk5xamVx?=
 =?utf-8?B?eGRnKzRzZmxkV0V5VkRrak9jbkcwZUhINEcvbmN4dmp6RjFXblQyS2NZSkZJ?=
 =?utf-8?B?MkREUXhzaTJMRUhObWNYUTVwWnlXT1FMU0pqSU9ZcG0vNzM2eUs4WkdBWmJH?=
 =?utf-8?B?WlBUVG1wQ0JoN1IyWHJVWW1vVU0xSWtjODFKR1ZlSEltbk1BSVkvbXZWRHNP?=
 =?utf-8?B?RE9LQmtTa0grckVpNlhsTEhZN1dQc1dWb3M5cDAzOWxxWWl3eE9qTFBrc3dU?=
 =?utf-8?B?dnZrT3R4Sld6MEo2bkdNcnJYTDZ3eDRjMWNMNkc1ZEpEVXQ3ZFBBWk1jRS9k?=
 =?utf-8?B?MmJyeFBiZTFyYVdSZmxHYU80d1RsNGljYmltcUZMbVJUTzNwV05xMnVHenll?=
 =?utf-8?B?TXVCZ0huaHZteG41ZE9oZ0Y1L0kxdXVFUzZwbmZXcTZxQWJ1T2w1MFpVajhY?=
 =?utf-8?B?b0x5cmQwWWlNaEZJd1cwNVR2by9HZ3JqMTlnSmZaU3dsOTgyektMRC9JYWht?=
 =?utf-8?B?bjFMeGZsZDRtMU90NFA4RU12TDFjNGtsNFdmMXpKWDhzQjNDM1ozWWo2cjBZ?=
 =?utf-8?B?clBWbUNrcUF3Mk55bFc0cXJTdlhTOFh5MXF3R2t4UmVCNVBPaDdyVjB2NDdV?=
 =?utf-8?B?V01VSDQ3OXRUaFRDaFBPdFJYK2lBUUx0QlhUMWNRUC8wZ2cxbzNla1U0cGl3?=
 =?utf-8?B?YkRYcTUwRUd4Vmt2RTJRRGV5T1dtRmEvYmtRczBrYnFIWCtFcnNudHR6OEI1?=
 =?utf-8?B?SXEyV3JDUks0d2xYdXFUYVU0eFNJRVA4Y3dBeWVtdzZ5ZWxMNUhJM29QTWhF?=
 =?utf-8?B?MkFJVGFhZXVkaFRQWFdmN2hFaFRsakwzOHRlQzRST2lRSFNvVGFwcmdHVzBS?=
 =?utf-8?B?MHp0TlkxSmJQK2VGd0liRG9jeHJ4OFdSZFVPNjBvY2FMdjZuSG9BNHJkMkRZ?=
 =?utf-8?B?bGxwS3o2eitCY3cyaEJ3aU9DT3I0cW4wSzRaQU91Vlg0Y25MMHEwQXBuNVRy?=
 =?utf-8?B?TnBtN3hpUEpmbmJkSmJMMENhYS80WkVPV0pkK1B1NVhrNHN1S1VBZjdGVUFY?=
 =?utf-8?B?WG9oTkM4cjZPQVFScGhzcWF4WG94cC9NMnRxNFhBQUdiT0l2MWdGWUZWTDNZ?=
 =?utf-8?B?ZExTb3BvZXVRNXdvTHR1QXpmWGFrTGVNS2p4RWdudFNsUWoreHZWSHF2d3ZO?=
 =?utf-8?B?cUdqbG03WVBsUWtOaTM0ak5sT1NwN0NuZVRiQ3pwaU91bHZraVFCektMSFBE?=
 =?utf-8?B?c05ZR1lmbHNjVURCclRNWjFPT1hJS0pqMGFwS1pYQ2VobDZmZDYxQkVvbmlN?=
 =?utf-8?B?aFdUVmdObGNmNzNvamhqYUVqd2E5MVJsb2xIOC9VME8wSERpNk5HdU9sN1Na?=
 =?utf-8?B?amF3WnJ5T04vM1pMSVcrT1BhTVNZdFFuNzRDcDh2NWFuUks2MGVyb0FNbE1C?=
 =?utf-8?B?NVN0TzNVc1dNdmdkTUREZDRaZXdDdzB5dkI5OCttRzNCS1pVZHZrWVdlS3Bh?=
 =?utf-8?B?SDR6L0I0V05OeXZQY2JjY3dEaXpjWUIwOFU5YTF5UGZGaVRWWXFJVHUyZGR6?=
 =?utf-8?B?NGNOcDNIM0duTkdhcVdkb1MwazZmMjFzUm1CbThtR3M4WjhzTzNzQUJ2K2Vr?=
 =?utf-8?Q?a34QaFfGI/Rjo9ysAXAmeBLIYHlV/+vtEMbqcdQvXvTBB?=
x-ms-exchange-antispam-messagedata-1: fZzJhQK8+E04eAAMDhDLhWuFO9Gdy6oGedk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C0D0FB0C889677478CB03AFFF01AEF01@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: E43C41T7NMaBimS6VwHTvVSIYflu4pWtPJyx53VR1ldQvwk78+WpjbPmAAq9G6kt/tTXYt3MuWjoMWUBdhUnHpQwsujpIVb6HW9Q2IILzIwMsVkNaPfK9FdpyuKryBhr6WosYjzbABBk39fj3bKVa2l4j3zxg/bsN2W4212iBh6/pYgxO1hQwiDTpGT5ZHDbrrcOgfp1G3nfL+WBnuZMSqfXPFOYL+DrcrDmfh0n/KGpxXDXtl6zROaXn9Ewe+7Wo9mywtQOaKpUHb8BzZKCUv4JvoIqMXFqCGoPKkyVZvgW8ZJU9tzLylFMFBbwBMkigsQNdrZyht4kTRWfAK2NGQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eec314bf-8e6a-472e-599e-08de80c03b2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 05:20:24.7501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vr+hZI9gAf/kGxtpr+u2xeFwV1m25JHaHIKcoQ6T20MkUhtsZLMrlRlOpzMhFRx3fkpo3XS7t4ywKMCi9ZLk7KZyA/QEdVx4awnnVWSuy9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5768
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 214C527D64F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTAzLTEyIGF0IDE3OjE4ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFRodSwgTWFyIDEyLCAyMDI2IGF0IDEwOjA1OjM1QU0gKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBUaHUsIDIwMjYtMDMtMTIgYXQgMTA6MzAgKzA1MzAsIEFuaW1lc2ggTWFu
bmEgd3JvdGU6DQo+ID4gPiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFs
IGRpc3BsYXkgYWdlbnRzIGZvciBQYW5lbA0KPiA+ID4gUmVwbGF5DQo+ID4gPiBlbmFibGVkIERQ
IHBhbmVsIGR1cmluZyBpZGxlbmVzcyB3aXRoIGxpbmsgb24uIFRoaXMgcGF0Y2ggc2VyaWVzDQo+
ID4gPiBlbmFibGluZyB0aGUgc2FtZS4NCj4gPiANCj4gPiBHZW5lcmljIGNvbW1lbnQgb24gdGhp
cyBwYXRjaCBzZXQuIE1heWJlIHdlIHNob3VsZCBhZGQgb25lIG1vcmUNCj4gPiBwYXRjaA0KPiA+
IHdpdGggIkZpeGVzIiB0YWc6DQo+ID4gDQo+ID4gRml4ZXM6IGU2MGNmZjQ1M2I4MiAoImRybS9p
OTE1L2RwOiBFbmFibGUgRFAgdHVubmVsIEJXIGFsbG9jYXRpb24NCj4gPiBtb2RlIikNCj4gPiBD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+IENjOiA8c3RhYmxlQHZnZXIu
a2VybmVsLm9yZz4gIyB2Ni45Kw0KPiANCj4gV2h5PyBBcyBJIHVuZGVyc3RhbmQgdGhlIFBhbmVs
IFJlcGxheSBCVyBvcHRpbWl6YXRpb24gb24gYSBEUA0KPiB0dW5uZWxlZA0KPiBsaW5rIGlzIGFu
IF9vcHRpb25hbF8gZmVhdHVyZSwgd2hlcmVieSB0aGUgZnJlZSBCVyBjYW4gYmUgdXNlZCBieSB0
aGUNCj4gVGh1bmRlcmJvbHQgcHJvdG9jb2wgZm9yIG90aGVyIHB1cnBvc2VzIHRoYW4gZm9yIHRo
ZSBnaXZlbiBkaXNwbGF5DQo+IHN0cmVhbSBmb3Igd2hpY2ggUGFuZWwgUmVwbGF5IGlzIGVuYWJs
ZWQuIElPVywgaXQgbG9va3MgdG8gbWUgYSB2YWxpZA0KPiBjb25maWd1cmF0aW9uIHRvIGVuYWJs
ZSBQYW5lbCBSZXBsYXkgb24gYSBEUCB0dW5uZWxlZCBsaW5rIHdpdGhvdXQNCj4gZW5hYmxpbmcg
dGhlIFBhbmVsIFJlcGxheSBCVyBvcHRpbWl6YXRpb24gb24gaXQuDQoNCk15IG9yaWdpbmFsIGNv
bW1lbnQgd2FzIGFib3V0IERQIHNwZWM6DQoNCiINClRoZSBEUCBTb3VyY2UgZGV2aWNlIG1heSBv
cHRpb25hbGx5IGVuYWJsZSBQUiBvcHRpbWl6YXRpb24gd2l0aCBEUA0KdHVubmVsaW5nLiBUaGUg
ZGV2aWNlDQpzaGFsbCBxdWVyeSB0aGUgVHVubmVsaW5nIEJyaWRnZeKAmXMgUFIgdHVubmVsaW5n
IG9wdGltaXphdGlvbiBjYXBhYmlsaXR5DQpieSB3YXkgb2YgdGhlDQpQYW5lbF9SZXBsYXlfVHVu
bmVsaW5nX09wdGltaXphdGlvbl9TdXBwb3J0IGJpdCBpbiB0aGUNCkRQX1RVTk5FTElOR19DQVBB
QklMSVRJRVMNCnJlZ2lzdGVyIChEUENEIEUwMDBEaFs2XSksIGFuZCB0aGVuIGVuYWJsZSBQUiBv
bmx5IHdoZW4gdGhlIFR1bm5lbGluZw0KQnJpZGdlIGlzIGNhcGFibGUuDQoiDQoNClRoYXQgc291
bmRzIGxpa2UgUFIgY2FuIGJlIGVuYWJsZWQgb25seSB3aGVuIFBhbmVsIFJlcGxheSBUdW5uZWxp
bmcNCk9wdGltaXphdGlvbiBpcyBzdXBwb3J0ZWQ/DQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+ID4gVGhpcyBwYXRjaCB3b3VsZCBqdXN0IGFkZDoNCj4gPiANCj4gPiBpZiAoaW50ZWxf
ZHBfdHVubmVsX2J3X2FsbG9jX2lzX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ID4gCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwNCj4gPiAJCcKgwqDCoCAiUGFuZWwgUmVwbGF5IGlzIGRpc2FibGVk
IGFzIERQIHR1bm5lbGluZw0KPiA+IGVuYWJsZWRcbiIpOw0KPiA+IAlyZXR1cm4gZmFsc2U7DQo+
ID4gfQ0KPiA+IA0KPiA+IGludG8gX3BhbmVsX3JlcGxheV9jb21wdXRlX2NvbmZpZy4gdGhpcyBj
b3VsZCBiZSBmaXJzdCBwYXRjaCBpbg0KPiA+IHlvdXINCj4gPiBzZXQuIFdoYXQgZG8geW91IHRo
aW5rPw0KPiA+IA0KPiA+IEJSLA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+IA0KPiA+ID4gDQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCj4gPiA+IA0KPiA+ID4gQW5pbWVzaCBNYW5uYSAoMyk6DQo+ID4gPiDCoCBkcm0vaTkxNS9k
aXNwbGF5OiBBZGQgZHJtIGhlbHBlciB0byBjaGVjayBwciBvcHRpbWl6YXRpb24NCj4gPiA+IHN1
cHBvcnQNCj4gPiA+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IFBhbmVsIFJlcGxheSBCVyBvcHRpbWl6
YXRpb24gZm9yIERQMi4wDQo+ID4gPiB0dW5uZWxpbmcNCj4gPiA+IMKgIGRybS9pOTE1L2Rpc3Bs
YXk6IERpc2FibGUgUGFuZWwgUmVwbGF5IGZvciBEUC10dW5uZWxpbmcgd2l0aG91dA0KPiA+ID4g
wqDCoMKgIG9wdGltaXphdGlvbg0KPiA+ID4gDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9kaXNw
bGF5L2RybV9kcF90dW5uZWwuY8KgwqDCoMKgwqDCoCB8IDE3ICsrKysrKysrKysNCj4gPiA+IMKg
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oIHzCoCAxICsNCj4g
PiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jwqDCoMKgIHwg
MTQgKysrKysrKysrDQo+ID4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90
dW5uZWwuaMKgwqDCoCB8wqAgNiArKysrDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMzENCj4gPiA+ICsrKysrKysrKysrKysrKysr
LS0NCj4gPiA+IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmjCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgNiArKysrDQo+ID4gPiDCoDYgZmlsZXMgY2hhbmdlZCwgNzMgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+IA0KDQo=
