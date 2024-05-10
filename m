Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6215A8C2218
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 12:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC46110E1D7;
	Fri, 10 May 2024 10:27:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fE1xketW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B440910E1D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 10:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715336873; x=1746872873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kkw+sQahEXef0kaKXD62OG1IbOksXdckwy0hM/MJUqU=;
 b=fE1xketWSfYXhiEuQHnpmb51zb5xp48/yTSY+tMcngxeXivmc751h+5W
 6cGTLh2wpS0kka3piFH8/Dk8ttqIpGdwDTwVDAGTbo2kHNtxd7oL7o4RD
 4VZ2jzuJcHgoYDUEs6djqatC8rBf6DVcsk7epHwK7OWSnNB+8hGpZ3m0c
 O9q+8c+RL69nWEEdNMzkwke5ziaRfESjKtZ8CgMjedVD5DVoKC3bUl2o2
 vNZoZI5Ve2GGhXV77eqU/YHeFdFcq+t09j8nhNi4I6pSVDX62OBkwNLqH
 4Zov3ABvbn0Yf7AJYr29QEY5wk6odPwLDSSMX05xQB4bCKBev9jjs+3lo A==;
X-CSE-ConnectionGUID: a85mXG+QQVuDBlzMoTYa6w==
X-CSE-MsgGUID: V/P6CMTSQEilUWDUa+GADw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="22716891"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="22716891"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 03:27:53 -0700
X-CSE-ConnectionGUID: VJS4RIjWRTiZ4KYNdN3/zQ==
X-CSE-MsgGUID: IZSAmAQLTXO7baVMOlLnAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34226485"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 May 2024 03:27:53 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 10 May 2024 03:27:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 10 May 2024 03:27:52 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 10 May 2024 03:27:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZilAjVYIYKNjuzYXsxzzRlbiyiCKOa/df3forQktsDcw6qA3ZedxERHO8bWrtBu4CkHBldxYk+qbBL/2e7rKj76EJtBRq5OfZSgCWWArRs8Z9oUrciOs1yqc4bxQyViig5LOZOV3bKxmZxqDyyFh7xLDkGPFWwK7xXPesuBP2kq9iRB2Bp94e355UUwvKxb7m5T0HDr556c/dXPs7gswwBL/rdai1o7Ckef6TdpRUooxj4l2C2FIVngwih2J3mL1FigAcoNPnsHna9+z4HLcr4L6W0KR9dAqPLqiWvOKs5I8Asv721ydeDnDWq+HUXywUETOm81Mzlu9NSrwZfNC7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kkw+sQahEXef0kaKXD62OG1IbOksXdckwy0hM/MJUqU=;
 b=k4fq10SttqpZBk99RXLzYG0+4b/3KxLjh+y1AbrH7anDWcPIg7TVWkmDxNfEiZKvH6Y0Xh8wcANuOfpJ31LeM2RWTvrB0zqjzils8vkt49xwXRXWnBVm8UF60pQMCzA7jMHDmw4G0C8f0vVf3145tPEWRm5PR/maSrxrgXqY36VRbl7m3ExLxDMFWsCqYw/wcRBY3J1xsxWvQGN0TZFZxz8y1JWRJsatujyne+JaxX8FDWgUd5cmymDeHNZUhvMrUvu61xXctN3ljZdaLWrXqpWAG5acuF5pL6Aj4XieJNZRwrEZ4d18B/gxvEHRkGlkNqa7Mv1401G582g99PAcXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7291.namprd11.prod.outlook.com (2603:10b6:930:9b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.51; Fri, 10 May 2024 10:27:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7544.048; Fri, 10 May 2024
 10:27:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH v10 05/12] drm/panelreplay: dpcd register definition for
 panelreplay SU
Thread-Topic: [PATCH v10 05/12] drm/panelreplay: dpcd register definition for
 panelreplay SU
