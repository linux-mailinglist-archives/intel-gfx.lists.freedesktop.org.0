Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCj0N40lqWkL2gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 07:41:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C1120BC36
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 07:41:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A378610E20F;
	Thu,  5 Mar 2026 06:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oELRdMNz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FABD10E20F;
 Thu,  5 Mar 2026 06:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772692874; x=1804228874;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=epg4fsn3FVJretrQjsnQSkJlZd2Kw50rPG/lAr3ahlY=;
 b=oELRdMNzqvX5zqoWEtfTsB+ifrnz7k1y0TvZmBV9QkasNW9t21/ONBdk
 1670Ki6yyK6FZFgrJLcmpL7oXE8AcnzdYNGiAhu/A/wMGj6uUpSuvASjk
 gcqFB2zBtZf2jrOPdOJ5rUtqJUatMa0oBoi7Js5WXc9F1bqtAQFZGMsmO
 G1YzzYaEbdMsNx+1/9dyadbfB2FVE/+9btM+RiMFUn7EitF63rbM4l2Wd
 EClar206hAYbYV1XEXaV0x/qmuuDkgZYlsG3QGhxrzNzeWER3ATismOUo
 wU3/Axk2rwS5SDZj4APOdTdSUAD6N9Ms2fcP/Mr1B8UyPCJw5bvry5nUE Q==;
X-CSE-ConnectionGUID: hFrqTLOyQvqus1cQMl39Sw==
X-CSE-MsgGUID: psAa+wHHTGSqei99VrDZNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77615861"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="77615861"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 22:41:13 -0800
X-CSE-ConnectionGUID: TCgDX5JgTk+RYC01AUamPw==
X-CSE-MsgGUID: Iy3WG2w2Q86tRV8UyxzK7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="223544351"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 22:41:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 22:41:12 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 22:41:12 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 22:41:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W7HPyXt/K9R9f9zXG/vDV5813dnw3cVrggkeNB0B/7U0BiXmZLXjnFssLdNIbBjMc+gRoxupD+3JOCmlgwt+7A3WmdcfWxgFmdImKrmzJbQXKZmGnWstx/oEjHuhZn4iPUkuor1c/T4Jy4hkzrBC3LfDB2Zo5T7+QSVedSRFzPKd93/oy2oqaH4vock/BB5Lbr5UfVKb6hf0gBhQBWg5sJsd8sHYVbXpJMUIs00JbfJ/85nrr26sseCONO5ZRAr7IOgoPLr5JvnAe4t1KiP6bfgLZUitjbNAxGDLp9Mui4oNaXGl4R4C+2HxHZlZcbEgKjlt6gHzxHTWeFiMQWnaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=epg4fsn3FVJretrQjsnQSkJlZd2Kw50rPG/lAr3ahlY=;
 b=h02IBR/Fv9DiarXLClihJuBpGqKWZVapNxmmNBhTfF7jLZONEKQ5RJp9BHYY//7BafbabhhEYziq1nlEvt4kCEofjAjN2/wuDmVjZ/YHWDbgwzpiLjHwy3fMGD61EcnJIcHZO44wTP0GjbY8ehDNedsCQPOeSZprgjz82w2frAeH3OxwKvDBj9dmcjy6/jYKkgIy54IVQGRrCtzETYZaNvNRgYCA6hf6vgzHImw4O7Jbq1dpeejuyhPNNyqfjuZnHwNfVP4rE/sHBaqPZIpvsA/CPmkiJFOJE61fODEuEQ4sWihVD/YnOPxS3pU5GPPcO3QAFLkOQCiLDTyvM7IzVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7844.namprd11.prod.outlook.com (2603:10b6:610:12a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Thu, 5 Mar
 2026 06:41:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 06:41:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/gem: unify i915 gem object frontbuffer
 function names
Thread-Topic: [PATCH 2/7] drm/i915/gem: unify i915 gem object frontbuffer
 function names
Thread-Index: AQHcqnD1jlL9xAosh06eMqbxU6xE37WfgTYA
Date: Thu, 5 Mar 2026 06:41:10 +0000
Message-ID: <0a38c154ac176a11085e381147ff84029a2259d9.camel@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
 <3415b59497f2c3a79586600d259eeaf58be73498.1772475391.git.jani.nikula@intel.com>
