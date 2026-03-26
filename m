Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPbHJjb7xGny5QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 10:24:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5E03323DC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 10:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DE110E22E;
	Thu, 26 Mar 2026 09:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bjP/ZdjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A4110E22E;
 Thu, 26 Mar 2026 09:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774517042; x=1806053042;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ofS//b9WmTebZhAFijz7STY6oXhHxfVAR01JsCa09mg=;
 b=bjP/ZdjKyn/w/VgoNUSk9Yu7gQMmAXwJ+gdhIczM+Tm7ygopP1BRmaIL
 4XqS0zyy+mKbSxYAJmvREPv0Cee/GHU/8XnT7fcp8qI3EuFyCyNuFoMOR
 t+Ld/i4Hej6DIPl1yH1gbpbO9I8v8AmPQomfGp1Ea7zQaqawflnQB4eT0
 wvQCdHE5AD4MssgD9LdnqFO1nTzqCGpkzG4YYLQ70QlxONvTZYi/skDgn
 d1LHXOYPE1+N/m9uOIcROTvGUk8TbfMf5oYP+0CT/ZTomx+O4T1LP6m9R
 kAwGzx4slRvPJgpWfU+k+wAOyau8bDQazm4IpprWY0JdWPph3oNsnBioz w==;
X-CSE-ConnectionGUID: 4kPM2tLMQ2u/pmFsRFX9fQ==
X-CSE-MsgGUID: wDF1f+mQTcKtJcFveH+mUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="101022680"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="101022680"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 02:23:56 -0700
X-CSE-ConnectionGUID: OtCqoXW9SnWvKSuIWWHcNA==
X-CSE-MsgGUID: fVxKQT/HTMm59bX1KsVdYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224012045"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 02:23:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 02:23:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 02:23:55 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 02:23:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=axPlCBkEeP8we0Omx8MytFqUyIIKBZbsqEA90lrhTYZ1EPzxXoWI+2ydr36ENqFMv9FV5XEJxahZ4pImu3YcnggmY6bfkW2fX9Dca4UK6bOaxAHnElEoGYlNeRWJT7DfJWzSit/r48f0ItEmnS73bl+B5Vek+fWRZBiD7xnXfCHRcQSirxA3tBC98IW2zqRfrYyhCj7LkfIGZirqVjUqUcXhl6EWpyKrHQujxbtEyGmj4OWUIiSxTI07WTy4ZTWgDzgaxyvJqYegwC6FEf//HabZ+tGUgU54o4z20hvf4Nt7cx6qduPIISFce7rhxG2r7dyfWvqmdhOjKPF5RA2ORA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sujiaquIhmo7XDert2hFCmkFx2ZXcvNvjQNMeLz3gqI=;
 b=IILLdOkw0dChwb6KffYi+GJvsfe3U41uPdmrBP2sxENNT482Zeh/J/hYiDoO8gz1Siv8MtwL603GJJWBWUUiXCtLW7cXWvQwvZyIr9UfQnyxVirgJey/J4qJlhUSnDW1Aqs4CLv+6yIaHi+YLP3mgkBJSxpThbWokL5hc75CuMDx4M6Qjy8VnOyeHd2zio7/7x7XMBNsRTEbV2fkserMmJZNmO46N4n1eQG4RPCgLmlYO+bNgL8ro8h5XamE+ZBS9y6ejBUEyiLVReCeN+R0Lwir2HIWPU8N27Eyu1QLHU/KdhHO7cXy+8kzSIZt9hlzPo1gK3QOY3OgyTI+YHMs4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ1PR11MB6132.namprd11.prod.outlook.com (2603:10b6:a03:45d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 09:23:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Thu, 26 Mar 2026
 09:23:52 +0000
Message-ID: <a3f1e02e-349a-4a3f-9bc5-08c14a43922c@intel.com>
Date: Thu, 26 Mar 2026 14:53:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/19] drm/i915/display: Add helper for AS SDP
 transmission time selection
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-14-ankit.k.nautiyal@intel.com>
 <abQE2snfAjPn0st5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abQE2snfAjPn0st5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0220.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ1PR11MB6132:EE_
