Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 918EA38798C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948836EB68;
	Tue, 18 May 2021 13:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2040.outbound.protection.outlook.com [40.107.93.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D10A6EB66;
 Tue, 18 May 2021 13:08:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyzxS2r3McqHoE/Wro5v7lgHeJyybZPw6VcdG3MIj6NlncVrvO4+a0UyGCVJU1zvqP7TmIe4jY0NPDhMXa5e3TSjl+sxqwnvLiFNHptv7Mh/SWqWezlKwmAbU0DwXVFmNkRmgkxNA1DWbT13DyFuvnDBowbzwHsFBdLmXpiIRvVLvrT6VBTEGsUTu2yj0ZoGhM2QXfvUe/X9xEqnhI5OK0HmFJk/r3rbpREm52r/NyYn8eoi7U+RKG4ndWTshLjKZdNUNwPJsugX2UsCQoq6m8+xGqLfcEBuVECKdBU5UE4dToDBCq1fxyFQi+75EvGc6vL+2/MH21YkprJIrgcQzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z/2IowwNCQqC+N6T76Wm80/OjOqRMASJIWTarS59QKM=;
 b=JHTg6RDezxHpfPlUGpAssc0qG1f99KvQh03CF/3xmlZMeHcmdf1Df+amlo/2YmQ79KmpenIG8U9PiYwkH7H10sbVQEVb30dQUPUXRGnJgALGH7Aq90few+jmVRmGhujjioMW3JW+n/pW4ycaDRHweOhnmbL3qDVCdNbfxDyIZUdYW44oVMAkLjc8jSyfuwB1iaGFWM4Pv5mpCR+jlRVo9Le8T7xIQm+vC/DELPZGGMSjOqG/N/MlseX+OEWQ/lD5hltik6q2ltnThZ7CW8kOWrwnnccenrHxOL+VJGjS/cYk0C8JmeT3I0wjWlW2V/i/GsXwY5S1zF7y5bOY3Z80fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z/2IowwNCQqC+N6T76Wm80/OjOqRMASJIWTarS59QKM=;
 b=0AGvrIBoM1PscM2SlcQTg9xZZvClDmVIEGl2IRRmaNUPXjPlvGSwQ91/hSGIZESb4NqTolWuBz/fKVSRuP25TYTfQA28KA5qashLbpRJav9rlq1lbrjHjNMydQyzXSItEhkI98X6BzK6sTPtBUrGGN3izAUqd3Lz1WuREsvZeQ0=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4549.namprd12.prod.outlook.com (2603:10b6:208:268::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 13:08:22 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 13:08:22 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-9-thomas.hellstrom@linux.intel.com>
 <6149ee00-fa4a-3757-117a-8d622eb42070@amd.com>
 <45054121-954d-f20c-52b5-f375db7096e0@linux.intel.com>
 <d547a037-2aa8-76a8-375c-5da580fab631@amd.com>
 <400de9b7-f385-0581-ebb5-e07247d4c996@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b8e062c5-6b63-09c5-e98a-be9bf4813c61@amd.com>
Date: Tue, 18 May 2021 15:08:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <400de9b7-f385-0581-ebb5-e07247d4c996@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8470:36a5:2010:f0c4]
X-ClientProxiedBy: PR3P189CA0073.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:b4::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8470:36a5:2010:f0c4]
 (2a02:908:1252:fb60:8470:36a5:2010:f0c4) by
 PR3P189CA0073.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:b4::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.32 via Frontend Transport; Tue, 18 May 2021 13:08:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e4562468-3571-416c-181b-08d919fe03b1