In-Reply-To: <3415b59497f2c3a79586600d259eeaf58be73498.1772475391.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7844:EE_
x-ms-office365-filtering-correlation-id: d4c6764c-a601-4cf9-a0eb-08de7a822fe3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: wP6ZNUPnvuygPf9NMQdQd4wCQTC3m5wlIiUDo8F++OXYJH2kpylkhMC10PAUiSzCc17y3mPOkMB0yBSthDiFuY+s4ZBcfhKMeVVG5w5SaaVMkx2Ug6v7UWrvWAWP4hsGP7n+Np0IRqC1KocsJSAkQKoup6SoUgRnNLAVrUl6YNTDToD+RAGm+pdA6vJYhRzhBaJOpSw0MecGs82VbO1a+dGLkwLCUCKyQ+SfDM5BPOGdGGLZGay/pf30nTWbWr1MSCfWaQH6XlLazZOvm433CYVY20UJ7BV4oQVxdrt4TC6LGJNx3RuXe5RO20DcVtgFpVxxCmcJZVjQpkfp1ViR9w4gp1lCiBtz57ont/xJhClCUqG72Xnpp23qYswADO+WUrQJYVR9uvef+RCXxKV+3ya055TkNWwBQCs0FKYM+jlcXEs8ev9yMtL/3BtgqBP3FTbtO6w5ST/PnbF0xREzYH+uSqX39+nKMJYfBoDu9HszWUMsQi8kJiSW1PM96k9QAD8o+IMpPDVm11p6j6QRVF4bsjQFZTNsBmxGYduBmS907z0XwXHyLAKreZMiYP49JKXnSwxNsmfqtxxeWHawQi2KeyftCAhbMbDOHsZSWHXNBfl4xDvBDwAy47vVIJiGI7gieO+WE14lcpaJ7Ww1aJom756HK/o2RedI4+SV0gRF1b2Dz7AvYipiB846DmN71E7Q591wcCaZO/YIJGMxsuzLp2A31762ocDK0ZjOwTtfWsBPQTsoBAj3E8ErkQ8hYdtXQZCFUR2tEOZ9l4UE6yjaLXe59Tgx4n2tDPeejQY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlRiNnpMZjQxRy9UYnZLQ09mWHJyakJLVmJ5Qll6dEp6OTgyUktyc2lHTENs?=
 =?utf-8?B?dDhESnRMVkxhcUQxUUdRaHVOQmJGdDgvQUVUOW41MU5uc2xkSlllcGJqTnpr?=
 =?utf-8?B?bDQzcUsvWVIwMHkrb0tCeXpRS1pvZVZqQWJXV2RZbHZIV0Y3d3RIZm9yZlRt?=
 =?utf-8?B?TVNsOEdtZStUWnZlWmwyaFdqbFNmcS9ldlFxa1M3YTBlUmlIZG5uVm9ibUNL?=
 =?utf-8?B?UHNRdEJmNkNlN0JJSHV4N1ZVbzkyRmVDcU5hTTZNcll0dlp4U0c1ZjArazBF?=
 =?utf-8?B?TFZveDdZMFhrVVJpRlI3NGIySm82Y0VnUTRGVjhlUmxVR0YyaURscEF3RFVs?=
 =?utf-8?B?OG41bVREdUw4NUNtS1dqTW1yY0J5ZktIU0ZFQ3phQ3VhWlpHcHhQY0J2endI?=
 =?utf-8?B?UEFTSDduV2wvWnI0UW91UXN3NklJTmhqbFU0WDJnS2RRNUFqRlZzNUt4am00?=
 =?utf-8?B?RWFxSlJ4bHd3Z1k3Q1Y4U2E3M1R4Qm0vRHRRY3dMRlkyUS9BQzFkYXZwemVX?=
 =?utf-8?B?cXpscVFxNGp1ZGxFNFV0amdQSW9OVWc0dEd4Z2ozZ1F2dVlHOFhPQWxoSlpo?=
 =?utf-8?B?Mk1DaVdTeUJFRSt0ZW9OWmNQSnB4WG5OelNqVkdhRDV1ZzM4b2xmbURjS3Q2?=
 =?utf-8?B?YlZNd2RhcnU3UzdxUjBESWFuQTh1ME9IVmxUMFFkdm0xc2lDYXh3VlF5M0hp?=
 =?utf-8?B?L1ZzdkJqc3FGNTd4ZFlNRTRpRmtzcmNxZ3NzUWNNdEZQU21JRjhEcWlYRFI3?=
 =?utf-8?B?cXppM0NVdVBITWJqdDdiaHJIaDNtVEFoQU9IV0YyME9Eb1RJVm9zWXRCZHpB?=
 =?utf-8?B?L21yby9wTDIxeGZpMXRIVEhSU1ZzNnRWQk53WS8wOUNTaDhxRTRnZlBQb3E3?=
 =?utf-8?B?VXFma1FZaTB0RzNyM01lbEdwUld3SUU5UHUxbXhKSW16dlNjVVF0NVk5czZZ?=
 =?utf-8?B?Tk5jc0NIVkQ2ajcxNVpVYmRmaSsyNlgrR243NXRrc2R5a3NCSkNXTTh2Nk1k?=
 =?utf-8?B?NFJMdlFQem5jdWQxOTlYKzFaSml1QWNUbTZMdC80TUwySGFtSklKbkNXckIx?=
 =?utf-8?B?dFlpWmxiVFBiOGRQbytmeUlTY2Exc1l1YUFQYm1QSjhGaWU1d0pMeHV2aHFy?=
 =?utf-8?B?L0swdWZsdzhqVFZHeEdyRDNqU1l3d21EZTJKU3A0M3RaSEFTSUU2ODdDMXJB?=
 =?utf-8?B?cjJtNUx1MWFHZklYN09QdlRBL20wUmkvTTlaa3U5Ri9YK3hIeHhDeVV1T0FJ?=
 =?utf-8?B?UVRQdEEwcEExck5XUkhoSDlqRGs2NE5UME5wK0JmVGR3N052eWlnU08xdnhF?=
 =?utf-8?B?UEVCWVNzcjR2eU95VFpuQ0d1alBzUzRhYXhzTm04OHFnVEg3NlpZZ2N3bzdS?=
 =?utf-8?B?Sml0WmtxMlNwbUJaaHdPdDduODBGNEdKbHZyZTR5VlpoSjFUQnFkMEFBR2d0?=
 =?utf-8?B?STJwdlgxZ21sdzRNTllOZVdpZkpKcVBkSTl6Y1pDV21vYXAxTTZrZ3liYWd4?=
 =?utf-8?B?RGFyNzZkRURxOWN3b0N2T0JyYkV6TmExS3VrK0R3UnN5V3U1MVloNzFhbHBU?=
 =?utf-8?B?TDQ3WlZrdTVRMjg3a1NkK242blVXTjYya05odUc4MWxuMTJURm96VHBGeWJN?=
 =?utf-8?B?MmJhVVdBTzdKYS9rZGJDaVZISXo0OFFsbENKM1VBN084WU5rVDhxWnEzTUhQ?=
 =?utf-8?B?TlJCUXphZEg0ZGY3YVF5d0lOU3pPNlM0dFVjdVlBeGpnL1FnUEZrRXF0K01n?=
 =?utf-8?B?T3lvRTZSUGNJRmplRHNDUVpOdVBONDRnWTF2dUJzUTlUZ0s5Y3hjT044ZVRB?=
 =?utf-8?B?REphdFlYUDFYQTdNYWswMGJhNVF4WFlvd1dwelhTME5taUR4dzFYYjRRR2g1?=
 =?utf-8?B?cXBKT01SOEU5djZxR0EvVm5VUHRmODVaaUc4Z1k0aDh3aW1MdkN6UjdnUDF3?=
 =?utf-8?B?TVFxYk1BNjBZSXc1bFRGRUlxUVJraXAvSkx2MjF3NE1VdnlmbzQxOUxyWjNX?=
 =?utf-8?B?OGd6MzhRZ2gwS2cyUWpwdjZSSU5sd1BObmM5bzJRQ2gyLzBydFN3dm52TU9N?=
 =?utf-8?B?czI5YlJ5M1E4U1JqemN5WERQcnNDVndkeDQzcGZtV3EyeXNGRERMWVJmVjYy?=
 =?utf-8?B?dzh6cEswS2VKdjRLdHBuaThKRENLUmt2VXFtbS9lUXpCYXlKcE9USWs0dEZk?=
 =?utf-8?B?SmZoN1VBSXVVTSsvZXZCNmF6a2p0VXBkRmFkb0cweFdTdFhkNXlVS3liKy95?=
 =?utf-8?B?ODBRNXUrbitTWVF6WUlJWUdzOVJ6SGZkQXRZL25yMjhib21COThoZkxIa2U4?=
 =?utf-8?B?a3N4d0piMGpWNTlMamdPTE9HLy9MUUlVdzU5OTJ6Mk5hNTNpaW9YbVNpdWZv?=
 =?utf-8?Q?uzomnMJAGIEP1v6BaqDdwXA7v9T+JIRJq99IPuXY25rPt?=
