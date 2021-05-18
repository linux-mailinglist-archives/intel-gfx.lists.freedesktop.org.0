Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7FD387C4B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 17:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB436EBAA;
	Tue, 18 May 2021 15:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2061.outbound.protection.outlook.com [40.107.92.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB01E6EBA6;
 Tue, 18 May 2021 15:18:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPc/WdiNF3KeJPq7/8MaadND2zhtCEo4w+1Ee0420Tb7+1GxFqyLPqZPjX9LcKz45iZF3TxCH6EULO+PWvoAfD3J0hakzmZVmHqfcTj8EwM7hSL9GPZgGarqS/IEmXIzlfb+yRwEiFL4j4zjCpqShS6GY7I4+s7WZz/s0l/3RrMiDaW8b+ojyvgE8FOPHXR2bm0m+bo6xTSfvMmmaPjJqTCdv4UmlZaPLd6OklBHdiWjUc93H16q4s7QHRvZQ/2UHLlOYH9pYevko7qZkZPh4Z1ciGmY8RbqDwWyvpPTucufBXHX7jN7Xwn6lFji1ELr/5EVXgTaNCQuqExejlxaXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IsSKE4q1U97bcd1su9uxVRl9/LkgFLKl9wV9biVagjU=;
 b=he10pynxqCM/bulZabv+wj63uRNOyBdQizC3+xLN8UbExqzDpRWxJHSSX2TWkVJ/9ZA0HJZderGK6nb93UUkB8Chv6o7hxQPNgj62vH3Is7j8BaIC3WLQ7jK/9jpBwispLj94xAJc73q9fBMrAiKX6wOPhtG5CHpYXXG/XJ8CG/aHgfqTV9rptjCLjrzVjn7+u4yKUjuwys+4FCXHxW+22bmrJQ9J/ezcLgpLblx+vdqXkn+nMGagXKI3b91wV93Jcw/rx7ePiI/SvlRceXKpl65MdXgIc4DWi5bz1zkdXY3+JywL3znk9lKHSCtENuPjMz4OuRNmIFjxDewcKYoOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IsSKE4q1U97bcd1su9uxVRl9/LkgFLKl9wV9biVagjU=;
 b=iz5Ar/AEG0GtpLGblapeMHd0HU85i2HJr7Yta6I+66kYsKPv/vBPZS6dDqkzTgtMnnd6GYWD8sG6eGTbp3A6TlBc/TpSe1go01L+5mGT5EwiIOfrMzmD7GLsJmal5sCgNydBWqn14jriVAPhF/HCzm7SsN0O0d/In5v5qVt/bbI=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4549.namprd12.prod.outlook.com (2603:10b6:208:268::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 15:18:50 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 15:18:50 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
Date: Tue, 18 May 2021 17:18:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:3b27:1830:9671:4cc9]
X-ClientProxiedBy: AM0PR02CA0083.eurprd02.prod.outlook.com
 (2603:10a6:208:154::24) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3b27:1830:9671:4cc9]
 (2a02:908:1252:fb60:3b27:1830:9671:4cc9) by
 AM0PR02CA0083.eurprd02.prod.outlook.com (2603:10a6:208:154::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend
 Transport; Tue, 18 May 2021 15:18:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e4bd037-8ad2-4cde-0b77-08d91a103d45
X-MS-TrafficTypeDiagnostic: MN2PR12MB4549:
X-Microsoft-Antispam-PRVS: <MN2PR12MB45499D1EEECE7B608E9CB908832C9@MN2PR12MB4549.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gPX2+PA7A7WX1vISP89KxXT54fh+0LbDWFqZfv+lGO1ImyanAJtqFWzTvPWNu1/k2FP6MSpFmStnivMnkO14xo5Ih3YzAx7Kr6QcbYVatH/e5lV9knALqg8f5aYlm48bWd0pZOzcluLnFGQBJTEmUfcfDUzXZUvuc30ayfHD+GMq2Mqu7sFLKbeM6Jq6kP08Ff93ggJDUVEAUvb/LHHypEMcoBBbhNoYLXU/AP8StuI4ZMrswEpOHosJ9upId0Jx979dzdhBIQhZTfJGoUtwb9UF14IjeknB+YZ4CMYTdZowxcEq63znuHavvpWlXmbQ5hVbKarWZxPT8I/50GUKWkxgiwYBnMNnmyBHf1udF3cgoYUNQ464JDGeo/T+0Z5V0dDz2NwQN68fd2n4PU73yWVS/7zE8je9bhv8Lb/H3uE00bGPdxKNWwzkNw7rebKkpAVgV5o9HUl2CKryaL618Fc9WkWk7E8beGSqS104nIncOK/+5/7fQJiWkX0RqTUY9tyHLdClOgPOaWQKTXTClvtHusGXG82jtA9CUR5FISgnDSb3pzyh0bxgpEFWB3G4jIYdUkrKRzFzEX9cb8Z+WPu/A0P3l0Ck7SJPRuAWQo4XSUd726R/P2MToCxfCM5OJU9HO38dQ+yf9H4+Guh13AK2cF76zX6b2k2W/NH+IhWAUMw/6gJJlCnm8JGVl/Ry
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(396003)(39860400002)(366004)(376002)(66574015)(6486002)(6666004)(36756003)(31686004)(83380400001)(2616005)(2906002)(66476007)(5660300002)(53546011)(316002)(38100700002)(478600001)(52116002)(86362001)(66556008)(186003)(16526019)(8936002)(66946007)(8676002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dDlSRU5LQkJrdnV2bzExWmQ4anJLU1pCMm1oWVVVeDZ0d21yZU5ybVB6aExS?=
 =?utf-8?B?UkFYLzZZSlRiYWx3a0g0UFIrZEdyZG5RN1FoVm8rcW5iZ3dhNFFxY1M3NXIx?=
 =?utf-8?B?Ukh0M3hjMDdCa21OdEQydHVuK2swMG0rUVZBRGdQYkcxOGhDVG93L2FyVzk0?=
 =?utf-8?B?T1F4NE9NMTB5cW5TRWZ2aFpnU1g4Yk9udTM0clhrR1hBM3FnVnJZaG9ST3B4?=
 =?utf-8?B?d1dRdUM5Y3ZscEU1YVVrVHFjRXRDYnRFV1N6WFFtdkJYOGQ5eHVKc0xCdHBY?=
 =?utf-8?B?Yis4SUtlaE9Wa2tmRmNzcG5YY3A2Y2FFalR5M0FuZDZuU09vVnVOK2tMVXUy?=
 =?utf-8?B?RDQySU5iKzhWTjZUaXZRM1g2dHAraklQRDFsM0dqRFhFWWo3VE1yY2lPNXQ3?=
 =?utf-8?B?dWd0TEhYeTRrYzRNQlozdlNSTllDRGFzd3dTYU5TUTY3ZGh0QzBpRTBwOWRS?=
 =?utf-8?B?SmRNM01vazhxZjFsRHNjL2tXUWdMYyt2S3hWQ0svMkhQSXlkMjBiSXVJZlY5?=
 =?utf-8?B?SU5TREs4ZTliS1BVeXJ0Z0lyOVBiVlF3QVJkWGlqQkVmcGljcWppYSs1ZkNR?=
 =?utf-8?B?MkJxSHJmU2VXejZ0R1c5NlloZVMxTXYweGFhKzZsYVYrcTdaWi9NSVlXLzBB?=
 =?utf-8?B?Qk9EZm1OcDVUaWlHNDZrbFlWUkVSeXRUNnJDQ3k2dFJVRzhtbVhTeU85TXIv?=
 =?utf-8?B?RklhNTlWK3RNN2xTbXptclZTS0Y5VmNUT1JiU0NWYk04R0lEQUlUS29ncFNS?=
 =?utf-8?B?VHBhVTJwcDYwdmtrc0VWVVM4NG9PUDQ2MWp6RXE1bm16WWVyckNabm1WclND?=
 =?utf-8?B?eW5QK2FYYS84am1MdS92SC84RGRkY0xySEVTUkQrM1VJb2dFOGNLRnBJc0lQ?=
 =?utf-8?B?dmZhLy9odUZjRWlNTWJxTm52VG51OHFOMklvUWxjWEhIWVVBVmw4TFVjR0xM?=
 =?utf-8?B?OFNVKzRFZnpWQVpCMjh5TEx2NEN1WG9oZktaakVzcC9vam1USXBFWkQ4d0Iv?=
 =?utf-8?B?SHFNcnFKL20zVHBOcWtlbmN0eGJaV1hkLy9TR3ZzelFZUEZER29wNTBKT0lp?=
 =?utf-8?B?czRYRWdSSzYrRFJxTXdEcUxPUmgvd1RLOE1VNzlDa1ZiVDNyN01FVnU4c1Z0?=
 =?utf-8?B?M3pMUjROUC9hWUpDbEF4R3JYMVdaNFFFcFpUa2xrTXRGdHlNdzloZUNyT2Z6?=
 =?utf-8?B?aU5rQUgrNDl6MC9ITmVKaXgvZmFXTE1peWEyUWJZOURDakI2dXUxak1GU251?=
 =?utf-8?B?aGgybHVlRU1VTmx0MDBkUFpOdjgyZVRTckM1aXBHNFVWaDBCQTFEN3Rmdk15?=
 =?utf-8?B?MzRFQTVScDVSWllScGxVWkxsd0lSd2JJYWRnY254dEwzeE5uNmlwQVFPeHhH?=
 =?utf-8?B?SkNhWmZsNUhJZ1I3Q3dBYzBSUlB3bGwyQWZ4aUdrTmt0Wm1BK2drNThveWFR?=
 =?utf-8?B?TVVzTTRJVzZGQkVLVitjZmpBaUVIZmkrTzJPUTgwc09WaXZMWjI2d29kMHlJ?=
 =?utf-8?B?L3BBcmJBV2haa2diNXBrRlI5Q2FTWGZlTkk0OVVYUUlpYW5sNjFhNkVEQ3NK?=
 =?utf-8?B?TUxtT3ZtQ3JESVBmaEQ3S2VZMFB2RG1rdEtUZFR6NTUwQjFXRkJxUVh5VThz?=
 =?utf-8?B?cURoSXNkQUNpa2Rlc1FZTVZWWEZVeG5GRE1obTdnN3NpWXpaNEdvVGdxTVha?=
 =?utf-8?B?ZFh1YUlpczdtRHNVSSszOHYrQ1EzaGxwNjZndmhxQXIxcFZ3dEdqdmJlUEwx?=
 =?utf-8?B?cmlpcWIvV2hFN25GYURLSjRIY1Fua2pQNGhDbzdmWUx4S2lZLzNTbjFlYVZt?=
 =?utf-8?B?b3JncGtHa1FNQlYzUzhjZDVrOVM5NDRwUGhYdkNyYnJ0eEg4R2JTN1JhV1JE?=
 =?utf-8?Q?3RYRkmC5IubRp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e4bd037-8ad2-4cde-0b77-08d91a103d45
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 15:18:50.0809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NoUThkCYw7tDaLOehL4bsUW40+Q+I131N9zET8IATAqA7Bn1A4kzxcpPCrceFSyc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4549
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

CgpBbSAxOC4wNS4yMSB1bSAxNzoxNSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
NS8xOC8yMSAxMDoyNiBBTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+IFdlIGFyZSBjYWxs
aW5nIHRoZSBldmljdGlvbl92YWx1YWJsZSBkcml2ZXIgY2FsbGJhY2sgYXQgZXZpY3Rpb24gdGlt
ZSB0bwo+PiBkZXRlcm1pbmUgd2hldGhlciB3ZSBhY3R1YWxseSBjYW4gZXZpY3QgYSBidWZmZXIg
b2JqZWN0Lgo+PiBUaGUgdXBjb21pbmcgaTkxNSBUVE0gYmFja2VuZCBuZWVkcyB0aGUgc2FtZSBm
dW5jdGlvbmFsaXR5IGZvciBzd2Fwb3V0LAo+PiBhbmQgdGhhdCBtaWdodCBhY3R1YWxseSBiZSBi
ZW5lZmljaWFsIHRvIG90aGVyIGRyaXZlcnMgYXMgd2VsbC4KPj4KPj4gQWRkIGFuIGV2aWN0aW9u
X3ZhbHVhYmxlIGNhbGwgYWxzbyBpbiB0aGUgc3dhcG91dCBwYXRoLiBUcnkgdG8ga2VlcCB0aGUK
Pj4gY3VycmVudCBiZWhhdmlvdXIgZm9yIGFsbCBkcml2ZXJzIGJ5IHJldHVybmluZyB0cnVlIGlm
IHRoZSBidWZmZXIgb2JqZWN0Cj4+IGlzIGFscmVhZHkgaW4gdGhlIFRUTV9QTF9TWVNURU0gcGxh
Y2VtZW50LiBXZSBjaGFuZ2UgYmVoYXZpb3VyIGZvciB0aGUKPj4gY2FzZSB3aGVyZSBhIGJ1ZmZl
ciBvYmplY3QgaXMgaW4gYSBUVCBiYWNrZWQgcGxhY2VtZW50IHdoZW4gc3dhcHBlZCBvdXQsCj4+
IGluIHdoaWNoIGNhc2UgdGhlIGRyaXZlcnMgbm9ybWFsIGV2aWN0aW9uX3ZhbHVhYmxlIHBhdGgg
aXMgcnVuLgo+Pgo+PiBGaW5hbGx5IGV4cG9ydCB0dG1fdHRfdW5wb3B1bGF0ZSgpIGFuZCBkb24n
dCBzd2FwIG91dCBib3MKPj4gdGhhdCBhcmUgbm90IHBvcHVsYXRlZC4gVGhpcyBhbGxvd3MgYSBk
cml2ZXIgdG8gcHVyZ2UgYSBibyBhdAo+PiBzd2Fwb3V0IHRpbWUgaWYgaXRzIGNvbnRlbnQgaXMg
bm8gbG9uZ2VyIHZhbHVhYmxlIHJhdGhlciB0aGFuIHRvCj4+IGhhdmUgVFRNIHN3YXAgdGhlIGNv
bnRlbnRzIG91dC4KPj4KPj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxs
c3Ryb21AbGludXguaW50ZWwuY29tPgo+Cj4gQ2hyaXN0aWFuLAo+Cj4gSGVyZSB3ZSBoYXZlIGEg
dHRtX3R0X3VucG9wdWxhdGUoKSBleHBvcnQgYXMgd2VsbCBhdCB0aGUgZW5kLiBJIGZpZ3VyZSAK
PiB5b3Ugd2lsbCBwdXNoIGJhY2sgb24gdGhhdCBvbmUuIFdoYXQgd2UgcmVhbGx5IG5lZWQgaXMg
YSBmdW5jdGlvbmFsaXR5IAo+IHRvIGp1c3QgZHJvcCB0aGUgYm8gY29udGVudHMgYW5kIGVuZCB1
cCBpbiBzeXN0ZW0gbWVtb3J5IHVucG9wdWxhdGVkLiAKPiBTaG91bGQgSSBwZXJoYXBzIGFkZCBh
IHV0aWxpdHkgZnVuY3Rpb24gdG8gZG8gdGhhdCBpbnN0ZWFkPyBsaWtlIAo+IHR0bV9ib19wdXJn
ZSgpPwoKV2UgYWxyZWFkeSBoYXZlIHRoYXQuIEp1c3QgY2FsbCB0dG1fYm9fdmFsaWRhdGUoKSB3
aXRob3V0IGFueSBwbGFjZSB0byAKcHV0IHRoZSBidWZmZXIuCgpTZWUgaG93IHR0bV9ib19waXBl
bGluZV9ndXR0aW5nKCkgaXMgdXNlZC4KCkNocmlzdGlhbi4KCj4KPiBUaGFua3MsCj4KPiBUaG9t
YXMKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