Thread-Index: AQHaor3kvvuyJDqFQ0GkdYg8Z+v/SLGQODuAgAALsQA=
Date: Fri, 10 May 2024 10:27:49 +0000
Message-ID: <2927e010d2a38ba2cdfc0c56bdba5451bc9f1c35.camel@intel.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
 <20240510093823.3146455-6-jouni.hogander@intel.com>
 <87r0eahuei.fsf@intel.com>
In-Reply-To: <87r0eahuei.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7291:EE_
x-ms-office365-filtering-correlation-id: 2a47e838-b238-4a4c-6ccf-08dc70dbd7ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?TjU4ZFJIUGRuRUgrL05WTU05SWxQaDBSVWIzZlRQb0tsNU0rL2NGdEhQUWVE?=
 =?utf-8?B?NEx0SlFrTGUxemZwVVltNDNFOGtNN1JoYlFYd0dCaklidkxmYlJ0VmF4OUNp?=
 =?utf-8?B?SDNIdGJqeEJYc09IWHByNHY0SzV6WU4zWU90a0dBcTkxczNXajdYWGZyRk9t?=
 =?utf-8?B?a3JDLzVCTjJJTU9RR0V5SytnU3dtNkVRWFFoWEVmTVY0dTQvWXN5eFVLZ0VC?=
 =?utf-8?B?c0VnOTZFakY4c1ppSlNyQ2ZkamhvMllNYkMxbUZRSWE5eG9RcTBCRCtwdVdB?=
 =?utf-8?B?NCs2QkhHaE53RC9sQk5VK05RVVRwZ1lLNFBIcyswbjJsSXY5SkpLNmtESGo3?=
 =?utf-8?B?T0xrVlJVSG11dGlDb1E0VGZZaVdvOWJ1RytOMmJVWEI2VTZFK3hTdVNWMkcr?=
 =?utf-8?B?RnNsSUFiWFV2ZDR6eWsvZW83U3R0OXhtdmxKTjlvNDMxc3pnYU9QbkcvT0Uv?=
 =?utf-8?B?TGwxV3p3d3pyNGxVelF6YzN5TkRxeHBReTNtTTMyanIrNWRDR2NFV0FzRkho?=
 =?utf-8?B?dzdlS3FUaldxWmNtQ3dGTFJyYWl5QmpHZGJ4VUNOYks2MzVjdWF3dDJZaW9a?=
 =?utf-8?B?a1QrUnNCdWhzVFRlV0xYOC9ORG9aOFZPTE5uejFDQ1pJMDZCTlFwSnlPK3Rq?=
 =?utf-8?B?eHAwUHZNdDJMOWl0QUpycnRvZ09VVklsRXRoNklQaUhpbytlVTBweFJEZE1i?=
 =?utf-8?B?QVJmamdzbmRKeWx6dG9BdWRad3ViUjFOem92QitFQVhzWkhuWVdXb2I0cmxq?=
 =?utf-8?B?N0RGOWFydGYvUGlUQXExazdMaDBmeVBRRWtUYnpDVWgwcEpsNHAvR0lBRjZG?=
 =?utf-8?B?YTVoamhpdmpjdkdibEM1bGFXdUVETWpnZzNROXVlV0RYSC9yYWw5c01vejdW?=
 =?utf-8?B?SWFsWUFtNmo5SnV4NmQya1JFSFJCT2JWeEN0WDg3dG1tZEhnVitpSjdoMjMz?=
 =?utf-8?B?c2t3RkhkcExJeW5zelY3S2d3YVVhS2ZOTTdNTFhOc3NzSlZCakdYMnFReFhh?=
 =?utf-8?B?V29BSjRObWF6dkFrVW5CL28wc1BidWVoRkdVM05JWk9DQklNekhQem9QU24y?=
 =?utf-8?B?YTlIeWVQZDA2WTlGMW1wbG9zRStuZnpMamRnY09SOHMzRWI0ZXZzWEQwdXRM?=
 =?utf-8?B?dGRDbnBTN1hFTTlXbmVtRHVuQWdQaGtlNkI5MC9oSWJVMk94Tlo5c2ZyU2N4?=
 =?utf-8?B?M2ZMczAzYVFHLzJhL2dvU2llQlBwTHY5U0xtbG15UTBYQ1lQcEhmTWt4TVpJ?=
 =?utf-8?B?QlJKUXRmNk1KK2tydVZJNzRGRUhOMS9BeGlkUlV3ek5WanhiT1E1WWpveFAz?=
 =?utf-8?B?QnBZTEVva1h4ZmI5ZHl5N0F6Uy9oVURGRzFnN0M4ZU4vKzA2WEtYZE1QOVli?=
 =?utf-8?B?TE5yR2RzQXU3emNVUkFXQjFuNmlEYkpZUVVUTXlIQk91Qi8wNEFZUmU1aG41?=
 =?utf-8?B?MldaeTVlcXYwQWN0eU9NazBlUzdzNnBEVnJFamY2OGNobFZQaElRMWtTL0o1?=
 =?utf-8?B?R3hYN0xnNEEvREZ0UDh6R1hnVzBuOXpZaEhBZldGM09NZW16VTVkSG5NZkQ1?=
 =?utf-8?B?TDRMMU84YVkzc0U3V0JZUGtvZGdwSWZ0Ukp6REJxNVF2ZFhvUTVqWXdyTVJa?=
 =?utf-8?B?TmYxRkUyVnk1NjhkYVYydWVhTkpsUDZyYWE5YUdBV0lDQVpsd0RQK2MrR25z?=
 =?utf-8?B?R1ZveWNJajNTRHBKSVlheDQzTHY3UVlaUG8yQWQvU2pqNlRVOGNCZlUrZVdl?=
 =?utf-8?B?Z0VpNlVZa2FKTnZ5VE40bHZaNy84aThOOG00RWVaNWVCT256ZVdWN1dNR2lR?=
 =?utf-8?B?SjZxUXRhalQ1Sms1MzlJQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTFjS0MxbWxaTThsalF6WXZqVzZvdS9zTGsrZlN3djFLR2ZRUEh4VzBxMnky?=
 =?utf-8?B?VkFUZUg0aU9DSnJKYmcxdTdtR2ozNWtJWEpCU01wUkwwWTRQY1hWL2lxdmpQ?=
 =?utf-8?B?blRFZENhbGVHQkZlS01Bb1hRZW5xbkJCN2FVUmp4ZEdoN05ZRFNtNmJXNXJ4?=
 =?utf-8?B?QU1xbEs0WUdIckJhRnpqNkJkYVIxWGZVaHJsL3VsdzNHNk42V1VmeXRieVhW?=
 =?utf-8?B?Smc2VUJBdjVYWHdjN2V0OVJ4ZFpwNjMvdTA0OWlhRktSMy9Nd2tuWnhkSFlx?=
 =?utf-8?B?R0QxczA0RWhGcmxjeENBWUZlNHNrRTl2eDJCQmhJSllKS2JRU05ueWREOEFZ?=
 =?utf-8?B?MDI2aUlQSDY3V1hSbmtFU3QrR2VBY3hETmFIeXA5UU1lTlp6U0NNRVlmTEpV?=
 =?utf-8?B?Y3hyQ09zRGNNTnRSZHBPd0c0UDJMY0hSRUxEUHJuUnV1NUZoSG9ob2hMSEVm?=
 =?utf-8?B?UmNHZUtCd1pVYUxxWkJESjhudEQvWlFMRDF6QUM0TUhYZUF4TFdRNWVKSi9u?=
 =?utf-8?B?eFdsVHZwTFhOUmI2VjFYMjA1UGdzeWRLK3BhdkU2MUFackVGMzlOb3ZOelVY?=
 =?utf-8?B?L3JmZ2RyTGJVZHUvTEZ6dEFMYXBrSlpOWkRxSTZzZlZ6S2NOOE9CWndRZk9t?=
 =?utf-8?B?Qkx3TU5JVGsvWVZRTHdXcms3bWN3UnU3Q05PcDRrdUI5ZzZHRjVGK2t0OGM0?=
 =?utf-8?B?QXpYekp6VUwrNTBJNXFpZFgwMHYxeDhUNjI1aWRJdTUvdDVFVlQwVERodzZm?=
 =?utf-8?B?TlFJL3VHSXpqelRUTnhNN0c3ak9tRWQ1b1VlVC82OUpkcjNrYWhqK0hXWjdT?=
 =?utf-8?B?ckpxT1BZS3dYOWxIeURqU2hERFJiNXMvcS9YTVZ1dWM2RUVBOU04RHRPd1ZJ?=
 =?utf-8?B?dFozNUcyd0RGWXBXcUQzQS9lbHljaDJXeHgyb0xBbysrdXd5MjhsTHRReTdh?=
 =?utf-8?B?dW45aFRXVUJLYUllTVNxcGkyOVBDcCtHZ2RBZWExd1dMSHpnaVlKQlBxUWxX?=
 =?utf-8?B?QkY5VGp5ZjhkMFBRYU13VHd0dG1WeklhZ2YxZWlHeENaZUVwNlBTbkdvMGZu?=
 =?utf-8?B?a2RXd1dxbU5lMkQ2eGxTRnFmYVpXbVNXQ3IvTWlLeDVodnJKUVJMTSt1clFW?=
 =?utf-8?B?REFTOSt1T1BjVnA3dFQwS1lxR0EyMW1XbkE0SFQzWWJzYTJ1RnkyazJqODc2?=
 =?utf-8?B?Qng4NGk2eFlFdUxwMGJmWk5ZVC92S1V2YVR2U2k0UlQ5Nkl0SGhWcVh4MjN1?=
 =?utf-8?B?bStyLzRNRnZCZFNDT1E3ZjdJejdQWkdUSllPSkV1OTJUSmlqZVJFd0VueU1n?=
 =?utf-8?B?aTZqTEVmbXNMamtiQlNJS3NMZ2NtcXFkdkFNTDU1RDNvQUkxV1RHY2UwaEY1?=
 =?utf-8?B?QjNKeVhWWnZNa1dQRzJsK0p2S0Y0dkVaeEVxdXFMb1lwdERXakxENUZDM3lT?=
 =?utf-8?B?am5ad0VzbTJkVWUvQ3RwM3BjWmlYRS8ybm80V21WcHFTSFJwcXptWlVyNUZN?=
 =?utf-8?B?TDhUL3gvWXUzaSs3OC9kNjlPcVdPOGo0MW9OR2VVRE5yUlROdTBud2c1ZE92?=
 =?utf-8?B?eVdiZVVFWVFldHBIaHdCV25NUHk3bVZONGFXTDVKM2d5MVBwdTkyR0NmVith?=
 =?utf-8?B?Q0ZlN3E5MSs3aDBjckVjN3ZKZnhGWkIya3FTaEFaYTVTVXBzYk9zNndWWko3?=
 =?utf-8?B?MURTKzVXb3NTQzhnamc3NmxReC9IY3dSVWViYnYyMnNEYWY1cDVlL0laMnow?=
 =?utf-8?B?RTQ4Q1E1eHNFTFhvcUdkK3RlOTBlcXNhV0dwdHJuT1lyT0hleGRTV3dIZm80?=
 =?utf-8?B?NjV5ZlZZbjc1VmwxNi8vbC9DT0pTTmtJVDFCcFFjZ0REaFdMN1pTVC9RZUJ2?=
 =?utf-8?B?RTVtM2dpY1JCVHRRWWg2ZGZrQW5vUXFEY1ZxUWdTN2tCWnZOSmFwaXBUQVFJ?=
 =?utf-8?B?aVNhQ2xvMUJ6NXlsMTJZN3g0TDJ5UmtKUDltYW9sSXZ1Sko1cjVYbDhTVkRp?=
 =?utf-8?B?LzRTKzdSM3UwRVVkV0hIbXVoNkNGT2x6NmNUWUpvQnBzem1oTUZNT1gzRmFB?=
 =?utf-8?B?aXdLNk00L2N1Z21OeTdFWUY1TnYza2pyUFNtUDZxbmhoWCt0dHZtZFg1K0dZ?=
 =?utf-8?B?REMweXV2aVFuQ1Z2YThkS2ZWQTdIMGZDeEhZbHJkU1BQTk5vNk1DUlV4SUgw?=
 =?utf-8?B?Q3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B35E3CD88B2732489C592AED1A2576EF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a47e838-b238-4a4c-6ccf-08dc70dbd7ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2024 10:27:49.8178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FAVjvSeAa8uODn3u7iGIgw9674S1HhW9NKYEU1DuuNMf/84qe3xQwZqs4VR09fwsEeGF85t2OZnLLnib4fFld2Y8ZduMn8DNd45LDZRxLuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7291
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