X-MS-Office365-Filtering-Correlation-Id: a28f2ab5-25c3-4103-608f-08de8b1964c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: PS670WA4ZFUokol+3dveY+wHShiB4Va1j6nS4VNXeYspe33CKo6qaYAKxQx56nH0T42XlcU4uWuqBQGedLnudrK5eDcGsJb2RhnGerRDEln7Sn9laFg3QBMsUCi5IkFY1XvQxT+OLa3Rx7cFJp4jXcyCg1riWDZ8Mm4s6mPk8Rh1yDgqkCEm8bNW1NYc+u7zsIn/w3BnCVzqKQTB7XjfoeorwCTAYGFrLOg12Ms0pcCrJtN3IIz0Dx2ThN6nJ08h6ov/s1czlx/yfT8JaDtIrAcNXpD80rGv0s/MHYf/SN8B2ZeAvSbBBc5Ltw85zLVaTSaTRlI9J9w/1bFyW9CFUad8dcoqrVdY3Id9kzkc1vjxSUg8zItEzXR6UTe/DZFMv01qWjgQiPxHHVnEMeJG7zaK0hMBDKGMFs0ZdFChQGxciKjzsAfSpKoDFUAZScRBePOY3HRel3+wQiqMCaRPzPz6laI8cVx8OF1d4AtWUPimSaOnD5bmBrVt7j1pJC4wIZ29O6kkW/lj4m/NgWFUBHhqxNI7VxAGwxv9b+ZAwF80MR9MqlXjgAFNyxdAkw03cAgtj62f3loCZMlZPLFpTgWiVLNl7ybE6PGVc6tzDEjtOK8ERde66KS98lRWMaDXyng8xkCHkmHxWLFfhe6FUfnXnBwlRtxXYqrXduLt+2ygqoQIo3xBXTIjoi0CZJ9o19WB833hGTFpshID4pLc5QVVun75nrFB/XeIFKU45v4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTBxMG9aVnF3aE8rYnd4aGNrRnN3MTJnWGtIcExSSjhGYzIvWkZyU1QxNWxE?=
 =?utf-8?B?LzU3NDF2bE0wUE5OVjhoczFmSTN2M0t2Z0NmcERRcUJkRlo4QmJzWHpOaEtl?=
 =?utf-8?B?QTRyME9JOSs4SVhVTVhTdWtpZDJhRTRyMUN5NUtIQVAva1ZmeitJekwvS2dH?=
 =?utf-8?B?L2trWXoxTmhIYkxMR3M5ZWsvaURiYy8xQ1IrNW5mbFl3SU5xZlBUYU9aclNR?=
 =?utf-8?B?ZGJRWHZDUzVqV1RERXdSbDNZclE2c2k5VjBEcVJ2enQ3T0tuNGFDTGlSK3JE?=
 =?utf-8?B?d0tHQU1YcG5hdnh6Wk9ULzlGT2ZpWXRwekxkQ1dUcXUvSmUwbk1YQnRFU2s1?=
 =?utf-8?B?dDNwZ1AxZ3VVWlVrbFEzR2JMbndIcm1MWUc3SGgwRERTNWZCcTRKVmhVRXRT?=
 =?utf-8?B?YUNadHQ1c0ZuaWNzVTNnT3Z5bVZPMFJzdERrUlRYOUd3S2x5K2MwdGZMcklX?=
 =?utf-8?B?NDdIOVhYRGVNZ21qdzZGK3V0cnNpN1VHWEk1NmtqM0JHcko1NFRGUDBTU3pp?=
 =?utf-8?B?K2lZVFJWVTNXMFRXcTgzWHBUNzl0TjFDQXZJZEpTaUlwMWZsQ0c1dWtHaGZ4?=
 =?utf-8?B?N2FGTk8rYUQyQ2ozcFJBeTNrUkM2MytVdzRaMGxMRXd2b3hVVWhEWWkvTFV0?=
 =?utf-8?B?cVpNbEYvc0hHdzFtWmJRSEVhMUxaaXY0cEt6eWtSdEgxdmU1cFFhSDFscG5h?=
 =?utf-8?B?bnduZkhHUlBKVlovOEdQSlJYOGxmN0d2WTBKcHZkd3FBWGxWMCtzRDhRcExB?=
 =?utf-8?B?MzZvK2ZxT2JyQXBBVzhLdVRuRFIxVncyRzZhWmMwUS9BTnBhb3dXT0lMMENl?=
 =?utf-8?B?UFlQRXppUllpZWJPdGx4WVhnbkhqUUNCQU9uWEVMSnV2alYrcDhJRDZQYlA3?=
 =?utf-8?B?bGV0R0NVRUVrc2VlTExYbyt1WWlKaFJKUDhkOUhKaUZwQ3dzNC90OC9DTCtz?=
 =?utf-8?B?M3ZXYVlCNEEveXRwSnJSOEhGR0hUNWpEWlpBRkJtODBqV3FhakNlOHBjQ1BM?=
 =?utf-8?B?eGhHbUF0bnd4dDlaYlJjQ0FpQjN0NS9WZkNIaXZkazdSQ3lFbzVuNVlhVGdz?=
 =?utf-8?B?d2p0alZOTGo5MVVTUTdCQTZVNXI0TXU4dWZkVmVER1k1UGl6a2VxbE0yMXN3?=
 =?utf-8?B?b1BlUjMrQVBGVWgyeTlxVEJDYkE1Wm00ZjdRWXJXR1JkTFdwdVRUTW5vUVEy?=
 =?utf-8?B?aVdvZHkwU1FKVXZ2Nk0yaDYyYlI1bXdPbHRhTDNsbWtiZlN0YXBiTlNELzVh?=
 =?utf-8?B?elZMTkNRVmI5M1FsbkFsZ0hHanJRbkVJSzIxRjhFbTdlUUFIQm1KbjdIQ0R0?=
 =?utf-8?B?V2RyUDlVT3hMQ1FXaHY3SEZWd2hSdUtlaDU4TldWR2NMODBLOGFsdE1CM29T?=
 =?utf-8?B?Z0R6a3pjMzRWOGxhOU4rQUZLZTAvb2hneExLelM2QURzR0JJZWU3ZERJRUZr?=
 =?utf-8?B?QjFycTRsZGFNenlYeHRIbmVESE1vUE03aVhqQ2FSdWJ1ZVlkYm5SbnQ1RFlW?=
 =?utf-8?B?cDJkQ25zR0VPOXNtaVVmQkF2YXJnME5RTSswL0hxQTBKZUtTaXd6RlRMaXRr?=
 =?utf-8?B?S0FUZFcrT3BPVDNXSEsrN0ZFTWhnMER0ZUp4RjU3Mjg5RlJqTk1OQjYwalY0?=
 =?utf-8?B?RDQyMVU5Mm9oazZXWkFtTlQrSUxaclIxZDh5OGV2czl5eVB4b0s3Y2ZGRi9F?=
 =?utf-8?B?V094c1FLUi9XN1UrVUR4bjlPaUZXQlhaWVgwV0tFOUtrOEV4ME9hU0cxeWo2?=
 =?utf-8?B?OE56VGVHaU5iaC9rZHJmUjBTaU5CNThRVmRjeUZyR0NObEFiV1drY3NWTTRr?=
 =?utf-8?B?V1NKOGhyUXRwUEg3TFBaR1RDWXNsTnBLYk85dXRhZngxWWcyNUpJSFRFUERM?=
 =?utf-8?B?dCtsUEJESzE0b2I0Sy9iZ1phQktaMUN5MUtMWFVSRUFwekxpSzI4d1pOZWZB?=
 =?utf-8?B?QWdHVUR3cFBYRXdFTStJZ1Y0OWUvNVRlcGpmMjcxRW5qcmpzOGpSZHppek5x?=
 =?utf-8?B?aVdhdjdmT01JWlVseU90d2lTS3J4YVZTUDhCTlk0VElRQWZUMmV0TXNrRmNa?=
 =?utf-8?B?Qkh0NWVsZUpZRThmdldYVG1ER0ZUOHVGL2IzV2c1QjZXSFh5QVBGYTFLZ1Nl?=
 =?utf-8?B?QzhoRlBUaldTYzNnNlNLd242MERFYjJEYlhvam1HRlpmMkNyMWpFUmVnTGRL?=
 =?utf-8?B?Wk9IeU1nTVZZaFdsT1JaM0VYRjN0YUFKMFFnQmo3WUlPYjZxTVlGSGpMV2pS?=
 =?utf-8?B?MkZMU3EwWjNOMnVEcG5QOGNuZk5BZkdRNjFCdDFDTkllMzl2NzhHeVdXZDlW?=
 =?utf-8?B?SHpXZGxIV01OaUdWOW81OTd4aStnc01OSjZ3UFZpVkxyNnZMUzUwcmpKMjk0?=
 =?utf-8?Q?j4FIPboPTLjK+Y2A=3D?=
