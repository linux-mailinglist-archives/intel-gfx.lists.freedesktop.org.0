Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGL8JGSaw2myrwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:18:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D94321514
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FFE10E7F6;
	Wed, 25 Mar 2026 08:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WAPayL62";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B1510E7F6;
 Wed, 25 Mar 2026 08:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774426721; x=1805962721;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/6ZJrL9ty7qjQKpuGa3ThgbQxpvQFKUmuHn3wc9R41E=;
 b=WAPayL628u7GYybJ9hLAj0iiHsixUDwZuQFPunfmxFd1bdbtcN0vpufM
 7x9ryY8cBvOS3EMSEeuia/we/8Ns5tkK9i10oqYRoCKIB91JXc0qMGdkI
 jnv0z+ZX7xcegsOVza+JF9InzZTm1gjwkqfZmihIPjAXQrKC5zoq3WzTp
 Tj/502TnI6hdHMwK143tOQ1ifwMLh5A6/Lyq68h6+SAZI/DQZdOZYhrAJ
 IfP2s93AaISAITCPvBJC9iXHmB/4v+r0/qLoPYp+1GR04tSc53ZuCIvMh
 AQBMG98szOi1ct9AO+aoyP8wzGjhG6SPo9AtU1cmJlMkz22jg7n/a1KHF Q==;
X-CSE-ConnectionGUID: vyQsvRmQRYu1nBCBTOWnfg==
X-CSE-MsgGUID: wjrzR6PJT9yXTFpzRq/80Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75361539"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="75361539"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:18:40 -0700
X-CSE-ConnectionGUID: AfsOnBSAR8GMZwSNZpe0VQ==
X-CSE-MsgGUID: z+kx3G4XRu+OgAUJR/CAlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="220197344"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:18:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:18:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 01:18:39 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.56) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:18:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zx3RvYVLOcjyrI1YKifmtq0/bpIyKm4w0GAJFAt4DPTt3O6MpvLZkqbIet5smrEI7UDUBnouxB1/ZnQr+gX4CpLZASFOd5xXRF1OsycASGnjdvfBLEU+rzPNEj5YhutxUn551x5NLF74k5zyBLwi8OxzOArVu6vKf3FjVOb6d+rle14qDNyQH3j//rdCM6hLZTE+XpItYfgmkZAS+7CEGBQODwTVVqQ2Cfp45kFfwG/M+GclXjBRBbfhRS6Rg++JjRcZ70U20hbMzxBvHlOcse0Ehm4CANrFvJS3v7MquHfpDYzvuYEkp6541YisJgqSkPL4dLzyxg3MH15ugSl3GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9N0TgadhrMsugnqSgnqszuf1irg11BD2ldinJj+Zjjs=;
 b=G4GhFxOHpTKBJ7HG5EaxBRXqGPxcD2L8WyXJjSp0yfS9L45O5on1YDUoVu+Tyg5B0gX/7iVcPchb6ILjHlu2/u1m3v8Kx+VyrD42/gINTm7uCfIYIn+iGQ6D6Kmwr7W1rFH2e6xyAxenA0jGgmCufyanSnLPiUK1ELOJu7qjiOK+oVpUx4oaJp0mqYlPuQOEo0H/zjh4PKKcugur+ujhOibrUAvSJs0rUvzshKlQ7M5AG1AdjtG66Vr3w6mSTNbzue+kTFRnyikC9JFu6J2U04yLVw8JokK8hODhPVfvrn1qZ5McptabrHYtcKLiZk3j0UnF2N+EoQhNI7utGoZzJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA7PR11MB9594.namprd11.prod.outlook.com (2603:10b6:806:4cf::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 08:18:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 08:18:37 +0000
Message-ID: <b0e2b6bf-ffce-41d4-afaa-b5168d4e098d@intel.com>
Date: Wed, 25 Mar 2026 13:48:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/19] drm/i915/dp: Make provision for AS SDP version 1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-19-ankit.k.nautiyal@intel.com>
 <abQGT0gcL7SsDCh9@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abQGT0gcL7SsDCh9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA7PR11MB9594:EE_
