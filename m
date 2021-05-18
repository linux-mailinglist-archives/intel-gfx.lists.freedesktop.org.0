Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26595387C72
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 17:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1385B6EBFB;
	Tue, 18 May 2021 15:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2065.outbound.protection.outlook.com [40.107.94.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DA589708;
 Tue, 18 May 2021 15:28:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVSSdejtBUHZJ+yriMoVxZ23qNK/R832oQdr9l5C7I0JINeBOHLgG0lxCAO7UJu9RgxB54lSDEFts6jSdJ0PZyQUL9NV2tcmDyZPACyqP40JwKOwfe4op5povs462+3RlPHyQ8FX+jVuT8DZ6Gm5uim6JtyzujiCEH2RKpU3atUSDsKbZPVudOQgjaAWcujtr5WvRtfYr8xgRr8fByAm1Xlyo6c2ql+RnfWYcjbBJnEBRphSWFHB3s7hYFCcEkRnoQCVpbiM2tWcffFgTPCQKE9KSCAzVZx+3Qm5PMFMbM2m8HKTJYom2rBlgtljkGe1uiinMDBDTOvM9LBHO3jkYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FXH2E98nKlBLjkXoLathX9kmI5594TGDmrsWWaA/vxk=;
 b=ib7yTQv238z02niRSEZ6xXYHaYi7hFUm1mRTx0EHpm6sF9da3YHLaJt1yyc6jacqAjh7FdXSkmZQ2qMgJCnrVk4IjRsA0XIwsCZSZR5A9aKmqHYbQvRzt7XtQTVuT4T9xRFfvw2nTVeUL8P+EUkvoIsNZFRMIzKqRRxiT4gcKtxBYXAfsYaXUFFaclr2dyOQSpC8Xh7ebzMqy4w5NDGyUHC/N4GixEC51vPh6mq8zKPIUMWorMkfsm5kWxo1QatHZeEpNdlvFJCV+bKLb91GwE39XMUDDc8nfsyIBYDWNmnpR39rmf2lSPsmyQoU9kRmTer1zoSx4rCaJLs7oXpD0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FXH2E98nKlBLjkXoLathX9kmI5594TGDmrsWWaA/vxk=;
 b=DOM/jL7S6v+p8tV8FAK1AYZrH9vugwIB9yL4XfYxkTdvOaAj060gqE3msRhOaRWcRzDp+x/pZ9McWKJXteX+I4vNGW8qlOAIOSwLbs4z9qM74Y3bUI4oNohulw4d28NQwwltLWBmx8lsEg8alISq4OzSd1fXqAR0U7vwacXU7Wc=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4868.namprd12.prod.outlook.com (2603:10b6:208:1c4::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 15:28:16 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 15:28:16 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
 <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
Date: Tue, 18 May 2021 17:28:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:3b27:1830:9671:4cc9]
X-ClientProxiedBy: AM8P189CA0004.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::9) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3b27:1830:9671:4cc9]
 (2a02:908:1252:fb60:3b27:1830:9671:4cc9) by
 AM8P189CA0004.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:218::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25 via Frontend Transport; Tue, 18 May 2021 15:28:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f619036c-21f9-4c67-44a1-08d91a118e8b
