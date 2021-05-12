Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5389037BDA5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AF66EBA1;
	Wed, 12 May 2021 13:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2068.outbound.protection.outlook.com [40.107.92.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623B56EBA1;
 Wed, 12 May 2021 13:05:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LOdqhS1GEgF5xO8gkrqHGkjF7DViLE8janJj8TS+HPC7C2FUS2uVEv8y/o6oaFG6RrNi6VbOMRSbYBuQjecp2ew4fzCj6fhDGBKSyTEFL/n+HkwiKMzKDffLCXZMJGhV1LCKUSwbjf4rq1ngxxqIdELRcn2knkneSNoOejfnHNMTUs/sw+aLi/7gMGYsuUod2d199cyXzxtLilbOglyVyIB7MWZ6w/p5TOftf4PWz49dtLhIva9yYwD9EFKqlN3pL1xX+ix1wfGYb0yw0qNiHu7F9CUef+AQXtDkSiqIqHBTJBDizjTqhk4izIVCYNU+1cEF88jnzYh9ZriPvhdIQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ByQWh+GjocigGKzwwZeSPLfJhQVf65RuUUv1czf0OAc=;
 b=n67qBaTvnfo59U+nB10DjOnYYtAB1l1HbwwhOA7XWhq8jNV/kSZ/8DkmTOZ9NotM7OSJpzDrjpUnGK0s759WLD6k72RXeVVy14kQB9wU7fvn9verY0leWFEtwQXA7ElLrIh+ifVB06ne1QY8b7WZtdHMsg0lwO+RPbhBL9P+q+2HGamdqANwdxcO5ghhye2Lu4SBWKZGRpmp3Rl+CwegOHvZJAkUeUnFe55XUYwvHyNMwmll21OFi6023SD359Ut25VtZSVZTc3VA1FLaVoI5TRsfNQ6JBsj4yNgi478TFHOVvb+p7QoHZS/2xiN/Un6q7xAzH8FeKtnlOLbJLyFUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ByQWh+GjocigGKzwwZeSPLfJhQVf65RuUUv1czf0OAc=;
 b=YMrzEAQF/8ELwzSbbB981sQSl52waiOwuXlrLNfk3cqdgyvqtlZnioXIShxKZiWrDPufFzprVQerW5ghkjWVoAf5AsADNQ1vZpeTMlF/zqD6H3uvF+ZqrEhWH6GjhUmQykQMnqM4kq31Sch6EBMpocvcHg0m53Bd928PWjvpHJ8=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4753.namprd12.prod.outlook.com (2603:10b6:208:89::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.25; Wed, 12 May
 2021 13:05:22 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 13:05:22 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
 <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
 <8551810c-a095-3906-d982-7bc409140c48@amd.com>
 <0b7f32d8-bfb9-84dd-fea7-556dddded1cc@linux.intel.com>
 <a0277869-7244-aee0-3359-21dac8f5a724@amd.com>
 <e85e9bd7a28c8570c6429683d6d68ee0855afacb.camel@linux.intel.com>
 <d0f0c55d-1784-922b-e9bd-0248cd7fb6af@amd.com>
 <6e317ee2b22546a2333d3098f5cda1a59da62a1a.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <d40ac511-3de3-12f0-4f0c-38b730e62b81@amd.com>
Date: Wed, 12 May 2021 15:05:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <6e317ee2b22546a2333d3098f5cda1a59da62a1a.camel@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:c533:38e4:26b8:d73]
X-ClientProxiedBy: AM0PR01CA0111.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::16) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:c533:38e4:26b8:d73]
 (2a02:908:1252:fb60:c533:38e4:26b8:d73) by
 AM0PR01CA0111.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend
 Transport; Wed, 12 May 2021 13:05:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6298280-f911-4be1-0633-08d9154699c4
