Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E670E37A88F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 16:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A546EA38;
	Tue, 11 May 2021 14:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2077.outbound.protection.outlook.com [40.107.236.77])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B184D6E23F;
 Tue, 11 May 2021 14:09:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g860AhH3rNv/36c/WjwHxlPybMtHbAjJEdNrN3HTOIE4eUEOIda7Sirq0mTYzXxnhk/yZfRVSWxlP6cHMnZ/6B6az6FGT1kp7XNiqMZ/V7Oe73UVuYWoMHOH+9suNybma02BE9YNXKxbN0PGwIB0KH/9qgGeq/zjD/0NBCt3C2nfO+Nxk9YUDTUziXd2qst0AyRWhznxDskZvPLGIJHfws24ZTQg+9Y7oXCHpv00TCOV21Vd4EXJMkKse3lBVWpE2nJnVtKLUXRHVsCiQYhcVm+r9YwoANBIsKxL7XMK/VxQGCR7U6uK+WVrFv12pwqiUNt1jlEhLXwbLL27VagELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNtMLZiecHg14iEiDyCPNO6qqXFe74zx23+CuszR7Nc=;
 b=YxULEDl6anGwClCjkG5eSlTYs37gNCB68FtHgkRbiOBr1delELjiSArLF3G7C5NfuZnCGXszmEIHiBeLMQx3/Kk/DwIk0+f3WWBrocU3sZvEJtKvlArR06u8x0apNPmtPR6CIEMyqORrMLvUDEo9iLXb2a1diCFFQIrxtqOo9Cib4SsEQXpC/Am7vFGZcXSNYQQlpH4rJkx0LLW9dp4A5rJFR0L/SFBwgyvskUc2VMeXgvUxLcHpcLlqJwaP9UtJpqXYSndYB6BrHUPhHEMWCyTuIZ22R7Zw1CWnW2xEl+i0qH/iOlVSvUqHolkLTdiQWt7tFgszNy0/KEAr83acwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNtMLZiecHg14iEiDyCPNO6qqXFe74zx23+CuszR7Nc=;
 b=Mmrh33ghAkVGQHBk+PTKacuw34vOvinrzV6vK59E6nYV8otTBntv1Q0AZc6XsN3LDRreFprRdsnVOIN/NFc2Viciccn/OF7CO9s6PBVVVKX/T2w3ftcEoJFNs1IitfXFNn7BuGDBM3oFPUhyvNoNEYPKR4MGvh0hfFT8xK+TTIA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4536.namprd12.prod.outlook.com (2603:10b6:208:263::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Tue, 11 May
 2021 14:09:14 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4108.031; Tue, 11 May 2021
 14:09:14 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
 <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8551810c-a095-3906-d982-7bc409140c48@amd.com>
Date: Tue, 11 May 2021 16:09:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:5935:8b67:3cdd:7cc1]
X-ClientProxiedBy: FR3P281CA0054.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:5935:8b67:3cdd:7cc1]
 (2a02:908:1252:fb60:5935:8b67:3cdd:7cc1) by
 FR3P281CA0054.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4a::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.12 via Frontend Transport; Tue, 11 May 2021 14:09:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44b39f44-2de9-4f9e-def9-08d914865ba6
