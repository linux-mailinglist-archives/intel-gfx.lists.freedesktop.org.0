Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zCshDuR5KmqTqQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 11:03:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B715670274
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 11:03:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aY2wn64L;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C7110ED9F;
	Thu, 11 Jun 2026 09:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7B610ED99;
 Thu, 11 Jun 2026 09:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781168608; x=1812704608;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rm8IugtSrak1g6yltS1Ut840gf6z1YIaTvtxG9vom+M=;
 b=aY2wn64LNjtOyt+i1tXke45GdCaHAhejKDzhdyHoY5FwyWbGVHSF2RWI
 P5N8ButnO4e1o9/lHJD2vFU8tmrnemNOgWZMqSZDCtpmmfBT5uhXioyoa
 WIE/sQmbkXXLZDZ7A5yO0PUOiRybGsoJ0EHY4vJq7ZHHsD9Q8oc8f1PRo
 Yn2GuxdiBskNLbuLRRp4oD/NahT0jrc0Ix6gEBK1HogppOGuXNdf1bhEI
 AJ2dOsIk568hlEXMP0aLGsq1BbSvf/VMVrvuV7sQWmEaffeLYkO/Cm8B7
 IKilBHldm/+MVFZW1WWlY3bMG836SxxR1AtfujydYUHkW26FxygFg9W01 Q==;
X-CSE-ConnectionGUID: /y0smZ2NQRCJrIW+5cd9uQ==
X-CSE-MsgGUID: z3VUm93LQ5yHNk2WOqn5nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93366259"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93366259"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 02:03:18 -0700
X-CSE-ConnectionGUID: SZcJ8FyXQA6U/EnyWSrVag==
X-CSE-MsgGUID: 0Ae522peS6ufufwYSkYnnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="246298567"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 02:03:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 02:03:17 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 02:03:17 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 02:03:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ozhOqujmDStjuKZhB1x+NFiUH6M+IsNecunJs3rxRyldG6oIs4W7xqSDggED6Vj1KJ6h4aQ2MHQvs6hhOZMAfumf9FOwgFfwxnPzOxIBZMlm4ZUsD393c9mQcR/mkeqB9FyfNbHE6hvxkogmFXk6yKVdn69plKEskaYQlCSiVq+V4ypB9YByOGX/4QgWaVEMW0XJuVT7MGWkyBUh0yyAq1M0O4NvWbhpeW6zBhDSXn2oS4jRllFfbn21Ip/qZ0miK0Px7Tgz75jQGQpc5bxdRS3ZAZVYgfZh1CP7uY4jNkTTY+5mDFiQkyRGK5+OaaclkmjlCs4ulpEzGjLBL4JvjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jfgsravMAHnLLvTHmT3o5BCIn9YlapVhZrSrfdEJSQw=;
 b=Dy7xix7q+ycvTLtP5EJZQi/i5k9F6wcQvKu4lawjBxECdvryVzJRDwD3mkwBPIJFaP3UxfHOljilq93luC67PgIZhCvqlcA8RSiAho12SntL6mspCtFwhIZsw9fH14KwF5SnFKe5ai421KU003Okh2kmi0I2JM+698pQ3XPvCsgGBbFHSKqRTswiStxFCdz+dHxenVli6dCugyGB7OKnDwNZoDgJQP3Phoa9YBMlT5TUWpx+4/m3Lbgb73GJsLIkWNCdNrmJTH4evsY5/bmFgOJAsVnBBEObV9SxqrLg2rpwSum+G1OO1/t7sjrT9ALc4LTkQJjMjjlOgqH56g+d4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6565.namprd11.prod.outlook.com (2603:10b6:806:250::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Thu, 11 Jun
 2026 09:03:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%3]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 09:03:12 +0000
Message-ID: <e4bbf7c4-778f-485c-90d8-0c3911e8e1c5@intel.com>
Date: Thu, 11 Jun 2026 14:33:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jerome Tollet <jerome.tollet@gmail.com>, Jerome Tollet
 <jtollet@cisco.com>, Arun R Murthy <arun.r.murthy@intel.com>