x-ms-exchange-antispam-messagedata-1: q/h5YHux99S1xg1K9iu0yaNr9HTRL3T45xY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0DF6424A7CB5394687A1171B954DE702@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: X22lgnb45lDtH45bq/URfH/+rKsm8+1kpfVHZcY53zWNPhbzk/ZJs+91EatdgGyQxqUTYH+XMHk07K2wnPq6/Cv34h9dU2g2vtOVpJOTK7Dkmxg6wjienL/cnXodcEe/jeB59eBlLRPZtNvquFfpzstH2RpYHyLUsJE850i0C7Ad+WcQMf4bjtoYDlc6PxZiYpoFnhwKgMrRLx+Bxra4AYidA1Rhokxl5LZLllV/Dztb9Xs9hpqPqpCkSYLpK/1I2bH+iqpKF5bgE5y0IsxfqV71pLjJfPTW6Nov7UtpSI5bKd+C+L5xIZraUrwrfuDResXnPdW0K0H95Y6pmaNbFw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4c6764c-a601-4cf9-a0eb-08de7a822fe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2026 06:41:10.0502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f2mFDXrxL9S6nt7ucmNZ/4AiHJIGfwsuPqNMHuHYZ2PxJ7aDPcLGNcxvskXOo0PZz0jHOO7j3cn1b7IsD36okEWDDMZj2qB0KawdhjE9jTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7844
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
X-Rspamd-Queue-Id: 14C1120BC36
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDIwOjE3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
TWFueSBvZiB0aGUgaTkxNSBnZW0gb2JqZWN0IGZyb250YnVmZmVyIGZ1bmN0aW9uIG5hbWVzIGZv
bGxvdyB0aGUNCj4gZmlsZQ0KPiBuYW1lIGFzIHByZWZpeC4gRm9sbG93IHN1aXQgd2l0aCB0aGUg
cmVtYWluaW5nIGZ1bmN0aW9ucywgcmVuYW1pbmcNCj4gdGhlbQ0KPiBpOTE1X2dlbV9vYmplY3Rf
ZnJvbnRidWZmZXJfKigpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jbGZsdXNoLmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqAgNiArKystLS0NCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
ZnJvbnRidWZmZXIuY8KgwqAgfMKgIDQgKystLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5owqDCoCB8IDEyICsrKysrKy0tLS0NCj4gLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGh5cy5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCA0ICsrLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA2ICsrKy0tLQ0K
PiDCoDYgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1
c2guYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMNCj4g
aW5kZXggMzBjYzA4NTgzY2JkLi43NzgyYmE0NGZhYmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYw0KPiBAQCAtMjIsNyArMjIsNyBAQCBzdGF0
aWMgdm9pZCBfX2RvX2NsZmx1c2goc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaikN
Cj4gwqAJR0VNX0JVR19PTighaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopKTsNCj4gwqAJ
ZHJtX2NsZmx1c2hfc2cob2JqLT5tbS5wYWdlcyk7DQo+IMKgDQo+IC0JaTkxNV9nZW1fb2JqZWN0
X2ZsdXNoX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0NQVSk7DQo+ICsJaTkxNV9nZW1fb2JqZWN0
X2Zyb250YnVmZmVyX2ZsdXNoKG9iaiwgT1JJR0lOX0NQVSk7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0
YXRpYyB2b2lkIGNsZmx1c2hfd29yayhzdHJ1Y3QgZG1hX2ZlbmNlX3dvcmsgKmJhc2UpDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMNCj4gaW5kZXggZWYz
YjE0YWUyZTBkLi5kZjc1MDIzOTFiNTAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG9tYWluLmMNCj4gQEAgLTY4LDcgKzY4LDcgQEAgZmx1c2hfd3JpdGVfZG9t
YWluKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+IHVuc2lnbmVkIGludCBmbHVz
aF9kb21haW5zKQ0KPiDCoAkJCWk5MTVfdm1hX2ZsdXNoX3dyaXRlcyh2bWEpOw0KPiDCoAkJc3Bp
bl91bmxvY2soJm9iai0+dm1hLmxvY2spOw0KPiDCoA0KPiAtCQlpOTE1X2dlbV9vYmplY3RfZmx1
c2hfZnJvbnRidWZmZXIob2JqLCBPUklHSU5fQ1BVKTsNCj4gKwkJaTkxNV9nZW1fb2JqZWN0X2Zy
b250YnVmZmVyX2ZsdXNoKG9iaiwgT1JJR0lOX0NQVSk7DQo+IMKgCQlicmVhazsNCj4gwqANCj4g
wqAJY2FzZSBJOTE1X0dFTV9ET01BSU5fV0M6DQo+IEBAIC02NDcsNyArNjQ3LDcgQEAgaTkxNV9n
ZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiB2b2lkICpkYXRh
LA0KPiDCoAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7DQo+IMKgDQo+IMKgCWlmICghZXJy
ICYmIHdyaXRlX2RvbWFpbikNCj4gLQkJaTkxNV9nZW1fb2JqZWN0X2ludmFsaWRhdGVfZnJvbnRi
dWZmZXIob2JqLA0KPiBPUklHSU5fQ1BVKTsNCj4gKwkJaTkxNV9nZW1fb2JqZWN0X2Zyb250YnVm
ZmVyX2ludmFsaWRhdGUob2JqLA0KPiBPUklHSU5fQ1BVKTsNCj4gwqANCj4gwqBvdXQ6DQo+IMKg
CWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsNCj4gQEAgLTc1OSw3ICs3NTksNyBAQCBpbnQgaTkx
NV9nZW1fb2JqZWN0X3ByZXBhcmVfd3JpdGUoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwNCj4gwqAJfQ0KPiDCoA0KPiDCoG91dDoNCj4gLQlpOTE1X2dlbV9vYmplY3RfaW52YWxp
ZGF0ZV9mcm9udGJ1ZmZlcihvYmosIE9SSUdJTl9DUFUpOw0KPiArCWk5MTVfZ2VtX29iamVjdF9m
cm9udGJ1ZmZlcl9pbnZhbGlkYXRlKG9iaiwgT1JJR0lOX0NQVSk7DQo+IMKgCW9iai0+bW0uZGly
dHkgPSB0cnVlOw0KPiDCoAkvKiByZXR1cm4gd2l0aCB0aGUgcGFnZXMgcGlubmVkICovDQo+IMKg
CXJldHVybiAwOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF9mcm9udGJ1ZmZlci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5jDQo+IGluZGV4IDI5MDc2YWVmZGZkOC4uY2YwYjY2
ZWFmMTFiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2Zyb250YnVmZmVyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5jDQo+IEBAIC0xMDIsNyArMTAyLDcgQEAgdm9pZCBp
OTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfcHV0KHN0cnVjdA0KPiBpOTE1X2Zyb250YnVmZmVy
ICpmcm9udCkNCj4gwqAJCcKgwqDCoMKgwqAgJmk5MTUtPmZyb250YnVmZmVyX2xvY2spOw0KPiDC
oH0NCj4gwqANCj4gLXZvaWQgX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfZnJvbnRidWZmZXIoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaiwNCj4gK3ZvaWQgX19pOTE1X2dlbV9vYmpl
Y3RfZnJvbnRidWZmZXJfZmx1c2goc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaiwN
Cj4gwqAJCQkJCSBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pDQo+IMKgew0KPiDCoAlzdHJ1Y3Qg
aTkxNV9mcm9udGJ1ZmZlciAqZnJvbnQ7DQo+IEBAIC0xMTQsNyArMTE0LDcgQEAgdm9pZCBfX2k5
MTVfZ2VtX29iamVjdF9mbHVzaF9mcm9udGJ1ZmZlcihzdHJ1Y3QNCj4gZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLA0KPiDCoAl9DQo+IMKgfQ0KPiDCoA0KPiAtdm9pZCBfX2k5MTVfZ2VtX29iamVj
dF9pbnZhbGlkYXRlX2Zyb250YnVmZmVyKHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosDQo+ICt2b2lkIF9faTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX2ludmFsaWRhdGUoc3Ry
dWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gwqAJCQkJCcKgwqDCoMKgwqAgZW51
bSBmYl9vcF9vcmlnaW4NCj4gb3JpZ2luKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGk5MTVfZnJvbnRi
dWZmZXIgKmZyb250Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5oDQo+IGluZGV4IDIxMzNlMjkwNDdjNS4uMWMy
NTBjZTRjYTY2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X2Zyb250YnVmZmVyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5oDQo+IEBAIC0yMCwyNSArMjAsMjUgQEAgc3Ry
dWN0IGk5MTVfZnJvbnRidWZmZXIgew0KPiDCoAlzdHJ1Y3Qga3JlZiByZWY7DQo+IMKgfTsNCj4g
wqANCj4gLXZvaWQgX19pOTE1X2dlbV9vYmplY3RfZmx1c2hfZnJvbnRidWZmZXIoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaiwNCj4gK3ZvaWQgX19pOTE1X2dlbV9vYmplY3RfZnJv
bnRidWZmZXJfZmx1c2goc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaiwNCj4gwqAJ
CQkJCSBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pOw0KPiAtdm9pZCBfX2k5MTVfZ2VtX29iamVj
dF9pbnZhbGlkYXRlX2Zyb250YnVmZmVyKHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosDQo+ICt2b2lkIF9faTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX2ludmFsaWRhdGUoc3Ry
dWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gwqAJCQkJCcKgwqDCoMKgwqAgZW51
bSBmYl9vcF9vcmlnaW4NCj4gb3JpZ2luKTsNCj4gwqANCj4gwqBzdGF0aWMgaW5saW5lIHZvaWQN
Cj4gLWk5MTVfZ2VtX29iamVjdF9mbHVzaF9mcm9udGJ1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLA0KPiAraTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX2ZsdXNoKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+IMKgCQkJCcKgIGVudW0gZmJfb3Bfb3JpZ2lu
IG9yaWdpbikNCj4gwqB7DQo+IMKgCWlmICh1bmxpa2VseShyY3VfYWNjZXNzX3BvaW50ZXIob2Jq
LT5mcm9udGJ1ZmZlcikpKQ0KPiAtCQlfX2k5MTVfZ2VtX29iamVjdF9mbHVzaF9mcm9udGJ1ZmZl
cihvYmosIG9yaWdpbik7DQo+ICsJCV9faTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX2ZsdXNo
KG9iaiwgb3JpZ2luKTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGlubGluZSB2b2lkDQo+IC1p
OTE1X2dlbV9vYmplY3RfaW52YWxpZGF0ZV9mcm9udGJ1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdA0KPiAqb2JqLA0KPiAraTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX2ludmFsaWRh
dGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaiwNCj4gwqAJCQkJwqDCoMKgwqDC
oMKgIGVudW0gZmJfb3Bfb3JpZ2luIG9yaWdpbikNCj4gwqB7DQo+IMKgCWlmICh1bmxpa2VseShy
Y3VfYWNjZXNzX3BvaW50ZXIob2JqLT5mcm9udGJ1ZmZlcikpKQ0KPiAtCQlfX2k5MTVfZ2VtX29i
amVjdF9pbnZhbGlkYXRlX2Zyb250YnVmZmVyKG9iaiwNCj4gb3JpZ2luKTsNCj4gKwkJX19pOTE1
X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfaW52YWxpZGF0ZShvYmosDQo+IG9yaWdpbik7DQo+IMKg
fQ0KPiDCoA0KPiDCoHN0cnVjdCBpOTE1X2Zyb250YnVmZmVyICppOTE1X2dlbV9vYmplY3RfZnJv
bnRidWZmZXJfZ2V0KHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOw0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMNCj4gaW5kZXggY2UyNzgwZWY5
N2VmLi5lMzc1YWZiZjQ1OGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9waHlzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BoeXMuYw0KPiBAQCAtMTU1LDcgKzE1NSw3IEBAIGludCBpOTE1X2dlbV9vYmplY3RfcHdy
aXRlX3BoeXMoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gwqAJICogV2Ug
bWFudWFsbHkgY29udHJvbCB0aGUgZG9tYWluIGhlcmUgYW5kIHByZXRlbmQgdGhhdCBpdA0KPiDC
oAkgKiByZW1haW5zIGNvaGVyZW50IGkuZS4gaW4gdGhlIEdUVCBkb21haW4sIGxpa2UNCj4gc2ht
ZW1fcHdyaXRlLg0KPiDCoAkgKi8NCj4gLQlpOTE1X2dlbV9vYmplY3RfaW52YWxpZGF0ZV9mcm9u
dGJ1ZmZlcihvYmosIE9SSUdJTl9DUFUpOw0KPiArCWk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZl
cl9pbnZhbGlkYXRlKG9iaiwgT1JJR0lOX0NQVSk7DQo+IMKgDQo+IMKgCWlmIChjb3B5X2Zyb21f
dXNlcih2YWRkciwgdXNlcl9kYXRhLCBhcmdzLT5zaXplKSkNCj4gwqAJCXJldHVybiAtRUZBVUxU
Ow0KPiBAQCAtMTYzLDcgKzE2Myw3IEBAIGludCBpOTE1X2dlbV9vYmplY3RfcHdyaXRlX3BoeXMo
c3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gwqAJZHJtX2NsZmx1c2hfdmly
dF9yYW5nZSh2YWRkciwgYXJncy0+c2l6ZSk7DQo+IMKgCWludGVsX2d0X2NoaXBzZXRfZmx1c2go
dG9fZ3QoaTkxNSkpOw0KPiDCoA0KPiAtCWk5MTVfZ2VtX29iamVjdF9mbHVzaF9mcm9udGJ1ZmZl
cihvYmosIE9SSUdJTl9DUFUpOw0KPiArCWk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlcl9mbHVz
aChvYmosIE9SSUdJTl9DUFUpOw0KPiDCoAlyZXR1cm4gMDsNCj4gwqB9DQo+IMKgDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYw0KPiBpbmRleCAxNjA3MzM2MTlhNGEuLjc2MTQ5MTc1MDkxNCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jDQo+IEBAIC01NzksNyArNTc5LDcgQEAgaTkx
NV9nZW1fZ3R0X3B3cml0ZV9mYXN0KHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
DQo+IMKgCQlnb3RvIG91dF9ycG07DQo+IMKgCX0NCj4gwqANCj4gLQlpOTE1X2dlbV9vYmplY3Rf
aW52YWxpZGF0ZV9mcm9udGJ1ZmZlcihvYmosIE9SSUdJTl9DUFUpOw0KPiArCWk5MTVfZ2VtX29i
amVjdF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRlKG9iaiwgT1JJR0lOX0NQVSk7DQo+IMKgDQo+IMKg
CXVzZXJfZGF0YSA9IHU2NF90b191c2VyX3B0cihhcmdzLT5kYXRhX3B0cik7DQo+IMKgCW9mZnNl
dCA9IGFyZ3MtPm9mZnNldDsNCj4gQEAgLTYyNiw3ICs2MjYsNyBAQCBpOTE1X2dlbV9ndHRfcHdy
aXRlX2Zhc3Qoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gwqAJfQ0KPiDC
oA0KPiDCoAlpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhnZ3R0LT52bS5ndCk7DQo+IC0JaTkx
NV9nZW1fb2JqZWN0X2ZsdXNoX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0NQVSk7DQo+ICsJaTkx
NV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX2ZsdXNoKG9iaiwgT1JJR0lOX0NQVSk7DQo+IMKgDQo+
IMKgCWk5MTVfZ2VtX2d0dF9jbGVhbnVwKG9iaiwgJm5vZGUsIHZtYSk7DQo+IMKgb3V0X3JwbToN
Cj4gQEAgLTcxNCw3ICs3MTQsNyBAQCBpOTE1X2dlbV9zaG1lbV9wd3JpdGUoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QNCj4gKm9iaiwNCj4gwqAJCW9mZnNldCA9IDA7DQo+IMKgCX0NCj4gwqAN
Cj4gLQlpOTE1X2dlbV9vYmplY3RfZmx1c2hfZnJvbnRidWZmZXIob2JqLCBPUklHSU5fQ1BVKTsN
Cj4gKwlpOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfZmx1c2gob2JqLCBPUklHSU5fQ1BVKTsN
Cj4gwqANCj4gwqAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7DQo+IMKgCXJldHVy
biByZXQ7DQoNCg==