X-MS-TrafficTypeDiagnostic: BL0PR12MB4753:
X-Microsoft-Antispam-PRVS: <BL0PR12MB4753B349DA98F86EFD1ECB9083529@BL0PR12MB4753.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fods+Nvy9mgb+26PNLhXfzexXpQL1ncqN42Dj2JniiqQgkQhMroicNmkjkBdL95rYdSwDpG+ok5Zbx149oxy67ulfspX7d7V7N8q80CD54VNajQOFDnomz1Qca30qE5VX6zNHpij5q+EjMx+WfcC8G1L0JAVxQt7tEkYH4Rgy9cHhs92UaSLbFsLSh4hmWoU392CfzR4QRPa4zG6LadfQmduRiEKEKR63gFgZDW7Rm/S2TYzykAZPhNLancgj1fFDzRAlSxcSYnlqvuqXAf50L8ugFbCrhkV1hWViNOGwUmcAAE60QYVOWJQ/qgwtUzmVrqmHyfu7sE/NMO978ob5u6ZJD5q3z8F4cnH5vYxkzuF41z4M7spV8PGXsOp8dYplFZe2wlQQnKICoiyWgLB1RZVyZTwQDzc1JnE31eitT3Cxl6JoZ3Ud6RIAzCNjWUIzkmWJbQVeywuvtUZwYl8K0riwK2YLLFm2XXrLiQiYAnOis/lPY8oXgzEUnovgTBNWbUesS7ADd4aaXN7pYvyg+p199KR1b0eje/HC1Ux8t+oJOUa5zA9uWp5Nd1YskI/OJRf99zdiqp2DqH/qcBccx9LIQn7fK4NJuVqS4hi0mIEKyDZLzJc7+XZEQx/OdBv5IWr1eV1/QJyg9kKMrRUWa+tfLOhna6uzzmkrAhyx2o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(31696002)(52116002)(38100700002)(5660300002)(36756003)(66556008)(478600001)(2906002)(86362001)(6486002)(66574015)(66476007)(66946007)(31686004)(316002)(110136005)(2616005)(83380400001)(8676002)(16526019)(186003)(8936002)(6666004)(53546011)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?WHV6N1FtQkhPb0NjUjBDQlk4TkwvdGozeDMzZHVraHQrdFMydUpwYlVtU2Nz?=
 =?utf-8?B?M2twaWxCOXJyQ3lHVmRzRWtpcWpSTUVDWWozNXZNOS9CV2twTnZQdU1mb2Nh?=
 =?utf-8?B?b0grOEZGS0ZIaGpKajk5R0FSZ0t5c1hFSkdhZE9xMy93K0VKMit6UVRSZ1cv?=
 =?utf-8?B?SUdkU2YyRm9HNWxKT1NLT1lESXhoaTk4UFkxNGFRTkwvTEN4ZHVPNHc1UWla?=
 =?utf-8?B?bXlFTWVHazRsR3NobjZXNHpERjlZMkV2ekl3V1EwNEk2dDBzMEpZQkpiVWE1?=
 =?utf-8?B?WHJiNWF2YUdqKzJjdnQ5Njc1cEhjWDlvK2pJZld2aThYdHYrNURmRjZBL0tT?=
 =?utf-8?B?Rk9EaEhPSGR3aGR3TGIzeS9LSzRHUDNPeHdTYUtwbXkxZTM5WFlMeFh4L3hH?=
 =?utf-8?B?ZUlHTFZveDVWS1lZK3MvNlcxdkU4b3pIUG5DNGRBSklqeWJUU1hzakZNWlJ4?=
 =?utf-8?B?VWphR2lXSFh1Vm5zZmxpVDB6MVo2ZDRrVVc1SE14d3d4dzFVUkRBcTg5ZHdJ?=
 =?utf-8?B?QzJ4NzQxQngvS1VEYUlOem9rNmhZcVBHZzllaUcyY1pQZXhtamtkdSt1YzFz?=
 =?utf-8?B?dzlWRUR6UkxYaTRvbHNmZHpSVFJWK1crTlk2SVJLMjdqbXJKb0c4YnU3U0NM?=
 =?utf-8?B?Z0VUaTVVSDBZcVNMbmgwMG15NWczOTI3R1RGK0hTSUZSK0xpemxIN09MdFNG?=
 =?utf-8?B?WmgyMUhXVnZjUnZxYWdDbStaTmw2NkRObDIvYTVoZzBrY2p2Yk5ndllSVnh4?=
 =?utf-8?B?a2s4bjlFczhtZ1h4S2k5MEtkVlA0dUY5TlgyencrMXF3M2Z0bExEV3I5K1RQ?=
 =?utf-8?B?WFlXTGhnNytQNHpVTE1QeDBrZC85Z2RXb1hhU2xvdkJwNzZFS3ZKTVc0c3hP?=
 =?utf-8?B?OXE2WDN3aFk2ZTBnVW9pbU9VV3p6NzZiSjFGcDdsWllDeUJmTVpTMDFmQXRT?=
 =?utf-8?B?dnJLQjJtYVlxbXN4TUpPSVhpTjlCYjRIZVpkNVdHNUNLTDFNNjJYbDdSMDN1?=
 =?utf-8?B?K1dOQnpsejA0TThxZGNBUGNYY21DRytkTUl2YVR6YVc0WHpqODBhanB3R2FZ?=
 =?utf-8?B?NThLMkRPbFB4MGVyRzExUXAwTVhFOC9nVlBrTEk2YXJkelJva1JnZytkaTk0?=
 =?utf-8?B?VGNiME1EVTdvdldmTGkvck1mZTNsd040SE9ncGZyeU9PUjN2ZVZRL2FjSzFE?=
 =?utf-8?B?VHRVZDQ3MkhHNEJtMitYTHVLVGxBMGNvZEt6RTdpdTJhMmptRW5iN2tMVnEz?=
 =?utf-8?B?SVRsSW9BNkd1ODEwOXA1TmJCcDZoZzdqT1ZtdDRqVFdleXNCWVZMYnYzTGdK?=
 =?utf-8?B?b2tXY0hlRnUrekVzTzdJNFRNTE9mQ29CT2pPRVZ0Q1ZyQkR4N00vc29ZRTh1?=
 =?utf-8?B?ZjI0bEFXSUNPbklERlRESXFabzVPbzJWcFdwTTh6SW1QTFVDT0ZIRDBjOWw1?=
 =?utf-8?B?UXY2TGNxa2VIRmZ2dm00aGgxeGVoUGE1V0F6KzFQcWRId0dJUGJZS01zYnkz?=
 =?utf-8?B?bUh2OXlaZURrNTIwTngrYzRCb0RqSnQ1T0U3ZzNwbkpkTWFrQWJJanBlQXgv?=
 =?utf-8?B?blRUTlhsS3cxYU9vakszQnFLSk9BelpCQWh1aEcrYlRaQ0JkVHlUQnpHZ2pn?=
 =?utf-8?B?R2Z1UDNYV1BuZ0tvZGs3UEF5TkRaeFBuazVzcGpTbXozcDZpSTcyU25WbDBR?=
 =?utf-8?B?SmdVUmp4Ty9RYlltUGFNMmQ5VTZqcEUvWlVzSHNCMURtTFJqNGd2S1J1a050?=
 =?utf-8?B?NlJlMVpzbmVnL0YzRGxLSUhaRGpGclZGOWNyVWhOY0hlanQzUE1BQ2xldERT?=
 =?utf-8?B?R1BIUjdZSUxveVRJZFBIR2tTc3EzWnNVR2I0RUxERVZnWW1JeUVaMjN5QmV4?=
 =?utf-8?Q?acd7IeK6YDiC8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6298280-f911-4be1-0633-08d9154699c4
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2021 13:05:22.3669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qs2suizLeYQOtnoCdEe/4n6GO/WK0lnbL8vRr2dlkJoBdea3yeOznOziH+eKnWGr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4753
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