References: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6565:EE_
X-MS-Office365-Filtering-Correlation-Id: 66377664-191c-4071-29a7-08dec79843b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: WJ1ZdrXR9COe1e4oB8cksGLw7tEzrf8CXX/9gToJvxN+ZdWn9MIEpYFDPFNXh4wvLNwVmMKErGWQQV+gpfiFZBCNN/1JQ/NlaFVG+SIBqZfFaq6vpUt6C69SLWPZ46f4GeBQoJsbn/7fZ8gdLJDtEf0dovRhjaZCczurB66Set0MuTYfZI63Igi8qVc49N+sPaD+JJN4d6mQXKz58DineIqIagwADyg10XLFiO3ynJgPqrh31a7sHeHjDzzQ/FflDQ/ofM1L9rzWk5ErJ6Yo2Q0lRXhMidJJOFHkytsZarni2hWzLNA52bjNBssreu4nD2cjslyamayDiQp8b2QVrThq+SEWqa1Hfw5IBPySjg9iRiq9azKiiVsgu6r7Y1BdCnGGMHcDYebCgWC3Z38dqCdJ/6VzP08lOCMSXJ6Ma7forVyvZ5+ntL/WtdXfNhuRARCD021DF5gam9g+qfOYS15KFv+A34CLMgqvEAs8+05dHXt+LAazScVVyXWC96filMUgr26Z3Zc4+zdnNOlp2kKynEvD9+ejBiXj06qg07ooYLLScoRkKny7Lo08PMBq5RB9+YEPWPwC4aW5Idw7qZhLoPKErt9WxY+f5M7gzubq2RaMnLHoYwk7r/ypD1sXbBRTLbRSIX6EgjI93YScI5YQ8Y0XcI5gw5ygaZvt3oZ+dpC+UDmP9mQkMAPj5ip+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3pERXVxa3BTSFYyU1VUMndMQ3B0Y3pvMDd4aEE1VDVtWjlYbU1iL2xPa1hy?=
 =?utf-8?B?V28rM0l2bUE2ZzZmTHZmZVBiTDdVb1F1ZXJBeklxMFI0NEx3clE4ZElhYkhY?=
 =?utf-8?B?WmZRQllCMTFXaG9OUkFVSkphQkhCQ21QSmRhLzhYbkh5YVpkV3JaeUdTcjZt?=
 =?utf-8?B?VERHTE1yRTJMRzBPUGhvdk1XV1dkUDkwWFdMY2hiYVp6OWVFVlF4eDkwYmtl?=
 =?utf-8?B?TitkVjJsbm5ta2E0eU9GcWxHUVV1K2VXYWE1dDc2ZWs3U2x5REZuSTdsNy9P?=
 =?utf-8?B?dWhZTCtzcStXZmdYZVpRTXZyRXppZ3lBUlp3NC9UaDlqcUwzVzZPN1pTbjc1?=
 =?utf-8?B?RGtDUE5WekR0ZENWbU9XSXRiL0VnTjlYYURwUnQza09Qc3gyOVJKQVQ0TWkx?=
 =?utf-8?B?cXo4NXlIQ1RDYmUwL210LzE3U3Ayd2F2eGhPbGFaYjVPcEdzT09FZHhkbDZ2?=
 =?utf-8?B?SVd3MzdTSHJ2WTZoWFhWenU5RWZHU3JZcWN0bFczTTFFVkVlVFRwZ2IxV0hr?=
 =?utf-8?B?Mi8zQURFdWdHZXJMWlFOL2NpUHR6RkNoWkEyMk9sWTJOS0JYRjd4Sks3YUd4?=
 =?utf-8?B?WTY2a0Zkd01MYjNDN0w5blMrWlRiRUNYcDJCSlprdHlKbTd3REwyd1lZN2Vy?=
 =?utf-8?B?OTN3SmVPdG9oVlVscGpFOXJRTTB6UnJHeW9QSmJhbmhDcVZVZmQ1bW1hMjJM?=
 =?utf-8?B?VlpxYThMeW95Uk5CVldWa09FRG9EdDVqaC9INHlSSUxTcGZoS1JCaFpXNlpY?=
 =?utf-8?B?ZjRFRTVTUTR6YmptR01EK3RwNW1jK3FIaG9raXJwNzVTeEtlanFZWXdQWGlx?=
 =?utf-8?B?TWZMTFZ4cm13K3Z2NytBSUN0SjhPNHVMZnYyVnJwTUpiNlZPN29mdGtvczdK?=
 =?utf-8?B?bGlRY3lselJvNm1qV3hQTGdjNjRSaEdrWm5pek5BQ2gzWFRxdm5KbVd6eDJL?=
 =?utf-8?B?emJoaExkWEM1UFQ2Sm9oSU15Z1cwZEgxVUxhK2YyWHdINmRLTExWNDJxWXJV?=
 =?utf-8?B?VTdsVXlueDl0QThBY2VrZjZTdWFkei9XUEhaT2hiVU92bFZncllBckhXRXVR?=
 =?utf-8?B?dzJxWjdmayt1U0RsZTF6N3FBUThzTjdac3ozOXowN3dmM1NhUzcyTXVWQ3A1?=
 =?utf-8?B?QUxzQ1hCbC9BKzl0cmxvYWVZSjB5clJldGJnS3lPRGFVUDRaT1NIWEdUY1ZB?=
 =?utf-8?B?QUVlbllSYkhPeWdDSFJzWis1L01paGVIZ3hyVU5ZSTRLNnEwb3RBOGhTK0FC?=
 =?utf-8?B?WDNpMEw1Wk0rL0QrczBXN0s3R1pmTGp1VVNxdFZqY3RiMms1U2dtUWluN3FG?=
 =?utf-8?B?STNXOUtULytpcldUdlc5OGZWbitRZ0RpVkx6SStiQzNkZXppVzM4K2srWG1C?=
 =?utf-8?B?by9pQ3Z3aTYrTGY3cTZWaVlEUmhjY210TGNpSzhKQ2QwRDVPek9QREFRV0gw?=
 =?utf-8?B?djB5UEVxRTlEK3k4RG9mUXd0S3ZwcGxoZ1A3T0p3UUpkdmdQOUpqdmVjaEI2?=
 =?utf-8?B?bTc3aWc3aGZzQjFuM2RNRkEyNmZMTlBKQUcySktLZkdiUUpKazJzSXZBZ3k2?=
 =?utf-8?B?TFU3ck83aTR1V2FBTFhiS1ZTZEl3Z0l5RGQ0VWxkUlA1MUdFNXlrSDJHTkdF?=
 =?utf-8?B?bDFwQ0RlNVdUQmE0bC9rTXlaNHJhMWU4MFNyQTVtNEpPZG1kUlZtWWFqRWhS?=
 =?utf-8?B?MzdwYjliRkZVdTh6cCtJSStHVGJYSFBFL1BQMkNXekFTeUVNdnZncGdocGxZ?=
 =?utf-8?B?UlBoeXZPb21zNXRsZlg0VFNQYUhCMzl4T2VQTnZQdXdkb1I3eitjZXd0Mkx1?=
 =?utf-8?B?RDI2QWxBWHZDZW9sdTRvSzgwMHdkVlVMZVAzK0xqUlkyc0dKOTBNZzBVQnky?=
 =?utf-8?B?RW5FSk9XbFVJdW1IU2cvWVVWdWdxT1A2U2s5MVFhWGp1OE14ZWttNU1tbHNm?=
 =?utf-8?B?NVUveHZpMWhVVkxodFYxNkJQZVNXYWk4UHpTQWp3QktmZzhqZDA2T3lZNElD?=
 =?utf-8?B?dWxYYzZGd2JrTUVsdWJSWXZEeFFlWXpCLzROdTdYaHhiWUxEa251ckFBeW4r?=
 =?utf-8?B?NHlwbXlkVmVIbnhZb29FWTduVDd2eGprbElSZVVocjZZL0V4aUZzbDVoeUli?=
 =?utf-8?B?UnhqczkwR0UyNGg0ZGdtdHJXckZOaUlBSHd6ZFE1MmlzSzdsdUVsMDFhbzFj?=
 =?utf-8?B?YW44ZEMrSjNla3ZqZ0tvcVJLSmpPWjBJOVhtRzY2OEpVeHRyanBvajhPM2VN?=
 =?utf-8?B?WVhyV3dpdHpIQVJ4ZitldWdLRFBwazRjeGY3REF4Nmk2RWNDWjU5cjZFWVlj?=
 =?utf-8?B?OUUzMEhWN2E4QncybUpHSTFobXNKNSt2Tjdqc3V5THBqT1ZhVzFCcDVoN3kz?=
 =?utf-8?Q?VjCzlFxHyjV6GP9k=3D?=