X-MS-TrafficTypeDiagnostic: MN2PR12MB4536:
X-Microsoft-Antispam-PRVS: <MN2PR12MB45366125000D75CE71A9662983539@MN2PR12MB4536.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IQOLcDRltpHw5jiyvJVSZTtCVND7htk/6D9LCO2Yn01CFWMv5D7xnyv4tAft0WhHNi6h8DnWmA8I1D2pJoK1+rgP0bx26zJ49iVBPv297Kxotr4VjaZVTaxBdQu/F3vvwbW+d8POCx9kcPYToQIubuoL9wk/5x6WsFly+1i3Wdn5GgMmfL2YrnF8ZoQUk6Dl6DqO/zOS7zVRUUQMhq1AqEZC6BiUJnuFzkmZo3N7LFt/IeMKuUBUfJZJkQMSw5bhutgjhZIQ9xNQsoiFB40znNYVYvfNZ5cLIOd5eFm31NKbM1bPvGmKNCPMjps2ln3LKIWjhVKL0XHHPlqzXKZJFt+BJRstDeixawy44S1+SLl8CX63tjdiMrUeVgLVAS4pC4qXRlafcgcWXylKQwRvF2x8wHlmyR6JrmzhepJeRpRANZa+VfwxT5OwEzOiHjPb6NBhEV+E7vBKwHneUyaeEpnWO/eH+vUFyzG2zQOTimpjunUIkfbmVBbSX+lypjbVjr+miE+QIKpJWSLO75JTzeVLdEjadJzCt85V3Q7zI31LZ1ROsMOk9R1ey2CEwh9vo87cXtGipHXRhyBFF/toa7aapeK6RNV4/1Y1WlCqG4aNm6PEL+N8LmIB8WNdmshkHC+j4JGq4Wan0bSKbVE624jpIn6t2TwPERfh+80L2Bh+u120kd077ZxEFz0gqoIS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6666004)(2906002)(83380400001)(66574015)(186003)(110136005)(498600001)(53546011)(38100700002)(8936002)(31686004)(5660300002)(2616005)(52116002)(36756003)(66476007)(66556008)(8676002)(31696002)(66946007)(86362001)(6486002)(16526019)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?S1Noc2V2MXhHR1pUQkFuS0ZxQklvSXlISnBTOFRQUFpjOTBXSmdHNG8wdDdH?=
 =?utf-8?B?STVWT3NSa1o1NDZYMEhvOElOMDl1Tytsb2hGdXdZQ0NxYWpEVVZqRHUyeExE?=
 =?utf-8?B?ZWt1dStoVmNRVjVCVW8zdUdSLzdZMHk0WDJhTm95WTZZZjVLcDY1ZlNvZGFY?=
 =?utf-8?B?UTNwVWtzbjRHeDRwd3JuMkFaZk9jeDhDcTZMWDFxWTFxRG9hK1lTenNHMGtM?=
 =?utf-8?B?aTU3OCsxcGR0aytLOUx2ODlUczk2bTB5YnZHUGx1bjFBc0hBZTNlZG9OWUtn?=
 =?utf-8?B?SCtycFd6aEFLVUtvNDNEeG9ldEtrVlpzYlFvYlBCVk8xQkVUVTV6ekxXRTZF?=
 =?utf-8?B?ZjNiQjVQMkkxa080amE4T2sxaWoxNWxXVlJmTGxySWtFUUZ5eXQyZm5uQ0Z4?=
 =?utf-8?B?L3B3K0o4ckc1T09rcGpMbmxyT2VEUnFXeFFWOWtJSlNWNlQwOGpPS0x1SmdG?=
 =?utf-8?B?Sk9UZDV3WmdSOWg2cVlWV2xUTHhxd0dPUXJOUTl4RHFkSC9rcDVhdGt6L0Yx?=
 =?utf-8?B?Z2NKYno1dEthQ0xKTERlKzA1SHhrR1ZvcDg0Q0Z3cVdzUkV1U2IwaTBHclpC?=
 =?utf-8?B?NHlmWHF0amhFV0JaREp1N05zK3czTGNGdFBqRW9oOHB6d1RSNmhNVXZrYnd0?=
 =?utf-8?B?VklzdDFqZ01TMWtKN3ZKOGdnSVh4a0hGNGtRM2p1bWtEZi9xNlYrNEZFV042?=
 =?utf-8?B?SUswbDJ1TDVyc3QzTGVsTWQzYlh4UzgwU0JkZFNVWCt2OTBRV0VqNWZRRnhv?=
 =?utf-8?B?ZWZCNk1HSWtQa1I2THloQ0g2VEI1N0J5b0x0K0hDN0R4bitxdUZMUmpYZ2Ex?=
 =?utf-8?B?Zmk2cVJxM1FiYU00cnAyaTRpTnc0dVhWdnBKdWtQaFk0Q1d3Rmk3NFVZbitT?=
 =?utf-8?B?UE1ZZ3NQbE8yNlYxZVIyYlcyUDdERmFaMDM4TlVaQitJVzEza0l4MHM0K1N3?=
 =?utf-8?B?Wk5aVWJ5c2JmbDh1UWhncVFFOWpTVU4vdGMwcEMxTktoT2ZwRVRHY2dMYlN5?=
 =?utf-8?B?MDdsdEppTHNQVWJCcWJHMnYrQkt1aTVwN0s1OWkyWlRPVzRtOFhndnhkWksv?=
 =?utf-8?B?Tkd1cGFISEl3ZHVoZ1BRTkd0MHU1NWZBYkIva0xKcytuL3cyRUN2SExTOFA4?=
 =?utf-8?B?YzYzNFU2cXJ2QXVYQ3Z0QlJSVFQrL2RlT2M2bWx0cGpBN1FZS2dIbEpEWDUw?=
 =?utf-8?B?cG05a1Y2WHdCVGRwZWxxemxQcmdJWkNuOTFBMElVS2k4TGxJcHhuQXcxcjB3?=
 =?utf-8?B?eG5HQ0RhTENBalg2UWlBTThvTWh3VHlVeGgrWmVtbC9rVGZ1ZFJFRVErMWdC?=
 =?utf-8?B?NzRRRDNrb2FiUTBEc3NrNFFCWEdtME1pRzhpYzFsTEFyZUo0dE9ESy9qQ3BN?=
 =?utf-8?B?UFUvV2xCUWEwUlBnVTJSYUZBSUdqOTdURWtzK01BNW1IdGNRbi9EMi9RUUlZ?=
 =?utf-8?B?U1lvRUY2ZjJwRldFSXlvcEl0Z3RDYmM2cG1EU2VjRFdNRUhXN1RPQVMzSVdP?=
 =?utf-8?B?QnpGOHkyRlpkcmNMY1Bzc2kvdy81NjdIeHVhOGR5YWtlRDZ5bUtBT0lQaTVt?=
 =?utf-8?B?ZWhGNXJiQUdLSmQ1OG45V3grM0g1clo1RHNZL2x2VW5NZ1F3VjM0WU9HUlhl?=
 =?utf-8?B?NFVxcWEzTmtsem53dmtaL0ZCRHR1ODhMUWppV0gvWFNQSEU3SThLN3lqTkps?=
 =?utf-8?B?TDRhZzFIZlE4aHZGK3J1QzIxeGpzbnRaUkxGQWJONExTcXRyMy9saTZGcm1o?=
 =?utf-8?B?TndqdjlLVFhsT2hqTHBNVEIrdjc5ZDIyeG5CS0N1NEEybWkrd3VpaVFhN3lJ?=
 =?utf-8?B?TGM0RjhUQU1jZ1VnODI5a29mUUp0M0xIbE81N0V4T2NMeEdPd3dDOUNQbzhH?=
 =?utf-8?Q?zD6+SZ/qeNF4g?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44b39f44-2de9-4f9e-def9-08d914865ba6
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2021 14:09:14.6940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Azkc7sF6PJPxfhu/h2RGA+BZjJRrldBX+XCIn+Tt8AtiJ/Ayj9qbbqE8PwXRsj0m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4536
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/ttm,
 drm/ttm: Introduce a TTM i915 gem object backend
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

