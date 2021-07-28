Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 857043D8E25
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 14:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A946E07F;
	Wed, 28 Jul 2021 12:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2088.outbound.protection.outlook.com [40.107.243.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A29B6E049;
 Wed, 28 Jul 2021 12:46:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YDnDS+yBL5kRdK/RZLHjsgNxUKFZCs2lkAuzy3blvY8jftiK5VzHWnyFDh+d7uH2OE4E8GuZH6ZwzeVfzsDjDSySZkx4JZjzzfr9tu40PM8qwGaMgWNFx9Wwfm+C/Hubi9nqi8nQtkLo6v1kEDzOFJo+MJ3SDDoSy6hvSNsdBHyIyMoFb/soIM5zg2+WMhq1q1HiUgfE81xko6fYIn/qcVUYwtQN9T8NEixvwwNhimvfd7sZ/Xhb+VYQrl68eiXsZWPlJujsUCeIyA9iTH7n9+MzN6MWPCtNns310BACWkrSyNDNvitWJ7q5ncRtwu1cPBVhs2k91OZy/FwOrUaCjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P/NSoeV6hkdfuCsow+3eOTUHO1sx0tz8x3rfr+lpKZ0=;
 b=dA0z1mW2Kma1yopiMsVbnjjmJnLOG7WQVbX03tIB3HW9LNHbMFZCtDS87oK1SHkJPDM3LLJncPNIruaw9zxrC0clL1yCFGA2Suj91ArRWDzCsAe9nPCEz173GKPcIfZ5ZDMWBOkB7zptK4qMm1GEnwqlBnbkcDlcyWNdZFb8JtzorO3y6XWOdlQrwFjxfqdJSbnemNgLKdeIuN4SDnkTLoCM/UuOnixun9r5noxOh5w05yus2X1jVoMqfU5ObHnAFKm9LSLSPZfBdomzYsaPIH8/QG2YoLgNq2EaMwm6xpKOXVXLjC0QSKMb+AEr8FfNgOpaywgJ0sCI5tZGok4f9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P/NSoeV6hkdfuCsow+3eOTUHO1sx0tz8x3rfr+lpKZ0=;
 b=sUAFSd5fXcS94bSRO7E9nebRshbXhR1IHiz7agGuDkOhhd3Nt71xcBpubNTbYYhGzURg0JeZaiFV/9baHQMq4NDwuEGQ8gBNfkaprpYbw5JC+a4N/QmWGCGLU2+k+7JcCE70yHLZOE5haCElQQhM0s1c0N+0OkPuDhOdXtKppXc=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4566.namprd12.prod.outlook.com (2603:10b6:208:26a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Wed, 28 Jul
 2021 12:46:54 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 12:46:53 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-4-daniel.vetter@ffwll.ch>
 <CAKMK7uG8bMuDP=7-z9nZ38WgMdbeUk96eNx3buTCiaKatYOJxw@mail.gmail.com>
 <2bcfba05-b7d5-1bd9-d74a-b9aac1147e20@gmail.com>
 <CAKMK7uE7GBZYih=KZm5t7-_0P8i7M0tA2KgSOgJsm+-HUE+HzA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <d29f1a30-01d0-6cce-1acd-75bdfcc6045c@amd.com>
Date: Wed, 28 Jul 2021 14:46:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAKMK7uE7GBZYih=KZm5t7-_0P8i7M0tA2KgSOgJsm+-HUE+HzA@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: PR2PR09CA0009.eurprd09.prod.outlook.com
 (2603:10a6:101:16::21) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:af99:e30a:2b7e:eda8]
 (2a02:908:1252:fb60:af99:e30a:2b7e:eda8) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 12:46:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17772132-feba-484d-e4a5-08d951c5c6b3
X-MS-TrafficTypeDiagnostic: MN2PR12MB4566:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4566730C8BF95261A1B5D9BF83EA9@MN2PR12MB4566.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VxV3C7e1PzJyHfItJoqkLw1tnf3zJe0brozA5GsOfvklIhP3mHem77Izr58WrLcQ6k3XHBl9LaopGkZQD3CVvBP9wrm+fVValrt1cUDCan8YTcTSxm1BlLnFPjsKXL0IKerdAivDP2RO/2G8cWXlHP9J+RbD0SC/GCOg4uI3X6Q7EdDOMTZFONrteMVKGsfcJhOXF5vfpBYVBXfy+JoXK45O45n0y0pWH9TZJiZgr50UTnpYBIVEI129DimT4AoZP/fx9KWtl2Bz87zWdpGhDNULyIp8bWvev9qcATLqdtVpPj23l/Z4c3P2NdnpwloE4FkSq4fXinhEgwp/5pMSGDIgAZ4uXdMQx8qnAQ3FMi/GUeb1EK/ucjAZ1FXvPfjwE3o6fLi0BdPUlWNRAK8aIiaVrlekGjIApeGG3xjj2xVQbRx+p/Zj74BNTdUvImgleIldR4eGK5exPXd/y6r9jAdLEMEvXOzB8raUrPZwbYY+cf5bKMJUg+qStZwdjMlqexuEnN5H2abiIKLBU0/uQ9sDlIFvieGrCOQT3DiVUuRO29homzEgqeLzE0do256XQcwCPRFHuu4rGs1TH4EmZWWB5NbqW3MqeTk2WuKHT13wR7zKVk9tVE72vmS9VGE9De9Rz2Ib8HEDSoIzuxjmqBZlLA+zmhHQEOitgsx7t54rR6GYYKz9ugPvtTAR6Qft1QK1cHLBm43MZDE8FkpBkyLzFdZ6dFnNB8G5fb+8QDA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(66946007)(86362001)(110136005)(6486002)(7416002)(2616005)(478600001)(6666004)(66574015)(2906002)(54906003)(186003)(66476007)(38100700002)(31696002)(316002)(31686004)(8676002)(66556008)(8936002)(4326008)(53546011)(36756003)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDJtcGlscVNnNDRIcW1CUndGZ3JuT0tObXhiWWxZUVozRXNiVG5GNUhQVUt1?=
 =?utf-8?B?aG1oZEFURWE3QTRBRUx0VkFiVFhzY2JXTk8yUVdpT0NsVm9VZ1NxUnNCN1g4?=
 =?utf-8?B?T3h3WGlnUldDcWlOSkhDYlFVak93RmNlTk5jdDhRbzZnL1pVMVczQ0F0d1l5?=
 =?utf-8?B?VGUzYkc1cEFwdVl0b3lXOWUxNnpjandRc3M1WTFVTkFvbnNLMHBiQmNlczNB?=
 =?utf-8?B?YjVpampvRGgzdjJrbEdWSkFPVnhXaktGTkhtRHNBckpBMVZkZXdYZ3lDbm5w?=
 =?utf-8?B?UFJlSGp6N25YYnltNDFLdFpZeVQ3S1dJdkdJTENnZnVEOVV0RFBCc3hHanlN?=
 =?utf-8?B?THZCd3JFRmw1TnhnWEdZVmE5U3RrN1FsblJWQ3VQMmxTWk1aajdVck0wdHd1?=
 =?utf-8?B?blZkbmgyclBXeXVaQ3pkK2RaYisrTzhoemQ5S29YVEc4a292bVQ3S0p1NW1O?=
 =?utf-8?B?ejBPSDgyOXdnRjBBckc2RjhDWnVnS2daMkZXM0ZqVC8zQU00YkRycTNCN2th?=
 =?utf-8?B?YjlFdHpLNk9MMnNrT0FrTy9JdmRJNU9HZ2FZZnBYTW9OTUMyVDB5TG01OXZN?=
 =?utf-8?B?T0lIa1FVNmRQZG9YbDgrcHR3a003VHc2OUd1TVlyMFFWakMxTzdFUTRaTGkr?=
 =?utf-8?B?RXpHbjl4eDdnWEcrQ0tpcTY0NjAyckc4TDN4QnlwM3NVcnZFME9EcGxYWlJW?=
 =?utf-8?B?Wng4M295c1czSVlJcXdXMkloNjFZVENZWWFlYy84d2lyVWJiNm03bFZicTVT?=
 =?utf-8?B?Y1dueC9hd0N5ZG42M292dTNHeXZoWWd1d01DV1RNcXpoOUVhTThoVS8vNmhQ?=
 =?utf-8?B?alVnT0w2KzE3TmMxdzUyZzJYZ2xYa2haK0lFZkVFSjZteFUyRUhFbWt1RldE?=
 =?utf-8?B?dzA3OXZvOTRJNnl1OUtCekV3Y1pYeUdnblcvSWlUN2dld25vTEc2bXdpcW83?=
 =?utf-8?B?OXo3RnNWL2JVS0RpTGx3eGxqVTBuREJEcXlJSnhQd1U0R3RuU1czV3pyRmYx?=
 =?utf-8?B?dUk3c0oyWDZ4akRINncxZmdObVFJOXl4Rm5nZlcvWGlvRitESnRvY3FyNWJE?=
 =?utf-8?B?MzRNd3JhUTBhM3pLMUU3MDR6K2gybzc4dEJ6Mkh5QW1WR1dPTXVKZFVMVzlW?=
 =?utf-8?B?UlNBZTlTOVBMOW1tMTVMK2xyUlVIa0d6cXQ1MnlsOXY5clZ2QVFBLzB4OTVj?=
 =?utf-8?B?L2Z4MWprSkhhanJuSmFJblBveDZhQnlBRy8rSFpFV2FaYWFxODBLMEdocUo4?=
 =?utf-8?B?eVovbVNQaU9vUVNzWFkrQmNjYllGajV4Y1lqRUoyR2Q5Qm1tOXlyM24vcjlO?=
 =?utf-8?B?T0w4MXJYbTNrQ1UrSmgxZkoxYTVrN2lKODdUekkwcEFXTHFobnQ2blZtbER3?=
 =?utf-8?B?cktxeCtRRVpvY2pkVitubXB2RTF3WC9ydUg4QysyS2VDNDBsQUlqMnNmb1pC?=
 =?utf-8?B?Wng0WkU5RnN3QkxiRTNlbVVQZnk2RjF6dVcxWkNCbEtXRDRnWmkzNlhhRlVt?=
 =?utf-8?B?bU9rcnJqcm10N0Y2MExZZ2I1M2NNTEhZdWpqL0dKZzRxRVdoWUh4SC90REN4?=
 =?utf-8?B?NXQrZU54VFJqbGhQY1d0eWJ1Mjd4WGlYZ2VRWHNSRzliVXZldGgxa3NjMmVT?=
 =?utf-8?B?MjJzZzh3WEVUWmJJK3NRWEVZY0x1cU9mbkh3dFRxV28zQVIyWml2UGl6Q0dW?=
 =?utf-8?B?QkVSZ2M3L01vU3pKVmxyYWErRW9TeTQxMXhQY1Q1YWpLL0trSFRQaEpHYVc0?=
 =?utf-8?B?b0d1cXN5aEtTU1hqVGxWS3ExWU0wcmR6MXpSMDR2VDZWMW5CeFoyU0MyMFhW?=
 =?utf-8?B?NjZwM2xoYWxuaG5Ma3RXTEdQdjQ4NldHUDVMS1hsaFNMaEpxTGdtRUlPQ0JH?=
 =?utf-8?Q?N6LEwPffesXFC?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17772132-feba-484d-e4a5-08d951c5c6b3
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 12:46:53.5770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mmxn5IJmdAtrVZ9hwgPLZ3LcxsjOVMSfdj5rLDZH9bWIVrNVY+CTMSdpBxOLJ26u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4566
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH v4 03/18] drm/sched: Add
 dependency tracking
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Melissa Wen <melissa.srw@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Nirmoy Das <nirmoy.aiemd@gmail.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjguMDcuMjEgdW0gMTQ6MDkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgSnVs
IDI4LCAyMDIxIGF0IDE6MjkgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxja29lbmlnLmxlaWNodHp1
bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IEFtIDI3LjA3LjIxIHVtIDEzOjA5IHNjaHJpZWIg
RGFuaWVsIFZldHRlcjoKPj4+IEFkZGluZyBhIGZldyBtb3JlIHBlb3BsZSB0byB0aGlzIGJpa2Vz
aGVkLgo+Pj4KPj4+IE9uIE1vbiwgSnVsIDEyLCAyMDIxIGF0IDEwOjAyIFBNIERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Pj4KPj4+PiBAQCAtMzQ5LDYgKzM2
NywxMyBAQCBpbnQgZHJtX3NjaGVkX2pvYl9pbml0KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2Is
Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICpl
bnRpdHksCj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKm93bmVyKTsKPj4+PiAg
ICB2b2lkIGRybV9zY2hlZF9qb2JfYXJtKHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IpOwo+Pj4+
ICtpbnQgZHJtX3NjaGVkX2pvYl9hd2FpdF9mZW5jZShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9i
LAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKTsKPj4+PiAraW50IGRybV9zY2hlZF9qb2JfYXdhaXRfaW1wbGljaXQoc3RydWN0IGRybV9z
Y2hlZF9qb2IgKmpvYiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBib29sIHdyaXRlKTsKPj4+PiArCj4+Pj4gKwo+Pj4gSSdtIHN0aWxsIHdhaXRpbmcgb24g
dGhlIHBhaW50IGRlbGl2ZXJ5IGZvciB0aGVzZSB0d28gZnVuY3Rpb25zIHNvIEkKPj4+IGNhbiBm
aW5pc2ggdGhpcyBzaGVkLgo+PiBXZWxsIEkgd291bGRuJ3QgY2FsbCB0aGF0IGJpa2Ugc2hlZGRp
bmcsIGdvb2QgbmFtZXMgYXJlIGltcG9ydGFudC4KPj4KPj4gSnVzdCBpbWFnaW5nIHdlIHdvdWxk
IGhhdmUgY2FsbGVkIHRoZSBleGNsdXNpdmUtZmVuY2Ugd3JpdGUtZmVuY2UgaW5zdGVhZC4KPiBT
dXJlIG5hbWluZyBtYXR0ZXJzLCBidXQgYXQgbGVhc3QgdG8gbXkgRW5nbGlzaCB1bmRlcnN0YW5k
aW5nIHRoZXJlJ3MKPiBub3QgYSBzZW1hbnRpYyBkaWZmZXJlbnQgYmV0d2VlbiB0ZWxsaW5nIHNv
bWV0aGluZyB0byBhd2FpdCBmb3IKPiBzb21ldGhpbmcgZWxzZSAoaS5lLiBhZGQgYSBkZXBlbmRl
bmN5KSBvciB0byB0ZWxsIHNvbWV0aGluZyB0byBhZGQgYQo+IGRlcGVuZGVuY3kgKGkuZS4gYXdh
aXQgdGhhdCB0aGluZyBsYXRlciBvbiBiZWZvcmUgeW91IHN0YXJ0IGRvaW5nIHlvdXIKPiBvd24g
dGhpbmcpLgoKVG8gYmUgaG9uZXN0IEkgaGFkIHRvIGdvb2dsZSB3aGF0IGF3YWl0IG1lYW5zIHdo
ZW4geW91IGZpcnN0IG1lbnRpb25lZCAKaXQgYmVjYXVzZSBJIGRpZG4ndCBoYWQgdGhhdCBpbiBt
eSBFbmdsaXNoIHZvY2FidWxhcnkuCgooQnV0IEkgaGF2ZSB0byBub3RlIHRoYXQgbXkgRW5nbGlz
aCBlZHVjYXRpb24gaXMgYmFzaWNhbGx5IG5vbi1leGlzdGVudC4gCkkgc3BlYWsgR2VybWFuIGFu
ZCBhIGdvb2QgYnVuY2ggb2YgRHV0Y2ggYW5kIGp1c3QgaW50ZXJmZXJlIG1vc3Qgb2YgdGhlIAp3
b3JkcykuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+IEV4Y2x1c2l2ZSB2cyB3cml0ZSBmZW5jZSBv
dG9oIGlzIGEgcHJldHR5IGJpZyBkaWZmZXJlbmNlIGluIHdoYXQgaXQgbWVhbnMuCj4KPiBCdXQg
YWxzbyBpZiB0aGVyZSdzIGNvbnNlbnN1cyB0aGF0IEknbSB3cm9uZyB0aGVuIEknbSBoYXBweSB0
byBwaWNrCj4gdGhlIG1vcmUgcHJlZmVycmVkIG9mIHRoZSB0d28gb3B0aW9ucyBJIGRlZW0gZXF1
aXZhbGVudC4KPgo+PiBXaGF0IHNwZWFrcyBhZ2FpbnN0IGNhbGxpbmcgdGhlbSBhZGRfZGVwZW5k
ZW5jeSgpIGFuZAo+PiBfYWRkX2ltcGxpY2l0X2RlcGVuY2VuY2llcygpID8KPiBOb3RoaW5nLiBJ
IGp1c3QgbGlrZSBhbm90aGVyIGFjayBvbiB0aGlzIGJlZm9yZSBJIHJlbmFtZSBpdCBhbGwuIEFs
c28KPiBJIHdhc250IHN1cmUgd2hhdCB5b3UnZCB3YW50IHRvIG5hbWUgdGhlIGltcGxpY2l0IGRl
cGVuZGVuY3kgdGhpbmcuCj4KPiBMdWNhcywgQm9yaXMsIE1lbGlzc2EsIGFueSBhY2tzIGhlcmU/
Cj4gLURhbmllbAo+Cj4+IFJlZ2FyZHMsCj4+IENocmlzdGlhbi4KPj4KPj4+IFRoYW5rcywgRGFu
aWVsCj4+Pgo+Pj4+ICAgIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9tb2RpZnlfc2NoZWQoc3RydWN0
IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSwKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqKnNjaGVkX2xpc3QsCj4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgbnVtX3Nj
aGVkX2xpc3QpOwo+Pj4+IC0tCj4+Pj4gMi4zMi4wCj4+Pj4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
