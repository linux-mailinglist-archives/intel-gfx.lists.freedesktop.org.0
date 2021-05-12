Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 672C537B695
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 09:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F986EB50;
	Wed, 12 May 2021 07:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2063.outbound.protection.outlook.com [40.107.237.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387256EB4F;
 Wed, 12 May 2021 07:09:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2ER6YXNCWJe+dWdgoew8bv1+reev0XGKaL9I+aL2po1/XvF2fiD22GaUukwFnXBGnrdo15PuWMOsWKOVJBvrRdjld0i+PVXRcHLVLfHXiiRy4wSDSiOzX1wnsDjlZe66vNmolbt3HTCKyzb/paVA4ZhWuxpMH1YB2tPfTwV6p0tbijfuC1Y2RaPFF5Ga713UsHxPNOlrXHtJKSnqJK/Nrdg/qITKfpXgknqTG+24sW7NdYEXFgFgCOg/T4N6hWPl/OEwoRD8LryXEAe1ogjYDgUq472mXw7JWNaADqP3nyPLHI6qy8HVyplcV+I9yRMLq3TcmwWC6Vq0dk/Y7AJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTLa0ErOffLBS4CIOGunwcFN/s6R03hvH5yENrOyOKw=;
 b=koyMiAX3e6Xpmw4Tq3WX/f4dpyDouQR6tQzCZtvgVHWxvG9DP4hq7SwKk2DlZurqPgceoOBrkcaBMa6TGK/F7axCSN6WAoW7aO+ApQgDl6wwqRZJhELHxRJEpvNGTYZdAtE/IdiwNDAY8X4wUAyx3Jxkt08TamtxS3sjv2RUCPIrnwIX+RuVy/9Vf92od/6EbQAnpDC2ooTwfGaAGUXYocXq0HEEFimF6h6HV/wqfj0on348BHqGk0pOW3/bn/FrFX/Izw37PCuuyi9Hn7ev703cmkveamCHqqNCQTs1A028cHH9wl2Qpl3ZFv/eH5RNfxDPMC9noh2AdX1VS5acHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTLa0ErOffLBS4CIOGunwcFN/s6R03hvH5yENrOyOKw=;
 b=sIDp/FYjnjON1N7TS7HvgTfW6hD2Seuyu6W0eN8QnNhLW+eC5ir0vQ3U3qZkhOeda7gC8d21gVfhBUdLflks5FU6H4pLi333iuKOoR68EeM5uedj+rS2+k8VAlUnRvD5WgMC2v0445UukqN5pV7pOiZyetafQDoUCnD0xqe7Ak4=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3936.namprd12.prod.outlook.com (2603:10b6:208:16a::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Wed, 12 May
 2021 07:09:22 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 07:09:22 +0000
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <d0f0c55d-1784-922b-e9bd-0248cd7fb6af@amd.com>
Date: Wed, 12 May 2021 09:09:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <e85e9bd7a28c8570c6429683d6d68ee0855afacb.camel@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:bc39:4e06:ac5e:2e31]
X-ClientProxiedBy: AM0PR01CA0115.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::20) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:bc39:4e06:ac5e:2e31]
 (2a02:908:1252:fb60:bc39:4e06:ac5e:2e31) by
 AM0PR01CA0115.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Wed, 12 May 2021 07:09:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 638772c4-582e-44fd-3b73-08d91514de08