X-MS-TrafficTypeDiagnostic: MN2PR12MB4549:
X-Microsoft-Antispam-PRVS: <MN2PR12MB45492DD95A66C8E0803FED8A832C9@MN2PR12MB4549.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n+QUi1xGKspw+m+chexmhcao+KDY60TW35uPqsAj+NRO5Tfbskz/XCazg6jT764wMQMi+MOjhqLED9smg6xAF8snuiYtCtTpDOObfrNZT74IY150OSR4Vq0X/yy+cR80AU0sw0wmFneu5VbaGWwaImLmih2A9zYNSi/upN+7KZd2Djq+g59hXPjgdeAGs0tuYZPoIBSGL5szlGGH6yE8tytK5CohJFdadVjhsVyEdKxO1oD/XeqEjY8KC6myKILaWEou3o5zJMbX6Rv20sO+yW4FkU8PnJPJFSFbu0wT7EfVaCdmvprLhzCTYNSWaecjorG5bCPx67JAUuZSzGM4+5dgUkodPkmJfP6pSp5goFVUIYjmTC3Lx3d4LB/8BiazDXywSZxV5etZa/4n4LIOAvCtTKZaRCasz3wCPMFcUmWgpgDoG1SVM6GTAwnGqWGSHWpJpayASQqKM8tJKSiEDI5DXEDDzlRm/yUMdMdoxxA7JQRUZKh6dFnlxLr9Rl7M7V2BzNjhKrMnZXSKNHnCVm2k+tHyEPYmAllGngXlYs8ENyNyRnXbdDdrGMcMvBNrh/CUl3bYxj9JJlL8DryVi7K7DUjZj2D53bcIF+6qmoSnkgaY4vPyvNxfuTCRhOtal6SWAdnW0x0u4D1JrkdYf6/QQZxNlfujo+PNTTDA1g4zhHL8IZ5ohQgFku0+a/heDF+KwJqoP91bnd/6rE/3mg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(39850400004)(366004)(136003)(316002)(478600001)(38100700002)(5660300002)(53546011)(16526019)(8676002)(66556008)(186003)(31696002)(8936002)(66946007)(86362001)(52116002)(6486002)(6666004)(36756003)(66574015)(2906002)(2616005)(66476007)(83380400001)(31686004)(41533002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Y2V3Vkhjc2ZKemxxSWhSQWxjemtnek9RbnFkRGdFTGlBdzZ2T2F5Y2xRVlNn?=
 =?utf-8?B?MnJTUXRueTRUUGU5WDFOYmYyeEh6bkJtSUJUMXkwVk9rc1cwUjdPMjY5T1FU?=
 =?utf-8?B?SzlBS3VjVXl4MStVQURFQm5VUm4raFFKYkkyK2FIUHdLZ0Q4dWFMdEQ0NWtv?=
 =?utf-8?B?YUI5TUtTUGRIalhIT2hHVEhaZ2pvK3MyOUVNTzdpcktOam9za0t0RDk2OGlP?=
 =?utf-8?B?TUxBZ3pyd1JCL3p6STNVRXAzV3JHT0srclVpR0ovTGZmYS83Y1oxK0djQWVV?=
 =?utf-8?B?cVp2VVlXTlJ5V1R5VS9jZWdxeUFQU0dIOVUzR1pVbG83UUhLb0FubGtRTTJm?=
 =?utf-8?B?WEhKWDV0ZVgyeC9VN3lpY3QrQlJ6MUpubmFzUVowZG9yTkphK0pTenVwOXJr?=
 =?utf-8?B?ME52dmpnMzB4VyttNUx6ZEFhV1BNYWV3ays2bm9Da3FMUUVvOG0vcyt2OUFG?=
 =?utf-8?B?WGFHUmZlTEFlbTZLTVM1SDRUS3UvbGVKSWRsK3RnQ2pVVXhmVW55aXpHVDVO?=
 =?utf-8?B?VE5Ha0tFbzV1bCttbkoxcXpUdXZycENSZ2ZhYy85RWN4WENDbXpkT0x5SUw0?=
 =?utf-8?B?alo1OWhlU0lYUXJrQzdMc0l2b2RLcjZSanE5WkdLZU1GQUxqdVJVbTNJRW8y?=
 =?utf-8?B?RUdlVmhEWktudEFkN3RGZElhNlRnbEg3WjZmY3IxeWg2dkEzN2d3Vld6UlF3?=
 =?utf-8?B?NHJXLzBpOE5kc2FkVlhycHdQTHpYM0dodHBFaXhTMjhoaHprZGkyN1Axa1Q4?=
 =?utf-8?B?SEpVYUxORmRDUTc4Wi9WUXo3TUswZElyNUxIZGcyZWdyRFM0Y0ZnSGpFNFF6?=
 =?utf-8?B?TEpmVStCbWQyMWhOTVFXUTZmM1NWZWg4SGp0Mlpta3NSRUZoZzVGWFA2azEx?=
 =?utf-8?B?T1pGejZ0Myt0cWwwa1lhNVpNRjg0SCtGbSthNVFDL3NVK1ZzZC85N212dWNT?=
 =?utf-8?B?ZERuRStrSWNBYXhxdVlsUjAwRGRnZU5UN2J2ZFBvS2ZRWmM4bzJiWHhkM3VJ?=
 =?utf-8?B?U1ZTTU1CYVVUUy9PUmkxNXl3WHEzVFdpTlZlODhCRm9CcFpyM1liMDNpRzJh?=
 =?utf-8?B?Yjg1MTE3QTcyRkdPVkJzWnJPM0grNGtyL3ZLeTB5b0JERFJGL1VKMVIrZzlE?=
 =?utf-8?B?cnNDaXVZTVZwcnpJMVk2R2ZIclA2eVplTkxQV2l4cGhtNlozMGVRZUx1ZXpG?=
 =?utf-8?B?cGZ5U25GZkhMaVg3SlNHT3ZLSDFnQUVhRlJOUWJlMWNyNGU0SW1DcDUrdHU3?=
 =?utf-8?B?dnIwajQ5OVdPNDhFMGg0dGhXS2ZlUldNTjkvbkNTNXBmWXNINHpkajhGWEl0?=
 =?utf-8?B?NmZYSjh1ZmpJNnpaK1RJbkpYckhsMkFVV0UwZWU1RlRBUWg5dkY4ZDZrOTQ0?=
 =?utf-8?B?c01ZSHEyZmduT0gvVWx0SjJUMHNNc3NtYWdsdVBYcnp6OWQrbXRhZ2hXczRw?=
 =?utf-8?B?VXN1b2pFc1laWmFTczJ6V2VQSEczUzMyTVNIbUpQSVpJV1ZkODlqYWlZckkw?=
 =?utf-8?B?K0VUK1c1cHNZVUJORFdRR0czQmZTMUk3OS9MSFdPc0o3emVvbVk2UVNINmp2?=
 =?utf-8?B?NHcwNDBlYzgybG1NQkRmcEhaalRzVk16SG9icUxZMkRMZFRSSEkycU1CWHdi?=
 =?utf-8?B?WWpFRFRjVDFxY200Ri96ZlFZWFd3NUpZTVBEYnAwWDcwdDZFN3hKU2FrWDhj?=
 =?utf-8?B?TlNKSmFqM0M2UTZtQlViN0gxaGhzTTlTaWpwNDJqZnlqcWllUEpRYkZHbmJj?=
 =?utf-8?B?MGFmN3p1K3dhQTc0RnYvM3R6QmVPdzFNN1RrM3ZhazVlUlJmOGxHTWRSRE1h?=
 =?utf-8?B?RStoSC9rcEFaLzFJNlZRVy9Sb3AvYzI4NGtHY0cxWGZ0bFRHamRZclF1SU9Y?=
 =?utf-8?Q?LBcNrrRKjrlfG?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4562468-3571-416c-181b-08d919fe03b1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 13:08:22.6659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YUGLoIFhWzXgO2jjvS3KekXI19Vtyi4PfsenMCB1pPfp9Y/TeZwo2SgFli6iyuGH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4549
Subject: Re: [Intel-gfx] [PATCH v2 08/15] drm/i915/ttm Add a generic TTM
 memcpy move for page-based iomem
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

QW0gMTguMDUuMjEgdW0gMTQ6NTIgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDUv
MTgvMjEgMjowOSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMTguMDUuMjEgdW0g
MTQ6MDQgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Cj4+PiBPbiA1LzE4LzIxIDE6NTUg
UE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IEFtIDE4LjA1LjIxIHVt
IDEwOjI2IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+IFRoZSBpbnRlcm5hbCB0dG1f
Ym9fdXRpbCBtZW1jcHkgdXNlcyB2bWFwIGZ1bmN0aW9uYWxpdHksIGFuZCB3aGlsZSBpdAo+Pj4+
PiBwcm9iYWJseSBtaWdodCBiZSBwb3NzaWJsZSB0byB1c2UgaXQgZm9yIGNvcHlpbmcgaW4tIGFu
ZCBvdXQgb2YKPj4+Pj4gc2dsaXN0IHJlcHJlc2VudGVkIGlvIG1lbW9yeSwgdXNpbmcgaW9fbWVt
X3Jlc2VydmUoKSAvIGlvX21lbV9mcmVlKCkKPj4+Pj4gY2FsbGJhY2tzLCB0aGF0IHdvdWxkIGNh
dXNlIHByb2JsZW1zIHdpdGggZmF1bHQoKS4KPj4+Pj4gSW5zdGVhZCwgaW1wbGVtZW50IGEgbWV0
aG9kIG1hcHBpbmcgcGFnZS1ieS1wYWdlIHVzaW5nIGttYXBfbG9jYWwoKQo+Pj4+PiBzZW1hbnRp
Y3MuIEFzIGFuIGFkZGl0aW9uYWwgYmVuZWZpdCB3ZSB0aGVuIGF2b2lkIHRoZSBvY2Nhc2lvbmFs
IAo+Pj4+PiBnbG9iYWwKPj4+Pj4gVExCIGZsdXNoZXMgb2Ygdm1hcCgpIGFuZCBjb25zdW1pbmcg
dm1hcCBzcGFjZSwgZWxpbWluYXRpb24gb2YgYSAKPj4+Pj4gY3JpdGljYWwKPj4+Pj4gcG9pbnQg
b2YgZmFpbHVyZSBhbmQgd2l0aCBhIHNsaWdodCBjaGFuZ2Ugb2Ygc2VtYW50aWNzIHdlIGNvdWxk
IAo+Pj4+PiBhbHNvIHB1c2gKPj4+Pj4gdGhlIG1lbWNweSBvdXQgYXN5bmMgZm9yIHRlc3Rpbmcg
YW5kIGFzeW5jIGRyaXZlciBkZXZlbHBtZW50IAo+Pj4+PiBwdXJwb3Nlcy4KPj4+Pj4gUHVzaGlu
ZyBvdXQgYXN5bmMgY2FuIGJlIGRvbmUgc2luY2UgdGhlcmUgaXMgbm8gbWVtb3J5IGFsbG9jYXRp
b24gCj4+Pj4+IGdvaW5nIG9uCj4+Pj4+IHRoYXQgY291bGQgdmlvbGF0ZSB0aGUgZG1hX2ZlbmNl
IGxvY2tkZXAgcnVsZXMuCj4+Pj4+Cj4+Pj4+IEZvciBjb3BpZXMgZnJvbSBpb21lbSwgdXNlIHRo
ZSBXQyBwcmVmZXRjaGluZyBtZW1jcHkgdmFyaWFudCBmb3IKPj4+Pj4gYWRkaXRpb25hbCBzcGVl
ZC4KPj4+Pj4KPj4+Pj4gTm90ZSB0aGF0IGRyaXZlcnMgdGhhdCBkb24ndCB3YW50IHRvIHVzZSBz
dHJ1Y3QgaW9fbWFwcGluZyBidXQgCj4+Pj4+IHJlbGllcyBvbgo+Pj4+PiBtZW1yZW1hcCBmdW5j
dGlvbmFsaXR5LCBhbmQgdGhhdCBkb24ndCB3YW50IHRvIHVzZSBzY2F0dGVybGlzdHMgZm9yCj4+
Pj4+IFZSQU0gbWF5IHdlbGwgZGVmaW5lIHNwZWNpYWxpemVkIChob3BlZnVsbHkgcmV1c2FibGUp
IGl0ZXJhdG9ycyAKPj4+Pj4gZm9yIHRoZWlyCj4+Pj4+IHBhcnRpY3VsYXIgZW52aXJvbm1lbnQu
Cj4+Pj4KPj4+PiBJbiBnZW5lcmFsIHllcyBwbGVhc2Ugc2luY2UgSSBoYXZlIHRoYXQgYXMgVE9E
TyBmb3IgVFRNIGZvciBhIHZlcnkgCj4+Pj4gbG9uZyB0aW1lLgo+Pj4+Cj4+Pj4gQnV0IEkgd291
bGQgcHJlZmVyIHRvIGZpeCB0aGUgaW1wbGVtZW50YXRpb24gaW4gVFRNIGluc3RlYWQgYW5kIAo+
Pj4+IGdpdmUgaXQgcHJvcGVyIGN1cnNvciBoYW5kbGluZy4KPj4+Pgo+Pj4+IEFtZGdwdSBpcyBh
bHNvIHVzaW5nIHBhZ2UgYmFzZWQgaW9tZW0gYW5kIHdlIGFyZSBoYXZpbmcgc2ltaWxhciAKPj4+
PiB3b3JrYXJvdW5kcyBpbiBwbGFjZSB0aGVyZSBhcyB3ZWxsLgo+Pj4+Cj4+Pj4gSSB0aGluayBp
dCBtYWtlcyBzZW5zZSB0byB1bmlmeSB0aGlzIGluc2lkZSBUVE0gYW5kIHJlbW92ZSB0aGUgb2xk
IAo+Pj4+IG1lbWNweSB1dGlsIGZ1bmN0aW9uIHdoZW4gZG9uZS4KPj4+Pgo+Pj4+IFJlZ2FyZHMs
Cj4+Pj4gQ2hyaXN0aWFuLgo+Pj4KPj4+IENocmlzdGlhbiwKPj4+Cj4+PiBJIHdhcyB0aGlua2lu
ZyB3aGVuIHdlIHJlcGxhY2UgdGhlIGJvLm1lbSB3aXRoIGEgcG9pbnRlciAoYW5kIAo+Pj4gcGVy
aGFwcyBoYXZlIGEgZHJpdmVyIGNhbGxiYWNrIHRvIGFsbG9jYXRlIHRoZSBiby0+bWVtLAo+Pj4g
d2UgY291bGQgcGVyaGFwcyBlbWJlZCBhIHN0cnVjdCB0dG1fa21hcF9pdGVyIGFuZCB1c2UgaXQg
Zm9yIGFsbCAKPj4+IG1hcHBpbmcgaW4gb25lIHdheSBvciBhbm90aGVyKS4gVGhhdCB3b3VsZCBt
ZWFuIHBlcmhhcHMgbGFuZCB0aGlzIGlzIAo+Pj4gaTkxNSBub3cgYW5kIHNvcnQgb3V0IHRoZSB1
bmlmaWNhdGlvbiBvbmNlIHRoZSBzdHJ1Y3QgdHRtX3Jlc291cmNlLCAKPj4+IHN0cnVjdCB0dG1f
YnVmZmVyX29iamVjdCBzZXBhcmF0aW9uIGhhcyBsYW5kZWQ/Cj4+Cj4+IFRoYXQgc3R1ZmYgaXMg
cmVhZHksIHJldmlld2VkIGFuZCBJJ20ganVzdCB3YWl0aW5nIGZvciBzb21lIGFtZGdwdSAKPj4g
Y2hhbmdlcyB0byBsYW5kIGluIGRybS1taXNjLW5leHQgdG8gcHVzaCBpdC4KPj4KPj4gQnV0IHll
cyBpbiBnZW5lcmFsIGFuIGl0ZXJhdG9yIGZvciB0aGUgcmVzb3VyY2Ugb2JqZWN0IHNvdW5kcyBs
aWtlIAo+PiB0aGUgcmlnaHQgcGxhbiB0byBtZSBhcyB3ZWxsLgo+Pgo+PiBDaHJpc3RpYW4uCj4K
PiBPSywgc28gdGhlbiBhcmUgeW91IE9LIHdpdGggbGFuZGluZyB0aGlzIGluIGk5MTUgZm9yIG5v
dz8gVGhhdCB3b3VsZCAKPiBhbHNvIG9mYyBtZWFuIHRoZSBleHBvcnQgeW91IE5BSydkIGJ1dCBz
dHJpY3RseSBmb3IgdGhpcyBtZW1jcHkgdXNlIAo+IHVudGlsIHdlIG1lcmdlIGl0IHdpdGggVFRN
PwoKV2VsbCB5b3UgY2FuIG9mIGNvdXJzZSBwcm90b3R5cGUgdGhhdCBpbiBpOTE1LCBidXQgSSBy
ZWFsbHkgZG9uJ3Qgd2FudCAKdG8gZXhwb3J0IHRoZSBUVCBmdW5jdGlvbnMgdXBzdHJlYW0uCgpD
YW4gd2UgY2xlYW5seSBtb3ZlIHRoYXQgZnVuY3Rpb25hbGl0eSBpbnRvIFRUTSBpbnN0ZWFkPwoK
Q2hyaXN0aWFuLgoKPgo+Cj4gL1Rob21hcwo+Cj4+Cj4+Pgo+Pj4gL1Rob21hcwo+Pj4KPj4+Cj4+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