X-Exchange-RoutingPolicyChecked: pashhZmxIGTIe9Ij/cjcvHTZ96vN70gUpawaR5+zPGdo0zR8hwLBMVPGWXYSct1asBm12WxBZcDowJ98ysRvnS6RErPEHVy4AOj0tpNLNIIVgbYfbcFvfX9DypDitXsXI6W6g3RQfs5wpQ84xwIo/Np5+4XXDtWadPMpmaWjBE3OlOI9NrxXw34q7F79G7GqksZFw5bQpX1Nw4uLaGAasMSOtyBUbZ4GNKctANCs4rJzdkgREI2GyOas0d4XjOygPShtwKPq4Z65xahewgXqnVvtAvbSXVDMTWUkn7gxajGsZwdjkod8XLEi4Y7GRC3ZJoXFdJ54F+lRdlQh4vNIMg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 66377664-191c-4071-29a7-08dec79843b3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 09:03:12.2820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aoY2AYT/BnGeJTNdmpav2pfAJ+Lk6ZzasMuY6F3Jet/HKkvkey3zmjnd4SOo4xPjMJTI5BkbEyZmPtPxwAeOLkne1oEyTqTPyB8GWBGg79M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6565
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cisco.com:email,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,cisco.com,intel.com];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B715670274


On 5/20/2026 7:55 AM, Ankit Nautiyal wrote:
> From: Jerome Tollet <jerome.tollet@gmail.com>
>
> HDMI 2.0 section 6.1.3.1 specifies that after enabling
> Scrambling_Enable and starting scrambled video transmission, the source
> should poll Scrambling_Status until it reads 1 or until a timeout of
> 200 ms expires.
>
> Add a polling step after enabling the HDMI port to check the scrambling
> status when HDMI scrambling is enabled.
>
> On some HDMI 2.0 sinks, omitting this check can result in 4K@60Hz
> (594 MHz) failing to come up correctly because the sink has not yet
> finished its scrambling setup. In practice, waiting for the scrambling
> status here fixes such sinks.
>
> While this synchronous polling is not itself explicitly required for
> correct modeset sequencing, HDMI 2.0 section 6.1.3.1 does recommend it
> as the way for the source to verify that the TMDS link is functioning
> correctly with scrambling enabled.
>
> v3:
>   - Add explicit HDMI 2.0 section reference in code comment
>   - Clarify commit message around the observed sink fix
>
> v2:
>   - Poll TMDS_Scrambler_Status for up to 200 ms instead of using a fixed
>     delay
>
> Reported-by: Jerome Tollet <jtollet@cisco.com>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
> Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
> Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>


