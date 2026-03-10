Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOHDH9mkr2k8bQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 05:58:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B7E245546
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 05:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA4410E64A;
	Tue, 10 Mar 2026 04:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EuN6E+fW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5DA10E648;
 Tue, 10 Mar 2026 04:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773118677; x=1804654677;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Woo1xvfG/ofP7/hAhlc8JX30RNiEqTXcHp4ZcbR2c2U=;
 b=EuN6E+fW6Z3yThn4AzYQMqpFY9yu00L2hQxjNiynSOOx409cy7dckLYB
 hD00qAVMXVUlIBe6RZHwXuPrbi3FAUh2F9N4HSUrFkE+LkKMCerHgnTaP
 N9dq/a38erMlqTCe8pgv7U/LNSB2v9aBQQMdefuilwZV+6DyutnMKFdUw
 S3G1n0SXHecTtpw9P523QaxhPDmU2G1F08yGwzIBGBrWcVZrdwKtm9oPh
 y4+F9g/LVV4USzODV33d3GsplwXHOTcwXYSHu5rRJhx16HqTUV0w1Ykxx
 gW+4UVY0aUKNODQbiwwrKtbl+1qz12uyylJbrHk320ePgbY4VzHH+WKyB g==;
X-CSE-ConnectionGUID: pUkyDRwpTsWIodlGRny4oA==
X-CSE-MsgGUID: nLnoTgpSRwSW/VEMbGG5Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73354651"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="73354651"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 21:57:57 -0700
X-CSE-ConnectionGUID: TrCGnnOnQeSLVl6KJdBEtQ==
X-CSE-MsgGUID: cErpjVUQTcCf9d0qKxUSSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="224667882"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 21:57:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:57:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 21:57:55 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:57:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBSwrzNwn8glKT5mcFfVssfqGCqxFcmSyEMLGSsoov5W2kaA8w5/ywvVP7tnIHcdYQb9l9m59HjoyevzZ5wFUm3zEgI3UwtsqylPWfgiTMjfS1Hq/sTqOrJaSpR37ru7ad0nqnQp4klRof2rMnuYElpu0vWhvLwTXKG8vigWYKuUPxGByQUsW3EYzVfoSgUoK6qFTL0MNAR3oDZM9G/3FnYtAc9ON4j2UsZQlsFmrHamZsHjZBiitvu73D9Mcjd3TlerluQPOfXkZ2pQ7F7n71z9k+c5jmb224RJ6OnTPIaavg9GXHuGQVlZEeQIpozEL10rAalO/krX4LHksZnbZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yc6N1TjFIm1REYUO5VS3Ep5ReXq7U6El7/GRqxsDGEM=;
 b=OcgJQHw6nESHXsTe71gaJesU7xNcDOGuJC6UmNK5pEaERwshdQrLY376grzZtBg8nmCBMSKhC6hc8LqlJ6pElbiZHL4yKro/yc6Dxd4pVB8UPpoKB+HRdQ+AsvFl00E0iUybRV7TFOk//EtLRhg6sw6rNYjxJvlJxHqCzMPLaOG0Nj1l6n9ASiBtxM2RkBJ+yqATttDH560x+vXFIr06p0WuWwQzqGIMll64h+yDwRq1Lz9V7vMottEDU/RMU9hr3Zzpf/ZSX7HN4UhrMVznJluACNqBZxWlZ+56Z47YuyNcmrMrSmAdeEeNXDQrL3vqlWbbfW+pq5pFHrBEfiFWZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6542.namprd11.prod.outlook.com (2603:10b6:8:d2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 04:57:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 04:57:52 +0000
Message-ID: <b136ec6e-e427-4d60-8e99-f0b610acecbc@intel.com>
Date: Tue, 10 Mar 2026 10:27:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/dp: Add helper for AS SDP TL and fix
 documentation
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <arun.r.murthy@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-4-ankit.k.nautiyal@intel.com>
 <aarCQYHTCCEKtB2R@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aarCQYHTCCEKtB2R@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0088.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6542:EE_