X-MS-Office365-Filtering-Correlation-Id: bbd9f319-c3be-4c2e-2665-08de8a471d62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: k2WhwTU6JcPvAvtK8YN2b63dD/FRsJSSXGQuJMhYBJr2//4ZOtHvNI4oeblYNSL1pQb7WOZtEVYG4lTaN/KAzOwios2x9udA0CEZGvxHJM86ik/ThLIxU4Z0/L1iyJOzszTbq9LvrGdgR6E+VYj385Lyh0Gt9FqYY9rvT3LPU3g3gjCiyVP6F4nVshf3aJ3td9d62egTsiVqa4MLI0MMfcs94mcV3UyOn7QTQidhQf92cmkxILM8vah4x9SmnZqtPJ+gipZDF4lDaqxiVLwuYe40saBomJVhtJWNQ19kAIR7qbi/rHUYksawf/l46PGsQv5fJs45rYhR0N9AO/Jnn2pssYN9dznxFu/1UFBSVab8a2/fpfE98BPqN5ecUkmHk+bl3IG+OQDiOgls5A4Xq7OxKl5dK3p1HsThBpvjl/IKK8CHQ8b+AWr1e3nM0AXp7DgatjtfnY2xgT3UyYkZeT4TMVd4e1qPyUTAeQED0ZGXZE8y2uTZ/j8xHPve70XdeGWsz+Xabwtity3Oc7cWhKnoNM0VjY5rqX3VdBHOdg3eI3GdpINoJaHOZVjYmo+/x1YvIo0CEKvXadQof/qzn4YpClFC3UgfAMCnEcJd1JJtVSRI4eVCw6LSPECb3M4rXIE25hiTsB2LGZSoNeOEs58LeIUnZDXFNdRCU+mRJqEXA3g5eCGfn3/R5iaVI0O4HmK1laNwwjRB1ZH5NvXTeQytt9NxduhmE6/U8LNvW2Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clYvaFk1UkFWYUVObkdDTlp6TUFOR2E1UXIzWndTbi8zeHp5TUU2NTh3dDVo?=
 =?utf-8?B?Ky8vS0k2VldaK2p0UnI2S1hUdE93amR1bmRUMnV1dmJnaS9wUTVjTXA5ZmNW?=
 =?utf-8?B?eTlmT3pmTUUxbUV0WERVNEZuVGtRdThlUVJpcTVXTjNHVlQ3M0NJb0JDeUZS?=
 =?utf-8?B?U0FDWFhSMzRNK1Y4WmFWWWROdTA3OVFpamVqeDdtM2NUeHFOMFlsZTZaK1V2?=
 =?utf-8?B?NFhaTVY5Q0ZxbDFUYjNaT0ZzTEVDN01zdngyWnRLY2Vsam05cGsxTDYyTEdo?=
 =?utf-8?B?OXZ0dFhXUjFINDBQaTYyL09BQnBENlFpV21tVk9mVVdOcldMdkxTRXJKZXZY?=
 =?utf-8?B?RUJwOFBwLzdOMDBuK2x6ckExdFFZcWZ5amFvMm5lM1R0WUNNVVVmT1VTOHV1?=
 =?utf-8?B?OEFvayt5VGVWQXJRVHdhaC94VTYwckxwVDFNL1NuaGZnUHpZQWNUVUgvNSt5?=
 =?utf-8?B?c0RnWjJpWTU2bDFaT2R2WkVXSFpBWjZhQk0rbzZVWmlvZElCdFRNcXVmUEp3?=
 =?utf-8?B?c08yTjRJMEdUOGd0ejNGclBycXFURFlidm5NeEFlNTR2Q3VLWEd0b3dGK0k5?=
 =?utf-8?B?ZXBCVkVzdFU3aE01Umg0eTgxRlhvWW1hSTV3U2tnTVRyNjV3L2o5UXRqTTZ4?=
 =?utf-8?B?Yzl6SnlHUEJ6QnFPc0I4TWhHTUg2VG93M3hReWVMZmNLTjQ0MGFsdEZrTGJ5?=
 =?utf-8?B?YUhCTTl2VDM2S1cwWCsya3U5aW96bTZRVHhBaHVCZlR3NHNjNUFMZWw3QnRx?=
 =?utf-8?B?Z21NUytzajRYeXZpdDNLc3dWTEdLUDRpMkFPKzd6cjc3OFI1WnZyUjVGUU1X?=
 =?utf-8?B?eFI5RUxpdktiMGZ2dzM3S3ZFb3VpZ2UyN0x3V3lTVVVIQ1VFeTcyVTBOK1Zl?=
 =?utf-8?B?eG1jUXA3WHJmUXBGdmhPQmdVc3Z0UWpNRS84UWZyTFV0V2diNU42Q3M3UkJN?=
 =?utf-8?B?c2Ird3ZWRFY5VVdkeWxqNXUrbk02V0xtKysxR29NdlJ4VktXTXJqQ042YU5y?=
 =?utf-8?B?aVZpWjhGQkZRbUxSLzRENEVqakova1p4YmFVUlAyS0xjKzl5RXJ4RDdteHIx?=
 =?utf-8?B?amhWc1pTK2s0UkhveXRuL0p3KytzYW5KcVN1MkRTMVpDWnVncFlSMlg5QlJI?=
 =?utf-8?B?UVQzRW15a3pvbkM3Rng2MkpPbUhhbnhqNHRKTnZOaElJMWpReEFoQVphbGpU?=
 =?utf-8?B?bmdUYVQxRHZTSWw2OWYvSnFpaW5IQWlZUTY0K1lsZG85UmdtS29kZmtZYWhw?=
 =?utf-8?B?SFhTdkdUWXpTKzA4a1lMTlpCcUtNQk5YTmlHdzRFYmNjRE56RDRYMXQ5QjhI?=
 =?utf-8?B?K1hwenVrN285SHhKbmF4THBqTzlzZWZoeHlpbUJaOFE1UU8vbDkyT2xtNTVT?=
 =?utf-8?B?Vkc1R3VnUG5LNXRvQ05XMXNXZEdPRHZBcWtkcVFGNkRHeTR0OHljRk4rdWlr?=
 =?utf-8?B?RFRNT0R6c2htb2oyVUtWM3hsSEpZaGFmTytaU202bnpSTU5mb2hXRTdMTkZX?=
 =?utf-8?B?RENXV1h2dndXUkNMNVZqVnRYdzRYNVc3SFUrVnM3Ryt4U1BwdVdkZlJZUXdR?=
 =?utf-8?B?OGdFcGxxdEZKei84ZGtNd0ZEejkrU1BTTno1LzhpZG9JczE3T3pwK0d4YTlM?=
 =?utf-8?B?SmwrSnU5WDBrVkNPak5YMHhEK1ZPd0dsblI2QWFGeDE0ejVvak1ILzZVRG1j?=
 =?utf-8?B?Y1Rrc0hKcHlRMnZDci9FeDE0OHNXVkUvaXpwV1F5V3ErWE1xczV4bmJPSkZB?=
 =?utf-8?B?dDhjSFA3Rmd3d3lMN3RYZHZJSnZHNG1QUFJZeG5Kamh5d1NKRHkveUlTVUhJ?=
 =?utf-8?B?LytNRGpqbWhQNWl2MkphUjlPQTA3Q3hZdCt0M0JZaGRjbzRMZzE0b3Z0eEth?=
 =?utf-8?B?NS9kODFjbnN4RnFjcW5tWXJvdk5wUzlaMzRqSVhFRy9BOGhmbjN2RFNBTlBa?=
 =?utf-8?B?WHpQSGdjY216TUZ5eng2ZFZwN05lMDZ2N1lvMWRSLytXdC9kR2RyMGJtMS9w?=
 =?utf-8?B?YmVhNi9IY1pHUzZvV0dxbjZ0SHJnNXdNTWRORUd6ZExYNHBmdU5RdDU0UDdD?=
 =?utf-8?B?S2VMZ3ZVK1c5QVR3NFI0bjk1NHdUTVo0U1BpVnNENFlkWTdsOWpzaUp5ODA4?=
 =?utf-8?B?K2JPR3A0RDh2MjhSZ1hwUndIOEdEL1BVUlBlT2ZEV0xRY25JVXFWMVMwekJN?=
 =?utf-8?B?UUpxWDBJVTVlY3dXN0k5UFZibU9QdUtMZy84czNtUFhOSlVsU1NTZEpuc0Y5?=
 =?utf-8?B?M0MrNkQ5b2pvcVBGTTJYK2EyMEJuaW5CTkFleHFHMnNtQjJ2cjVQOFVJaTJt?=
 =?utf-8?B?ZTVFazBURUJvcC9mOGtwa20xd3BOOHIxY0JTZ0lnaWJDbWhGQlozNHU1dEE2?=
 =?utf-8?Q?xiHP/6QgX/m8DQLo=3D?=