T24gRnJpLCAyMDI0LTA1LTEwIGF0IDEyOjQ1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAxMCBNYXkgMjAyNCwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEFkZCBkZWZpbml0aW9ucyBmb3IgcGFuZWwgcmVwbGF5IHNlbGVj
dGl2ZSB1cGRhdGUNCj4gPiANCj4gPiB2MjogUmVtb3ZlIHVubmVjZXNzYXJ5IENjIGZyb20gY29t
bWl0IG1lc3NhZ2UNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IA0KPiBOZWVkcyB0byBiZSBDYzogZHJpLWRldmVs
Lg0KDQpKdXN0IHNlbnQgaXQgc2VwYXJhdGVseS4gVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlz
IG91dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IC0tLQ0KPiA+IMKgaW5j
bHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaCB8IDYgKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Rp
c3BsYXkvZHJtX2RwLmgNCj4gPiBiL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmgNCj4gPiBp
bmRleCAwYjAzMmZhYThjZjIuLjkwNjk0OWNhM2NlZSAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRl
L2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1f
ZHAuaA0KPiA+IEBAIC01NDgsNiArNTQ4LDEyIEBADQo+ID4gwqAjIGRlZmluZSBEUF9QQU5FTF9S
RVBMQVlfU1VQUE9SVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKDEgPDwgMCkNCj4gPiDCoCMgZGVm
aW5lIERQX1BBTkVMX1JFUExBWV9TVV9TVVBQT1JUwqDCoMKgwqDCoMKgwqDCoCAoMSA8PCAxKQ0K
PiA+IMKgDQo+ID4gKyNkZWZpbmUgRFBfUEFORUxfUEFORUxfUkVQTEFZX0NBUEFCSUxJVFnCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAweGIxDQo+ID4gKyMgZGVmaW5lIERQX1BBTkVMX1BB
TkVMX1JFUExBWV9TVV9HUkFOVUxBUklUWV9SRVFVSVJFRMKgKDEgPDwgNSkNCj4gPiArDQo+ID4g
KyNkZWZpbmUgRFBfUEFORUxfUEFORUxfUkVQTEFZX1hfR1JBTlVMQVJJVFnCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAweGIyDQo+ID4gKyNkZWZpbmUgRFBfUEFORUxfUEFORUxfUkVQTEFZX1lfR1JB
TlVMQVJJVFnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAweGI0DQo+ID4gKw0KPiA+IMKgLyogTGlu
ayBDb25maWd1cmF0aW9uICovDQo+ID4gwqAjZGVmaW5lwqDCoMKgwqDCoMKgwqDCoERQX0xJTktf
QldfU0VUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MTAwDQo+
ID4gwqAjIGRlZmluZSBEUF9MSU5LX1JBVEVfVEFCTEXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMHgwMMKgwqDCoCAvKiBlRFAgMS40ICovDQo+IA0KDQo=