QW0gMTIuMDUuMjEgdW0gMTU6MDIgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBXZWQs
IDIwMjEtMDUtMTIgYXQgMDk6MDkgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDEyLjA1LjIxIHVtIDA5OjA1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBPbiBXZWQs
IDIwMjEtMDUtMTIgYXQgMDg6NTcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4g
QW0gMTEuMDUuMjEgdW0gMTY6Mjggc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4gT24g
NS8xMS8yMSA0OjA5IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4gQW0gMTEuMDUu
MjEgdW0gMTY6MDYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pj4+Pj4+IE9u
IDUvMTEvMjEgMzo1OCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+Pj4gQW0gMTEu
MDUuMjEgdW0gMTU6MjUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4+Pj4+IE1vc3Qg
bG9naWNhbCBwbGFjZSB0byBpbnRyb2R1Y2UgVFRNIGJ1ZmZlciBvYmplY3RzIGlzCj4+Pj4+Pj4+
PiBhcyBhbgo+Pj4+Pj4+Pj4gaTkxNQo+Pj4+Pj4+Pj4gZ2VtIG9iamVjdCBiYWNrZW5kLiBXZSBu
ZWVkIHRvIGFkZCBzb21lIG9wcyB0byBhY2NvdW50Cj4+Pj4+Pj4+PiBmb3IKPj4+Pj4+Pj4+IGFk
ZGVkCj4+Pj4+Pj4+PiBmdW5jdGlvbmFsaXR5IGxpa2UgZGVsYXllZCBkZWxldGUgYW5kIExSVSBs
aXN0Cj4+Pj4+Pj4+PiBtYW5pcHVsYXRpb24uCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gSW5pdGlhbGx5
IHdlIHN1cHBvcnQgb25seSBMTUVNIGFuZCBTWVNURU0gbWVtb3J5LCBidXQKPj4+Pj4+Pj4+IFNZ
U1RFTQo+Pj4+Pj4+Pj4gKHdoaWNoIGluIHRoaXMgY2FzZSBtZWFucyBldmljdGVkIExNRU0gb2Jq
ZWN0cykgaXMgbm90Cj4+Pj4+Pj4+PiB2aXNpYmxlIHRvIGk5MTUgR0VNIHlldC4gVGhlIHBsYW4g
aXMgdG8gbW92ZSB0aGUgaTkxNQo+Pj4+Pj4+Pj4gZ2VtCj4+Pj4+Pj4+PiBzeXN0ZW0KPj4+Pj4+
Pj4+IHJlZ2lvbgo+Pj4+Pj4+Pj4gb3ZlciB0byB0aGUgVFRNIHN5c3RlbSBtZW1vcnkgdHlwZSBp
biB1cGNvbWluZyBwYXRjaGVzLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFdlIHNldCB1cCBHUFUgYmlu
ZGluZ3MgZGlyZWN0bHkgYm90aCBmcm9tIExNRU0gYW5kIGZyb20KPj4+Pj4+Pj4+IHRoZQo+Pj4+
Pj4+Pj4gc3lzdGVtCj4+Pj4+Pj4+PiByZWdpb24sCj4+Pj4+Pj4+PiBhcyB0aGVyZSBpcyBubyBu
ZWVkIHRvIHVzZSB0aGUgbGVnYWN5IFRUTV9UVCBtZW1vcnkKPj4+Pj4+Pj4+IHR5cGUuCj4+Pj4+
Pj4+PiBXZSByZXNlcnZlCj4+Pj4+Pj4+PiB0aGF0IGZvciBmdXR1cmUgcG9ydGluZyBvZiBHR1RU
IGJpbmRpbmdzIHRvIFRUTS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGVyZSBhcmUgc29tZSBjaGFu
Z2VzIHRvIFRUTSB0byBhbGxvdyBmb3IgcHVyZ2luZwo+Pj4+Pj4+Pj4gc3lzdGVtCj4+Pj4+Pj4+
PiBtZW1vcnkKPj4+Pj4+Pj4+IGJ1ZmZlcgo+Pj4+Pj4+Pj4gb2JqZWN0cyBhbmQgdG8gcmVmdXNl
IHN3YXBwaW5nIG9mIHNvbWUgb2JqZWN0czoKPj4+Pj4+Pj4+IFVuZm9ydHVuYXRlbHkgaTkxNQo+
Pj4+Pj4+Pj4gZ2VtCj4+Pj4+Pj4+PiBzdGlsbCByZWxpZXMgaGVhdmlseSBvbiBzaG9ydC10ZXJt
IG9iamVjdCBwaW5uaW5nLCBhbmQKPj4+Pj4+Pj4+IHdlJ3ZlCj4+Pj4+Pj4+PiBjaG9zZW4gdG8K
Pj4+Pj4+Pj4+IGtlZXAgc2hvcnQtdGVybS1waW5uZWQgYnVmZmVyIG9iamVjdHMgb24gdGhlIFRU
TSBMUlUKPj4+Pj4+Pj4+IGxpc3RzCj4+Pj4+Pj4+PiBmb3Igbm93LAo+Pj4+Pj4+Pj4gbWVhbmlu
ZyB0aGF0IHdlIG5lZWQgc29tZSBzb3J0IG9mIG1lY2hhbmlzbSB0byB0ZWxsIFRUTQo+Pj4+Pj4+
Pj4gdGhleSBhcmUgbm90Cj4+Pj4+Pj4+PiBzd2FwcGFibGUuIEEgbG9uZ2VyIHRlcm0gZ29hbCBp
cyB0byBnZXQgcmlkIG9mIHRoZQo+Pj4+Pj4+Pj4gc2hvcnQtCj4+Pj4+Pj4+PiB0ZXJtCj4+Pj4+
Pj4+PiBwaW5uaW5nLgo+Pj4+Pj4+PiBXZWxsIGp1c3QgdXNlIHRoZSBldmljdGlvbl92YWx1YWJs
ZSBpbnRlcmZhY2UgZm9yIHRoaXMuCj4+Pj4+Pj4gWWVzLCB3ZSBkbyB0aGF0IGZvciB2cmFtL2xt
ZW0gZXZpY3Rpb24sIGJ1dCB3ZSBoYXZlIG5vdGhpbmcKPj4+Pj4+PiBzaW1pbGFyCj4+Pj4+Pj4g
Zm9yIHN5c3RlbSBzd2FwcGluZy4gRG8gSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHkgdGhhdCB5
b3UKPj4+Pj4+PiB3YW50IG1lCj4+Pj4+Pj4gdG8gYWRkIGEgY2FsbCB0byBldmljdGlvbl92YWx1
YWJsZSgpIGFsc28gZm9yIHRoYXQgaW5zdGVhZAo+Pj4+Pj4+IG9mCj4+Pj4+Pj4gc3dhcF9wb3Nz
aWJsZSgpPwo+Pj4+Pj4gWW91IHNob3VsZCBhbHJlYWR5IGhhdmUgdGhhdC4gZXZpY3Rpb25fdmFs
dWFibGUgaXMgY2FsbGVkIGluCj4+Pj4+PiBib3RoCj4+Pj4+PiBjYXNlcy4KPj4+Pj4+Cj4+Pj4+
IEhtbS4gSSBjYW4gb25seSBzZWUgaXQgY2FsbGVkIGZyb20gdHRtX21lbV9ldmljdF9maXJzdCgp
IHdoaWNoCj4+Pj4+IGlzCj4+Pj4+IG5vdAo+Pj4+PiBpbiB0aGUgc3dhcHBpbmcgcGF0aD8gT3Ig
ZG8gSSBtaXNzIHNvbWV0aGluZz8KPj4+PiBNaG0sIGxvb2tzIGxpa2UgbXkgcmVjb2xsZWN0aW9u
IHdhcyB3cm9uZy4gV2Ugc2hvdWxkIHByb2JhYmx5Cj4+Pj4gbW92ZQo+Pj4+IHRoZQo+Pj4+IGNh
bGwgaW50byB0aGUgdHRtX2JvX2V2aWN0X3N3YXBvdXRfYWxsb3dhYmxlKCkgZnVuY3Rpb24uCj4+
PiBZZXMsIEkgdGhpbmsgd2UgYWxzbyBuZWVkIGEgY29udmVudGlvbiB3aGV0aGVyIGl0J3MgY2Fs
bGVkIGRtYV9yZXN2Cj4+PiBsb2NrZWQgb3Igbm90LCBzaW5jZSB0aGUgaGVscGVyIGFjY2Vzc2Vz
IGJvLT5tZW0sIHdoaWNoIHNob3VsZAo+Pj4gcmVhbGx5Cj4+PiBvbmx5IGJlIGRvbmUgdW5kZXIg
cmVzZXJ2YXRpb24uIEF0IHRoZSBzYW1lIHBvaW50LCB0aGVyZSBpcyB2YWx1ZQo+Pj4gaW4KPj4+
IGNhbGxpbmcgdGhpcyBmdW5jdGlvbiB3aGlsZSBob2xkaW5nIHRoZSBMUlUgbG9jay4KPj4gWW91
IGFjdHVhbGx5IG5lZWQgdG8gY2FsbCBpdCB3aGlsZSBob2xkaW5nIHRoZSBsb2NrIGJlY2F1c2Ug
ZXZpY3Rpb24KPj4gb3RoZXJ3aXNlIGVuZHMgdXAgaW4gYW4gZW5kbGVzcyBsb29wLgo+Pgo+PiBU
cnlpbmcgdG8gZml4IHRoYXQgZm9yIHllYXJzLCBidXQgc28gZmFyIG5vIGx1Y2sgd2l0aCB0aGF0
Lgo+Pgo+Pj4gQWxzbywgSSB3b25kZXIgd2hldGhlciBpbXBsZW1lbnRhdGlvbnMgb2YgdGhpcyBj
YWxsYmFjayBtaWdodAo+Pj4gZW5jb3VudGVyCj4+PiB1bmV4cGVjdGVkIGRhdGEgd2hlbiBjYWxs
ZWQgZnJvbSB0aGUgc3dhcG91dCBwYXRoLCBiZWNhdXNlIGF0IGxlYXN0Cj4+PiB0aGUKPj4+IGhl
bHBlciBhc3N1bWVzIGl0IG5vdCBpbiBzeXN0ZW0gbWVtb3J5LCBzaW5jZSBpdCBpcyBhY2Nlc3Np
bmcgYm8tCj4+Pj4gbWVtLnN0YXJ0Lgo+Pj4gU28gdW5sZXNzIHdlIHVzZSBhIHNlcGFyYXRlIGNh
bGxiYWNrIGZvciBzd2Fwb3V0LCB0aGVyZSdzIHNvbWUKPj4+IGF1ZGl0aW5nCj4+PiB0byBiZSBk
b25lLgo+PiBQbGVhc2UgYXVkaXQgdGhlIGV4aXN0aW5nIGNhbGxiYWNrcyBhbmQgbW92ZSB0aGUg
Y2FsbGJhY2sgaW50byB0aGUKPj4gZnVuY3Rpb24gYWZ0ZXIgZG9pbmcgdGhhdC4KPj4KPj4gVGhh
bmtzLAo+PiBDaHJpc3RpYW4uCj4gV291bGQgaXQgYmUgT0sgaWYgSSBhbHNvIG1vdmUgdGhlIGty
ZWZfZ2V0X3VubGVzc196ZXJvKCkgdG8gYmVmb3JlCj4gdHRtX2JvX2V2aWN0X3N3YXBvdXRfYWxs
b3dhYmxlKCkgdG8gbWFrZSB0aGUgY29kZSBsZXNzIHNlbnNpdGl2ZSB0bwo+IHN1cnByaXNlcz8K
Ck5vLCBiZWNhdXNlIHRoZW4geW91IG5lZWQgYSBrcmVmX3B1dCB3aGlsZSBob2xkaW5nIHRoZSBz
cGlubG9jayB3aGljaCBpcyAKbm90IGFsbG93ZWQuCgpDaHJpc3RpYW4uCgo+Cj4gL1Rob21hcwo+
Cj4KPj4+IFBscyBsZXQgbWUga25vdyB3aGF0IHlvdSB0aGluay4KPj4+IFRoYW5rcywKPj4+IFRo
b21hcwo+Pj4KPj4+Cj4+Pgo+Pj4+IENocmlzdGlhbi4KPj4+Pgo+Pj4+PiBUaGFua3MsCj4+Pj4+
Cj4+Pj4+IFRob21hcwo+Pj4+Pgo+Pj4+Pgo+Pj4+Pgo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
