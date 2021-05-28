Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4176394417
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 16:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344776F5CB;
	Fri, 28 May 2021 14:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2044.outbound.protection.outlook.com [40.107.94.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7525C6F5CB;
 Fri, 28 May 2021 14:21:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLg6w8zyAbZQzesjh5k6QcmVww/dhq0qA+o0gPZkhWrl9iFzxXmu21FPf6HXBBagkjtzk9lzI8VZXzoS0M5tXEJM4UR2HUB04VmfAc/3igemaahvORG/nZ1fshE1XVzk8Dt+rqIfylmoUnMoEflC2LHV7qZ/ambQXoPO+bsqBvQ8dDvacfz4vUV3JgHh2qqT+3AxJsn1xR8Oipw9iHrTQYbXngIo913C/5jajhfFYBF4nbfpr87UC7Z7BmqGhXpZAlgwi9oKQNl1HbvdneZN9TuUsRkvc/7b1EaZZ5kPniPbyES1bn+m5fcTwoyI17Ulsn7KN4O3LUg9X//5IfpgTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKRPmtIhQELy6UJGZTjYcf0+YqSFZI3JB4EVAQLs3bE=;
 b=KNU4r7+FTmt2wnh27Zqmk1Cl4XIrR+tlCbXpFRQUF2qk2B7UyDdqRj86cTMlNlRwzwOXAYpaVJgTujb6o2cB2XMFhJI0VKSDYpNVkvJDmPI+uLJSjnc1cZ/xof9N8jWgVgkictx4ROqRrMX2qXW3Kr6MsH3FOOlOy6XL0YIR4w1o25ziiN4MWe8dZpar9/v8fmIqvlc/rZhOIbyojYGcrg2NJBPKxsEhjeP28BJuTbnI4PwmhHIW/1g0hRo9Bqlq1uv91MRlkrM+UlxSCW+PqcCY4wajg2+l43hkxhOrzmaBCNuQiVZMQ1I5wW3IWM6QqrZSvv55uS6KVFETt8GyYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKRPmtIhQELy6UJGZTjYcf0+YqSFZI3JB4EVAQLs3bE=;
 b=zihfiEj7ns3aApZqj8/L6/wOR9uzpBt/QfCswu65+3QeSkche7iLLziMEC8sixMUtRb4NFT3JsWk5vIz6DoxAdO6nFAcO+zoVUHf6GbKBjGrqgiNL/md6OHMnmLQKkyUCm+N1xQ8DyxMtPSVwRUAhO71/xu+ztDlB+R+43rAkJA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3837.namprd12.prod.outlook.com (2603:10b6:208:166::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Fri, 28 May
 2021 14:21:05 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Fri, 28 May 2021
 14:21:04 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
 <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
 <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
 <97b0903d941c05a8877579749c6a2ea6ec107d0b.camel@linux.intel.com>
 <1dffe27a-bfc6-075e-f198-0c47cd282638@amd.com>
 <169de7a9af59135d1b63278b3b69a892ecfd4549.camel@linux.intel.com>
 <37dacfad-b557-b210-02f0-7afa202bac51@amd.com>
 <f8220d79-240d-1ee8-b2f6-c28927b2856f@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <52bb8d06-4167-baee-92e5-1d61ea037d81@amd.com>
Date: Fri, 28 May 2021 16:21:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <f8220d79-240d-1ee8-b2f6-c28927b2856f@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:a878:922a:f147:ebc]
X-ClientProxiedBy: PR3P191CA0060.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:102:55::35) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:a878:922a:f147:ebc]
 (2a02:908:1252:fb60:a878:922a:f147:ebc) by
 PR3P191CA0060.EURP191.PROD.OUTLOOK.COM (2603:10a6:102:55::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Fri, 28 May 2021 14:21:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32cc0779-5363-4678-d0db-08d921e3d3ef
X-MS-TrafficTypeDiagnostic: MN2PR12MB3837:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3837E30E1547E7090136068983229@MN2PR12MB3837.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lNusQCw3nsuYH9pam8flb1w/XaiekmE8R6jlSGLncadByJo3Zfno8LNdpN2X8NATPai/KNCYkHFyI4vjlnMkB3c6+JKBjgxWv2ZoUuxvksRpHwYilRcjIKq0ZYo/20i4ruafs0Czh6OE0fXfAkpjzcMnKY7zPU1411JXGzxgc0cAsjMJg3xAbkbM/OeTdxCmlyxxKMn7IMRq9OzAvWVLhnqyPxnEFMRHNjxg3+3OueKp7BnEzUXNEVBwf/pOssT6BK35kPCyOQ+CUnOvEvQvgBMCs1p+zGc5EYXgpzA5/LrZBnI7lkjkwnMoDf/4wIUL3l9RU79wdOw5hCvT8XAMMgABL7V+XwoaCFwjrlcEBU+ROGED2tWq6yKtNGAdoMb5w2uFbjCHXnAzcSU3N5ppQvRq0HP6NoXnEh32mIcZEL3erPjywXG35tHlJcCqoeSd2dS+uhQoxyX9LB9rSWXx1ktSmqWQNlG5QwHxC+Hx0YYK6ZWFCEGwTDSCCqs+N4JRX+F20A76QQ+t/UBwiYGFWrWt2JV0PZZza7jsA5XD6bYDaLTjjprtjPRu0wQWskwL2xvinsozvqEZwo6xv0/xGtOg9PPUh8pzxe85xvCerO2w8C6LOx9YU9jx+gLrBiR3DDutpkdZtKkuTOHA2/EEiqxXStp2ledo1iM0HcSOWNTr0nzBpdj1o809+0UxJKIHkvGp/JHNVas8EYHldtOc5NYRt2PNORKQ/dR5XnZgRhc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(53546011)(36756003)(66574015)(6486002)(38100700002)(45080400002)(66476007)(478600001)(83380400001)(966005)(66946007)(316002)(86362001)(6666004)(16526019)(66556008)(2906002)(31686004)(31696002)(2616005)(5660300002)(8676002)(186003)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MUVKR0ZYanFMYWh2RytCMS9RSjFVZ3Y5QjIxOU9PZTkvNWRKa3dTT3NPVmx2?=
 =?utf-8?B?TGR6RTZOenBDWGg1SGZhdHYxVHltdHhPeHhzNnRqSHI5bHE4RzVDQ2JlZ0tM?=
 =?utf-8?B?NVJMOXZrTFdlWFNsbmVmZ3IrK3U5VWdtSy9KSVZtcUk3dzFaRmdyUUFxMWR4?=
 =?utf-8?B?TGNaUU15eXl4U01VUXIvQ0NGcmRFSkdYWGppWk8xZXRpY1hNb09lbm1HYUpl?=
 =?utf-8?B?QW5rRTlMT3pVYXFUV0p1dnNMTnFWSmZROXBEeEtyWUFPUHhvdHBpSEQxcjds?=
 =?utf-8?B?ekZQYkkyZC9WR2U5MjkxZHh1R1l3SjR6TzFMdHRkUStvVnVsMHIzL3ZMc1gw?=
 =?utf-8?B?K2JqU2YxU1Zrc1NRUkpmZGdiN2RhR2VFZUgraDZHSm55TnNCN29QK1BnTDhN?=
 =?utf-8?B?OTZFRVM5VkpxeWdDdDFBbWRWUVV4QmNveUl6TmhuLzlQNDFkMVFyaUZkcUh2?=
 =?utf-8?B?KzEvZ1gwa0tYczdRdEpSR2txUXBoNVJxNG5WZTRSZ0F4Ri9EZUhYR0NPTkM5?=
 =?utf-8?B?dGpkQUwvejArZ2hhTm96UE9DT2RCMTFzaTkxRFhDVVNNT3FoeGtEelp6QWFx?=
 =?utf-8?B?VGtDbjR6NWl3Y2x2V1k3U0UybUFXMXBUalBSK1JFQVBMTDk4V3RIdW1IdVdQ?=
 =?utf-8?B?NUFsTkJHUjlsdzVKbVJTMkdTSW92QXdYY1VyYVE2THdTaTVKQjJSQTNndFd3?=
 =?utf-8?B?S0RtTjR3V0FoWnZGRWx4MFRocWlaVzZHVFlLWWFCNXVhWlhQcmppc1Q0VFJX?=
 =?utf-8?B?Vytwc2xKSTRGeVdDODZURCs5dUt6N2pmcXk2WVMvdHdMQzZuN1QzeVpxaHU4?=
 =?utf-8?B?eTdBeXJRaWg3SEF6L0IxZU9UL2dRV0wvelU1Y2pORU4yZjlPMTZrYXJRMkJ4?=
 =?utf-8?B?Vzl4RDlPY00yYTUvWWlxTVhGMVkyaWo3a2REYTNRMlpEanczR2lmK3NXRElW?=
 =?utf-8?B?M2tQdWcyTUlSeXFrd2RHeVRNbGhCK3Bmd010MnZESGxMRDB4SkVvV3BaZkxz?=
 =?utf-8?B?LytBNXRIU3d4NERpbU1Ra09kRDVZOUQvaWdxWVpVK2hySWtQcko2UkNvd3RD?=
 =?utf-8?B?eldscjQ1OXZwWnIzSjFzYmFvN29uTUpWM1ZjSUtTNzZKVHdkdVNidjVHUTJp?=
 =?utf-8?B?Si9oWEFrRHk0dWhNdm9naGNDN2lwaTJickEyM1A5aXZpb0pnZ2JFTHhTcm5m?=
 =?utf-8?B?T2FmVzVoYlRHRHlXZU9RMVc3Y0lZdWJTZ01YSHRHNHg1MmVKcHdpTzFlZnJV?=
 =?utf-8?B?cloyMWxlMHlvV3cwcDk2Zmp4OG1JQWM1YUFsdnlrZjFXcGFvMEpNbEtPODlI?=
 =?utf-8?B?YUkzVXhwMDBtTUpxWGJqS3c3V3cvR3E4aGR6clJKNDRUTUxOWHFQK3RZWlEv?=
 =?utf-8?B?Q0twK09HampScSt4OElKU21wTFJoaUo5Q05tVUdkQkgxL0lnSnc2K1RjS0h6?=
 =?utf-8?B?K2ZBc0VOcmY3TlBVUFRiNDZ2b2FicFRxam16eEUvSTJ5VnMxVnhNd3pJaTFI?=
 =?utf-8?B?WXI4bnBnVTMxUnIwM05jUE9SMHVBcURLOGFyYU9xT3RlbnBGbnVJbmxmdXA0?=
 =?utf-8?B?TWw3WVdHcWNsSGRjbU1LZVFXbHVkOHpxb1M3L0FhUXJPN1hnVGIyU2o1ME5I?=
 =?utf-8?B?VDMxckVzdEdEQit5T1ZJRjR0ZVdSWEpWUXhhNjZkU3VGZTB5ZUJnT0FtcThY?=
 =?utf-8?B?dXZtalh3NFZ5dTlHVno1V2ZnNkkwSzVaWGZ6Rk5meWZDNUxDdlRCaXhUVmM2?=
 =?utf-8?B?eVdXSDRQQXBNK21HRDhHOVpqOXJzSjQyZGNnVVBaMHhPSlY5ZC8vNk1EZEJt?=
 =?utf-8?B?UVVWUk5QZFh5VllqVWVIdHc4ejFIeGxSS3Z3d2FscmhsSUJuQm9mRG1VdkVM?=
 =?utf-8?Q?92lp4cxvWBewK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32cc0779-5363-4678-d0db-08d921e3d3ef
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2021 14:21:04.8386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mmzQRJr97KVlWcNF64q/dBOGH6L8nyqyL38heaLcDIaKIe4igm2N1EKVmeeaxqSK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3837
Subject: Re: [Intel-gfx] [RFC PATCH] drm/ttm: Fix swapping dereferences of
 freed memory
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpBbSAyOC4wNS4yMSB1bSAxNjoxNyBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
NS8yOC8yMSA0OjEwIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+PiBBbSAyOC4wNS4yMSB1
bSAwOTozMyBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4gT24gRnJpLCAyMDIxLTA1LTI4
IGF0IDA5OjE2ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+IEFtIDI3LjA1LjIx
IHVtIDE3OjUxIHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+IE9uIFRodSwgMjAyMS0w
NS0yNyBhdCAxNzozMiArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+IEFtIDI3
LjA1LjIxIHVtIDE3OjA1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+Pj4gT24gVGh1
LCAyMDIxLTA1LTI3IGF0IDE3OjAxICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4+
Pj4+Pj4gT24gVGh1LCAyMDIxLTA1LTI3IGF0IDE2OjU0ICswMjAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOgo+Pj4+Pj4+Pj4gQW0gMjcuMDUuMjEgdW0gMTY6MTkgc2NocmllYiBUaG9tYXMgSGVs
bHN0csO2bToKPj4+Pj4+Pj4+PiBUaGUgc3dhcHBpbmcgY29kZSB3YXMgZGVyZWZlcmVuY2UgYm8t
PnR0bSBwb2ludGVycwo+Pj4+Pj4+Pj4+IHdpdGhvdXQKPj4+Pj4+Pj4+PiBoYXZpbmcKPj4+Pj4+
Pj4+PiB0aGUKPj4+Pj4+Pj4+PiBkbWEtcmVzdiBsb2NrIGhlbGQuIEFsc28gaXQgbWlnaHQgdHJ5
IHRvIHN3YXAgb3V0Cj4+Pj4+Pj4+Pj4gdW5wb3B1bGF0ZWQKPj4+Pj4+Pj4+PiBib3MuCj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+PiBGaXggdGhpcyBieSBtb3ZpbmcgdGhlIGJvLT50dG0gZGVyZWZlcmVu
Y2UgdW50aWwgd2UgaGF2ZQo+Pj4+Pj4+Pj4+IHRoZQo+Pj4+Pj4+Pj4+IHJlc2VydmF0aW9uCj4+
Pj4+Pj4+Pj4gbG9jay4gQ2hlY2sgdGhhdCB0aGUgdHRtX3R0IGlzIHBvcHVsYXRlZCBhZnRlciB0
aGUKPj4+Pj4+Pj4+PiBzd2FwX25vdGlmeQo+Pj4+Pj4+Pj4+IGNhbGxiYWNrLgo+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0KPj4+Pj4+Pj4+PiA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+
Pj4gwqDCoMKgwqAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uY8KgwqDCoMKgIHwgMTYKPj4+
Pj4+Pj4+PiArKysrKysrKysrKysrKystCj4+Pj4+Pj4+Pj4gwqDCoMKgwqAgZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fZGV2aWNlLmMgfMKgIDggKysrLS0tLS0KPj4+Pj4+Pj4+PiDCoMKgwqDCoCAy
IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+
Pj4+Pj4+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4+Pj4+IGluZGV4
IDlmNTM1MDZhODJmYy4uODYyMTNkMzc2NTdiIDEwMDY0NAo+Pj4+Pj4+Pj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPj4+Pj4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9iby5jCj4+Pj4+Pj4+Pj4gQEAgLTExNjMsNiArMTE2MywxNiBAQCBpbnQgdHRtX2Jv
X3N3YXBvdXQoc3RydWN0Cj4+Pj4+Pj4+Pj4gdHRtX2J1ZmZlcl9vYmplY3QKPj4+Pj4+Pj4+PiAq
Ym8sIHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpZiAoIXR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZShibywgY3R4LAo+
Pj4+Pj4+Pj4+ICZwbGFjZSwKPj4+Pj4+Pj4+PiAmbG9ja2VkLCBOVUxMKSkKPj4+Pj4+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUJVU1k7Cj4+Pj4+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYm8tPmJhc2UucmVzdik7
Cj4+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoGlmICghYm8tPnR0bSB8fAo+
Pj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBiby0+dHRtLT5wYWdlX2ZsYWdzICYgVFRN
X1BBR0VfRkxBR19TRyB8fAo+Pj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBiby0+dHRt
LT5wYWdlX2ZsYWdzICYgVFRNX1BBR0VfRkxBR19TV0FQUEVEKQo+Pj4+Pj4+Pj4+IHsKPj4+Pj4+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGxvY2tlZCkKPj4+Pj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9yZXN2
X3VubG9jayhiby0+YmFzZS5yZXN2KTsKPj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqB9Cj4+Pj4+
Pj4+Pj4gKwo+Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXR0bV9ib19nZXRf
dW5sZXNzX3plcm8oYm8pKSB7Cj4+Pj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpZiAobG9ja2VkKQo+Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9yZXN2X3VubG9jayhiby0+YmFzZS5y
ZXN2KTsKPj4+Pj4+Pj4+PiBAQCAtMTIxNSw3ICsxMjI1LDggQEAgaW50IHR0bV9ib19zd2Fwb3V0
KHN0cnVjdAo+Pj4+Pj4+Pj4+IHR0bV9idWZmZXJfb2JqZWN0Cj4+Pj4+Pj4+Pj4gKmJvLCBzdHJ1
Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwKPj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKGJvLT5iZGV2LT5mdW5jcy0+c3dhcF9ub3RpZnkpCj4+Pj4+Pj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBiby0+YmRldi0+ZnVuY3MtPnN3YXBfbm90aWZ5
KGJvKTsKPj4+Pj4+Pj4+PiDCoMKgwqDCoCAtwqDCoMKgwqDCoMKgwqByZXQgPSB0dG1fdHRfc3dh
cG91dChiby0+YmRldiwgYm8tPnR0bSwKPj4+Pj4+Pj4+PiBnZnBfZmxhZ3MpOwo+Pj4+Pj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoGlmICh0dG1fdHRfaXNfcG9wdWxhdGVkKGJvLT50dG0pKQo+Pj4+Pj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSB0dG1fdHRfc3dhcG91dChi
by0+YmRldiwgYm8tPnR0bSwKPj4+Pj4+Pj4+PiBnZnBfZmxhZ3MpOwo+Pj4+Pj4+Pj4gRXhhY3Rs
eSB0aGF0IGlzIHdoYXQgSSB3b24ndCByZWNvbW1lbmQuIFdlIHdvdWxkIHRyeSB0bwo+Pj4+Pj4+
Pj4gc3dhcAo+Pj4+Pj4+Pj4gb3V0Cj4+Pj4+Pj4+PiB0aGUKPj4+Pj4+Pj4+IHNhbWUgQk8gb3Zl
ciBhbmQgb3ZlciBhZ2FpbiB3aXRoIHRoYXQuCj4+Pj4+Pj4+IEJ1dCB3ZSB3b3VsZG4ndCBzaW5j
ZSB0aGUgQk8gaXMgdGFrZW4gb2ZmIHRoZSBMUlUgYW5kIG5ldmVyCj4+Pj4+Pj4+IHJlLQo+Pj4+
Pj4+PiBhZGRlZCwKPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+PiBJbiBmYWN0LCB3ZSdkIHByb2Jh
Ymx5IG1pZ2h0IHdhbnQgdG8gdGFrZSB0aGUgIWJvLT50dG0gYm9zIG9mZgo+Pj4+Pj4+IHRoZQo+
Pj4+Pj4+IExSVQo+Pj4+Pj4+IGFzIHdlbGwuLgo+Pj4+Pj4gTm8sIHdlIGRvbid0IHdhbnQgdG8g
dGFrZSBhbnkgQk9zIG9mIHRoZSBMUlUgdW5sZXNzIHRoZXkgYXJlCj4+Pj4+PiBwaW5uZWQuCj4+
Pj4+Pgo+Pj4+Pj4gQWRkaW5nIGEgVFQgb2JqZWN0IG9yIHBvcHVsYXRpbmcgaXQgZG9lc24ndCBu
ZWNlc3NhcmlseSBwdXQgdGhlCj4+Pj4+PiBCTwo+Pj4+Pj4gYmFjawo+Pj4+Pj4gdG8gdGhlIExS
VS4KPj4+Pj4gT0ssIGJ1dCBzd2FwcGVkIGJvcyBhcmUgYWxzbyB0YWtlbiBvZmYgdGhlIExSVSBs
aXN0IHNvIHRoZXNlCj4+Pj4+IHVucG9wdWxhdGVkIGJvcyBhcmUganVzdCB0YWtpbmcgdGhlIHNh
bWUgcGF0aC4gT25seSBkaWZmZXJlbmNlIHRvCj4+Pj4+IHN3YXBwZWQgaXMgdGhhdCB0aGV5IGRv
bid0IGdldCByZWFkIGJhY2sgb24gcmUtcG9wdWxhdGUsIGJ1dAo+Pj4+PiB0eXBpY2FsbHkKPj4+
Pj4gY2xlYXJlZC4KPj4+Pj4KPj4+Pj4gQnV0IHdoYXQgd291bGQgYmUgdGhlIHBvaW50IG9mIGtl
ZXBpbmcgc3dhcHBlZC1vdXQgYm9zIG9uIHRoZSBMUlUKPj4+Pj4gbGlzdD8sIHBhcnRpY3VsYXJs
eSB3aGVuIHdlJ3JlIGl0ZXJhdGluZyB1bmRlciBhIHNwaW5sb2NrPwo+Pj4+PiBTaG91bGRuJ3Qg
d2UgdHJ5IHRvIHJlLWFkZCB0byBMUlUgKGlmIG5vdCBhbHJlYWR5IG9uIGFuIExSVSkganVzdAo+
Pj4+PiBiZWZvcmUgcG9wdWxhdGluZz8gVGhlcmUgYXJlbid0IHJlYWxseSB0aGF0IG1hbnkgY2Fs
bHMgaW4gY29yZSBUVE0uCj4+Pj4gSSB3YW50IHRvIGF2b2lkIHJlbW92aW5nIEJPcyBmcm9tIHRo
ZSBMUlUgYXMgbXVjaCBhcyBwb3NzaWJsZSBzaW5jZQo+Pj4+IHdlCj4+Pj4gZm9yZ290IG9uIG11
bHRpcGxlIHBsYWNlcyB0aGF0IHdlIHdhbnQgdG8gcmUtYWRkIHRoZW0uCj4+Pj4KPj4+PiBDb25j
ZXB0dWFsIEkgdGhpbmsgdGhlIHN3YXBwZWQgQk9zIHNob3VsZCBoYXZlIGEgc2VwYXJhdGUgbWVt
b3J5Cj4+Pj4gZG9tYWluLAo+Pj4+IHRoaXMgd2F5IHdlIGNhbiBpZ25vcmUgdGhlbSBjbGVhbmx5
IHdoZW4gc3dhcHBpbmcgdGhpbmdzIG91dC4KPj4+IFllcywgdGhhdCB3b3VsZCBvZiBjb3Vyc2Ug
d29yayBhcyB3ZWxsLiBLZWVwaW5nIHRoZW0gb24gdGhlIHN5c3RlbSBMUlUKPj4+IGlzIElNTyBo
aWdobHkgdW5kZXNpcmFibGUuCj4+Pgo+Pj4+IEdvaW5nIHRvIHBpY2sgdGhpcyBwYXRjaCB1cCwg
bW9kaWZ5aW5nIGl0IGEgYml0IG1vcmUgYW5kIHRoZW4gcHVzaGluZwo+Pj4+IGl0Cj4+Pj4gdG8g
ZHJtLW1pc2MtZml4ZXMgZm9yIHVwc3RyZWFtaW5nLgo+Pj4gT0ssIEkgZHJvcHBlZCB0aGUgVFRN
IGZpeCBmb3IgdGhlIHB1cmdlLWluLXN3YXAtbm90aWZ5IGZyb20gdGhlIGk5MTUKPj4+IHNlcmll
cywgaG9waW5nIHRoYXQgdGhlIHJld29ya2VkIHZhcmlhbnQgb2YgdGhpcyBwYXRjaCBsYW5kcyBm
aXJzdC4KPj4KPj4gWW91IHdpbGwgc3RpbGwgbmVlZCB0byBhZGQgdGhlIHNlY29uZCB0dG1fdHRf
cG9wdWxhdGVkKCkgY2hlY2sgc2luY2UgCj4+IEkgZHJvcHBlZCB0aGF0IGZvciB0aGUgYmFjayB3
aGljaCBJIHdhbnQgdG8gcHVzaCB0byAtZml4ZXMuCj4+Cj4+IFJlZ2FyZHMsCj4+IENocmlzdGlh
bi4KPj4KPiBPSywgZ3JlYXQuIHRoZW4geW91IGhhdmUgbXkgUy1PLUIgb24gdGhpcyBwYXRjaC4K
Pgo+IEJUVyB0aGF0IG9yaWdpbmFsIHBhdGNoIHRoYXQgYWRkZWQgdGhlIHR0bV90dF9pc19wb3B1
bGF0ZWQoKSB3YXMgCj4gY29uc2lkZXJlZCAiTEdUTSIgYnkgeW91LCBleGNlcHQgZm9yIHRoaXMg
dHRtX3R0X2lzX3BvcHVsYXRlZCgpLiBTbyBkbyAKPiBJIGhhdmUgYW4gQWNrZWQtYnk6IG9uIHRo
YXQgbm93Pwo+Cj4gVGhhdCBpcwo+Cj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlv
bi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
ZyUyRnBhdGNoJTJGNDM1ODMzJTJGJTNGc2VyaWVzJTNEOTA2ODElMjZyZXYlM0QyJmFtcDtkYXRh
PTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzQ1ODBhYzE0MTNjYjQxNDg4
OGEwMDhkOTIxZTM1ZTQ5JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdD
MCU3QzYzNzU3ODA4MjY4ODQzMjgzNyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1D
NHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0Ql
N0MxMDAwJmFtcDtzZGF0YT1WSFJPS2gzMTllNWpKTDlnckkzMWZMbkEzQnlKcEV1TUwzUG9KQjdU
MkxnJTNEJmFtcDtyZXNlcnZlZD0wIAo+Cj4KPiBwbHVzIHRoZSBjaGVjayBhZGRlZD8KClllYWgs
IHN1cmUuCgpDaHJpc3RpYW4uCgo+Cj4gVGhhbmtzLAo+Cj4gVGhvbWFzCj4KPgo+Cj4KPj4+Cj4+
PiBUaGFua3MsCj4+PiBUaG9tYXMKPj4+Cj4+Pj4gVGhhbmtzLAo+Pj4+IENocmlzdGlhbi4KPj4+
Pgo+Pj4+PiAvVGhvbWFzCj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+PiBDaHJp
c3RpYW4uCj4+Pj4+Pgo+Pj4+Pj4+IC9UaG9tYXMKPj4+Pj4+Pgo+Pj4KPj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