CgpBbSAxMS4wNS4yMSB1bSAxNjowNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiA1LzExLzIxIDM6NTggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFtIDEx
LjA1LjIxIHVtIDE1OjI1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBNb3N0IGxvZ2lj
YWwgcGxhY2UgdG8gaW50cm9kdWNlIFRUTSBidWZmZXIgb2JqZWN0cyBpcyBhcyBhbiBpOTE1Cj4+
PiBnZW0gb2JqZWN0IGJhY2tlbmQuIFdlIG5lZWQgdG8gYWRkIHNvbWUgb3BzIHRvIGFjY291bnQg
Zm9yIGFkZGVkCj4+PiBmdW5jdGlvbmFsaXR5IGxpa2UgZGVsYXllZCBkZWxldGUgYW5kIExSVSBs
aXN0IG1hbmlwdWxhdGlvbi4KPj4+Cj4+PiBJbml0aWFsbHkgd2Ugc3VwcG9ydCBvbmx5IExNRU0g
YW5kIFNZU1RFTSBtZW1vcnksIGJ1dCBTWVNURU0KPj4+ICh3aGljaCBpbiB0aGlzIGNhc2UgbWVh
bnMgZXZpY3RlZCBMTUVNIG9iamVjdHMpIGlzIG5vdAo+Pj4gdmlzaWJsZSB0byBpOTE1IEdFTSB5
ZXQuIFRoZSBwbGFuIGlzIHRvIG1vdmUgdGhlIGk5MTUgZ2VtIHN5c3RlbSByZWdpb24KPj4+IG92
ZXIgdG8gdGhlIFRUTSBzeXN0ZW0gbWVtb3J5IHR5cGUgaW4gdXBjb21pbmcgcGF0Y2hlcy4KPj4+
Cj4+PiBXZSBzZXQgdXAgR1BVIGJpbmRpbmdzIGRpcmVjdGx5IGJvdGggZnJvbSBMTUVNIGFuZCBm
cm9tIHRoZSBzeXN0ZW0gCj4+PiByZWdpb24sCj4+PiBhcyB0aGVyZSBpcyBubyBuZWVkIHRvIHVz
ZSB0aGUgbGVnYWN5IFRUTV9UVCBtZW1vcnkgdHlwZS4gV2UgcmVzZXJ2ZQo+Pj4gdGhhdCBmb3Ig
ZnV0dXJlIHBvcnRpbmcgb2YgR0dUVCBiaW5kaW5ncyB0byBUVE0uCj4+Pgo+Pj4gVGhlcmUgYXJl
IHNvbWUgY2hhbmdlcyB0byBUVE0gdG8gYWxsb3cgZm9yIHB1cmdpbmcgc3lzdGVtIG1lbW9yeSBi
dWZmZXIKPj4+IG9iamVjdHMgYW5kIHRvIHJlZnVzZSBzd2FwcGluZyBvZiBzb21lIG9iamVjdHM6
IFVuZm9ydHVuYXRlbHkgaTkxNSBnZW0KPj4+IHN0aWxsIHJlbGllcyBoZWF2aWx5IG9uIHNob3J0
LXRlcm0gb2JqZWN0IHBpbm5pbmcsIGFuZCB3ZSd2ZSBjaG9zZW4gdG8KPj4+IGtlZXAgc2hvcnQt
dGVybS1waW5uZWQgYnVmZmVyIG9iamVjdHMgb24gdGhlIFRUTSBMUlUgbGlzdHMgZm9yIG5vdywK
Pj4+IG1lYW5pbmcgdGhhdCB3ZSBuZWVkIHNvbWUgc29ydCBvZiBtZWNoYW5pc20gdG8gdGVsbCBU
VE0gdGhleSBhcmUgbm90Cj4+PiBzd2FwcGFibGUuIEEgbG9uZ2VyIHRlcm0gZ29hbCBpcyB0byBn
ZXQgcmlkIG9mIHRoZSBzaG9ydC10ZXJtIHBpbm5pbmcuCj4+Cj4+IFdlbGwganVzdCB1c2UgdGhl
IGV2aWN0aW9uX3ZhbHVhYmxlIGludGVyZmFjZSBmb3IgdGhpcy4KPgo+IFllcywgd2UgZG8gdGhh
dCBmb3IgdnJhbS9sbWVtIGV2aWN0aW9uLCBidXQgd2UgaGF2ZSBub3RoaW5nIHNpbWlsYXIgCj4g
Zm9yIHN5c3RlbSBzd2FwcGluZy4gRG8gSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHkgdGhhdCB5
b3Ugd2FudCBtZSB0byAKPiBhZGQgYSBjYWxsIHRvIGV2aWN0aW9uX3ZhbHVhYmxlKCkgYWxzbyBm
b3IgdGhhdCBpbnN0ZWFkIG9mIAo+IHN3YXBfcG9zc2libGUoKT8KCllvdSBzaG91bGQgYWxyZWFk
eSBoYXZlIHRoYXQuIGV2aWN0aW9uX3ZhbHVhYmxlIGlzIGNhbGxlZCBpbiBib3RoIGNhc2VzLgoK
Pgo+Cj4+Cj4+IEluIGdlbmVyYWwgcGxlYXNlIG1ha2Ugc2VwYXJhdGUgcGF0Y2hlcyBmb3IgdGhl
IFRUTSBjaGFuZ2VzIGFuZCBmb3IgCj4+IHRoZSBpOTE1IGNoYW5nZXMgdXNpbmcgdGhlbSBmb3Ig
ZWFzaWVyIHJldmlldy4KPgo+IEknbGwgcmVzcGluIHdpdGggYSBzcGxpdC4gRG8geW91IHdhbnQg
bWUgdG8gZG8gdGhlIHNhbWUgYWxzbyBmb3IgdGhlIAo+IG90aGVyIHR3byBwYXRjaGVzIHRoYXQg
bWlubWFsbHkgdG91Y2ggVFRNPwoKWWVzLCB0aGF0IG1ha2VzIGl0IG11Y2ggZWFzaWVyIHRvIHJl
dmlldyB0aGUgZ2VuZXJhbCB1c2VmdWxuZXNzIG9mIAppbnRlcmZhY2UgY2hhbmdlcy4KClRoYW5r
cywKQ2hyaXN0aWFuLgoKPgo+IFRoYW5rcywKPgo+IFRob21hcwo+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