Thanks for the patch, comments and reviews. Pushed to drm-intel-next.

Regards,

Ankit

> ---
>
> Resend to intel-gfx and intel-xe so that the patch is picked
> up by intel gfx CI.
>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 26 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
>   3 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 86520848892e..ac307a53576b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3505,6 +3505,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
>   	}
>   
>   	intel_ddi_buf_enable(encoder, buf_ctl);
> +
> +	intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
>   }
>   
>   static void intel_ddi_enable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 9076c2b176ec..b9d11fb8559d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2728,6 +2728,32 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_
>   		drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
>   }
>   
> +/*
> + * HDMI 2.0 spec, section 6.1.3.1 (Scrambling Control): after
> + * enabling Scrambling_Enable and starting scrambled video
> + * transmission, poll Scrambling_Status for up to 200 ms.
> + */
> +void
> +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
> +				      struct drm_connector *_connector)
> +{
> +	struct intel_connector *connector = to_intel_connector(_connector);
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	bool scrambling_enabled = false;
> +	int ret;
> +
> +	if (!crtc_state->hdmi_scrambling)
> +		return;
> +
> +	/* Poll for a max of 200 msec as per HDMI spec */
> +	ret = poll_timeout_us(scrambling_enabled = drm_scdc_get_scrambling_status(&connector->base),
> +			      scrambling_enabled, 1000, 200 * 1000, false);
> +	if (ret)
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
> +			    connector->base.base.id, connector->base.name);
> +}
> +
>   /*
>    * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock ratio setup
>    * @encoder: intel_encoder
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index be2fad57e4ad..0fa3661568e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
>   			const struct intel_crtc_state *crtc_state,
>   			unsigned int type,
>   			void *frame, ssize_t len);
> +void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
> +					   struct drm_connector *_connector);
>   
>   #endif /* __INTEL_HDMI_H__ */
