Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C8E97E0B9
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2024 11:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0358710E036;
	Sun, 22 Sep 2024 09:31:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HioZV7ys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC39810E036
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Sep 2024 09:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726997475; x=1758533475;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=S2HnEEsVBppVQrVS6QxMQazyJJ4Eo71rOolFaWUuCyw=;
 b=HioZV7ysbckMTME6TLEpUIUFwKAsAzhKQJIRfimfcYbDof4f4HUTVn0j
 7bdbxl0YKTJXyovJuA8Jmb1BcMN4gGq9ExOntRIORuwfSLVQcZnEag2Xn
 TzS3ZwvVm87OsYgSH1t/ytUQ+wsthRlhtYq89a3mtcZdBCWQsGyjM/0tB
 FqqOl6rS05W9tjXCLnqNR3T6Wvemw6YLLoKYfo9NhfSPg052VimznRJTf
 PQXLlzZuYxlJkbEXc71Yu26GbyxbSQd0gq+DGFcQhBT2qKsBJyKAxrcr2
 UUv6NgkGyuI7EHmOBOE7Akdlzd8KymqKgmkZoYOqfbpvxowfzen4Wmpdg w==;
X-CSE-ConnectionGUID: 7ZR1X/q8QgSCC5WdjmTgBQ==
X-CSE-MsgGUID: l6r/zyiLTfmYpUSOucbsbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="48482207"
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="48482207"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 02:31:14 -0700
X-CSE-ConnectionGUID: s2EYBgQhT42pGnUiDWO7eg==
X-CSE-MsgGUID: goZ0FwKySGuIv98CR+9zYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="75546463"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 02:31:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 02:31:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 02:31:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 02:31:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQC+ET4F97Qk+R1otN7QycCywwB6XhIqtYCSiCdY4BQsZVwSBKYqJyxffF6cFgjCqRfS65FqqtpUpSSL0rc34XW4u8KH9gN/Pv00wV5Gd6zLaktc1kBYiVARtiYHU2yDHuxZi9O6zZT+mSEqmsziP6tQmlgh8QI4taOchQqrjoN8NmdNAy+eZX5Wey1zOlJAkNCWtxHB+Jk46xULoruYNSQJRzstpTMDYKo0xhhAxvJLHQnUQ5auGj0SUUy9WMCsfCk9sPv3/37unl5hp35Zx2DtzecaN2AjC3d1YZ2VJnvg0CQu2xLqv4O0aBLx4SBQVP9TAI5ckaG28r1ZAfaStQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2HnEEsVBppVQrVS6QxMQazyJJ4Eo71rOolFaWUuCyw=;
 b=NfWu1ByckBn8q14y5NZ2GUpRufAIa9NRHwwGm1XuD7XERv1jNfVyoWJ6eOUTPjkguiSuUfzv6ggpVb+PgOdIp5AtvV0C22mmgTVQxIfmIrpGwSzRb6/ub9JztqLTpSkQUgXl6fPpmx1mFNZGqz+zhKq+E+7ccp0IeTHXyLPr1G+umg9iFtYaRor3rhPoky9If8uvM/Vz5HR6AbczJM3a0JyodAiv5sr46YsJFeGS1ucGqWSkhQIAwmWrpvmUVZCQPDJpXd1vv1Y5jvc86KUrLzqUOQjDsprI+89ILbFgJ2n3EkNFYSSL+H6VwJWIsMiitr8zmasjH6aGpnb54hG/oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BL1PR11MB5980.namprd11.prod.outlook.com (2603:10b6:208:387::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.24; Sun, 22 Sep
 2024 09:31:10 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.7982.022; Sun, 22 Sep 2024
 09:31:10 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915: Remove leftover
 intel_sprite_set_colorkey_ioctl() prototype
Thread-Topic: [PATCH 1/7] drm/i915: Remove leftover
 intel_sprite_set_colorkey_ioctl() prototype
Thread-Index: AQHbCFTm0irc1FElCEeTKqis/X/fvbJjk6QA
Date: Sun, 22 Sep 2024 09:31:10 +0000
Message-ID: <7f2f6c108752139d388f272731e7b3fd8abedfb8.camel@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240916162413.8555-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BL1PR11MB5980:EE_
x-ms-office365-filtering-correlation-id: bd0221d6-639f-4745-c956-08dcdae94b58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VWl5b0VHT3RybzNMWHM0Z0lHMzZKV3VmbGo4czhndytIaXFUZlFBcUY4VE1t?=
 =?utf-8?B?SWFQbldhaVluclhDUis3b0tLbjFxYXo5eFVZY0pxU1VnSU1LUzJ3My9lTXVj?=
 =?utf-8?B?eWNpNDlFRVUxSU1DSXNLMXlmZFNINVpQMGJTMEk3VHl3NUU4aFNaVnRyMURP?=
 =?utf-8?B?ZGt2UXdWQ1FEZm0rMC9Ld0ZKREpxdXdvR0NLR2ZWZ1BCQ1ZadW42MUxZTnhQ?=
 =?utf-8?B?WU0wYTRLVGp0ZkZaVnRQc1QvUUEwVG01OU1YTytoYkRuSkdtakRrSkZSRTdK?=
 =?utf-8?B?TDYxZGZNTnZ3RS9MeCtRLy9vRVR0MXlPUVNWYklCTm9aKzhPaGZSMmh1QmVZ?=
 =?utf-8?B?bjUraHVUSUtsU0dnbld2WDlYalpVcHVyWFhzN2xUUFNCWndWaHg4M0J5d1dw?=
 =?utf-8?B?OENYbFphR05zSXZiRWk5VEJIUmJURW4yN1haNFdSMzVNK1BDOTJXMTJXOWxC?=
 =?utf-8?B?MWlLY1J3aE4vS0dxcTYvb2J2S0xZWGVNcWltUlhCSkxBdXhjQ05VcmpVZ2lh?=
 =?utf-8?B?TjdIaTVzS1dHR1NTRlhrOGlsZGFyckJ3SVBSYWdXdlpIekdoU2ZUTnJ1ZUhx?=
 =?utf-8?B?WGZDc2F4MzU2MC82Ty84dTZBZDhhNXRYMTU4S1IyWDE3M0EweEFyN0FMQzQy?=
 =?utf-8?B?SnZhNnhKK0IybllzQmFoSEpIamJ5WGFwd1ZUM3ZkcnpmaFNDNzNVZDhtdWJH?=
 =?utf-8?B?VklHY2VpSFdYNTVNa3VieWR0aU5oM3JVc01XMUV3TlhHV1ArQWVMVWdGRzlp?=
 =?utf-8?B?QWtqbUpxT1p4eXhHVko0Yk1jenVtaEE0MWZGelU3VFBVQU1FRUsyTU5jcERi?=
 =?utf-8?B?M0VyRDFhRC93cWVPNHZaVDlzWStra2dFbGRYY3BNdlY2azVOQ0JmMUlFYndp?=
 =?utf-8?B?dHpET21JVzRPMHJIem5MUnpVVVcvVFR3RGdmdGd4QXYxU1pEVmM0R0NDdXNq?=
 =?utf-8?B?elMxTGdJTVJKSm93SWJlS0hMSGIrdVYzZ05FWTdPcWcvL3Z3Rjc5TkJpaEIz?=
 =?utf-8?B?M1VVdURjZ1l1dk1uRG5FTnd6NlFOY1VoWTVXa3lKUmplc3F5VFN0T1lULzFT?=
 =?utf-8?B?NEcwenJQNnlWemZQK3N4ekltcFNvNFh5alF6bDV5MkVpNVNWaGhZMUFJd1E1?=
 =?utf-8?B?UnRDMkk4ZDJQWkpmR0MzREhZTUN0eGpBZWh0WmthcWV1VkJmSmxjcWZaeDV2?=
 =?utf-8?B?V2x0VmZpL3N6aSt0czJwT1dFSVJ6blZMbzVOTE4xRXI5ejJTN0ZRUFZod1lZ?=
 =?utf-8?B?UlRKclZpdDJjSHp6QWJKdm9lZzZMZElESEMyc3ZFZU4wVVp5MlNiQlFkQmpZ?=
 =?utf-8?B?ZlR6TDU4cjhxKzczL3pWdCtwa2pjV09yeEZKZmhQK1ZoOHFoTlRqNGIxQXIw?=
 =?utf-8?B?UklkUGprdVgrR2tZazVNblJnWExVUVFyT0pSbU9hQkdHNzdJclJCZnVxRGVx?=
 =?utf-8?B?bmloZ3BFcXVlUnNsUmZUYnlzMVdUM1p4TnlZVTZlMVBKL3JzdXJHUTlzemN0?=
 =?utf-8?B?UXlaS2FhTEpUVHJ3RGVvOWJScmVpSFBPVUx1bE51R3MzdDVDUThxTkpJNlpK?=
 =?utf-8?B?SmlWbFdzYWFtNVI4Rmh4KzZOU0NRcXVwQWlkcHBwMHBxQU9uKzRnSFc4aW9N?=
 =?utf-8?B?bVpiMGZ5bCtZSGNIVVkrT3hrZC9mdWl4ajUwbVNIMHlFNWh4TG5rdy9qdDAw?=
 =?utf-8?B?MEZaeGNmQzdoK1RJb1VNUGEwV0VHNzl2ZWZvb1FveEhsSmtDK3pRcVpTNlBt?=
 =?utf-8?B?SW0zOUxzaE5EejlKTFFUQlN6UXJEMm5tL3UycFVNbjM4QWFNYXQ3NXVQYjBY?=
 =?utf-8?B?YnRlS1JXbDZuVlRKeHV6dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDlXQW1vTnFlMktqWHJUWndvUFpTcmZYNmkwQnpxQyt1VUt1b0N0QVlTZXNr?=
 =?utf-8?B?dWsrY0lrVzdxNER2dDdCcW9ZRzZmTjBuV0p4d2ZhRHQ5SXZBY3YwUjBDZG5u?=
 =?utf-8?B?TVFkaFVzelBpQmk1NjBtVkFCbG1Bd2hqL2M1N0JtNmNXK2wrWWpSS2VrWmRD?=
 =?utf-8?B?bytWOXk2andrY1RXVWlIN0VNdkRKVUJqc1d6SzQrWkhhaWVFZ0xWN3g5R1F5?=
 =?utf-8?B?S2cxQnRLaUlSY1N3SXpaZjVpWE1qbHVwNG9WVHVFRUJYUStGWWVwQ2J0dGZQ?=
 =?utf-8?B?NWdVYXlHWTU3ZTFxVUMyZnFYS3BvQkZ1eWZhUzF2L0N5ZWp0YVloQlQ3QXdk?=
 =?utf-8?B?cXFxdnBmSnhQOUR0UFhldDVYT2tiWFA4WS9yeTQydDRXT2tMWVQvWW1JdkNy?=
 =?utf-8?B?ajNZQkt4SkoxVk5UbWVjZkZlcjNxdHhya2puSStVWXk1N1Y0aDhDTjlzQnpF?=
 =?utf-8?B?VCs5aXpiRjhjdEtMTGgvcFQraGhGNFpZL1hsMzNQekp5NWVYbnVRUHVqMFdR?=
 =?utf-8?B?VGJ1aU1JRkNKSUg2cGYxdkhKWG9VSWdMWTNwemJBcXZwbjJJcyt1LzIwVlhH?=
 =?utf-8?B?UjFCZXI0dUQzYWVEVENaZHo0VkNOY0VGczhtY0I2cFdySVdteDUyL3BWK1Av?=
 =?utf-8?B?TENaRm1jOUlkb0lDeGFWK1FIcUpwMEFRUm1SQytVdGxCaUR3VUZOQnJQSDFY?=
 =?utf-8?B?SGtlZGNNdVRvNzdUaTZycW14SHBLMmpLOFUvVG1iNzNxeEpxNTRrdGg2YytE?=
 =?utf-8?B?dENyMms1YnB0cWcrU00xVVMvc0pNdWVNaHhKT3NJaXEreGxxcVFrODUzeGt2?=
 =?utf-8?B?NXlQd2F3NEdMaUpSRXA1TFRtZWwvbEYwYWN4cXd3dUNmSVdoZTNxbTFYaU84?=
 =?utf-8?B?WTFHOWNWT21ZVU4wa05UeDE2dUUwVW1PSm9qbmxYaytGcy8rOThhb3phcWJK?=
 =?utf-8?B?QjF4NWhjZUpHMXcralRtUGtkcy9FNjc0d2FINTdBUU9CNE45a0xmS3JhcVR5?=
 =?utf-8?B?SVA3OFY4OXlLNWdyQTRmd0UyMHBmbzBlZXRweEZoR0FpZGV1Sm40ZEVpK3lK?=
 =?utf-8?B?aisyZlB2S0pCUTVKVDUzc0NjbG1nS1J4VTR1WDJHMy95OVk1MXFZQUVsV0Zq?=
 =?utf-8?B?NUViZlBLb1BqODFYUU9WdlI3TnN2NExybjdlb05OdFFhbUIyc2txYW1HS00r?=
 =?utf-8?B?dlM3eWRxTFdYYU4rSzBpaE15YW5aL3d6dU05SndoNDR5c0l3Z3BROCtOOFE4?=
 =?utf-8?B?dlB5V2RSRzZtOUQyUGxlRzVVZ0doTGNIOHRYRUtSSDlSTm1sVlZZMUJ5Uk1Q?=
 =?utf-8?B?RzJ0dk5yVWtiUklnUDdCQXh2MERzU203Rjk1QjJyTUIwLy9lQkNRZ3RubWw4?=
 =?utf-8?B?dFFncVk1RFdaR3B3aUh5N0w5VTVzL2F3NWlpY0J3OG1WTTF0ZWRNTVJaSVkv?=
 =?utf-8?B?UldTbEhydi80TURqcmtXSVF2dHBhelJYZ1daQzVWbDRYeUZqRFE3WmlSQTJ0?=
 =?utf-8?B?Y0VBblBnbDB6cW5Jd0RYcmVGczdFMzV5SUFmZEJLc3piamRYWmppaHk5SUtx?=
 =?utf-8?B?MlgvdWJtaDdpUTk4Vk1Wc1N6Ri95clhFK2p0b3grV2piZGkyU3BDSTNrQlZY?=
 =?utf-8?B?cHN6a3p4T3RzcG1sTC8zZ1BkQU11WGZKUTFyajdWYTVnR0F5TUJTZHExSWk2?=
 =?utf-8?B?eVZhc1J0R05GV1BCMDdDb0p1RmJ0VDBTZEpYb2JFNjhvQXIrcllLWEo4ZGJN?=
 =?utf-8?B?ZDVQajhSMWpTMWF1dGNENnNlS0xvZTJ4YlhMS2FKOVFYYll5QXFDenNaVDBu?=
 =?utf-8?B?YjRwRzIwQnpnMERLZEdINHdHMFYyTGg5c3Q4RlF6eWpKUGN5QkVld0hXUVJY?=
 =?utf-8?B?dVFGTmFZM0FVUHZNWTFhYldrSHNMMER4ekd4SkR4c3ZFeDNhOFlXZGdSOHJR?=
 =?utf-8?B?d2Y3TWdKSHZiamI1L1liOGh4SERuTC93MkZ4VUo3UXV2NWhLcXFLZEd3SE1o?=
 =?utf-8?B?NWJ4OExteWlEaW9TN1dJZkZkRFppR1dzSGRKY25taFBCajdpS0FiYW1UeFpU?=
 =?utf-8?B?b1lvQys4V2pvc041NUswSGMwWnFzY0xRYUFZRU1hTDhDNlNoUUd2NXRUOVpa?=
 =?utf-8?B?L0dscnRRbGpSRjZuZHJ5OHJlaGN4alpoS3RpY29GZURNWmhJcWtxTU1ocThQ?=
 =?utf-8?Q?kY9svPQFnpJW0cPXfDKkTEw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <945BB19851E84B4B9274A25A5F2CE82C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd0221d6-639f-4745-c956-08dcdae94b58
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2024 09:31:10.5802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gHGjeduj3V4hLMdCI0TQPkMOp1gOrf6ye47eCfp5R/nKbcm5CcYutyNR8k4VnFc2c2uhVBZItXID+/Xfd7TV2s6g8OUN5dBg4QKZMJVWlIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5980
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

T24gTW9uLCAyMDI0LTA5LTE2IGF0IDE5OjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gaW50ZWxfc3ByaXRlX3NldF9jb2xvcmtleV9pb2N0bCgpIGxpdmVzIGluIGludGVsX3Nw
cmljZV91YXBpLntjLGh9DQo+IHRoZXNlIGRheXMuIEZvciBzb21lIHJlYXNvbiB0aGUgb2xkIHBy
b3RveXBlIHdhcyBsZWZ0IGJlaGluZA0KPiBpbiBpbnRlbF9zcHJpdGUuaCBhbmQgZXZlbiB1c2Vk
IGJ5IGk5MTVfZHJpdmVyLmMuIFJlbW92ZSB0aGUNCj4gbGVmdG92ZXJzIGFuZCBzd2l0Y2ggdG8g
aW5jbHVkaW5nIHRoZSBjb3JyZWN0IGhlYWRlciBmb3IgdGhlDQo+IHByb3RvdHlwZS4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmggfCAzIC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmPCoMKg
wqDCoMKgwqDCoMKgwqAgfCAyICstDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuaA0KPiBpbmRleCAwNDRhMDMyZTQxYjkuLmYyMmFiZWI4MjAzMiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oDQo+IEBA
IC0xMCw3ICsxMCw2IEBADQo+IMKgDQo+IMKgc3RydWN0IGRybV9kZXZpY2U7DQo+IMKgc3RydWN0
IGRybV9kaXNwbGF5X21vZGU7DQpOb3QgcmVsYXRlZCB0byB0aGlzIHBhdGNoLCB0aGUgYWJvdmUg
c2VlbXMgdG8gYmUgdW51c2VkIGFzIHdlbGwuDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRh
cGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiAtc3RydWN0IGRybV9m
aWxlOw0KPiDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOw0KPiDCoHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlOw0KPiDCoHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsNCj4gQEAgLTE5LDggKzE4LDYg
QEAgZW51bSBwaXBlOw0KPiDCoCNpZmRlZiBJOTE1DQo+IMKgc3RydWN0IGludGVsX3BsYW5lICpp
bnRlbF9zcHJpdGVfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gcGlwZSBwaXBlLCBp
bnQgcGxhbmUpOw0KPiAtaW50IGludGVsX3Nwcml0ZV9zZXRfY29sb3JrZXlfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZV9wcml2KTsNCj4gwqBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5h
dGVzKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOw0KPiDCoGludCBjaHZf
cGxhbmVfY2hlY2tfcm90YXRpb24oY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSk7DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RyaXZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBpbmRleCA5
NDNlOTM4MDQwYzAuLmIwZWM1NGE0ZTAzMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcml2ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jDQo+IEBAIC01OSw3ICs1OSw3IEBADQo+IMKgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxf
b3ZlcmxheS5oIg0KPiDCoCNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3BjaF9yZWZjbGsuaCINCj4g
wqAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9wcHMuaCINCj4gLSNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX3Nwcml0ZS5oIg0KPiArI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfc3ByaXRlX3VhcGkuaCIN
Cj4gwqAjaW5jbHVkZSAiZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgiDQo+IMKgDQo+IMKgI2luY2x1
ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiDQoNCg==