X-Exchange-RoutingPolicyChecked: m/dxbWO/cUvNijwzX7+vU8Yx1RVKAA6thZ6cCMDQX+5SGFsnB2J9EHBpJXZPg08FS4AeV/yFnLl1nWCUXK/rvnHpWX/Nf+YHE3Pcouva0bcWHJuxzNwyuDPsF4cnZo6QUjdR61phyuOmAfde2Q8K7TW81YmvRTIQ+5hNsg2jDIe/AWav/kT7Ppvy3CHUPCejnuHCHucOm6D+B9HK6rmabHbVa4YE17+aZlGbkh0QaCYAPlPWaM4dhfJpsQR2ENlKXUOduIYl9IZe5aBgLwwRsNLOAWSVTdXX5aTN94GQKlv5AjGVpza5+Kw4DTlluPE8Nqt5SIkU3/dBegU+ciTPOw==
X-MS-Exchange-CrossTenant-Network-Message-Id: bbd9f319-c3be-4c2e-2665-08de8a471d62
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 08:18:37.6833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bt4lxCD3xLv/cfeWzwzvL2A5pZcty+Q21yLs4qMHrsK8ttUvHR0sXZVQYsqxKphltglZUpo63Nfy6w9WPozf2jW6hoeB4YosQyLmZHRM/ok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA7PR11MB9594
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 97D94321514
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:12 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:06:10PM +0530, Ankit Nautiyal wrote:
>> Currently we are setting AS SDP version to 2 without checking if the sink
>> supports it or whether we need to send version 1.
>>
>> For PR with Link ON, the AS SDP version V1 is used.
>> When using AS SDP Version 1, AS SDP payload and parity bytes
>> are all set to zeroes.
>>
>> Add a helper to compute the AS SDP version based on sink support and
>> feature requirement.
>>
>> If AS SDP V2 is supported we use V2, unless Panel Replay with Link On is
>> enabled, for which we use V1.
>> If AS SDP V1 is not supported, we always send V1, without the payload.
>>
>> Bspec: 75639
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++++++-
>>   1 file changed, 23 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4d0a7695be5a..6b45894e40e0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5109,6 +5109,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>>   	sdp->sdp_header.HB2 = as_sdp->revision;
>>   	sdp->sdp_header.HB3 = as_sdp->length;
>>   
>> +	/* No Payload Data bytes for Version 1 */
>> +	if (as_sdp->revision == 0x1)
>> +		return length;
>> +
>>   	/* Fill AS (Adaptive Sync) SDP Payload */
>>   	sdp->db[0] = as_sdp->mode;
>>   	sdp->db[1] = as_sdp->vtotal & 0xFF;
>> @@ -7330,6 +7334,19 @@ void intel_dp_mst_resume(struct intel_display *display)
>>   	}
>>   }
>>   
>> +static bool intel_dp_get_as_sdp_revision(struct intel_dp *intel_dp,
>> +					 struct intel_crtc_state *crtc_state)
>> +{
>> +	if (crtc_state->has_panel_replay &&
>> +	    !intel_alpm_is_alpm_aux_less(intel_dp, crtc_state))
>> +		return 1;
> The bogus v1 in PR link ON requirement got nuked from bspec.


Thanks for the clarification. With the updated bspec, this is no longer 
needed. I’ll drop the patch.

Apologies for the late reply and thanks for the reviews and suggestions.


Regards,

Ankit


>
>> +
>> +	if (intel_dp->as_sdp_v2_supported)
>> +		return 2;
>> +
>> +	return 1;
>> +}
>> +
>>   static
>>   void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>>   					 struct intel_crtc_state *crtc_state)
>> @@ -7345,7 +7362,12 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>>   	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>>   	as_sdp->length = 0x9;
>>   	as_sdp->duration_incr_ms = 0;
>> -	as_sdp->revision = 0x2;
>> +	as_sdp->revision = intel_dp_get_as_sdp_revision(intel_dp, crtc_state);
>> +
>> +	/* No payload data bytes for Version 1 */
>> +	if (as_sdp->revision == 1)
>> +		return;
>> +
>>   	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>>   
>>   	if (crtc_state->cmrr.enable) {
>> -- 
>> 2.45.2
