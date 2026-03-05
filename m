Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMOcMOZqqWnH7AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 12:37:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2289210A8F
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 12:37:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433BB10E27C;
	Thu,  5 Mar 2026 11:37:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BA9HR0vm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0BD10E278;
 Thu,  5 Mar 2026 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772710627; x=1804246627;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8GHw4qKG6kxHs3vjbU7x2rSHAZySZ38hcuktDP31Gow=;
 b=BA9HR0vmGkjxWeS2RltW32nQfmut2PMQwiknCGzP2F8TNQ80U+5xbf2/
 dsHcw8otffI6+KPzPONfE6um67nyl9VyZUvnZ3qJpAHuO89n0Uj+ZLAEK
 /xAkCFzhzLKmSWgKVAvjOT3de4MgrPvK11zqyxsxXrljLr4jzMOm2KSbB
 BgRKNsiePIN0BHbk6PM/rBh8aXjNFxkf1dQbDXrwLKp1U3GhuG4fL/Lr8
 wSLpeHZuzCvc0USonOnumuX0XGMmG1XyOrBG6IHuWMh8/LW+LRrh5cyHF
 6WL0AlZ3OxPsNl919niOAnzZgXo3/P2p34kOY7X90xA1Govggs00VHUme g==;
X-CSE-ConnectionGUID: RD49qu0+R4ifAlwv2tykEw==
X-CSE-MsgGUID: w2Gr9T7IR0SCwk2118DAzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="85267783"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="85267783"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 03:37:05 -0800
X-CSE-ConnectionGUID: BO2TCkubTwOcSElW9Hys7A==
X-CSE-MsgGUID: PH6HPMcfSpe8W0fjV/hv+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="241671746"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 03:37:04 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 03:37:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 03:37:03 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 03:37:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uqvyhJ8/2KZ6jcRqAj1sVefi/Jq+tdA4G+I3Ofu2udBKCPkOtf+/gu0QhdcLOmfGCIkDN3nNeIvVhGyHLRtEEWctQgJaNv0qj0RJzYrndZYsRtC7hO72VoQjPcuZ21yP3ywwSfMndPPsCqZ00cd+l381/GcjXHqmwGtQ9pft0wyCp6dheVlYDBtLYM5eGa1US3KBFU3ECP8bI+CyI/Jo81Oqoo7UM/EfUxG+MMkhXRrLAXhsvKy1yV9CVdXJEQfpSzDRnj6lWFgIY5/wC8GD3OFNL/6XJt3oqdfeWF2vkaDq0ovxkcLk0Hr3bR/W3m9Xh6VbT7Zen2r+T6QG/aM23g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GHw4qKG6kxHs3vjbU7x2rSHAZySZ38hcuktDP31Gow=;
 b=oD+sN9C+zvmdlz+IvtBFjdY6QqA+exkGwT8Pq7nWnF7DS+B5oeIzZjGJkp8mD7y2pB5MGEBo8cl/8Fx7eeD6IPycdhM+t4MfNgJq3Qe+6SlAH414mdqcJRq8y7LvzbznKksoqN1pV3kbhC6f6DSO4fn6MsiMx1UP+b50PGQA09fJnR8bRg8OfFVxgUUMquACM8geQre07b6c2h20Ny5UEiCJxJYWS+NSmA4UL8tUwJc8B/icORhoFent7Z2D01sMWBM+0c3ED9WY5MfqaAFiVlYWx2VWXeUYBzzHHR+6eV/EEobuq40QhfY0tXqyu02DQgmpwdARytCFW08DA83F3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7293.namprd11.prod.outlook.com (2603:10b6:208:42a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 11:37:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 11:37:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/intel: fix @dpt kernel-doc for parent interface
Thread-Topic: [PATCH 4/7] drm/intel: fix @dpt kernel-doc for parent interface
Thread-Index: AQHcqnD/e9xG2ZQVuUe7O79uE88hpbWf09sA
Date: Thu, 5 Mar 2026 11:37:01 +0000
Message-ID: <8d33b2698eaddc20f05c16c59d44a5b1c6faaee5.camel@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
 <0209e128312520ca1c6a0c39f9dfb0184125322a.1772475391.git.jani.nikula@intel.com>
In-Reply-To: <0209e128312520ca1c6a0c39f9dfb0184125322a.1772475391.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7293:EE_
x-ms-office365-filtering-correlation-id: b0f1b91f-7483-4eb8-d21a-08de7aab846c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: AlokOJBxPqKfktOAQPxghK1GA7KdbgHiCUBMHORi/8l6dciIAmNT51uSU4gdceuXdkhCw9a4pur3IK7j+5mH4B+JwU3MPhisZrwF285RkOqheqOBxLBMoDio1Pz/TvHqNKGPI5W0/pChP6IdWqXFb3vIR94N/FLGsiknRpXLbucVqLmFZq9I3QnXPNtuIIopJ/Qyv3GJzYKh03183MMGhyQRE4ybr5evKP+TOBj/Fwc2ypzkHgW4ULWzPYJFmmqw8+G7vI0wcr7mVDeG0VJnJCFhZuskqP9SypQh4x4BYf+6n0+MGrMvcb4jWKtzVfVn35/qSQQM3H3BeLpZylcmk3uA6+6aCL4eT79y03pw84jz3/VpFefLsezhhALB2Is7xeaL548tktfpXbQZ2VPSQzbdvIZe2pZkt7KoFSlbDof3SFftX6F8p7kwrHhR3GGkChsR0QGoBsphHCKLbqTSCNhh4BwpRNVdVKnXZUIt7QcsDipQVJHLDshdPnLpRXeDdPwdRl7oPBfJaCB9vrSkTAcC+FZS7MFO37UwvPkkuTWD8rqVpU22ZLpu8eeFyfBuV/c36/HkIl/OKxSX8I79BxEg2JtNK2DX7FEBfBnNlYPvYbGtZ23eBputPzboStYUnyoVCiHgCr+tiJMlSLn2H6RbItY5J6urTGI0kVp+AtZmYRp59UNy+fWAbiZs4AS+Npi8gaCWksXxdFZ5+b+kQRMAmm4kt7FEtuZFT/WkFylF/78yElei41Ec3EJaMJM10+2LqgFlWgz40zndd/Z3LqNj+PJ6XiLA+OYSdFCQD/8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NTd3YUJmS2JQVXpQMzlldkdvcUNaRnl5RWRHRlJkcm91SXBRejhKd1dUaXBx?=
 =?utf-8?B?UVZJS0owK0U0SUJmUXd6NEZnTTE4T0ltVkVmSW55UkU5UXM1VDV1d3NDY2hn?=
 =?utf-8?B?UmZlZUVUWU5mcXFhekQ2a0M0U01jMjNuUUNBbDRoT1NscndKQnBlazVyb2Zr?=
 =?utf-8?B?VGtOeGJob1VQSFd3L0M0R0VoazI2VmZpWlgyeUV6cHMrc01MQzcvdjlxem9H?=
 =?utf-8?B?QUtUR3Vnd2JUNGhTdldtd1JibkF5akhaaVc1ZzNUSFdud1YrbGF0Zmh5OU9C?=
 =?utf-8?B?MTg3Z1RZci9sK0xoUWU2UzRleDQ0R0R3ZFJHL3BYLzhleUV5QWdaazN4MnBB?=
 =?utf-8?B?MStNSUd5ZnpBcFh0YmViR2l1V3J2VzllcWNDcDNCRzdZZ3F3MUpoQmVldmFT?=
 =?utf-8?B?bUkxNC9VblVTMEROeDR3ZzJqamZKRXhEakFhS2dHNHZRUlQ0TnRxdnNhWE02?=
 =?utf-8?B?R3JIWFhESVp2TG5vaWpESnFmZHZLTEVBZGRYUzAvUCtkUXNrTHMyc1M3d2kr?=
 =?utf-8?B?MWFjUzFPclh4OUgxT1l4K2lHWjU4QkVqV0diZXpkUnAvMmdZWi9yTzdWQnl5?=
 =?utf-8?B?RnprVURjTVA3U2l6YUVxZkhLV2F0NDBJSG1BM2I0QjFIakVxVFYyY3JMSmhN?=
 =?utf-8?B?T3U2cDhSK0dKQy82MGlxUDJINThnY0JReEp4dEFTZFdiMEQ0TzhiQTQ0QTlE?=
 =?utf-8?B?UStzeGw4d0VETmlhc3dySTh5eW1RaEZMbFpzeCtjVUZ5Q29JMXNibGZCU09C?=
 =?utf-8?B?Wk0vT3ZOYmMyVnREUEZZZ004N2RZQXJoazAwd3Q5Y2xwNC95SUpiNjU2ZXZt?=
 =?utf-8?B?OUhwNFlyeVBxMTkxTWh3MlNQRkdob09BMlpLR2dCUzRlR2xzYWJaWmFoNnQz?=
 =?utf-8?B?ZVlsUGVvdWtsWjFjd2xDYlNyY3ovOXVOd0RldGthNFhxZk80TUtLd3VkYTFF?=
 =?utf-8?B?bEs5RnNIMnJFc094bnlsdy9rbGlVZHozd2lGOTdRdkdXVkZhMXlHcnJEeFJx?=
 =?utf-8?B?Vno3T3RDSW5nenVOSDMxc0hocWhxYjhVcXVDMXZLRmVZTXF0b0Qya0RZYk9O?=
 =?utf-8?B?N29MU0RlNFFrVEJFTllockcxL3BDUXZqUVFJWlNNQkFXRHVDdE9xMjVqbG8w?=
 =?utf-8?B?eERxZ3RuRWQxU1ZQSG9rdngralFnVko3d3Y3TURBeVBlUWovV283V3cwVDlv?=
 =?utf-8?B?Ym9sYUlEQ0cvTkN3NFdFMW9qUWFRU1VHK2ZVTlpkTXlVVnRYNXA2N21yZWRY?=
 =?utf-8?B?cW9tRUdGMkd0bTJHSDVxeEt6WnBONXdvc24wVjR3MUpLVG5FVHFWWjNlNTFr?=
 =?utf-8?B?UlBrZ3Zwc2pmbWlnS29TRDd3cWRNNnQyVjJBeWROaVFBeWsvMGRJTDYranJs?=
 =?utf-8?B?WC9aRWZiZjExZ2ZYR1greFdtN0x3aGRzUklmU0UzbGxwU1ZRSGl5MkdBRFU4?=
 =?utf-8?B?OVE5ZkVqWFROTFhBUlNZSDRCL0dFdDZ0NWNjTkdoY2JpZGE2V1VvQ0NuYUpQ?=
 =?utf-8?B?SWthYThEaTB5dTVHb1FiMzQwbEdtcHU5dzZ4SGNnSUNWSno2TzVBaCs0WHhu?=
 =?utf-8?B?MC9Kejh4bVAyTTBFQVRrMEVLS2Y0aFV2YnBTTWQ1REU0ZU1sVkUwc0k0dU9I?=
 =?utf-8?B?cWJ1aXkzbVc0Rkx0cTVPSjZSQnluMWFqazkwaHI2R2JsdHRyRm1LbUQwNFY5?=
 =?utf-8?B?SGQ4eDBGUnRQSHcwdklKdDNiZWEwT1gvRU5PSHVkZit3eDZuTlVBeGg2d0pX?=
 =?utf-8?B?VVB5RlNOVSt0MStxeXhQNXd1cDRIbUVKQWtsWldDYVNHY2UyUXBDQjJXS044?=
 =?utf-8?B?cWp0MzBwZTFwRzZLMlVIanVsL0pOeWV0UmNNbWNueVpHTlFJVGpVNEM4RzVC?=
 =?utf-8?B?dkpFSENBTS9qdVZBYlgzeEI0MUhRMDI1UHc3OE5LNTY0MmdvMTFqbThQUW12?=
 =?utf-8?B?SE05b1BVMC9TRitLZC9zNTFZdk5TQzBXajlPc29tSkFFZUw2TUlydTJDcXBy?=
 =?utf-8?B?YkZEdENyZHlId1dZWWVOTnkyRWEybHh1ZXBsaDQyM1hQZnNWWCtEY0MyUWVq?=
 =?utf-8?B?L001c2VyaWhkT2M4ZTJuRy80TnZ4MTJGbUgyb0dWVjlLMXRMdFFIeGJwMWE4?=
 =?utf-8?B?b2lyOVIxaG5nTzZ1MncwejdhQTdqaFFoTHpaaEl0TWhyYS9kVzIwU2o5TWZ3?=
 =?utf-8?B?Z0pKZjFZenFVQ0ZUTkhYT2wzcjFHZWRpZDVhbzFxdHRWUzM2RzR6eHhLSi9G?=
 =?utf-8?B?RWowSTkzMUUyUGJtV2d6MkxTbEphbFErMUY4b3ZDRlJ1VmEwWjI5VnhuQ3J2?=
 =?utf-8?B?US9mbC9rRElyNjAxL2UzdnZqZldDYkNPelJLMU1KMUhNeWZKZXB1U3hCYTVF?=
 =?utf-8?Q?ZDsfThb1yqyxpuuQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <46B06A62CD9DD741AEAF876223DB5DF7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f1b91f-7483-4eb8-d21a-08de7aab846c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2026 11:37:01.2690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yi02ZCcZlYb8YKD59c1mnmpJSKgIo6oWnvF6Xb5bcYbTMwMRsPuOqxXUUiM0WJd9iUPBR1/Mt6u0MAr8BNwbkjcf1prrPUNDagMGsOWAjAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7293
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
X-Rspamd-Queue-Id: C2289210A8F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
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
Rml4IHRoZSBjb3B5LXBhc3RlIGZhaWwuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgaW5jbHVkZS9kcm0vaW50
ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJmYWNlLmggfCAyICstDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9kcm0vaW50ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJmYWNlLmgNCj4gYi9pbmNsdWRlL2RybS9p
bnRlbC9kaXNwbGF5X3BhcmVudF9pbnRlcmZhY2UuaA0KPiBpbmRleCBiNGIwZjU4YWUzZWUuLmI0
MzllNTEzYzBjNSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vaW50ZWwvZGlzcGxheV9wYXJl
bnRfaW50ZXJmYWNlLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vaW50ZWwvZGlzcGxheV9wYXJlbnRf
aW50ZXJmYWNlLmgNCj4gQEAgLTE2Miw3ICsxNjIsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9z
dG9sZW5faW50ZXJmYWNlIHsNCj4gwqAgKiBjaGVjayB0aGUgb3B0aW9uYWwgcG9pbnRlcnMuDQo+
IMKgICovDQo+IMKgc3RydWN0IGludGVsX2Rpc3BsYXlfcGFyZW50X2ludGVyZmFjZSB7DQo+IC0J
LyoqIEBkc2I6IERQVCBpbnRlcmZhY2UuIE9wdGlvbmFsLiAqLw0KPiArCS8qKiBAZHB0OiBEUFQg
aW50ZXJmYWNlLiBPcHRpb25hbC4gKi8NCj4gwqAJY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlf
ZHB0X2ludGVyZmFjZSAqZHB0Ow0KPiDCoA0KPiDCoAkvKiogQGRzYjogRFNCIGJ1ZmZlciBpbnRl
cmZhY2UgKi8NCg0K