X-MS-Office365-Filtering-Correlation-Id: 935bb876-d5c3-4a23-9b58-08de7e619585
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: udABPQuKOgWJtWXh/HZoZCtSk/OroQrsEdpG6yQyV0fmaU8dnxzMKKuhrHcLPqNxax/1zfKXEAe4X78RlVd59A4funicYMdk1VPNk1Aq8ge0A8IcKwRUW/0NF4NB5ZuFJ/3+aFq/pXRdS3quGLX/V4q/b7gjhoj93rloCVnFu0GHrA/a0kC9WbxTRtNLPfK74awT3zvJ6WEOEvmfF8WW1qlmXlGDVoHCsGs9PcsnTje62pVrmXdaSJSnJNF5eQnmbGvpL9jk3w6fFrJX/k7+OtMvFThZ14ZPwDTeAxCimxmpXsvzmXxUPl8M4fCFaAHHR2etH7NILHzBg5GWyzOlQz4uTd9wg/qcR9aaeHt37u7zlKG8nWPJRoF4qnmDaYnsoFAjebAP3a5Mq5SmBcu9JxucvO+FARlrhl/kE16b1fFji8lWWzfZT3yFjBOe2LLpNn6fqevv1Wq/JxLjIpS/JuEbMadIcp1S60x1H57apW262LmXOMT8iD5WAeUHHbhG6LVF5H/yDV6TzC3AXYUh+mr3t4Htwn3favp2yJnAyFZXk3DzTHqPAFVBAbS5L7UMGHnMtxs5oxKVsyaXWy4vGfXb5i+EH9D+Gj/8TeAByKPZay7BYwi6XdjCuDL83ZzDt1t/F6TXCx9FlO7c6nvsx3amfwTHNQa1D5gcuPzKplNwZnrowNfQnbH0ZHeTSB5p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTVEdkNldmQ3bHlOQ2ZIRzMvc3lJaitjVFB4Tlg1YjJnME5kcVJYTUozTVda?=
 =?utf-8?B?TmlrTmtlbW1sbjJqZnFOY1BVWEZMc3ZBSHFnYkdBcUowR0h1TW1KVVp3cmhJ?=
 =?utf-8?B?UCtLejlvNTlSa3dmd2hlc0I0OVFsTWlyb3BWTkMvMGFIWTFVNXo0S1A4aDdW?=
 =?utf-8?B?R3gzVzhIMDY1bkcxQVFnU0k0c3NEMDJ5SGVJa0pFS2JjUFJOM2pFblVNWDFn?=
 =?utf-8?B?TnFoamNLbzJQbUYvR3JXQnNQLzZxTFE5Smh0dXFWVUcxRmJERnpyRlJkNGgy?=
 =?utf-8?B?cUFwRDNLc2gyWVdjQTU2dEZpZjVWOG02dndMVmRjdGpEOGVTanNQWUhYNGNS?=
 =?utf-8?B?RHNxZ3VMQzdIVElvTG9wcXlWWGF1MU1PMUVDYXAvREtQb0g4M3N1VEx1bTNj?=
 =?utf-8?B?QzVlUVY0OWw5dG4rUjRJdmVwZENtejM5Q1hSWEkyaFk4Nk9TaHp3N0Fqdzcy?=
 =?utf-8?B?NW5NQmhMazZIWkY1cGxwY0twcDYwNXNHbFRtT1lFWFg2SktGMksvdTRWdnZ3?=
 =?utf-8?B?SzRxa3pNQ2pxdGlnMXJuN2lLMHBwU01vaEZuaUI5Q0JOYVRZb2NUellxZnh6?=
 =?utf-8?B?cDZpSWdSU3FwSy9FZXZqZ0hmcDJ6cUp5dmt6ZGdwNmUzK1BKYVY3dE9hbXd2?=
 =?utf-8?B?L05PenpSZG1zcGdmVG1Dc2IrRUladmRaV0JTTmN0MjE2RGNOK1VTYUd3S3Vt?=
 =?utf-8?B?S050TVUySmUzbXVTYUhPWHgxTEdEYXE2TmphNHRKSE1FRGx0b2J0Q3h5dGhC?=
 =?utf-8?B?Rjc1Y05yeFZHZXBlRDNDVXEyOHdsYmxQWVBqWVZxYkNBczhXdGh2N3Q0UkNn?=
 =?utf-8?B?R0JZbWl3dUs1eE50anZ1VlFDejZoV1hnY1Urd1o4aHZoK01yOVcxR3lMaCsy?=
 =?utf-8?B?MmUwYU4zL1VRUmc4clBRZW93S0FURHIxZWpmUkFmbHQrenNOVUhpeCtZY2lm?=
 =?utf-8?B?SkhlZmJtRmRYcGNIS2ZFR2ZqTWoyZmg3M0k0dHVUU2xJYzFqcWYzdUJRNnE5?=
 =?utf-8?B?WnMydnJJZTQyUi9URllVM1ErNTNqcXpwWHlYNFBTV0xNQW1BbElleGJENWkz?=
 =?utf-8?B?c1FoK1B5N0h2QkpBY0hMZTNLQ3RmemEyUElrOG5Pb3YrbFIzNys1N2dweW5U?=
 =?utf-8?B?NTJNZ1NFSXF1aTh3TU1SN3d4ci92dS90dGdYaUNCdHp6VnlYNmFnNXVXYnoz?=
 =?utf-8?B?am5idnhwRGF1dlFnZU4rWVNDT3UzVGx0ZlFYb0hjRlFaVGJiclJ0cXgrOEpu?=
 =?utf-8?B?M3BGZFM4SU94SVhqQkM4Um5YM0xvYitCVEVlU0RFdk1NdnJjZzlzVjUxdGll?=
 =?utf-8?B?OVhQSFpMR2F3QXdibUFjR2NlVllNUzJocm5GMHVZMmQxaWtyYkxIZ3NlN1pt?=
 =?utf-8?B?cUF2NGVmRXh1dnNidlJZakovbTFVNHFGR3gyTTFrNmFrREhoRFdnNTIwUE5T?=
 =?utf-8?B?R1c4SFZETTV3dVI0ZnNjTmwxWWJMMEJoRlJacStmZldpd3hxZmo0WTZ0a2pi?=
 =?utf-8?B?K3NxdGRldlNnVE96eFRhc0puU1NoTWw3TzBXNkNCUWkwT21NYjRjcmlkM3lr?=
 =?utf-8?B?RWEzQmh0aVB1V05qS1hzTndPRUVKK1dJaWd0MkNmRWJYTUJtOHczb3N0T1RM?=
 =?utf-8?B?d1dvSStWa2NIdDZBdHoydTRuWlJoM3Z4dTR4SEZFM25TU0k5Ti91MldXUlBP?=
 =?utf-8?B?ZUJ1aUpBTlNnZDVOVVBuYVZSSFR2VVRDbFVpMUY4UVR1ZGs2Tll1eUNQYnY5?=
 =?utf-8?B?QWRzb0xtQ3hySEdncWozODlwMm4xMGlwYUVqVFhQT29EWnBOWVQzZ0o2YmVX?=
 =?utf-8?B?V2MzTjlEMmFhSnBUYlRDMnQ5M3p4dXQyWUNPSU9PanFwMEMrWS9HbW1vMXp6?=
 =?utf-8?B?eGg0MFM2MjFYcmpHbDBNSndjd3VnSHlTZVpkaVVpSWU5WDNOVWJHamZQNC9O?=
 =?utf-8?B?bzYxK0xTcDVYSmJpNnhvN2x6OE9pZ0dRRzdVcEVTOU9kWnd4dWo4TnUvdEpi?=
 =?utf-8?B?VGlnMm43WjErQkpJbDNOVGZvRkhUVzF3TlhtOHpKT3F4MEdRM0pxOS80OERi?=
 =?utf-8?B?TmxpU1JiWTV6OENRMlBscDFNaWVndXV6OVlMUWUrc1hrTElvREdhTVVhbkFw?=
 =?utf-8?B?aDRNTU5KMjB4c1NHWnArNkNNMlV0TTVuR2R0NWJEWms2V1VXMVlsdGhUZmtt?=
 =?utf-8?B?eGhWV3Z4dXdCVEJFVktDU0tlK1NlR0JuNitMYUJSMjR5bHdpRGVXYm5SeUFT?=
 =?utf-8?B?NUZXb2JtSlVNM1NzS2JtNjFwMTV1UHMzaUQvRFR5ZGNCRUNkcThQVnRLOFpC?=
 =?utf-8?B?WVJLUzhQcnZsRk5zVUdzVDcraWhYc1NTQ0hZWlF3eEZ4MzNTdkNVcUhlZ0NH?=
 =?utf-8?Q?I5kQlOcpHNEmFnuw=3D?=
