Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BD2387837
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB4B6EB3C;
	Tue, 18 May 2021 11:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2062.outbound.protection.outlook.com [40.107.93.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBFC6EB3C;
 Tue, 18 May 2021 11:59:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGEDT+ySTRb9PW5VtJuI/vzcaqmEP/+PH/RoZF4/s2cYtGX3YfyW54dftt3jVOrecfF2cfto50N2gAIDWl2TtHspdE0ozBFXWJWjFiCeXFrIsj9ij2VKR2sFKuRAS6u/kUIr/qxy7TylgSpBRFqVwzGsoKa8bluF0ksahA5GhDT8Bnd+S9gSm1zPEYkcZaN75n1GoqvsqMbdHj0GB4xhwQWFtaNRf0LsMSa2jbvX1CV4g5s/5H6KTizZCdfg1fPpEFc0KpaaZI8pa0xp03njRuteYkXlP2Lpof9h3D6Maq/SJdRGM2th6BwvmwEg9uwTJAA9QNhvaFSOqgjtf8RItg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/wehBrInaDOfROwG6LnOm9SNU052e16/HPEXQsGyZ8=;
 b=BPeGbNp8+Fag/VMkaXeBgpwM8gSxiMJOCowxO+XhRq0Q7HwvCBaPOLO3MoW4PDYAY530mQhzotCKKl/mK7Z/4NQpo74gR1Ir4ZZMBGvY6M13zBl0SNT6QGtCd0FXlBu9F63WqqISbrIKUlRdFkaXJacK6DwOq3nMFy0wa+tctLdlN+cScwNJgTNj1ahcWbIEOJFCeHm/g/u9oYibxG7uDcz4RIPaPaO8AKvuOQTBX/N8R0wjKrVxa3cv0m6ahfyxgzoHAmcxJBIpWk9MVprk9wPZAq0EEAJw928zrIJnJ0fjoZ4NhAARqf4mFcFb7rsSVLRwIoufrTH8B11J2UxXOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/wehBrInaDOfROwG6LnOm9SNU052e16/HPEXQsGyZ8=;
 b=i0bd5wCejobTrowaqwhs8w1VQIPs3zxsGm09c1+tAQce2RoiFDdRH/gr/r24on8j1WCAZ8zE6ZK6/gN154vDBPRj16BfcpmpAjRr+OaOGDrrMkGIWs2KR+36sFKvOhwftwncwjGg96C5eb9kczOTBNe1KEbA4MiGyqypRRLVgA4=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4125.namprd12.prod.outlook.com (2603:10b6:208:1d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Tue, 18 May
 2021 11:59:31 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 11:59:31 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-14-thomas.hellstrom@linux.intel.com>
 <7ce49dd3-d4f9-61c1-dcc6-a5d303dc36fc@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <a93d3f87-1331-e264-13c7-87b29cdbc22f@amd.com>
Date: Tue, 18 May 2021 13:59:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <7ce49dd3-d4f9-61c1-dcc6-a5d303dc36fc@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8470:36a5:2010:f0c4]
X-ClientProxiedBy: PR3P193CA0048.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:102:51::23) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8470:36a5:2010:f0c4]
 (2a02:908:1252:fb60:8470:36a5:2010:f0c4) by
 PR3P193CA0048.EURP193.PROD.OUTLOOK.COM (2603:10a6:102:51::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25 via Frontend Transport; Tue, 18 May 2021 11:59:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c18fa3a9-583c-4d03-c8a3-08d919f46587
X-MS-TrafficTypeDiagnostic: MN2PR12MB4125:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4125EC7393969647E830406D832C9@MN2PR12MB4125.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ghTl+sWdTp2Kz9PKScgUjpMv/2GDwrzW2wFZaPQjKafXpRnFi7GtyCENU4TF8Ka6TArRW+Bj8+CkuriL/TLzEqOWyOAge0dW5biESCTbP0sE41PauD5DXk3CzUtUNMFBgB/Iurye+PDapcMd1JX8YaDbGep4UUb6nhQg/6Kpk40yUkVkg6Gge6cLyyH6ox5eUAAMRv97mRfiJAYOl+K1neFzwrd+n3VHzYXBPEJZFjw01SzY0f1nJsWeHKdVN+rYz8lah47GR+YiGT71TIEyKQboqS3G4c0wdQXx+3bIF0zoZlR9bmg9a0Lq/fIcYXYFuzZ+5RHNRR/Gciq6Jeuk0g93XFam6bQX5d1PnGh/2x7Y2WDTxCZyZ3ytPHfn5gwkfXSVhLSYtxvUeRwdUzFzdgsdkhD1M7dUq/NImPG9uxoMUcynw18yFl5JqJicw4m7xDI/mLnG47LFTdXoLL6ksKZiAFp9xcYO9kImW/uHFB7KD17ncg58GUrin5gIa5mYSSZjq/1uMb3uyp34mLS2y0jl029GQsrjX3OJyFj5tmVI8iltV9eV0VGpX2G2tbQIcwdV8iQ9+a0zDxvgEEC505uCjXhOWHD97+16nSO2p81T22KEC64r2j+1wys1vPxQPhhyhR0ZxqvB3SRxxyOW5oHivEL/GqWjRMxnjjR3f8YWlHQNZ0XMpTvuP6wuwq7V
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(346002)(39850400004)(396003)(136003)(8936002)(36756003)(83380400001)(2616005)(2906002)(478600001)(6666004)(6486002)(66574015)(31686004)(53546011)(86362001)(31696002)(316002)(38100700002)(66946007)(16526019)(186003)(5660300002)(66556008)(66476007)(8676002)(52116002)(30864003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?U0pzL1RRMnkrd3R6Zko4OURjQTl0ZmZPS3F3S1poYlZxTVRSRGVSYUJQMHlW?=
 =?utf-8?B?U0dzM1VLU3JMYUpCajBJM3o4b21VSVF1aktzVG9XQXNjZ3V5ZVl5Q0UwaGZ0?=
 =?utf-8?B?T3FPdkFzVnJvTkc4T3FKUGtyVTQ4R1JtL2VaTUJ2Z0xVL290c2JsUTFkUFNj?=
 =?utf-8?B?SVEyVTRXMWJ5SWh5VUVYdWt4S3ZuK2VqclY1NmJYeU9LTjlmTmhFSDZYSWVV?=
 =?utf-8?B?V3pZbm1kMy9zOFNmbFFPZDErajY0YWNOdjRRUUhiUC9XL2lEeXcrU29kK0Jh?=
 =?utf-8?B?dzNqKys4OGgya05OZG1JVUtmay9Ec2dWajZaYnd5Wkt4Vk1UUGxXRFFRM3Rm?=
 =?utf-8?B?QndrbG80djhHV0F4ZG4zUStzWkdSMEEzZTYyalNuZnkzbStrWTFEYVdHbmt2?=
 =?utf-8?B?RWlqMTJEMlVxV3BiOS9lSHNWUG8vbGViYU8wMkFDQ2kwQVdaaWsvYUQwSXp5?=
 =?utf-8?B?YjZEUis1NG5zSnhCVllDOUJ1aW5Uams1aGt0MWhrQjRPR1Uxb0xVVkZTR0ZO?=
 =?utf-8?B?YUZHMXdlS05EekJKTTZHZ002TnlISDJpa0xNRGJ5ejBlaFVmTHhpRE1td256?=
 =?utf-8?B?R2htdVBOR0ZMcFR5Qnl0U0EwaUlLQm5YMzJIUm11cXdKU2ZLU09jWWpCL0Fn?=
 =?utf-8?B?dXlNVmEvR0p2cnhhTms3cmRHbDR4UzcvTkdLU2xoWDNnT1lrWk9uQ2l5bG11?=
 =?utf-8?B?UGRjZjdsRFJCRTEyZmVoQVdtdVNzMzZkOUVkTWdXNnVFdXk3b294Tm1rK2VD?=
 =?utf-8?B?QVNJYk45cDdndVBiVjh6ZEhaR1pOaDhyd21NajNvdGd4VmN0cW16WHo0VjZr?=
 =?utf-8?B?WVVkaDlhWUcwRStHdXFnbW1SQWhtbWJ4N2J1VEtiVUsvZUFPUVRCUmxySnQ4?=
 =?utf-8?B?SDhJbXI4YTYycmt1SmREWUhRVFp0dmJ6TW04U3hqcHFIdVVLM1hQbEhMR2RS?=
 =?utf-8?B?TlNzUS9nUmtnWkRxd1NZQklQbUZBVVNHVzlpdWdjVmhvdGQxdU51T0FMTlRN?=
 =?utf-8?B?NEV0YUJNT3ZmSEQxY2RRajdaZVhaMHJ6czZTZjkya3UxMTlXUllFVzAyODZj?=
 =?utf-8?B?Rktlc3lQY3V4RGc2eUJMeFZ6aCtmUFlPK1ZyZWRySmtSRVZySG5BUkg0eUlY?=
 =?utf-8?B?eklINldSdGxxQTNwNXh4MEhsVC9kM0FuMDA3akUxd3FLNGROWmhILzVXeUxu?=
 =?utf-8?B?ay9LUnhlY2lmWmd0WHlRMjFtSWszYVdnZHh2S09panJselJVVkY1cjBFVEVm?=
 =?utf-8?B?eDZyRXRWQnI3alkxSzZlbER4cHdzSmtrWktmUDZONmk1UDlOZ2ZXTGowa2dI?=
 =?utf-8?B?MDV2NzJpV0NtMHd6RnBqM1p6Ty9neGV0Qk52UEFMRjI4N28rZWx1cHp4azlv?=
 =?utf-8?B?dXdEL2p2UHEyR2M0NXJ6NlB6VFZjQkRqT29NMlFOeW1TODRPaWllTWVjNjBn?=
 =?utf-8?B?cTFFVUVTYzEwdVl2Z2orRHRiY00zUjZPalVOMXJNcVc5TmRoSVQ5QzczTUQ4?=
 =?utf-8?B?RjR1TDEzSkJ5cm5EcW1HcFVJM0JBUGJGNEdObmROcTA0a3ByaXQ2VDkxOHJI?=
 =?utf-8?B?M3k0MWNsQUFjMWFiZUFWYlhmdmJORmNkOHVBK0crNS9GTmNCNEl3cis5dFp4?=
 =?utf-8?B?OXJocVp4cjBpamlHWDNVM2QyS1M1MjIzZTJ5MmgyZU1DUG1XRUZuTWx3cTRM?=
 =?utf-8?B?Uk90ZXpwMUQ0cEpROFZJS2VRczFIQTdHdjZpOFRLVTAwZ0ZIaUhsaTZDczd2?=
 =?utf-8?B?U0VlcHVIYytFU0lQaTROTndaSS9SNWxWV3BVUXg3dEdIcXhYb0IyUkFZNnZl?=
 =?utf-8?B?NWNJOVdBRXVPQ0laTGpEaElaZ21yWDhBY0ZWNVRMSjdZKy8zMm1lQ2dRSE9u?=
 =?utf-8?Q?fvk+HSxPTU6+q?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c18fa3a9-583c-4d03-c8a3-08d919f46587
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 11:59:31.7627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wsGhVQVUFTnFnfhnItdG86RE/kr9YlbeDEpkqsoyYCuLZoOM5hhlOYObNWN6OpXI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4125
Subject: Re: [Intel-gfx] [PATCH v2 13/15] drm/ttm: Add BO and offset
 arguments for vm_access and vm_fault ttm handlers.
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

Q2FuIHlvdSBzZW5kIG1lIHRoZSBwYXRjaCBkaXJlY3RseSBhbmQgbm90IGp1c3Qgb24gQ0M/CgpU
aGFua3MsCkNocmlzdGlhbi4KCkFtIDE4LjA1LjIxIHVtIDEwOjU5IHNjaHJpZWIgVGhvbWFzIEhl
bGxzdHLDtm06Cj4gKyBDaHJpc3RpYW4gS8O2bmlnCj4KPiBPbiA1LzE4LzIxIDEwOjI2IEFNLCBU
aG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4gRnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4KPj4gVGhpcyBhbGxvd3Mgb3RoZXIgZHJp
dmVycyB0aGF0IG1heSBub3Qgc2V0dXAgdGhlIHZtYSBpbiB0aGUgc2FtZSB3YXkKPj4gdG8gdXNl
IHRoZSB0dG0gYm8gaGVscGVycy4KPj4KPj4gQWxzbyBjbGFyaWZ5IHRoZSBkb2N1bWVudGF0aW9u
IGEgYml0LCBlc3BlY2lhbGx5IHJlbGF0ZWQgdG8gCj4+IFZNX0ZBVUxUX1JFVFJZLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgo+Cj4gTGd0bS4gUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jwqDCoMKgIHzCoCA0ICstCj4+IMKgIGRyaXZlcnMv
Z3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfdHRtLmPCoMKgwqDCoMKgIHzCoCA0ICstCj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jwqDCoMKgwqDCoMKgwqAgfMKgIDQgKy0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCA4NCArKysrKysrKysrKysrLS0tLS0tLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS92bXdn
Zngvdm13Z2Z4X3BhZ2VfZGlydHkuYyB8wqAgOCArKy0KPj4gwqAgaW5jbHVkZS9kcm0vdHRtL3R0
bV9ib19hcGkuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDkgKystCj4+IMKgIDYg
ZmlsZXMgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgCj4+IGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCj4+IGluZGV4IGQ1YTlkN2E4
ODMxNS4uODlkYWZlMTRmODI4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdHRtLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3R0bS5jCj4+IEBAIC0xOTE5LDcgKzE5MTksOSBAQCBzdGF0aWMgdm1fZmF1bHRfdCBhbWRn
cHVfdHRtX2ZhdWx0KHN0cnVjdCAKPj4gdm1fZmF1bHQgKnZtZikKPj4gwqDCoMKgwqDCoCBpZiAo
cmV0KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byB1bmxvY2s7Cj4+IMKgIC3CoMKgwqAgcmV0
ID0gdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHZtZiwgdm1mLT52bWEtPnZtX3BhZ2VfcHJvdCwK
Pj4gK8KgwqDCoCByZXQgPSB0dG1fYm9fdm1fZmF1bHRfcmVzZXJ2ZWQoYm8sIHZtZiwKPj4gKyBk
cm1fdm1hX25vZGVfc3RhcnQoJmJvLT5iYXNlLnZtYV9ub2RlKSwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZtZi0+dm1hLT52bV9wYWdlX3Byb3QsCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUVE1fQk9f
Vk1fTlVNX1BSRUZBVUxULCAxKTsKPj4gwqDCoMKgwqDCoCBpZiAocmV0ID09IFZNX0ZBVUxUX1JF
VFJZICYmICEodm1mLT5mbGFncyAmIAo+PiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJVCkpCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL25vdXZlYXUvbm91dmVhdV90dG0uYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9u
b3V2ZWF1X3R0bS5jCj4+IGluZGV4IGI4MWFlOTBiODQ0OS4uNTU1ZmI2ZDhiZThiIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X3R0bS5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfdHRtLmMKPj4gQEAgLTE0NCw3ICsxNDQsOSBA
QCBzdGF0aWMgdm1fZmF1bHRfdCBub3V2ZWF1X3R0bV9mYXVsdChzdHJ1Y3QgCj4+IHZtX2ZhdWx0
ICp2bWYpCj4+IMKgIMKgwqDCoMKgwqAgbm91dmVhdV9ib19kZWxfaW9fcmVzZXJ2ZV9scnUoYm8p
Owo+PiDCoMKgwqDCoMKgIHByb3QgPSB2bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3MpOwo+
PiAtwqDCoMKgIHJldCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsIAo+PiBU
VE1fQk9fVk1fTlVNX1BSRUZBVUxULCAxKTsKPj4gK8KgwqDCoCByZXQgPSB0dG1fYm9fdm1fZmF1
bHRfcmVzZXJ2ZWQoYm8sIHZtZiwKPj4gKyBkcm1fdm1hX25vZGVfc3RhcnQoJmJvLT5iYXNlLnZt
YV9ub2RlKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHByb3QsIFRUTV9CT19WTV9OVU1fUFJFRkFVTFQsIDEpOwo+PiDCoMKgwqDCoMKgIG5vdXZlYXVf
Ym9fYWRkX2lvX3Jlc2VydmVfbHJ1KGJvKTsKPj4gwqDCoMKgwqDCoCBpZiAocmV0ID09IFZNX0ZB
VUxUX1JFVFJZICYmICEodm1mLT5mbGFncyAmIAo+PiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJVCkp
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fdHRtLmMKPj4gaW5kZXggMzM2MWQxMTc2OWEyLi5iYTQ4YTJhY2RlZjAgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCj4+IEBAIC04MTYsNyArODE2LDkgQEAg
c3RhdGljIHZtX2ZhdWx0X3QgcmFkZW9uX3R0bV9mYXVsdChzdHJ1Y3QgCj4+IHZtX2ZhdWx0ICp2
bWYpCj4+IMKgwqDCoMKgwqAgaWYgKHJldCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gdW5s
b2NrX3Jlc3Y7Cj4+IMKgIC3CoMKgwqAgcmV0ID0gdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHZt
Ziwgdm1mLT52bWEtPnZtX3BhZ2VfcHJvdCwKPj4gK8KgwqDCoCByZXQgPSB0dG1fYm9fdm1fZmF1
bHRfcmVzZXJ2ZWQoYm8sIHZtZiwKPj4gKyBkcm1fdm1hX25vZGVfc3RhcnQoJmJvLT5iYXNlLnZt
YV9ub2RlKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHZtZi0+dm1hLT52bV9wYWdlX3Byb3QsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBUVE1fQk9fVk1fTlVNX1BSRUZBVUxULCAxKTsKPj4gwqDCoMKg
wqDCoCBpZiAocmV0ID09IFZNX0ZBVUxUX1JFVFJZICYmICEodm1mLT5mbGFncyAmIAo+PiBGQVVM
VF9GTEFHX1JFVFJZX05PV0FJVCkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHVubG9ja19t
Y2xrOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyAKPj4g
Yi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCj4+IGluZGV4IGIzMWIxODA1ODk2NS4u
ZWQwMGNjZjEzNzZlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192
bS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKPj4gQEAgLTQyLDcg
KzQyLDcgQEAKPj4gwqAgI2luY2x1ZGUgPGxpbnV4L21lbV9lbmNyeXB0Lmg+Cj4+IMKgIMKgIHN0
YXRpYyB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdF9pZGxlKHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8sCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZtX2Zh
dWx0ICp2bWYpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHZtX2ZhdWx0X3Qg
cmV0ID0gMDsKPj4gwqDCoMKgwqDCoCBpbnQgZXJyID0gMDsKPj4gQEAgLTEyMiw3ICsxMjIsOCBA
QCBzdGF0aWMgdW5zaWduZWQgbG9uZyB0dG1fYm9faW9fbWVtX3BmbihzdHJ1Y3QgCj4+IHR0bV9i
dWZmZXJfb2JqZWN0ICpibywKPj4gwqDCoCAqIFJldHVybjoKPj4gwqDCoCAqwqDCoMKgIDAgb24g
c3VjY2VzcyBhbmQgdGhlIGJvIHdhcyByZXNlcnZlZC4KPj4gwqDCoCAqwqDCoMKgIFZNX0ZBVUxU
X1JFVFJZIGlmIGJsb2NraW5nIHdhaXQuCj4+IC0gKsKgwqDCoCBWTV9GQVVMVF9OT1BBR0UgaWYg
YmxvY2tpbmcgd2FpdCBhbmQgcmV0cnlpbmcgd2FzIG5vdCBhbGxvd2VkLgo+PiArICrCoMKgwqAg
Vk1fRkFVTFRfTk9QQUdFIGlmIGJsb2NraW5nIHdhaXQgYW5kIHJldHJ5aW5nIHdhcyBub3QgYWxs
b3dlZCwgCj4+IG9yIHdhaXQgaW50ZXJydXB0ZWQuCj4+ICsgKsKgwqDCoCBWTV9GQVVMVF9TSUdC
VVMgaWYgd2FpdCBvbiBiby0+bW92aW5nIGZhaWxlZCBmb3IgcmVhc29uIG90aGVyIAo+PiB0aGFu
IGEgc2lnbmFsLgo+PiDCoMKgICovCj4+IMKgIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX3Jlc2VydmUo
c3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCB2bV9mYXVsdCAqdm1mKQo+PiBAQCAtMjU0LDcgKzI1NSw5IEBA
IHN0YXRpYyB2bV9mYXVsdF90IHR0bV9ib192bV9pbnNlcnRfaHVnZShzdHJ1Y3QgCj4+IHZtX2Zh
dWx0ICp2bWYsCj4+IMKgIMKgIC8qKgo+PiDCoMKgICogdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVk
IC0gVFRNIGZhdWx0IGhlbHBlcgo+PiArICogQGJvOiBUaGUgYnVmZmVyIG9iamVjdAo+PiDCoMKg
ICogQHZtZjogVGhlIHN0cnVjdCB2bV9mYXVsdCBnaXZlbiBhcyBhcmd1bWVudCB0byB0aGUgZmF1
bHQgY2FsbGJhY2sKPj4gKyAqIEBtbWFwX2Jhc2U6IFRoZSBiYXNlIG9mIHRoZSBtbWFwLCB0byB3
aGljaCB0aGUgQHZtZiBmYXVsdCBpcyAKPj4gcmVsYXRpdmUgdG8uCj4+IMKgwqAgKiBAcHJvdDog
VGhlIHBhZ2UgcHJvdGVjdGlvbiB0byBiZSB1c2VkIGZvciB0aGlzIG1lbW9yeSBhcmVhLgo+PiDC
oMKgICogQG51bV9wcmVmYXVsdDogTWF4aW11bSBudW1iZXIgb2YgcHJlZmF1bHQgcGFnZXMuIFRo
ZSBjYWxsZXIgbWF5IAo+PiB3YW50IHRvCj4+IMKgwqAgKiBzcGVjaWZ5IHRoaXMgYmFzZWQgb24g
bWFkdmljZSBzZXR0aW5ncyBhbmQgdGhlIHNpemUgb2YgdGhlIEdQVSAKPj4gb2JqZWN0Cj4+IEBA
IC0yNjUsMTkgKzI2OCwyOCBAQCBzdGF0aWMgdm1fZmF1bHRfdCB0dG1fYm9fdm1faW5zZXJ0X2h1
Z2Uoc3RydWN0IAo+PiB2bV9mYXVsdCAqdm1mLAo+PiDCoMKgICogbWVtb3J5IGJhY2tpbmcgdGhl
IGJ1ZmZlciBvYmplY3QsIGFuZCB0aGVuIHJldHVybnMgYSByZXR1cm4gY29kZQo+PiDCoMKgICog
aW5zdHJ1Y3RpbmcgdGhlIGNhbGxlciB0byByZXRyeSB0aGUgcGFnZSBhY2Nlc3MuCj4+IMKgwqAg
Kgo+PiArICogVGhpcyBmdW5jdGlvbiBlbnN1cmVzIGFueSBwaXBlbGluZWQgd2FpdCBpcyBmaW5p
c2hlZC4KPj4gKyAqCj4+ICsgKiBXQVJOSU5HOgo+PiArICogT24gVk1fRkFVTFRfUkVUUlksIHRo
ZSBibyB3aWxsIGJlIHVubG9ja2VkIGJ5IHRoaXMgZnVuY3Rpb24gd2hlbgo+PiArICogI0ZBVUxU
X0ZMQUdfUkVUUllfTk9XQUlUIGlzIG5vdCBzZXQgaW5zaWRlIEB2bWYtPmZsYWdzLiBJbiB0aGlz
Cj4+ICsgKiBjYXNlLCB0aGUgY2FsbGVyIHNob3VsZCBub3QgdW5sb2NrIHRoZSBAYm8uCj4+ICsg
Kgo+PiDCoMKgICogUmV0dXJuOgo+PiAtICrCoMKgIFZNX0ZBVUxUX05PUEFHRSBvbiBzdWNjZXNz
IG9yIHBlbmRpbmcgc2lnbmFsCj4+ICsgKsKgwqAgMCBvbiBzdWNjZXNzLgo+PiArICrCoMKgIFZN
X0ZBVUxUX05PUEFHRSBvbiBwZW5kaW5nIHNpZ25hbAo+PiDCoMKgICrCoMKgIFZNX0ZBVUxUX1NJ
R0JVUyBvbiB1bnNwZWNpZmllZCBlcnJvcgo+PiDCoMKgICrCoMKgIFZNX0ZBVUxUX09PTSBvbiBv
dXQtb2YtbWVtb3J5Cj4+IC0gKsKgwqAgVk1fRkFVTFRfUkVUUlkgaWYgcmV0cnlhYmxlIHdhaXQK
Pj4gKyAqwqDCoCBWTV9GQVVMVF9SRVRSWSBpZiByZXRyeWFibGUgd2FpdCwgc2VlIFdBUk5JTkcg
YWJvdmUuCj4+IMKgwqAgKi8KPj4gLXZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVk
KHN0cnVjdCB2bV9mYXVsdCAqdm1mLAo+PiArdm1fZmF1bHRfdCB0dG1fYm9fdm1fZmF1bHRfcmVz
ZXJ2ZWQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB2bV9mYXVsdCAqdm1mLAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBtbWFwX2Jhc2UsCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwZ3Byb3RfdCBwcm90
LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGdvZmZfdCBu
dW1fcHJlZmF1bHQsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBwZ29mZl90IGZhdWx0X3BhZ2Vfc2l6ZSkKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqdm1hID0gdm1mLT52bWE7Cj4+IC3CoMKgwqAgc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibyA9IHZtYS0+dm1fcHJpdmF0ZV9kYXRhOwo+PiDCoMKgwqDCoMKgIHN0cnVj
dCB0dG1fZGV2aWNlICpiZGV2ID0gYm8tPmJkZXY7Cj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9u
ZyBwYWdlX29mZnNldDsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIHBhZ2VfbGFzdDsKPj4g
QEAgLTI4NiwxNSArMjk4LDExIEBAIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVk
KHN0cnVjdCAKPj4gdm1fZmF1bHQgKnZtZiwKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcGFnZSAqcGFn
ZTsKPj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+PiDCoMKgwqDCoMKgIHBnb2ZmX3QgaTsKPj4gLcKg
wqDCoCB2bV9mYXVsdF90IHJldCA9IFZNX0ZBVUxUX05PUEFHRTsKPj4gK8KgwqDCoCB2bV9mYXVs
dF90IHJldDsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGFkZHJlc3MgPSB2bWYtPmFkZHJl
c3M7Cj4+IMKgIC3CoMKgwqAgLyoKPj4gLcKgwqDCoMKgICogV2FpdCBmb3IgYnVmZmVyIGRhdGEg
aW4gdHJhbnNpdCwgZHVlIHRvIGEgcGlwZWxpbmVkCj4+IC3CoMKgwqDCoCAqIG1vdmUuCj4+IC3C
oMKgwqDCoCAqLwo+PiDCoMKgwqDCoMKgIHJldCA9IHR0bV9ib192bV9mYXVsdF9pZGxlKGJvLCB2
bWYpOwo+PiAtwqDCoMKgIGlmICh1bmxpa2VseShyZXQgIT0gMCkpCj4+ICvCoMKgwqAgaWYgKHJl
dCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IMKgIMKgwqDCoMKgwqAgZXJy
ID0gdHRtX21lbV9pb19yZXNlcnZlKGJkZXYsICZiby0+bWVtKTsKPj4gQEAgLTMwMiw5ICszMTAs
OCBAQCB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZChzdHJ1Y3QgCj4+IHZtX2Zh
dWx0ICp2bWYsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gVk1fRkFVTFRfU0lHQlVTOwo+
PiDCoCDCoMKgwqDCoMKgIHBhZ2Vfb2Zmc2V0ID0gKChhZGRyZXNzIC0gdm1hLT52bV9zdGFydCkg
Pj4gUEFHRV9TSElGVCkgKwo+PiAtwqDCoMKgwqDCoMKgwqAgdm1hLT52bV9wZ29mZiAtIGRybV92
bWFfbm9kZV9zdGFydCgmYm8tPmJhc2Uudm1hX25vZGUpOwo+PiAtwqDCoMKgIHBhZ2VfbGFzdCA9
IHZtYV9wYWdlcyh2bWEpICsgdm1hLT52bV9wZ29mZiAtCj4+IC3CoMKgwqDCoMKgwqDCoCBkcm1f
dm1hX25vZGVfc3RhcnQoJmJvLT5iYXNlLnZtYV9ub2RlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHZt
YS0+dm1fcGdvZmYgLSBtbWFwX2Jhc2U7Cj4+ICvCoMKgwqAgcGFnZV9sYXN0ID0gdm1hX3BhZ2Vz
KHZtYSkgKyB2bWEtPnZtX3Bnb2ZmIC0gbW1hcF9iYXNlOwo+PiDCoCDCoMKgwqDCoMKgIGlmICh1
bmxpa2VseShwYWdlX29mZnNldCA+PSBiby0+bWVtLm51bV9wYWdlcykpCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gVk1fRkFVTFRfU0lHQlVTOwo+PiBAQCAtMzQ0LDggKzM1MSw3IEBAIHZt
X2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVjdCAKPj4gdm1fZmF1bHQgKnZt
ZiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfSBlbHNlIGlmICh1bmxpa2VseSghcGFn
ZSkpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYWdl
LT5pbmRleCA9IGRybV92bWFfbm9kZV9zdGFydCgmYm8tPmJhc2Uudm1hX25vZGUpICsKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYWdlX29mZnNldDsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcGFnZS0+aW5kZXggPSBtbWFwX2Jhc2UgKyBwYWdlX29mZnNldDsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGZuID0gcGFnZV90b19wZm4ocGFnZSk7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCB9Cj4+IMKgIEBAIC0zOTIsNyArMzk4LDEwIEBAIHZtX2ZhdWx0X3QgdHRt
X2JvX3ZtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIHJldDsKPj4gwqAgwqDCoMKgwqDCoCBwcm90ID0gdm1hLT52bV9wYWdlX3Byb3Q7Cj4+
IC3CoMKgwqAgcmV0ID0gdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHZtZiwgcHJvdCwgCj4+IFRU
TV9CT19WTV9OVU1fUFJFRkFVTFQsIDEpOwo+PiArwqDCoMKgIHJldCA9IHR0bV9ib192bV9mYXVs
dF9yZXNlcnZlZChibywgdm1mLAo+PiArIGRybV92bWFfbm9kZV9zdGFydCgmYm8tPmJhc2Uudm1h
X25vZGUpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cHJvdCwgVFRNX0JPX1ZNX05VTV9QUkVGQVVMVCwgMSk7Cj4+ICsKPj4gwqDCoMKgwqDCoCBpZiAo
cmV0ID09IFZNX0ZBVUxUX1JFVFJZICYmICEodm1mLT5mbGFncyAmIAo+PiBGQVVMVF9GTEFHX1JF
VFJZX05PV0FJVCkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiDCoCBAQCAt
NDYwLDIyICs0NjksMTYgQEAgc3RhdGljIGludCB0dG1fYm9fdm1fYWNjZXNzX2ttYXAoc3RydWN0
IAo+PiB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGxlbjsKPj4g
wqAgfQo+PiDCoCAtaW50IHR0bV9ib192bV9hY2Nlc3Moc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2
bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2b2lk
ICpidWYsIGludCBsZW4sIGludCB3cml0ZSkKPj4gK2ludCB0dG1fYm9fdm1fYWNjZXNzX3Jlc2Vy
dmVkKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIG9mZnNldCwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdm9pZCAqYnVmLCBpbnQgbGVuLCBpbnQgd3Jp
dGUpCj4+IMKgIHsKPj4gLcKgwqDCoCBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvID0gdm1h
LT52bV9wcml2YXRlX2RhdGE7Cj4+IC3CoMKgwqAgdW5zaWduZWQgbG9uZyBvZmZzZXQgPSAoYWRk
cikgLSB2bWEtPnZtX3N0YXJ0ICsKPj4gLcKgwqDCoMKgwqDCoMKgICgodm1hLT52bV9wZ29mZiAt
IGRybV92bWFfbm9kZV9zdGFydCgmYm8tPmJhc2Uudm1hX25vZGUpKQo+PiAtwqDCoMKgwqDCoMKg
wqDCoCA8PCBQQUdFX1NISUZUKTsKPj4gwqDCoMKgwqDCoCBpbnQgcmV0Owo+PiDCoCDCoMKgwqDC
oMKgIGlmIChsZW4gPCAxIHx8IChvZmZzZXQgKyBsZW4pID4+IFBBR0VfU0hJRlQgPiBiby0+bWVt
Lm51bV9wYWdlcykKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlPOwo+PiDCoCAtwqDC
oMKgIHJldCA9IHR0bV9ib19yZXNlcnZlKGJvLCB0cnVlLCBmYWxzZSwgTlVMTCk7Cj4+IC3CoMKg
wqAgaWYgKHJldCkKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IC0KPj4gwqDCoMKg
wqDCoCBzd2l0Y2ggKGJvLT5tZW0ubWVtX3R5cGUpIHsKPj4gwqDCoMKgwqDCoCBjYXNlIFRUTV9Q
TF9TWVNURU06Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodW5saWtlbHkoYm8tPnR0bS0+cGFn
ZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU1dBUFBFRCkpIHsKPj4gQEAgLTQ4NSwxNiArNDg4LDMz
IEBAIGludCB0dG1fYm9fdm1fYWNjZXNzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAKPj4gKnZtYSwg
dW5zaWduZWQgbG9uZyBhZGRyLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgZmFsbHRocm91Z2g7Cj4+IMKgwqDCoMKgwqAgY2FzZSBUVE1fUExfVFQ6Cj4+IC3C
oMKgwqDCoMKgwqDCoCByZXQgPSB0dG1fYm9fdm1fYWNjZXNzX2ttYXAoYm8sIG9mZnNldCwgYnVm
LCBsZW4sIHdyaXRlKTsKPj4gLcKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIHR0bV9ib192bV9hY2Nlc3Nfa21hcChibywgb2Zmc2V0LCBidWYsIGxlbiwgd3Jp
dGUpOwo+PiDCoMKgwqDCoMKgIGRlZmF1bHQ6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoYm8t
PmJkZXYtPmZ1bmNzLT5hY2Nlc3NfbWVtb3J5KQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXQgPSBiby0+YmRldi0+ZnVuY3MtPmFjY2Vzc19tZW1vcnkoCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiBiby0+YmRldi0+ZnVuY3MtPmFjY2Vzc19tZW1vcnkoCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm8sIG9mZnNldCwgYnVmLCBsZW4sIHdyaXRlKTsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
ID0gLUVJTzsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU87Cj4+IMKgwqDC
oMKgwqAgfQo+PiDCoCArwqDCoMKgIHJldHVybiByZXQ7Cj4+ICt9Cj4+ICtFWFBPUlRfU1lNQk9M
KHR0bV9ib192bV9hY2Nlc3NfcmVzZXJ2ZWQpOwo+PiArCj4+ICtpbnQgdHRtX2JvX3ZtX2FjY2Vz
cyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwgdW5zaWduZWQgbG9uZyBhZGRyLAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZvaWQgKmJ1ZiwgaW50IGxlbiwgaW50IHdyaXRlKQo+PiAr
ewo+PiArwqDCoMKgIHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8gPSB2bWEtPnZtX3ByaXZh
dGVfZGF0YTsKPj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIG9mZnNldCA9IChhZGRyKSAtIHZtYS0+
dm1fc3RhcnQgKwo+PiArwqDCoMKgwqDCoMKgwqAgKCh2bWEtPnZtX3Bnb2ZmIC0gZHJtX3ZtYV9u
b2RlX3N0YXJ0KCZiby0+YmFzZS52bWFfbm9kZSkpCj4+ICvCoMKgwqDCoMKgwqDCoMKgIDw8IFBB
R0VfU0hJRlQpOwo+PiArwqDCoMKgIGludCByZXQ7Cj4+ICsKPj4gK8KgwqDCoCByZXQgPSB0dG1f
Ym9fcmVzZXJ2ZShibywgdHJ1ZSwgZmFsc2UsIE5VTEwpOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiArCj4+ICvCoMKgwqAgcmV0ID0gdHRtX2Jv
X3ZtX2FjY2Vzc19yZXNlcnZlZChibywgdm1hLCBvZmZzZXQsIGJ1ZiwgbGVuLCB3cml0ZSk7Cj4+
IMKgwqDCoMKgwqAgdHRtX2JvX3VucmVzZXJ2ZShibyk7Cj4+IMKgIMKgwqDCoMKgwqAgcmV0dXJu
IHJldDsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3BhZ2Vf
ZGlydHkuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9wYWdlX2RpcnR5LmMK
Pj4gaW5kZXggNDVjOWM2YTdmMWQ2Li41NmVjYWNlMGNmNWMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3BhZ2VfZGlydHkuYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vdm13Z2Z4L3Ztd2dmeF9wYWdlX2RpcnR5LmMKPj4gQEAgLTQ3Nyw3ICs0NzcsOSBAQCB2
bV9mYXVsdF90IHZtd19ib192bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKPj4gwqDCoMKg
wqDCoCBlbHNlCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcm90ID0gdm1fZ2V0X3BhZ2VfcHJvdCh2
bWEtPnZtX2ZsYWdzKTsKPj4gwqAgLcKgwqDCoCByZXQgPSB0dG1fYm9fdm1fZmF1bHRfcmVzZXJ2
ZWQodm1mLCBwcm90LCBudW1fcHJlZmF1bHQsIDEpOwo+PiArwqDCoMKgIHJldCA9IHR0bV9ib192
bV9mYXVsdF9yZXNlcnZlZChibywgdm1mLAo+PiArIGRybV92bWFfbm9kZV9zdGFydCgmYm8tPmJh
c2Uudm1hX25vZGUpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcHJvdCwgbnVtX3ByZWZhdWx0LCAxKTsKPj4gwqDCoMKgwqDCoCBpZiAocmV0ID09IFZN
X0ZBVUxUX1JFVFJZICYmICEodm1mLT5mbGFncyAmIAo+PiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJ
VCkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiDCoCBAQCAtNTQ2LDcgKzU0
OCw5IEBAIHZtX2ZhdWx0X3Qgdm13X2JvX3ZtX2h1Z2VfZmF1bHQoc3RydWN0IHZtX2ZhdWx0IAo+
PiAqdm1mLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcHJvdCA9IHZtX2dldF9wYWdlX3Byb3Qodm1h
LT52bV9mbGFncyk7Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCAtwqDCoMKgIHJldCA9IHR0bV9ib192
bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsIDEsIGZhdWx0X3BhZ2Vfc2l6ZSk7Cj4+ICvCoMKg
wqAgcmV0ID0gdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKGJvLCB2bWYsCj4+ICsgZHJtX3ZtYV9u
b2RlX3N0YXJ0KCZiby0+YmFzZS52bWFfbm9kZSksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcm90LCAxLCBmYXVsdF9wYWdlX3NpemUpOwo+PiDCoMKg
wqDCoMKgIGlmIChyZXQgPT0gVk1fRkFVTFRfUkVUUlkgJiYgISh2bWYtPmZsYWdzICYgCj4+IEZB
VUxUX0ZMQUdfUkVUUllfTk9XQUlUKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7
Cj4+IMKgIGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oIAo+PiBiL2lu
Y2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKPj4gaW5kZXggNjM5NTIxODgwYzI5Li40MzRmOTFm
MWZkYmYgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKPj4gKysr
IGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+PiBAQCAtNjA1LDcgKzYwNSw5IEBAIGlu
dCB0dG1fbWVtX2V2aWN0X2ZpcnN0KHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2LAo+PiDCoCB2bV9m
YXVsdF90IHR0bV9ib192bV9yZXNlcnZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgdm1fZmF1bHQgKnZt
Zik7Cj4+IMKgIC12bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZChzdHJ1Y3Qgdm1f
ZmF1bHQgKnZtZiwKPj4gK3ZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3Qgdm1fZmF1bHQgKnZtZiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgbW1hcF9iYXNlLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGdwcm90X3QgcHJvdCwKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBnb2ZmX3QgbnVtX3ByZWZhdWx0
LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGdvZmZfdCBm
YXVsdF9wYWdlX3NpemUpOwo+PiBAQCAtNjE2LDYgKzYxOCwxMSBAQCB2b2lkIHR0bV9ib192bV9v
cGVuKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsKPj4gwqAgwqAgdm9pZCB0dG1fYm9fdm1f
Y2xvc2Uoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwo+PiDCoCAraW50IHR0bV9ib192bV9h
Y2Nlc3NfcmVzZXJ2ZWQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgb2Zmc2V0
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2b2lkICpidWYsIGludCBs
ZW4sIGludCB3cml0ZSk7Cj4+ICsKPj4gwqAgaW50IHR0bV9ib192bV9hY2Nlc3Moc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB2b2lkICpidWYsIGludCBsZW4sIGludCB3cml0ZSk7Cj4+IMKgIGJvb2wg
dHRtX2JvX2RlbGF5ZWRfZGVsZXRlKHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2LCBib29sIHJlbW92
ZV9hbGwpOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