X-MS-TrafficTypeDiagnostic: BL0PR12MB4868:
X-Microsoft-Antispam-PRVS: <BL0PR12MB4868456D6238BED1A2DD0034832C9@BL0PR12MB4868.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uEZ6XkhHCiBdHHr1edtmd8xCac9z1WY90yDlqrrHnpq7z8EJ4qzqkp6VNLKYMt7aRlNQ82JyDp0Em1mEjtx3SVKVYbTzHha94qDT275m/OwxRquj+9PWeBcNUCEumtX/OyZI+6eKF/ZeTndeLzwC8OGi+3zpf81NL6I5e7QnRfadUUImwNBV4QrKSlM3WaKJlS70bH0YpqRYSFlYR3VPkjeb+ywmPDhpH1hGWDyT4GWj/mGVPnVWFTl1jUi0bbXTrEhYrY4f7hWq1St1iQf8kJg7kKD5yKkxhoSNQPlWvK9BNUz4aIh0F5xjn5Yg1JzbgcCEs74BQCXUoJRZlbNjBurJNvABdv2St4WqVgyq/9zSPzE0ckye9jRgeSSQGsIOOMdL5yYaGWtyuDMG6vy7I+uBhCGgeA0+EcdVS0/Mfy6oOfbfm9ozcH1qDE4YU+jOEKpg889Yuu5RZal0y0v1oy+8Jye1Fq9dqOPogWz3Qx/UmaZmye06ylNC1xoqkzR2v/RQYBQ6R7Xjs1qRpODEaKggqeLhHC930DcHuRBV8oq68nubQjz6CmSjeuzidZMa9EwPfbVvYUsKIUhMqjXPuWtcQrZpZHNDzTDQHvvJ9vEz1SMYIfLAS4Z2wvw+4viMflxg64ZB0IOJUrtZw4AqAfvEc3UkYa9p7jnGJlCYe6Oxp/rX27KJnY+MYDhzIqPO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(346002)(39860400002)(396003)(8676002)(52116002)(53546011)(83380400001)(6486002)(66574015)(86362001)(6666004)(31696002)(66556008)(478600001)(38100700002)(5660300002)(2616005)(2906002)(31686004)(16526019)(36756003)(316002)(8936002)(186003)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Yy8zTjVUd0NXZUY0SG5VOWphK3ZES3FwZWJoUFRhK0hia0ZZYmppejRNUCtD?=
 =?utf-8?B?MVg4dTJQVmcwNWVmSHhoaVZhWG5pVTEvcktET1l0eFdMVVcwR2YybSswK1VV?=
 =?utf-8?B?TDNjNm5nT3M4cHVSU1Q2VHRKb09kdWhJaFppemR0aUdPVytSL0NhR3I0Kytw?=
 =?utf-8?B?YnpwZUw4Q2ZqVmFTYWZLa0FROXUwUGEwVWJ6WXAxdVdmaHAvVXdGdktaRGhi?=
 =?utf-8?B?YTlJWldkNzdmc1JIS3UyNGY4Q2dFdXVvNlFncWJOM1MyN05QREJ5L3ZLR1Bk?=
 =?utf-8?B?TXpwTXh5MGwrNk9HVmpoOXBEeVI3TWhEc3ZpMEt2SE1Sdm5OeklyVkZqR0VB?=
 =?utf-8?B?ajFxNmpHSlV2NEhjVTJOeUl3SHR4YnFCT3BhY1BWeDNPc2RHMWZoaUNHdkN5?=
 =?utf-8?B?STdiS2dRTTRRdG1ReVhvVjFlb2lUS2xZSzZ2cjdjVDJ2S3B6TUZCK0ROZDd3?=
 =?utf-8?B?V1VGbG8wbmNqZVFLY3RnZTgxZ3FCbUQxOEtnR3lkNU1qWDF4aW5oMFMxK2hm?=
 =?utf-8?B?UEdXd3hxQWZHY002YTJlUkU0bE1TNXNRZXNvUkg4RXpwT3hpSTdhQklJd29U?=
 =?utf-8?B?NE1LcDFqR1RsOHFVc1JmM092QnVPTExETVhvejhyV3lmSFdPYVVRcFVGQ1Z2?=
 =?utf-8?B?KzZraUNKcWdxYUpiclhvYWljZXBGQVp3aDhabEZ2VUNrdTR4dlQ0ZEllNUUw?=
 =?utf-8?B?Ui9DbFRnalhwRWZNOCtSaDBseW9MbmVUdWdJQWg4cndEcEZtMTZBUTFQMkNm?=
 =?utf-8?B?aXhHb1g1b2psSVVua21XWGR6OFd0VndsQ2pwOVdTOUxxa2FOZFY4MEx0VkRl?=
 =?utf-8?B?V2Nvdm1BSkJqWWh4UVZKaGpBalNvekxpQUJvZUxLNGJxYXRxUGM4NStJcFg1?=
 =?utf-8?B?RnJ2ZTRyZW5DZTBqZEN3dER1c1lITkNvSDk3WUN2S0JUMEN4c0I1SmhNRG81?=
 =?utf-8?B?N3d1ZVpONUVxRGN6cU1RTTk2aXdUbktzOTlCbWVVYjRqV20vbDNoZC92YURD?=
 =?utf-8?B?N2FhZHF2NE1Fb3JsWkREN0VzV3ZaMnpDS2pMQVFOcjg0TS9kbW40bmdmR2R2?=
 =?utf-8?B?NTE5ckJEYWVYTHRmZXhYV05jOHh4ZytIdUtGRVd5K0F6V0JwanpZUVFWQnJo?=
 =?utf-8?B?RDl2KzQzTG1sNG9kTUNibCtieW5Wdi9scnZXMlRjYjlteUJoQ2FsT1VUUi9x?=
 =?utf-8?B?OUx4b1R1R2hvNFhSSmwxVlN2elRxcllkUFAxOFg3RWRrVnQrUWFrUWY2VEUw?=
 =?utf-8?B?WVpIc1ZBcjVISHdveS9sZGR0eXlnRlhvR0QyWXJ6SHE5dEhvazRXN3VvSEll?=
 =?utf-8?B?YkxRbTJpQVAybUZaNDUxNlljeC9IQ0VCVzhjN1VYWlhsNkdNcCs2RDdyYW9M?=
 =?utf-8?B?RkRPNWJOR2lTOFdrRTB2WEdYU0czU1hoTWw4WTNDTnFuQTYvTmMyMXRVOW56?=
 =?utf-8?B?WWw3c01BVUg3c0t1bGUxSHpzNktkbzBYelEzdWJRYWQrQkZEcm81am01bmhN?=
 =?utf-8?B?d2RlUXNZaExxU0JEbVUya21OUTVET0kxUk5tbjZSR0FmaWhDQUZvUS81SG10?=
 =?utf-8?B?T2U3UjllZWxQbzFBNUhRYTlVdEFMNGY2VHVkSmN2dnBWZWdFdHlPTFdDaUdC?=
 =?utf-8?B?Wk02UW9CSDdoSVl4OXkzcjN4cVZXOVJqeFFiQzZrQVFHalBRSXZQZ2dxemk3?=
 =?utf-8?B?MHc2T1hmUUp2bnQwMlV2TVBVMUZMUFpqSTU2ZlluSXFtU3YzTFZOWnErMGkw?=
 =?utf-8?B?ZTc5YVNEcW85TmQ4Y0R5cVJCQ2pOMW14cHFGeFdhbGwvc2lJOXkrMDF6eThV?=
 =?utf-8?B?QnNtWFFOTHlUa0U5dUNiYWMzNXJFQkZBcUlDeTZweGJTU3lsb2JhQ2hmU2cv?=
 =?utf-8?Q?LOM47IcusSG+P?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f619036c-21f9-4c67-44a1-08d91a118e8b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 15:28:16.0072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MAJ728jCa6CGhe5Bg6ub/3u8K2MwGlxi2YhSBmz8Sc/c0lRRPCAWMNyUXempxPxk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4868
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