X-Exchange-RoutingPolicyChecked: V9HAA14HVaqgnMnQtV5ajBn9vTvn/cSllVsB/FJ5bGnnbb/f++g7Ik1e09IwjHcSudl2c3uOsR7YWXK+8GKIFXacJnBafqd+BUKmcG9sIjxschJTixH+c8zZEbOSZ3G1watTtWSIY1mWVc0W/WFq7I1ZfpqIHw8uHoqmSKowAjrHtuZdjaiPJCPfelvydFMd3pWQRC6OYAK/hqYC+zHK8IU2RXGsJRRK9ICmXfcCmKTjQEgqi4tW28u/qGQy6AcE+FGYWiajsJAf3mj07gmc/9LwnB34A7tDy3UQcq21PpelXxFsuNMPEEpPkwcx5/i5DxRR9I3Y+E9cWdWUHGrUNA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 935bb876-d5c3-4a23-9b58-08de7e619585
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 04:57:52.2016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aS+zBJ9p28YUgU7yYzYG497BJIU3hIuAerW+xtmOIDO5tkGnRIx2aeRd7a18l01yxZrZDBEIIWyp5/xHEAmVByM8QbHcBeb5PIw+xcGRtO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6542
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
X-Rspamd-Queue-Id: E3B7E245546
X-Rspamd-Server: lfdr
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
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,patchwork.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 3/6/2026 5:32 PM, Ville Syrjälä wrote:
> On Thu, Mar 05, 2026 at 09:31:16AM +0530, Ankit Nautiyal wrote:
>> Add a helper, intel_dp_emp_as_sdp_tl(), to compute the EMP_AS_SDP_TL
>> value used when programming the double‑buffering point and transmission
>> line for VRR packets.
>> Also improve the documentation: the AS SDP transmission line corresponds
>> to the T1 position, which maps to the start of the Vsync pulse.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c  | 9 +++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h  | 1 +
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
>>   3 files changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 86390553800d..9204a813639a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7288,6 +7288,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   	return true;
>>   }
>>   
>> +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>> +{
>> +	/*
>> +	 * EMP_AS_SDP_TL defines the T1 position : The default AS SDP position
>> +	 * that corresponds to the start of the Vsync pulse.
>> +	 */
>> +	return crtc_state->vrr.vsync_start;
>> +}
> Other parts of the code (eg. ALPM) still just directly use the
> adjusted_mode timings to calculate the same stuff. So this doesn't
> really seem to help us.
>
> Feels like all of our abstractions around this SDP transmission line
> stuff are way too low level, and thus the same information is
> calculated in different ways in different parts of the code. There
> should be a single place that defines the transmission line(s),
> and everyone should just consult that stuff (regardless of whether
> the platform uses implicit transmission lines, EMP_AS_SDP_TL, or
> the new stuff).