X-Exchange-RoutingPolicyChecked: oO/gQ4oOvG2g3gC6UVeMiReIIbuoZQb2D6GlMuC7Mrt5xu8s9gKJyycWU428j/tRmDqzklwpK5h42yFnz5YCQlwWI/nlACSAkR6GQaAPxemN5iBiYjtrGSvCn5ZmK0o2TqIXV4SYdnPiKNHnDWRrVLA+E04w6t+LvMvrYV5juCNkkxJ2JqpzHO0VOyCstlL+1bscPfJqp6qfk6k3MDGDBYgc3dN73qvXUvyUZtHYUrxyltKshirSg6Vz3reGzSBVXOgqlr8epuWpUOhIY138ozJ6RjQinQrkI+BMXTzHUnBrxUfDt1qpIPIm44h46P/46Iswe/lt0oK8FdlnpBdKrQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a28f2ab5-25c3-4103-608f-08de8b1964c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 09:23:52.0032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4v1jd6VmEk+Tz9tqVl2L3jxyTDI1IkVAgvSVImUwQa8PQkUWw2NQYpbXUCT9wWxH6wsPdruT2RLM3Nu2XB6UaWXH2FH66D9HdCMzWaj1DSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6132
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
X-Rspamd-Queue-Id: BC5E03323DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:06 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:06:05PM +0530, Ankit Nautiyal wrote:
>> AS SDP may be transmitted at T1 or T2 depending on Panel Replay and
>> Adaptive Sync SDP configuration as per DP 2.1. Current we are using
>> T1 only, but future PR/AS SDP modes/features may require T2 or dynamic
>> selection.
>>
>> Introduce a helper to return the appropriate AS SDP transmission time so
>> that a single value is consistently used for programming PR_ALPM.
>> For now this returns T1.
>>
>> v2: Avoid adding new member to crtc_state; use a helper. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 20 +++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c   |  9 +++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h   |  2 ++
>>   3 files changed, 30 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index a7350ce8e716..0a6da3f926d3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -11,6 +11,7 @@
>>   #include "intel_crtc.h"
>>   #include "intel_de.h"
>>   #include "intel_display_types.h"
>> +#include "intel_display_utils.h"
>>   #include "intel_dp.h"
>>   #include "intel_dp_aux.h"
>>   #include "intel_psr.h"
>> @@ -359,6 +360,23 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>>   	crtc_state->has_lobf = true;
>>   }
>>   
>> +static int get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)
> The type should be u32 since it returns a (partial) register value.
>
>> +{
>> +	int as_sdp_setup_time = intel_dp_as_sdp_transmission_time();
>> +
>> +	switch (as_sdp_setup_time) {
>> +	case DP_PR_AS_SDP_SETUP_TIME_T1:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +	case DP_PR_AS_SDP_SETUP_TIME_DYNAMIC:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2;
>> +	case DP_PR_AS_SDP_SETUP_TIME_T2:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2;
>> +	default:
>> +		MISSING_CASE(as_sdp_setup_time);
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +	}
>> +}
>> +
>>   static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			       const struct intel_crtc_state *crtc_state)
>>   {
>> @@ -382,7 +400,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
>>   
>>   		if (intel_dp->as_sdp_supported) {
>> -			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +			u32 pr_alpm_ctl = get_pr_alpm_as_sdp_transmission_time(crtc_state);
>>   
>>   			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>>   				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index e6148e7f0ebc..74a8af3cf18c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7439,3 +7439,12 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   
>>   	return true;
>>   }
>> +
>> +int intel_dp_as_sdp_transmission_time(void)
>> +{
>> +	/*
>> +	 * For now we use T1 as the transmission time.
>> +	 * This can be later changed as per requirements.
>> +	 */
> IIRC Bspec actually says we must use T1.


I am a bit confused. As per spec 68920:

"When Panel Replay is inactive (this includes entry and exit frames), 
then the Source will always send the AS SDP on T1.

When Panel Replay is active, then the position of the packet may change 
depending on the V. Total mode and whether the target refresh rate (TRR) 
has been reached or not.

As per the table, T2 is needed for Fixed Vtotal mode and a case of Fixed 
average Vtotal (TRR reached)."

However the above is coming from the DP spec.

Later the spec mentions :

The position of the AS SDPs must be kept at T1 if Software plans on 
doing refresh rate changes while DC6v is enabled

PR_ALPM_CTL[ Adaptive Sync SDP Position ] = 01b (T1 Always)

DPCD 0011Ah[7:6] = 00b


So I guess we can just go with T1 for now?


Regards,

Ankit

>
>> +	return DP_PR_AS_SDP_SETUP_TIME_T1;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 2849b9ecdc71..2e4609d9d05c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>   		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>>   
>> +int intel_dp_as_sdp_transmission_time(void);
>> +
>>   #endif /* __INTEL_DP_H__ */
>> -- 
>> 2.45.2
