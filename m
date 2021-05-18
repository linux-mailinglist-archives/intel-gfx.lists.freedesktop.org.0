Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 336B4387D82
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 18:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 699D56EC31;
	Tue, 18 May 2021 16:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2047.outbound.protection.outlook.com [40.107.94.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8F716EC31;
 Tue, 18 May 2021 16:30:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NuQompQ7wuT5kru3CLMdX49EuWIsZgk64Us1tz4QjOCsXbRts2AgfdcvuNdLbBrQ05t2Ykk8Rs4rImgAMjUU30bFR3ehpbjiChK6zVs1KQYcfnfjrFoge8k+WqMqFa2HJ4MgcIEwix7sr/ieZ4QoPlGut0XVr88hpUgRbWG2WhpYQEDFtq+/FAU6y3M9bbdON6lH7KAvvKht6oY7L46MqluDYTDpST1vLFrYc4L7rRyN4+dWErgrtl1edSPK8C8KEHPtMXI87mtVfbk0psr95HS9yt95jH8kkUQe5mg74tqoUv+roZ2U398tYBHccoRsIwN9dEp0A2eBiCWXK4x5fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+pSNCCxVKbOvtrpx2B+TtTDZ9LmzYU23V9EnHtMgIyw=;
 b=bJJbKKjD8Kl9sH1+8FIwtbvGHVjSutM/k5ZBItk5kKq2U50IiFuhYKvKpgoX8/lZ+o9SIq782QvnRtprrfzUMLbZq7kEP9jy4SHt3E8VeD8rjemyMfC4jScT2bdi+l1oM7fMlhZhuouXRbLPgWCuR5jEOV2yRyPdXNhe6C+ckZpKBaeK+dtN/ZXZzBprOOaFyFGnSUSB6EXmOV1M+17rd+Fjq4Mly0IP7QABKLyucQyVdYVOou1NEwN3/RZbiRB2AZQVgjmEaHFj9nraS6QcFQAqjUYftIrSnkn5P/bygzqzzfGn5dthz07/3nlgawMDceEPXuRo7OEJS1d+UcEoXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+pSNCCxVKbOvtrpx2B+TtTDZ9LmzYU23V9EnHtMgIyw=;
 b=m6fwnqoceHqUQ/YHAuD20xaw+bv2NpUnigJHlwBCjwrAjLgVLk1etvNsh6/oDGmaTFmgBK8eqfk3rnE9RME1PwSxV0RRFmRn/73HmStaaROQmGZ2c09rsyfVo6Fko0rEpmaCToLo7/d8F38ORxdZA0AcTSboYwxEVCmhbw2W9F8=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4223.namprd12.prod.outlook.com (2603:10b6:208:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Tue, 18 May
 2021 16:30:46 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 16:30:46 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
 <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
 <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
 <f5c008cb-5047-7cbf-0361-e4e58e38d6e0@linux.intel.com>
 <fb9a4898-5844-c1e5-7a24-cb50a9ad6df7@amd.com>
 <334dc2d2-2053-9e42-62be-58784e4256aa@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <a627f340-492e-c2cd-f805-8fafdca8eb60@amd.com>
Date: Tue, 18 May 2021 18:30:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <334dc2d2-2053-9e42-62be-58784e4256aa@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:88c7:d7d9:22ef:f850]
X-ClientProxiedBy: AM9P195CA0013.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:21f::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:88c7:d7d9:22ef:f850]
 (2a02:908:1252:fb60:88c7:d7d9:22ef:f850) by
 AM9P195CA0013.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:21f::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25 via Frontend Transport; Tue, 18 May 2021 16:30:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 001f6dbf-2287-4b6e-fe22-08d91a1a4a2a