X-MS-TrafficTypeDiagnostic: MN2PR12MB3936:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3936F614CA6959396CAC7C7383529@MN2PR12MB3936.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JNnftkHlqX2zuQBVuFywbglRyMyx2uQi5P1yVC7Tfl+R7sDBBZ3BfQ8HMCd7WObSD32Gs/nAIY1Hmx92Lq1Q9OkIh3uuGA/P0kEwcQzZwK2JAxH+XO1C0bMC+eP42OwI4WZv1wO1j9eAJ5g6+MdOgwulMjgKblD8o6/XhJzxvNfC0NhT+p2/sj15B6D97MRCbTKEDKUGOY2Gd0MAerIIk4cM1JXvwREhwnEUjMk9yGKbQuwEDj0C7AzlgnPJhlSXJVHITNUh/x0VQhHMUeitQZxrrwN2rZgXcL2yuDm1jmWnDdysg30uULy3igxg27iV6zDvFmxJkQWWNB3swqpnJYD10KtSX38Wdj565/lJIMTeaDK8v6oTzh6j2jnAIpddP8rauB/GNwtNpwiPdzkjggAbCekSkEm5dBDGZN4ZPz540FL2CUGSm4IvVzCrZzkcLq9XvkjbeNTfKWmdHvL/lsSZrls8MxJxi9H8d8pMP/w/Fjg/dhWrXydMtKDgLf3TVS/dgDrKRYZnDSfY/96zPKFH6hTh71PkvfrbpzIG5l46PVBjtmEtHm3JX3IDcP5XmV4/LmCAW6VVPdTfajZWioqEw00etcklSCJ9OP2XaXs4/215GPGE2WDDogrhUGQl3SPxcrz7/8gsVq3bOBas/MPFs23wmvSe0pdhehQBL8g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39850400004)(346002)(376002)(86362001)(66556008)(66946007)(66476007)(16526019)(8676002)(36756003)(6486002)(31696002)(478600001)(6666004)(2906002)(316002)(31686004)(83380400001)(66574015)(186003)(8936002)(110136005)(38100700002)(52116002)(53546011)(2616005)(5660300002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?cjBCQldKL2NNWlpaVDFWNndUemhINDlEd0hEcXd5dDFnRGZuaXA5bFdHbWpu?=
 =?utf-8?B?SjI2TFJTTE1iL0M5QUgwWFBydGluamFZcVkzUTQxMGRjMnNGYngwem1VempQ?=
 =?utf-8?B?Um9TMi9Pb0dLQTQwVTJSWjVRQVFFZ255bFB4THJRL2tuY3E5Q0crMXBZRTk1?=
 =?utf-8?B?N1VjRGZPMjBuYjdVdURNakFNb2dFRlFjU3JCTEZPSmd3Zk93L1FCM2h0emNx?=
 =?utf-8?B?bGRHTXhmMEVYdEpLRGtrYWVaUll3TW1NVmpWT3lEbVJkZG1oSkNoQTlQYXdB?=
 =?utf-8?B?Zk5qdnFwZU15V1lVcERlV2kvRzVSQ1BWblBVLy9RaS9Eem94SndUV2cyMzlZ?=
 =?utf-8?B?SHpvZmlya2NyaFRZd01RTjdEMGJaTU9VcGQ4Wk1veDVSRHBXWnBaVzlpS2Yw?=
 =?utf-8?B?Ly9oMnUvWnl4N0s0ZThyMW9TTGd2WER5Q1MvZERWVmRxZHFTanFINnhnVERM?=
 =?utf-8?B?SWRwQnZYU1pCUnJwNHAyMSt1M09CekhkdHZqVUo4RzRETVRsRXFKQ2wwRkhp?=
 =?utf-8?B?MzB5ZkVFczhvRG1QK0tpKzFsYzVPLzN2YnB0bDFjZzFtYjFVd29wUGlnNERi?=
 =?utf-8?B?TlNnb2g4a29VWDlPLzVYR2psWXpTS0p1SDcrTjBzYkFQa2w5VFJzWWxYUVJs?=
 =?utf-8?B?ZjI0NjJOZFI1cXJZc1J1TUhoV0xrQkVlMS9VcG81Q1RVZmU0WkcyT1BtVmVm?=
 =?utf-8?B?ZzNaWTdHVlBFdVFHckdTdzQzT2xxZnVuN1RpZWZQaU5RRGw3UkFaa29CU2JD?=
 =?utf-8?B?cnlTQmxOZzJGSDVLVU9FYlBMRitya3lEd2VBOFc5MHdicTduUGM5U1FiN1Iw?=
 =?utf-8?B?K0V5TVpsd29kR2JodGVOVnBEYXVGbG5RZTlwWWxOVytVK0ZGUUdRVFVCQXFS?=
 =?utf-8?B?N21nay9IMTlKTGM4WnljMFBETTM2cWxXczhxTjdMMlpsS1EwR2tBUlE4WlZy?=
 =?utf-8?B?em14Z3ZnV01NRGt4YktnYzd0eHU3VmljQ1M1ZEZPMlZFR1lxYlRITmI2RGVJ?=
 =?utf-8?B?bUxDakRjTmRIUCt4VnFZREQzTFpXVFcvVzBONGNTRHJSdENvdHZwYWlaZktK?=
 =?utf-8?B?SlcxSFJMYXpLT0xHSGt4SXNqaWpOYUtVTWNweUFpMXRpTmZRNkd2ckE2STE4?=
 =?utf-8?B?QTAycXY2WXJBUkFiNXp3MDlLQWhrVGp0S2txanlQSVlWL05yY3cwVTh4ajNw?=
 =?utf-8?B?MEVuRXgxMkVBSkgyb0lNRjd5dFQvblA1YXBRdXdFbnZYOFlKVFBDU2N1dzg3?=
 =?utf-8?B?RHJaTkRmNU5JZmtoVWpGdHlSaGpiS2tjRGR0ZTdxNVA3RTRDdG5lN3d3dk1Q?=
 =?utf-8?B?aldZaEZkNWFjSHU1eDdwU3A3V2Q1MXFtUzQvRXI2U1NQcnlxcnZOMlJUazRq?=
 =?utf-8?B?SWc5YTRqTkkzSTYzbkNjc0cvZElwYlpmMEt0Q25lVTBHaHIrSnM4emM2dHlk?=
 =?utf-8?B?ZDRnM3p5K0NIR25qNE5Sd2NRSVhjck04cTNvQ2gwSEEwV3JibEZ6VkZqRVBH?=
 =?utf-8?B?dkJJSTlxTStMWkhlZWhSa3RkcFdYLzNqUzZ0RG5wZXQvTThWWGFlNGd5UlpD?=
 =?utf-8?B?dDhHWEY4ek1WT3hCMXZqUlFFUXlyaUx4U09iK0hzTWhKWlV6bkE4QVRlV1Zo?=
 =?utf-8?B?V1pJU0xyNDdXeUtoVXMvUzRwbmhXejU4cVFGWWQ3c1FOL2ZFajUyQVVwZXpa?=
 =?utf-8?B?RTh1azRJZWh2TXo4NUpxMkRkc3JkTURGWGo4cmpKNkZaNDZSUy9XMzJ1bVJq?=
 =?utf-8?B?TC9BWTE5UEFRVGRHekUrVEFkMHhWRGVMaUxzeUJwTjFQQnlPR04zbWJzTmpH?=
 =?utf-8?B?QW1Fa2RiZFM0SHBsd3BLdnU4QUo5dnpodzgyRjY4MjdGVEgxRGU1amNEYWV4?=
 =?utf-8?Q?HRSZxtEb9nZzh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 638772c4-582e-44fd-3b73-08d91514de08
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2021 07:09:22.1664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5x26qqvaGx+DQyZMz313yXFs0kjt1v/aSx5y8t/AVmd/VQ+TU8nx4aAo0jVQQYwu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3936
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

QW0gMTIuMDUuMjEgdW0gMDk6MDUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBXZWQs
IDIwMjEtMDUtMTIgYXQgMDg6NTcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDExLjA1LjIxIHVtIDE2OjI4IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBPbiA1LzEx
LzIxIDQ6MDkgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4KPj4+PiBBbSAxMS4wNS4y
MSB1bSAxNjowNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6Cj4+Pj4+IE9uIDUv
MTEvMjEgMzo1OCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+IEFtIDExLjA1LjIx
IHVtIDE1OjI1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+Pj4gTW9zdCBsb2dpY2Fs
IHBsYWNlIHRvIGludHJvZHVjZSBUVE0gYnVmZmVyIG9iamVjdHMgaXMgYXMgYW4KPj4+Pj4+PiBp
OTE1Cj4+Pj4+Pj4gZ2VtIG9iamVjdCBiYWNrZW5kLiBXZSBuZWVkIHRvIGFkZCBzb21lIG9wcyB0
byBhY2NvdW50IGZvcgo+Pj4+Pj4+IGFkZGVkCj4+Pj4+Pj4gZnVuY3Rpb25hbGl0eSBsaWtlIGRl
bGF5ZWQgZGVsZXRlIGFuZCBMUlUgbGlzdAo+Pj4+Pj4+IG1hbmlwdWxhdGlvbi4KPj4+Pj4+Pgo+
Pj4+Pj4+IEluaXRpYWxseSB3ZSBzdXBwb3J0IG9ubHkgTE1FTSBhbmQgU1lTVEVNIG1lbW9yeSwg
YnV0Cj4+Pj4+Pj4gU1lTVEVNCj4+Pj4+Pj4gKHdoaWNoIGluIHRoaXMgY2FzZSBtZWFucyBldmlj
dGVkIExNRU0gb2JqZWN0cykgaXMgbm90Cj4+Pj4+Pj4gdmlzaWJsZSB0byBpOTE1IEdFTSB5ZXQu
IFRoZSBwbGFuIGlzIHRvIG1vdmUgdGhlIGk5MTUgZ2VtCj4+Pj4+Pj4gc3lzdGVtCj4+Pj4+Pj4g
cmVnaW9uCj4+Pj4+Pj4gb3ZlciB0byB0aGUgVFRNIHN5c3RlbSBtZW1vcnkgdHlwZSBpbiB1cGNv
bWluZyBwYXRjaGVzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gV2Ugc2V0IHVwIEdQVSBiaW5kaW5ncyBkaXJl
Y3RseSBib3RoIGZyb20gTE1FTSBhbmQgZnJvbSB0aGUKPj4+Pj4+PiBzeXN0ZW0KPj4+Pj4+PiBy
ZWdpb24sCj4+Pj4+Pj4gYXMgdGhlcmUgaXMgbm8gbmVlZCB0byB1c2UgdGhlIGxlZ2FjeSBUVE1f
VFQgbWVtb3J5IHR5cGUuCj4+Pj4+Pj4gV2UgcmVzZXJ2ZQo+Pj4+Pj4+IHRoYXQgZm9yIGZ1dHVy
ZSBwb3J0aW5nIG9mIEdHVFQgYmluZGluZ3MgdG8gVFRNLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhlcmUg
YXJlIHNvbWUgY2hhbmdlcyB0byBUVE0gdG8gYWxsb3cgZm9yIHB1cmdpbmcgc3lzdGVtCj4+Pj4+
Pj4gbWVtb3J5Cj4+Pj4+Pj4gYnVmZmVyCj4+Pj4+Pj4gb2JqZWN0cyBhbmQgdG8gcmVmdXNlIHN3
YXBwaW5nIG9mIHNvbWUgb2JqZWN0czoKPj4+Pj4+PiBVbmZvcnR1bmF0ZWx5IGk5MTUKPj4+Pj4+
PiBnZW0KPj4+Pj4+PiBzdGlsbCByZWxpZXMgaGVhdmlseSBvbiBzaG9ydC10ZXJtIG9iamVjdCBw
aW5uaW5nLCBhbmQKPj4+Pj4+PiB3ZSd2ZQo+Pj4+Pj4+IGNob3NlbiB0bwo+Pj4+Pj4+IGtlZXAg
c2hvcnQtdGVybS1waW5uZWQgYnVmZmVyIG9iamVjdHMgb24gdGhlIFRUTSBMUlUgbGlzdHMKPj4+
Pj4+PiBmb3Igbm93LAo+Pj4+Pj4+IG1lYW5pbmcgdGhhdCB3ZSBuZWVkIHNvbWUgc29ydCBvZiBt
ZWNoYW5pc20gdG8gdGVsbCBUVE0KPj4+Pj4+PiB0aGV5IGFyZSBub3QKPj4+Pj4+PiBzd2FwcGFi
bGUuIEEgbG9uZ2VyIHRlcm0gZ29hbCBpcyB0byBnZXQgcmlkIG9mIHRoZSBzaG9ydC0KPj4+Pj4+
PiB0ZXJtCj4+Pj4+Pj4gcGlubmluZy4KPj4+Pj4+IFdlbGwganVzdCB1c2UgdGhlIGV2aWN0aW9u
X3ZhbHVhYmxlIGludGVyZmFjZSBmb3IgdGhpcy4KPj4+Pj4gWWVzLCB3ZSBkbyB0aGF0IGZvciB2
cmFtL2xtZW0gZXZpY3Rpb24sIGJ1dCB3ZSBoYXZlIG5vdGhpbmcKPj4+Pj4gc2ltaWxhcgo+Pj4+
PiBmb3Igc3lzdGVtIHN3YXBwaW5nLiBEbyBJIHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseSB0aGF0
IHlvdQo+Pj4+PiB3YW50IG1lCj4+Pj4+IHRvIGFkZCBhIGNhbGwgdG8gZXZpY3Rpb25fdmFsdWFi
bGUoKSBhbHNvIGZvciB0aGF0IGluc3RlYWQgb2YKPj4+Pj4gc3dhcF9wb3NzaWJsZSgpPwo+Pj4+
IFlvdSBzaG91bGQgYWxyZWFkeSBoYXZlIHRoYXQuIGV2aWN0aW9uX3ZhbHVhYmxlIGlzIGNhbGxl
ZCBpbiBib3RoCj4+Pj4gY2FzZXMuCj4+Pj4KPj4+IEhtbS4gSSBjYW4gb25seSBzZWUgaXQgY2Fs
bGVkIGZyb20gdHRtX21lbV9ldmljdF9maXJzdCgpIHdoaWNoIGlzCj4+PiBub3QKPj4+IGluIHRo
ZSBzd2FwcGluZyBwYXRoPyBPciBkbyBJIG1pc3Mgc29tZXRoaW5nPwo+PiBNaG0sIGxvb2tzIGxp
a2UgbXkgcmVjb2xsZWN0aW9uIHdhcyB3cm9uZy4gV2Ugc2hvdWxkIHByb2JhYmx5IG1vdmUKPj4g
dGhlCj4+IGNhbGwgaW50byB0aGUgdHRtX2JvX2V2aWN0X3N3YXBvdXRfYWxsb3dhYmxlKCkgZnVu
Y3Rpb24uCj4gWWVzLCBJIHRoaW5rIHdlIGFsc28gbmVlZCBhIGNvbnZlbnRpb24gd2hldGhlciBp
dCdzIGNhbGxlZCBkbWFfcmVzdgo+IGxvY2tlZCBvciBub3QsIHNpbmNlIHRoZSBoZWxwZXIgYWNj
ZXNzZXMgYm8tPm1lbSwgd2hpY2ggc2hvdWxkIHJlYWxseQo+IG9ubHkgYmUgZG9uZSB1bmRlciBy
ZXNlcnZhdGlvbi4gQXQgdGhlIHNhbWUgcG9pbnQsIHRoZXJlIGlzIHZhbHVlIGluCj4gY2FsbGlu
ZyB0aGlzIGZ1bmN0aW9uIHdoaWxlIGhvbGRpbmcgdGhlIExSVSBsb2NrLgoKWW91IGFjdHVhbGx5
IG5lZWQgdG8gY2FsbCBpdCB3aGlsZSBob2xkaW5nIHRoZSBsb2NrIGJlY2F1c2UgZXZpY3Rpb24g
Cm90aGVyd2lzZSBlbmRzIHVwIGluIGFuIGVuZGxlc3MgbG9vcC4KClRyeWluZyB0byBmaXggdGhh
dCBmb3IgeWVhcnMsIGJ1dCBzbyBmYXIgbm8gbHVjayB3aXRoIHRoYXQuCgo+IEFsc28sIEkgd29u
ZGVyIHdoZXRoZXIgaW1wbGVtZW50YXRpb25zIG9mIHRoaXMgY2FsbGJhY2sgbWlnaHQgZW5jb3Vu
dGVyCj4gdW5leHBlY3RlZCBkYXRhIHdoZW4gY2FsbGVkIGZyb20gdGhlIHN3YXBvdXQgcGF0aCwg
YmVjYXVzZSBhdCBsZWFzdCB0aGUKPiBoZWxwZXIgYXNzdW1lcyBpdCBub3QgaW4gc3lzdGVtIG1l
bW9yeSwgc2luY2UgaXQgaXMgYWNjZXNzaW5nIGJvLQo+PiBtZW0uc3RhcnQuCj4gU28gdW5sZXNz
IHdlIHVzZSBhIHNlcGFyYXRlIGNhbGxiYWNrIGZvciBzd2Fwb3V0LCB0aGVyZSdzIHNvbWUgYXVk
aXRpbmcKPiB0byBiZSBkb25lLgoKUGxlYXNlIGF1ZGl0IHRoZSBleGlzdGluZyBjYWxsYmFja3Mg
YW5kIG1vdmUgdGhlIGNhbGxiYWNrIGludG8gdGhlIApmdW5jdGlvbiBhZnRlciBkb2luZyB0aGF0
LgoKVGhhbmtzLApDaHJpc3RpYW4uCgo+Cj4gUGxzIGxldCBtZSBrbm93IHdoYXQgeW91IHRoaW5r
Lgo+IFRoYW5rcywKPiBUaG9tYXMKPgo+Cj4KPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4gVGhhbmtzLAo+
Pj4KPj4+IFRob21hcwo+Pj4KPj4+Cj4+Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
