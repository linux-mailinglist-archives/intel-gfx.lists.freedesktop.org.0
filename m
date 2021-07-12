Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515EC3C5B42
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 13:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BC689B45;
	Mon, 12 Jul 2021 11:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2045.outbound.protection.outlook.com [40.107.92.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8C889A34;
 Mon, 12 Jul 2021 11:37:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBOgEci7IGZOz8aM/HJoTnwuCfi/3FeaWbZjSHmHy9usQMVrCG3fkZC1EWkGt8EF7PZmh2QkFDOiMd9XnPkSRXWc6nsiF9gHlOkCbn2PLsoD4o/mj+zvYWsPdXLqm6s+xmk9wgNHm0bGCblAmb2Xb8IZPO/5twsN6qCiOKCma9FDdHuzgVfg2EzyVsbYHybChUje+qm2J4rMhuPHEcD6l23cwUB5RCisVMz86xMpaDX+yvFWZ6cv0hAZ7FsQKifk320P22VqjSFFdvuRQUkCPbhx+54ecurz/JPTs3Zgng1HVoJrshWnynZdELfL0tznREpEPGvHT6YC07AstP98JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9eL/g/pHbpJL0DvJsTNr0Rc4WdqRcPbtTTOjdT8FPY8=;
 b=gDAGPoWAdBXtIQ2Kly1FLFNctGUgR7CWUrzkw7X7JzRXBwwTkormXUIt3hvNRSi+vtGZvIc5HY2oLjELdB9lHlWl3u4fKtmzTdQOSvzWqFLm/EzesQz43kdipgjdGkN+1USpSkPT2SmkIAVOer9hQJAUE9nWul/2ABR7v//3cl9V8wp/O5C8ODdmjSlE6HK37P3EfItxlVYYi2XCWG6PhkfCT+OfUoOPc69Z9m07KGgsrR4TmlMv1dsWBWkyVSMacj9VKFJnpPIOljIiV78Mc6xk35Hf/eZ9Pn1wUkvSxAdBwsAVqvURJT9ZA2E0aTBUEFrJ8vzzGqwr0kJCWL8Jjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9eL/g/pHbpJL0DvJsTNr0Rc4WdqRcPbtTTOjdT8FPY8=;
 b=0Dnif8BI7NDTgKzGl4o/S79UHAiK9zbLZMuZKcL7T2wpf0KEhD2AIq96Tz6yPl7huRGwZ7odHNuCq/zKbTv924grfS9PYswtaLaYFFVWKgHW2z+xtLGgnVTxFb1ocPH2eiFOIeNlcgXM0Oy2feotExPz+yfw1G/LviMI+hZuydE=
Authentication-Results: collabora.co.uk; dkim=none (message not signed)
 header.d=none;collabora.co.uk; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3840.namprd12.prod.outlook.com (2603:10b6:208:16f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Mon, 12 Jul
 2021 11:37:33 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.026; Mon, 12 Jul 2021
 11:37:33 +0000
To: Jason Ekstrand <jason@jlekstrand.net>
References: <20210624174732.1754546-1-jason@jlekstrand.net>
 <2b69abeb-7c97-fe6a-384c-2e1f86529dba@amd.com>
 <CAOFGe961e4D+OdC8DQPk9aohpUqMmu34eant_LRfAzaAHQ_Ezw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <dcf0cbf9-3a0d-2e5e-8e57-16616bb85a30@amd.com>
Date: Mon, 12 Jul 2021 13:37:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAOFGe961e4D+OdC8DQPk9aohpUqMmu34eant_LRfAzaAHQ_Ezw@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: PR3P251CA0022.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:102:b5::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:e521:a414:2ae6:6045]
 (2a02:908:1252:fb60:e521:a414:2ae6:6045) by
 PR3P251CA0022.EURP251.PROD.OUTLOOK.COM (2603:10a6:102:b5::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.19 via Frontend Transport; Mon, 12 Jul 2021 11:37:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40821e51-3646-4553-2ac1-08d9452970a1
X-MS-TrafficTypeDiagnostic: MN2PR12MB3840:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3840874E48D9DD52143A709383159@MN2PR12MB3840.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PabSBKSYgHEP0ztP4e+myCICxh9aY6E5oYBUR28EGV4Xz2hlVKXqvsbRRdCtwmfdm8Fiuj4WIhHtCYYw5lDuXGAVF0ej2RQwPx4DBiBagwdiKeO1Lb7UbkbNOBc7vtNehK6VsqP3XXMbKCtvryoS7H6YRN0s1fS3GYTfGnguXge26YHam1cKU/trEt9e13zMIJUSOD/UnpKZ19uP+Ckd6x0gY24AgbiSBE06F/WDf5W+mBGM9a9PKlzHT2S02VH9sG+kZc278Sn8pIRmhb1GXIry4Jlrocd+hvGlgpBvlghH8eXO025FvEeM01Xiduqt2WhAShgOBCzUKeHKfQlIOjlOm41Bwqg3Kaed27mQ6BeM5e1iykBGeIUs39eGt+J63sfq6/TPX4C9ib7z8K1af5kpWY9ohWwwTlAHzfH+C03KHFJIZHg0R6A/BmeEvv0d94O+JpxxRdeLR1GIqLFgbYkN0+nTUcaCsR0bu1ejaHAJNcVrw4tYt7DwUEnPR25eWujcz8Src2idHRISCzX1aed5WJ0IcZngtlHAWEwXGBugu0mZLsPx+7ZyFATO9IAmtlU5v5oGHkM7UyHPgzKFvojyiTuIXI0lLHt9CBFBV/SGE7hDIEANA6Dzm3d3xRL/nChbGTdlvmDrZi8CjQDmsfGs+jQz9uEOEPeCAioT1XDo/S0hkILgg/ZeEAgf2xuQOr+iDmQ5KqHqUYjJGiRWbJn22Pq+3h2pClY/o+wcKlo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(346002)(376002)(136003)(39860400002)(6916009)(6486002)(478600001)(83380400001)(8936002)(38100700002)(54906003)(2906002)(316002)(2616005)(8676002)(4326008)(6666004)(31696002)(66946007)(66556008)(66476007)(86362001)(5660300002)(186003)(36756003)(66574015)(53546011)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFRncEQwSFdma2txazJFK3JjYVFyRGg2Nm14NUFCK3EzRk1rSlFOTmR3NTVF?=
 =?utf-8?B?aUZTUXRHRDNHOXlYZWVvWDk3YnA2dms4bmNaek1VclpnamtXVU9NSEhkd3Qx?=
 =?utf-8?B?WXhkS2N4L1gwNkpONW43MEl4QTlJZkdkank4T21mZG02ZDQ4TDhTZTRPNEhY?=
 =?utf-8?B?QUEwS3pjV0VrQjBDZ0FEL0huTmo0TFBocDJQSEtNNnZHT2dRM1hmbVBZdzJ6?=
 =?utf-8?B?dzR2M1VjR3dFWFhBQnlVVkdLS3JjV3VSLzdmanQxcXRxenhIY0VqNlU4enZ4?=
 =?utf-8?B?QzhxajlUWlZLOXpVMnB5Tms1c3N0Z1dEVEV2c1d2K25uRng2N1F6WnNMNXRk?=
 =?utf-8?B?N2FRRU9ucDlMaDYxQ3RKL2JrcEtQU1F3cVdweGlYN3l6aTlXTzVBL1BNSTZ4?=
 =?utf-8?B?dkJKTkJ3cWViYW53NFk0US8zek1BTlhZczhnbENOR3hHZ21QVFJja0phV2lM?=
 =?utf-8?B?NjY4aVk4eXRNL08wWlR6MzRBWXdKejdBcURPVUlKeVNobGFZbVU5Q3hzQTRz?=
 =?utf-8?B?azVjMTJ1RXhmQ2FOdXR1WWJvWXlXMXVKRTFwdU1xaFl6R2w0RWJqb2J4MXZS?=
 =?utf-8?B?V2MybWFGczZPbTRBbTRIanRzMTZHUXBPUFhNU1MvQ0xJM2RxVENmZHhJSjdu?=
 =?utf-8?B?cGJyRHNLRFB5Y2d4NURIbVRHMDZ3UGhlTHpObkJpRDRoSk9LSG5PV2JNWUd3?=
 =?utf-8?B?WUFEVlB5YlZCQThWZTFqNGxzYS9YcEdjRVRESXJDOWlzUDFVVFdBN1ZSczhm?=
 =?utf-8?B?KzFVak4vcUNBVXkvTUdNYUlRb3RqczFVTi9PbFFXM3JuRkZTOTZUY3BTOW1l?=
 =?utf-8?B?RlNiR3dLTk9kYTdHcjN0dW93SFNDdlNSTVBxNXY4Z1l3ck1kM3JMQXBTU1N4?=
 =?utf-8?B?RlJwSzF3dEcrMWRFQWh1L1huRG1xRWNYVGFSNktDMjA1RFhLeTUvY2NDREZQ?=
 =?utf-8?B?cEpSQ0NaUFRMNDdtaXlBMFdSWGVvS1Vua0N2RnFja2tObmRvcFVrMTZueE5m?=
 =?utf-8?B?ZDdhVHl0KytZVHJLR01hNk85blpRaU5kazBRTWNtZmNhSHk0VVBNNi9JdTYv?=
 =?utf-8?B?R2k3d0w5cS82RGQyMzBJYnZWWjZjQitDQkJUOTF0UVBhZkN0SkYwMHI0Ykxs?=
 =?utf-8?B?TUI0YnJqd3Q4YmdTRlN1NUlaakIxNVNXeDNGMlBSWmcralVYSEliMDAwcUVC?=
 =?utf-8?B?TDJUR2VHejBTU0JXYkpQQ3dGWHNLMVRCVlJWWjltakx4NzM1aCtVYWx2a3h6?=
 =?utf-8?B?RUFraFE2UGVxOFJXaU1LenlDT2ZlNWVqUUx4MXk3Z2ZPcVRjZXF6UTF3VWVT?=
 =?utf-8?B?cmhnZ0dEUlMxM0JpSHdIRGhNQ0xkRGxoZ0dmd0NEcFQvK0I3SkJ4WTloSWhW?=
 =?utf-8?B?ZE9HR0JhQUdYUHZvWnhpbXNGSktMY1pXK2ZpY0Q2dE1DV08rUnVoSjVrSE9t?=
 =?utf-8?B?b0o0S1AzZWRzUkY2NyttV2Z5MnNnZDRIN1h4UDdVcy9kRWFsOWxUN0UzWm5S?=
 =?utf-8?B?M1ZVNGorNzRhQXpubnU0OFFxUENMOWtpakw3TElUSmFtWFpZK1RDRUtqYlBD?=
 =?utf-8?B?V2ViVklnNVR3TTBTNmZQdVJaU2Q3bkQweGY3aGpjRkVLK2FoSGZZei83bHlp?=
 =?utf-8?B?Z3hnOC9EcjRacm1qZGZmZlc4dlMxRUFsN0dkc0J0VzcwVkJVRFF6b2RhMDNF?=
 =?utf-8?B?SkZPWC9lVGZFNWFCK0VhUzdzVFcxMXBmSzdpVEtZemtvdXVqTXlybURhNGhw?=
 =?utf-8?B?UDgzNWNZdi9qcjUvS0R4MUJmMmtOUy9EUEd1aytaWldWZ2pYazVEcE02N3JY?=
 =?utf-8?B?N0ZHNkVUMExPazJVeTNUV0dtSmMxYTFSOUVPd1hDNEhNZlhFdURzemx2SHpU?=
 =?utf-8?Q?9UgvqG1uv9J8v?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40821e51-3646-4553-2ac1-08d9452970a1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2021 11:37:33.6631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4RIytoVI5P7kMUZmstVlPV5OCFPtIUUq/zJS5xgYw9B9PkLLQkuxGYaXHRfaPYRX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3840
Subject: Re: [Intel-gfx] [PATCH] dma-buf/sync_file: Don't leak fences on
 merge failure
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Gustavo Padovan <gustavo.padovan@collabora.co.uk>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29ycnkgZm9yIHRoZSB2YWNhdGlvbiBhbmQgc2ljayBsZWF2ZSBpbmR1Y2VkIGRlbGF5LgoKSSd2
ZSBqdXN0IHB1c2hlZCB0aGlzIHRvIGRybS1taXNjLWZpeGVzLgoKVGhhbmtzLApDaHJpc3RpYW4u
CgpBbSAyNC4wNi4yMSB1bSAyMTo0MyBzY2hyaWViIEphc29uIEVrc3RyYW5kOgo+IEkgZG9uJ3Qg
aGF2ZSBkcm0tbWlzYyBhY2Nlc3MuICBNaW5kIHB1c2hpbmc/Cj4KPiBPbiBUaHUsIEp1biAyNCwg
MjAyMSBhdCAxMjo1OSBQTSBDaHJpc3RpYW4gS8O2bmlnCj4gPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4gd3JvdGU6Cj4+IEFtIDI0LjA2LjIxIHVtIDE5OjQ3IHNjaHJpZWIgSmFzb24gRWtzdHJh
bmQ6Cj4+PiBFYWNoIGFkZF9mZW5jZSgpIGNhbGwgZG9lcyBhIGRtYV9mZW5jZV9nZXQoKSBvbiB0
aGUgcmVsZXZhbnQgZmVuY2UuICBJbgo+Pj4gdGhlIGVycm9yIHBhdGgsIHdlIHdlcmVuJ3QgY2Fs
bGluZyBkbWFfZmVuY2VfcHV0KCkgc28gYWxsIHRob3NlIGZlbmNlcwo+Pj4gZ290IGxlYWtlZC4g
IEFsc28sIGluIHRoZSBrcmVhbGxvY19hcnJheSBmYWlsdXJlIGNhc2UsIHdlIHdlcmVuJ3QKPj4+
IGZyZWVpbmcgdGhlIGZlbmNlcyBhcnJheS4gIEluc3RlYWQsIGVuc3VyZSB0aGF0IGkgYW5kIGZl
bmNlcyBhcmUgYWx3YXlzCj4+PiB6ZXJvLWluaXRpYWxpemVkIGFuZCBkbWFfZmVuY2VfcHV0KCkg
YWxsIHRoZSBmZW5jZXMgYW5kIGtmcmVlKGZlbmNlcykgb24KPj4+IGV2ZXJ5IGVycm9yIHBhdGgu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQu
bmV0Pgo+Pj4gRml4ZXM6IGEwMmI5ZGM5MGQ4NCAoImRtYS1idWYvc3luY19maWxlOiByZWZhY3Rv
ciBmZW5jZSBzdG9yYWdlIGluIHN0cnVjdCBzeW5jX2ZpbGUiKQo+Pj4gQ2M6IEd1c3Rhdm8gUGFk
b3ZhbiA8Z3VzdGF2by5wYWRvdmFuQGNvbGxhYm9yYS5jby51az4KPj4+IENjOiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IFJldmlld2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+Cj4+PiAtLS0KPj4+ICAgIGRy
aXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDEzICsrKysrKystLS0tLS0KPj4+ICAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2ZpbGUuYwo+Pj4gaW5kZXggMjBkOWJkZGJiOTg1Yi4uMzk0ZTZlMWU5Njg2MCAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYwo+Pj4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL3N5bmNfZmlsZS5jCj4+PiBAQCAtMjExLDggKzIxMSw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc3lu
Y19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmls
ZSAqYSwKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
c3luY19maWxlICpiKQo+Pj4gICAgewo+Pj4gICAgICAgIHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNf
ZmlsZTsKPj4+IC0gICAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsICoqbmZlbmNlcywgKiph
X2ZlbmNlcywgKipiX2ZlbmNlczsKPj4+IC0gICAgIGludCBpLCBpX2EsIGlfYiwgbnVtX2ZlbmNl
cywgYV9udW1fZmVuY2VzLCBiX251bV9mZW5jZXM7Cj4+PiArICAgICBzdHJ1Y3QgZG1hX2ZlbmNl
ICoqZmVuY2VzID0gTlVMTCwgKipuZmVuY2VzLCAqKmFfZmVuY2VzLCAqKmJfZmVuY2VzOwo+Pj4g
KyAgICAgaW50IGkgPSAwLCBpX2EsIGlfYiwgbnVtX2ZlbmNlcywgYV9udW1fZmVuY2VzLCBiX251
bV9mZW5jZXM7Cj4+Pgo+Pj4gICAgICAgIHN5bmNfZmlsZSA9IHN5bmNfZmlsZV9hbGxvYygpOwo+
Pj4gICAgICAgIGlmICghc3luY19maWxlKQo+Pj4gQEAgLTIzNiw3ICsyMzYsNyBAQCBzdGF0aWMg
c3RydWN0IHN5bmNfZmlsZSAqc3luY19maWxlX21lcmdlKGNvbnN0IGNoYXIgKm5hbWUsIHN0cnVj
dCBzeW5jX2ZpbGUgKmEsCj4+PiAgICAgICAgICogSWYgYSBzeW5jX2ZpbGUgY2FuIG9ubHkgYmUg
Y3JlYXRlZCB3aXRoIHN5bmNfZmlsZV9tZXJnZQo+Pj4gICAgICAgICAqIGFuZCBzeW5jX2ZpbGVf
Y3JlYXRlLCB0aGlzIGlzIGEgcmVhc29uYWJsZSBhc3N1bXB0aW9uLgo+Pj4gICAgICAgICAqLwo+
Pj4gLSAgICAgZm9yIChpID0gaV9hID0gaV9iID0gMDsgaV9hIDwgYV9udW1fZmVuY2VzICYmIGlf
YiA8IGJfbnVtX2ZlbmNlczsgKSB7Cj4+PiArICAgICBmb3IgKGlfYSA9IGlfYiA9IDA7IGlfYSA8
IGFfbnVtX2ZlbmNlcyAmJiBpX2IgPCBiX251bV9mZW5jZXM7ICkgewo+Pj4gICAgICAgICAgICAg
ICAgc3RydWN0IGRtYV9mZW5jZSAqcHRfYSA9IGFfZmVuY2VzW2lfYV07Cj4+PiAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpwdF9iID0gYl9mZW5jZXNbaV9iXTsKPj4+Cj4+PiBAQCAt
Mjc3LDE1ICsyNzcsMTYgQEAgc3RhdGljIHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZV9tZXJn
ZShjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3Qgc3luY19maWxlICphLAo+Pj4gICAgICAgICAgICAg
ICAgZmVuY2VzID0gbmZlbmNlczsKPj4+ICAgICAgICB9Cj4+Pgo+Pj4gLSAgICAgaWYgKHN5bmNf
ZmlsZV9zZXRfZmVuY2Uoc3luY19maWxlLCBmZW5jZXMsIGkpIDwgMCkgewo+Pj4gLSAgICAgICAg
ICAgICBrZnJlZShmZW5jZXMpOwo+Pj4gKyAgICAgaWYgKHN5bmNfZmlsZV9zZXRfZmVuY2Uoc3lu
Y19maWxlLCBmZW5jZXMsIGkpIDwgMCkKPj4+ICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4g
LSAgICAgfQo+Pj4KPj4+ICAgICAgICBzdHJsY3B5KHN5bmNfZmlsZS0+dXNlcl9uYW1lLCBuYW1l
LCBzaXplb2Yoc3luY19maWxlLT51c2VyX25hbWUpKTsKPj4+ICAgICAgICByZXR1cm4gc3luY19m
aWxlOwo+Pj4KPj4+ICAgIGVycjoKPj4+ICsgICAgIHdoaWxlIChpKQo+Pj4gKyAgICAgICAgICAg
ICBkbWFfZmVuY2VfcHV0KGZlbmNlc1stLWldKTsKPj4+ICsgICAgIGtmcmVlKGZlbmNlcyk7Cj4+
PiAgICAgICAgZnB1dChzeW5jX2ZpbGUtPmZpbGUpOwo+Pj4gICAgICAgIHJldHVybiBOVUxMOwo+
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