QW0gMTguMDUuMjEgdW0gMTc6MjAgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDUv
MTgvMjEgNToxOCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4KPj4KPj4gQW0gMTguMDUu
MjEgdW0gMTc6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Cj4+PiBPbiA1LzE4LzIx
IDEwOjI2IEFNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4+PiBXZSBhcmUgY2FsbGluZyB0
aGUgZXZpY3Rpb25fdmFsdWFibGUgZHJpdmVyIGNhbGxiYWNrIGF0IGV2aWN0aW9uIAo+Pj4+IHRp
bWUgdG8KPj4+PiBkZXRlcm1pbmUgd2hldGhlciB3ZSBhY3R1YWxseSBjYW4gZXZpY3QgYSBidWZm
ZXIgb2JqZWN0Lgo+Pj4+IFRoZSB1cGNvbWluZyBpOTE1IFRUTSBiYWNrZW5kIG5lZWRzIHRoZSBz
YW1lIGZ1bmN0aW9uYWxpdHkgZm9yIAo+Pj4+IHN3YXBvdXQsCj4+Pj4gYW5kIHRoYXQgbWlnaHQg
YWN0dWFsbHkgYmUgYmVuZWZpY2lhbCB0byBvdGhlciBkcml2ZXJzIGFzIHdlbGwuCj4+Pj4KPj4+
PiBBZGQgYW4gZXZpY3Rpb25fdmFsdWFibGUgY2FsbCBhbHNvIGluIHRoZSBzd2Fwb3V0IHBhdGgu
IFRyeSB0byBrZWVwIAo+Pj4+IHRoZQo+Pj4+IGN1cnJlbnQgYmVoYXZpb3VyIGZvciBhbGwgZHJp
dmVycyBieSByZXR1cm5pbmcgdHJ1ZSBpZiB0aGUgYnVmZmVyIAo+Pj4+IG9iamVjdAo+Pj4+IGlz
IGFscmVhZHkgaW4gdGhlIFRUTV9QTF9TWVNURU0gcGxhY2VtZW50LiBXZSBjaGFuZ2UgYmVoYXZp
b3VyIGZvciB0aGUKPj4+PiBjYXNlIHdoZXJlIGEgYnVmZmVyIG9iamVjdCBpcyBpbiBhIFRUIGJh
Y2tlZCBwbGFjZW1lbnQgd2hlbiBzd2FwcGVkIAo+Pj4+IG91dCwKPj4+PiBpbiB3aGljaCBjYXNl
IHRoZSBkcml2ZXJzIG5vcm1hbCBldmljdGlvbl92YWx1YWJsZSBwYXRoIGlzIHJ1bi4KPj4+Pgo+
Pj4+IEZpbmFsbHkgZXhwb3J0IHR0bV90dF91bnBvcHVsYXRlKCkgYW5kIGRvbid0IHN3YXAgb3V0
IGJvcwo+Pj4+IHRoYXQgYXJlIG5vdCBwb3B1bGF0ZWQuIFRoaXMgYWxsb3dzIGEgZHJpdmVyIHRv
IHB1cmdlIGEgYm8gYXQKPj4+PiBzd2Fwb3V0IHRpbWUgaWYgaXRzIGNvbnRlbnQgaXMgbm8gbG9u
Z2VyIHZhbHVhYmxlIHJhdGhlciB0aGFuIHRvCj4+Pj4gaGF2ZSBUVE0gc3dhcCB0aGUgY29udGVu
dHMgb3V0Lgo+Pj4+Cj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhl
bGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+Pgo+Pj4gQ2hyaXN0aWFuLAo+Pj4KPj4+IEhlcmUg
d2UgaGF2ZSBhIHR0bV90dF91bnBvcHVsYXRlKCkgZXhwb3J0IGFzIHdlbGwgYXQgdGhlIGVuZC4g
SSAKPj4+IGZpZ3VyZSB5b3Ugd2lsbCBwdXNoIGJhY2sgb24gdGhhdCBvbmUuIFdoYXQgd2UgcmVh
bGx5IG5lZWQgaXMgYSAKPj4+IGZ1bmN0aW9uYWxpdHkgdG8ganVzdCBkcm9wIHRoZSBibyBjb250
ZW50cyBhbmQgZW5kIHVwIGluIHN5c3RlbSAKPj4+IG1lbW9yeSB1bnBvcHVsYXRlZC4gU2hvdWxk
IEkgcGVyaGFwcyBhZGQgYSB1dGlsaXR5IGZ1bmN0aW9uIHRvIGRvIAo+Pj4gdGhhdCBpbnN0ZWFk
PyBsaWtlIHR0bV9ib19wdXJnZSgpPwo+Pgo+PiBXZSBhbHJlYWR5IGhhdmUgdGhhdC4gSnVzdCBj
YWxsIHR0bV9ib192YWxpZGF0ZSgpIHdpdGhvdXQgYW55IHBsYWNlIAo+PiB0byBwdXQgdGhlIGJ1
ZmZlci4KPj4KPj4gU2VlIGhvdyB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZygpIGlzIHVzZWQuCj4+
Cj4+IENocmlzdGlhbi4KPgo+IE9LLCBzbyBpcyB0aGF0IHJlZW50cmFudCBmcm9tIHRoZSBtb3Zl
KCkgb3Igc3dhcF9ub3RpZnkoKSBjYWxsYmFjay4KClRoYXQgc291bmRzIGxpa2UgYSBkZXNpZ24g
YnVnIHRvIG1lIHNpbmNlIHlvdSBzaG91bGQgbmV2ZXIgbmVlZCB0byBkbyB0aGlzLgoKV2hlbiB5
b3Ugd2FudCB0byBkZXN0cm95IHRoZSBiYWNraW5nIHN0b3JlIG9mIGEgYnVmZmVyIGR1cmluZyBl
dmljdGlvbiAKeW91IHNob3VsZCBqdXN0IGRvIHRoaXMgYnkgcmV0dXJuaW5nIGFuIGVtcHR5IHBs
YWNlbWVudCBmcm9tIHRoZSAKZXZpY3RfZmxhZ3MgY2FsbGJhY2suCgpJdCBpcyBUVE1zIGpvYiB0
byBkZWFsIHdpdGggdGhlIGJ1ZmZlciBwbGFjZW1lbnQgYW5kIGRyaXZlcnMgYXJlIG5vIApsb25n
ZXIgYWxsb3dlZCB0byBtZXNzIHdpdGggdGhhdC4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiAv
VGhvbWFzCj4KPgo+Cj4+Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4KPj4+IFRob21hcwo+Pj4KPj4+Cj4+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