Yeah currently AS SDP itself is not used properly for different features.

In the series [1], I am trying to address that. Perhaps that will help 
making things better for the EMP_AS_SDP_TL. (I am yet to send the new 
version for this)

One more thing to note is that if AS SDP is sent,  EMP_AS_SDP_TL is the 
point where VSC SDP is also sent. I am not sure if we need to do 
something in existing code for it yet.


[1] https://patchwork.freedesktop.org/series/161977/


Regards,

Ankit

>
>> +
>>   void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 24df234a43d3..abb2fcdea352 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -237,6 +237,7 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>   		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>>   
>> +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
>>   void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 00ca76dbdd6c..2b4e4e55d008 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -642,12 +642,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   	 * double buffering point and transmission line for VRR packets for
>>   	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>>   	 * Since currently we support VRR only for DP/eDP, so this is programmed
>> -	 * to for Adaptive Sync SDP to Vsync start.
>> +	 * only for Adaptive Sync SDP.
>>   	 */
>>   	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>>   		intel_de_write(display,
>>   			       EMP_AS_SDP_TL(display, cpu_transcoder),
>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>> +			       EMP_AS_SDP_DB_TL(intel_dp_emp_as_sdp_tl(crtc_state)));
>>   }
>>   
>>   void
>> -- 
>> 2.45.2