X-MS-TrafficTypeDiagnostic: MN2PR12MB4223:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4223BAC2652CBC103714512E832C9@MN2PR12MB4223.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /5bDv00axUWJln6q6tiG0G+kCmkkDNlQ9vWTSKb06fVAuH4yyg0WfFC06ignqgt9wDSByDQhw+k2FfjPfmchRAJ3N8ogiS7kw3umD/qKZrRIM81MgjKpu48W9+UxXzT//000nHnnpLzyPdHLFdYLIYA2VoM3OZvKIWw3CyQBeOeodLpre3pllCDyMx0b3i7lbGhI3104nZu3kFessHB53dTwn7dhXjZy6Q8ckX+EiBM/7j/5sltT3sQwuJ1KwXZDq7DYbT9K6YMTGalp9k4uA2D2Aje/HDaR12xDpBYykQ6vkoX6UumCJ7BGahKMZx3Sk6TSFuBVNmonj6KzoBbZG7F+di9AbQMphnc1KNhuSFdeDS6H1TfUIrHO5b5k4Pc/wEP3J6fwJuwx9X1dLLAjhmaPRe8wi8W+iZGZWSUfXbTUoyuBLFE3Om64Bm0R2cFgkQQMQJIUnxNU34SpkM3NRmFhGMWBy81L+bavoJkWQIldBFh36+tuQ+nZL0/V0m24XdLAuRKhKHfoIXEjVo/NYC1owNzFjVI7qXAh35sraJCPhThrc4P/tidgwnRb4/3/ZLcJWn7vjz0TsR0MiCdKpjyk2jnsLSFBKyYX0CG6hmWBcsMFds0qobAC4mP0TQCkR99KIm3mNigppehSW/aA5olb4b2wnHTImBmjdVpb/QxiGJWinClnGYPMhrUXj8Vk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(66574015)(86362001)(31696002)(31686004)(5660300002)(8676002)(8936002)(6666004)(38100700002)(186003)(83380400001)(16526019)(2906002)(66946007)(52116002)(66556008)(316002)(2616005)(53546011)(36756003)(6486002)(478600001)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?bUlpZEh3MVlJbWdvODVPYUwxWjhmMGpSSzdNcmkzYzUrSHMrOGNZL3lBTDV5?=
 =?utf-8?B?NTErYTdHcWQvYzk3d0Zpems1R3NOL1QybXd2ZEtTTFlLWEk3aFIzc0xLOVgx?=
 =?utf-8?B?aVY2NUtZQWY3aDY0RHc0WkpXeStCdFVIZjQvakVvYzUveDlFSWE5VmV2VktU?=
 =?utf-8?B?RStZajJJUGVaeWZOdlQ5WTJRbWZNTG5NWHJPLytXQmUyUjMwYkZaSlZFZ0Zz?=
 =?utf-8?B?OExaRnZ5Z05Rb2xUUTFHaTg4SEYyUVdxQi9Wbng5Nzg3NndZdU5sWkVQQ3E3?=
 =?utf-8?B?VmpHNEJrQU5OL0FaVjZqSmR6V1FOUklLUG51MWRuZnQ5bHlOLzNSaDJFY3FB?=
 =?utf-8?B?L2R2UDB1SEE4bkVrTGRGS3NuVG1yRDB0aFEwNGpseGhVNXFmZVA0Ti91MVk3?=
 =?utf-8?B?TXg0cTNmQWwzYi93QWp5czRBTEpGOW0yMlJUb24wOWkxL1JNREJrNmNpVDg3?=
 =?utf-8?B?NGVuN2F0WEU3RUdsV0tOTGxWaVMwWWlSanhBYUFZS1pQUTRTSDNmTVFHNlZP?=
 =?utf-8?B?SDM1V2tlWVhLTWhUMXpOTUc2WXhadlhHUDk5Z1Vya05RUEo1K2trZkxMQmtN?=
 =?utf-8?B?T0FBdGxiOEJqUWlwc2N0aVUzME42TStKSm1STXc5aW9PK2NtVlVXOWZJZ3hO?=
 =?utf-8?B?NkhjQk84Z0s5S1lyWDBZNFlQWldVRGp5eHdvSUhwZkJMeHhKL0g5cDNMcmVj?=
 =?utf-8?B?TXBMdGhEQWNENG5NMVZCMDFkT0srdHF0Y2VDZkVEZlB6Y1NKUmY1L3psVVRX?=
 =?utf-8?B?NUhuNSsxYzZnWFY1RkgrNVp4Y1pWL0FGdkc1WXNSc0EvLzdKdTBBNTJicHYz?=
 =?utf-8?B?S3hVMXVYa0NOb3RYUkdOK1BiTE56VDFTOWtRdEVpdjc4N1I0emJlQW1hOVVo?=
 =?utf-8?B?SG03N0dsUXMxVEpCazBrYkt0RTBpdDlkaFQ0UEdYK051NmxqNU81R3ZsdEhh?=
 =?utf-8?B?ays2WElSdlFYSGtCa3BUMmNSWGgveFV4SGFvdHJMSm5OY2JPRmdSMEltek81?=
 =?utf-8?B?dFNWYkJBSjE2NGJ1QU5pREZoaFk5WTJWdE8rdXdFNHgreG0wUFBORFNocW9L?=
 =?utf-8?B?aWIvekFYdDgvSzltRWRFSFpuQkFYa1g2WjBjeGVvQ2JuR1YycDVoQTlKUnpR?=
 =?utf-8?B?MlRKMFpwL3AwTXBBK2VpV3ZJdmZFSWM2c2FuTUc1alVZT09QckpIM1YybjVu?=
 =?utf-8?B?ZzlJZ20vODhWSnprWi82UmE3eEpyVGdFSEpmV1JGZCtnVE9FbmxYa0RNVHcy?=
 =?utf-8?B?N1h5UHZrSitZNElRQ3lQdjBTbTQxSUZLd0xJT1Rhd05NMGt5OVBVekxlN0Rk?=
 =?utf-8?B?S1phMW54STBRRXNMSTR3aThTSDNCMjU1bXVLY0JPT0F4MFJuUUh3cDE4ZlJV?=
 =?utf-8?B?c3c3YzdFZEw3Y2dVZEcrM3ZWWHVNSW56OU1WNWtHZ3N3dHo5bXNUWlUvL1ZE?=
 =?utf-8?B?cEt5Uml6czhsb29IOXdodzcxTEZ3SE5kN1FLQk5SSndxNElCNG1mdkxId1l6?=
 =?utf-8?B?VTRpZWRQT3F2d0VXanE2cGtxdmxKNjlZL2hrSzl2cnd5TVlnQlI2bmRGTGJp?=
 =?utf-8?B?MXp1T0JwWWM3WkF0b09uY1hRd1JOU1ZGaFhJMm5LeUxRaVRyZDdDNnBPaHY5?=
 =?utf-8?B?YjVZWk1zZ0YwQ3p0b0pHTWJ4dENLV2ErUk5xaGpOcDkrc3lyOWlqN2tFajU3?=
 =?utf-8?B?YWpvMHpJSHVXRjJ1OFdrYVY3UjNyV1dWSS9jeU9ENHlOd2dTcFlJNFhSTi9V?=
 =?utf-8?B?ZlpoVGFzbC9GUWxiWkdhNDF6R3ZvS3o5U1NLMzYzVFg2VlJtUzYxN2x3anpl?=
 =?utf-8?B?OVYzVUl2TE9YQUd6V1VzVWpLSVlkUTA1WEEwREdIRjZCMFlDdzRaVjNZSlh5?=
 =?utf-8?Q?VpMktcPBQ3rnH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 001f6dbf-2287-4b6e-fe22-08d91a1a4a2a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 16:30:46.6488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fH7ZFWbyIlZB3c5GtgGkBiTMx3bp6rLZ9Z2NwVE9koF275xdQgKcA6eApE9Ej6dT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4223
Subject: Re: [Intel-gfx] [PATCH v2 09/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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

QW0gMTguMDUuMjEgdW0gMTg6MDcgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDUv
MTgvMjEgNTo0MiBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMTguMDUuMjEgdW0g
MTc6Mzggc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Cj4+PiBPbiA1LzE4LzIxIDU6Mjgg
UE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4gQW0gMTguMDUuMjEgdW0gMTc6MjAgc2No
cmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4KPj4+Pj4gT24gNS8xOC8yMSA1OjE4IFBNLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBBbSAxOC4wNS4yMSB1
bSAxNzoxNSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gNS8x
OC8yMSAxMDoyNiBBTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+Pj4+Pj4+IFdlIGFyZSBj
YWxsaW5nIHRoZSBldmljdGlvbl92YWx1YWJsZSBkcml2ZXIgY2FsbGJhY2sgYXQgCj4+Pj4+Pj4+
IGV2aWN0aW9uIHRpbWUgdG8KPj4+Pj4+Pj4gZGV0ZXJtaW5lIHdoZXRoZXIgd2UgYWN0dWFsbHkg
Y2FuIGV2aWN0IGEgYnVmZmVyIG9iamVjdC4KPj4+Pj4+Pj4gVGhlIHVwY29taW5nIGk5MTUgVFRN
IGJhY2tlbmQgbmVlZHMgdGhlIHNhbWUgZnVuY3Rpb25hbGl0eSBmb3IgCj4+Pj4+Pj4+IHN3YXBv
dXQsCj4+Pj4+Pj4+IGFuZCB0aGF0IG1pZ2h0IGFjdHVhbGx5IGJlIGJlbmVmaWNpYWwgdG8gb3Ro
ZXIgZHJpdmVycyBhcyB3ZWxsLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBBZGQgYW4gZXZpY3Rpb25fdmFs
dWFibGUgY2FsbCBhbHNvIGluIHRoZSBzd2Fwb3V0IHBhdGguIFRyeSB0byAKPj4+Pj4+Pj4ga2Vl
cCB0aGUKPj4+Pj4+Pj4gY3VycmVudCBiZWhhdmlvdXIgZm9yIGFsbCBkcml2ZXJzIGJ5IHJldHVy
bmluZyB0cnVlIGlmIHRoZSAKPj4+Pj4+Pj4gYnVmZmVyIG9iamVjdAo+Pj4+Pj4+PiBpcyBhbHJl
YWR5IGluIHRoZSBUVE1fUExfU1lTVEVNIHBsYWNlbWVudC4gV2UgY2hhbmdlIGJlaGF2aW91ciAK
Pj4+Pj4+Pj4gZm9yIHRoZQo+Pj4+Pj4+PiBjYXNlIHdoZXJlIGEgYnVmZmVyIG9iamVjdCBpcyBp
biBhIFRUIGJhY2tlZCBwbGFjZW1lbnQgd2hlbiAKPj4+Pj4+Pj4gc3dhcHBlZCBvdXQsCj4+Pj4+
Pj4+IGluIHdoaWNoIGNhc2UgdGhlIGRyaXZlcnMgbm9ybWFsIGV2aWN0aW9uX3ZhbHVhYmxlIHBh
dGggaXMgcnVuLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBGaW5hbGx5IGV4cG9ydCB0dG1fdHRfdW5wb3B1
bGF0ZSgpIGFuZCBkb24ndCBzd2FwIG91dCBib3MKPj4+Pj4+Pj4gdGhhdCBhcmUgbm90IHBvcHVs
YXRlZC4gVGhpcyBhbGxvd3MgYSBkcml2ZXIgdG8gcHVyZ2UgYSBibyBhdAo+Pj4+Pj4+PiBzd2Fw
b3V0IHRpbWUgaWYgaXRzIGNvbnRlbnQgaXMgbm8gbG9uZ2VyIHZhbHVhYmxlIHJhdGhlciB0aGFu
IHRvCj4+Pj4+Pj4+IGhhdmUgVFRNIHN3YXAgdGhlIGNvbnRlbnRzIG91dC4KPj4+Pj4+Pj4KPj4+
Pj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
bGludXguaW50ZWwuY29tPgo+Pj4+Pj4+Cj4+Pj4+Pj4gQ2hyaXN0aWFuLAo+Pj4+Pj4+Cj4+Pj4+
Pj4gSGVyZSB3ZSBoYXZlIGEgdHRtX3R0X3VucG9wdWxhdGUoKSBleHBvcnQgYXMgd2VsbCBhdCB0
aGUgZW5kLiBJIAo+Pj4+Pj4+IGZpZ3VyZSB5b3Ugd2lsbCBwdXNoIGJhY2sgb24gdGhhdCBvbmUu
IFdoYXQgd2UgcmVhbGx5IG5lZWQgaXMgYSAKPj4+Pj4+PiBmdW5jdGlvbmFsaXR5IHRvIGp1c3Qg
ZHJvcCB0aGUgYm8gY29udGVudHMgYW5kIGVuZCB1cCBpbiBzeXN0ZW0gCj4+Pj4+Pj4gbWVtb3J5
IHVucG9wdWxhdGVkLiBTaG91bGQgSSBwZXJoYXBzIGFkZCBhIHV0aWxpdHkgZnVuY3Rpb24gdG8g
Cj4+Pj4+Pj4gZG8gdGhhdCBpbnN0ZWFkPyBsaWtlIHR0bV9ib19wdXJnZSgpPwo+Pj4+Pj4KPj4+
Pj4+IFdlIGFscmVhZHkgaGF2ZSB0aGF0LiBKdXN0IGNhbGwgdHRtX2JvX3ZhbGlkYXRlKCkgd2l0
aG91dCBhbnkgCj4+Pj4+PiBwbGFjZSB0byBwdXQgdGhlIGJ1ZmZlci4KPj4+Pj4+Cj4+Pj4+PiBT
ZWUgaG93IHR0bV9ib19waXBlbGluZV9ndXR0aW5nKCkgaXMgdXNlZC4KPj4+Pj4+Cj4+Pj4+PiBD
aHJpc3RpYW4uCj4+Pj4+Cj4+Pj4+IE9LLCBzbyBpcyB0aGF0IHJlZW50cmFudCBmcm9tIHRoZSBt
b3ZlKCkgb3Igc3dhcF9ub3RpZnkoKSBjYWxsYmFjay4KPj4+Pgo+Pj4+IFRoYXQgc291bmRzIGxp
a2UgYSBkZXNpZ24gYnVnIHRvIG1lIHNpbmNlIHlvdSBzaG91bGQgbmV2ZXIgbmVlZCB0byAKPj4+
PiBkbyB0aGlzLgo+Pj4+Cj4+Pj4gV2hlbiB5b3Ugd2FudCB0byBkZXN0cm95IHRoZSBiYWNraW5n
IHN0b3JlIG9mIGEgYnVmZmVyIGR1cmluZyAKPj4+PiBldmljdGlvbiB5b3Ugc2hvdWxkIGp1c3Qg
ZG8gdGhpcyBieSByZXR1cm5pbmcgYW4gZW1wdHkgcGxhY2VtZW50IAo+Pj4+IGZyb20gdGhlIGV2
aWN0X2ZsYWdzIGNhbGxiYWNrLgo+Pj4KPj4+IFNvIHRoaXMgaXMgZm9yIHRoZSBmdW5jdGlvbmFs
aXR5IHdoZXJlIHRoZSB1c2VyIGhhcyBpbmRpY2F0ZWQgdGhhdCAKPj4+IHRoZSBjb250ZW50cyBp
cyBubyBsb25nZXIgb2YgdmFsdWUsIGJ1dCB0aGUgYnVmZmVyIGl0c2VsZgo+Pj4gaXMgY2FjaGVk
IHVudGlsIGV2aWN0ZWQgb3Igc3dhcHBlZCBvdXQgZm9yIHBlcmZvcm1hbmNlIHJlYXNvbnMuIFNv
IAo+Pj4gdGhlIGFib3ZlIHdvdWxkIHdvcmsgZm9yIGV2aWN0aW9uLCBidXQgd2hhdCBhYm91dCBz
d2Fwb3V0LiBDb3VsZCB3ZSAKPj4+IGFkZCBzb21lIHNpbWlsYXIgZnVuY3Rpb25hbGl0eSB0aGVy
ZT8KPj4KPj4gQW1kZ3B1IGhhcyB0aGUgc2FtZSBmdW5jdGlvbmFsaXR5IGFuZCB5b3UgZG9uJ3Qg
bmVlZCB0byBoYW5kbGUgc3dhcCAKPj4gYXQgYWxsLgo+Pgo+PiBKdXN0IHJldHVybiBmcm9tIHRo
ZSBldmljdF9mbGFncyB0aGF0IHlvdSB3YW50IHRvIGRyb3AgdGhlIGJhY2tpbmcgCj4+IHN0b3Jl
IGFzIHNvb24gYXMgdGhlIEJPIGxlYXZlcyB0aGUgR1RUIGRvbWFpbi4KPgo+IEhtbSwgdGhlIHBp
cGVsaW5lX2d1dHRpbmcgZnVuY3Rpb24gc2VlbXMgb2ssIGJ1dCBvdmVybHkgY29tcGxleCBpZiB0
aGUgCj4gYm8gaXMgYWxyZWFkeSBpZGxlLCBBbSBJIGFsbG93ZWQgdG8gb3B0aW1pemUgaXQgc2xp
Z2h0bHkgZm9yIHRoZSAKPiBsYXR0ZXIgY2FzZT8KClllYWgsIHN1cmUuIFdlIGp1c3QgbmV2ZXIg
aGF0IHRoYXQgdXNlIGNhc2Ugc28gZmFyLgoKQ2hyaXN0aWFuLgoKPgo+IC9UaG9tYXMKPgo+Cj4+
Cj4+IENocmlzdGlhbi4KPj4KPj4+Cj4+PiAvVGhvbWFzCj4+Pgo+Pj4+Cj4+Pj4gUmVnYXJkcywK
Pj4+PiBDaHJpc3RpYW4uCj4+Pj4KPj4+Pj4KPj4+Pj4gL1Rob21hcwo+Pj4+Pgo+Pj4+Pgo+Pj4+
Pgo+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoYW5rcywKPj4+Pj4+Pgo+Pj4+Pj4+IFRob21hcwo+
Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
