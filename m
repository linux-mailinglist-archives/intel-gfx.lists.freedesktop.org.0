Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90767387CA8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 17:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7479E6EC03;
	Tue, 18 May 2021 15:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2065.outbound.protection.outlook.com [40.107.220.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C3D6EC01;
 Tue, 18 May 2021 15:42:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYsznwhLczS91pUL55SUx4zVKYTGwdQMd87qJC+G82X8uJarndirpQU09nN0oJMimKngOPp3bkXHP03VshpBII5Lao7spWbuV6nQpfDK0JGfjap/GFVaYanuxeJxESc4SNvOXzjTJiBIr9hS3Le2sbVGca/A5X4qFJ4rk/3lP7vAM19BuUHgqNUrRtCXN/zTaJ/phUJDQkW0GUy39u6p7T5+pFKJwR8w8bxLjijq+7+u6irQUaMdiYaS48Xf71ZNScpz8OasI7zwhHHvz+m2njJLGroXx5lS43nwIOewRqfiSgEsSRjnb4N05tocsOXndWgiXWqFLiXsWqkZ+QYqpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOq4J4ctH4KnKebGg8Z5MRVXM4uCdTibgaItZopPFhg=;
 b=IlS1gHGV2OT97C7/dFGmfDck2/D3vHstaYGtEaB/8EMjtHUdXfMt/oqLoETzUBtYxF3CXRP1ubnsAr2KXEprQBS7DkmPcdfreKYJW8xXwO5r4cZLaJ4V9R4VXa1H7Tj+hpAc1w6STm6KU10KywwhlA3XIn/S2p+Rg/F/OMmw7gVWjf7JT4AtKCKWkE0Vx5MLJp+yM6c+YE5sMvilMSIEW8p8amzuywe5XXdguXaZYE08sUt9/eCuiYqsNAE7+0slYjdY0uygYRSrHdiubDcb3JzLOX9xigEleFWvngMNmptOEnj26e5uqcaiL68A3o5zy6fb1I2mUoRR/mVp1CJIow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOq4J4ctH4KnKebGg8Z5MRVXM4uCdTibgaItZopPFhg=;
 b=ESOmiI4nK58C00JCFkCIyyYHQCgYAYaBEV6umx8Y2tR9JH6U671siSoXKn9/MWmD0R9+dqp47Nupv+MdshQ9kEKzYnGBbRviPmwYG2svJR5DC0gO+3Wt+h6dMQH10NsavyCf//eEGP22W2oSNt7I/x4qw2Nr/dsvrFrAXD4gItM=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4390.namprd12.prod.outlook.com (2603:10b6:208:26e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Tue, 18 May
 2021 15:42:28 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 15:42:28 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
 <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
 <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
 <f5c008cb-5047-7cbf-0361-e4e58e38d6e0@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <fb9a4898-5844-c1e5-7a24-cb50a9ad6df7@amd.com>
Date: Tue, 18 May 2021 17:42:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <f5c008cb-5047-7cbf-0361-e4e58e38d6e0@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:3b27:1830:9671:4cc9]
X-ClientProxiedBy: PR0P264CA0175.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::19) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3b27:1830:9671:4cc9]
 (2a02:908:1252:fb60:3b27:1830:9671:4cc9) by
 PR0P264CA0175.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1c::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25 via Frontend Transport; Tue, 18 May 2021 15:42:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a447d5e-1c86-4452-5b30-08d91a138a8f
X-MS-TrafficTypeDiagnostic: MN2PR12MB4390:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4390FDFC0E43008CE9DD0D09832C9@MN2PR12MB4390.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: osb2/6Yj6onJy4/R2pmUomWznIj2rn4ADUCTzoG0E5pJvTuW75BiF0ab7ujDJn5v2Q5zRbRIUAGHZSbNT9AUEpaGNEtranPpoRrXQpGKfJThStp+1QUqIbjO/xKVCs31mziJPUBUPY1HuwUThtUtduQirZE1VEB3UcMM07My1uvz765gwhNVBkI5nT74mRRZE9jokS3q/oCY0atTHPTqiT0yDGdfi0llKV1knpZe+/LftJPhwNs6lTQA6KUx6oIC4D4S+akHAiV9M14iKaWZsiec62Frsa1ta4+vVKFGfh3jD1ZgWHKejCmmTQO9kAEFAvNsqVTcYDIKeJtqgXEqq9+uQ2wNtMJ4E9Jf6aae9Vof7TLfhA8HW7E1Of25cy+dP7DMu2lqxXoLEG21toq+3MioaLR8sCzb9jqo7mV9RTAr663uiRa5KjBBDjmOaXEmb98e2jfW27Qu4Wxzr46p9kwIkh5bG3UAdECQONdhLx0wlT2Sus8PvgIbbC103brB/lnLU5cMzQEeeSFrVSjU9136seJ4EPAnHlLvovc3CradgGEZbDzaLvYrQM9PX2PplHNVhg3nV7S6aAsXTIaudmw1HAQrLK/6iPP3rSKI9F3UQrgIFaUF7mRjdy1+vBeUK+3HSKJ5FVppSyxYSCigColaugmyF1mXvJiPlLVWptsA3DyHFrCvqZT1zutuRfdY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(66574015)(186003)(52116002)(5660300002)(6486002)(36756003)(31686004)(38100700002)(66946007)(66476007)(2906002)(53546011)(6666004)(83380400001)(86362001)(8936002)(2616005)(316002)(66556008)(8676002)(31696002)(16526019)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MGdrNDE0UGFhblM2Ry9xcnhGZWhzZXpOK0hFOGx5aWNvMTdlalloZzR6cXdw?=
 =?utf-8?B?blNhVmRhVzdXeEExOVZQR1ZxbGdaUVhWNGpRUjNqWTBvRWV4NVVkRkZUeVAz?=
 =?utf-8?B?ZW52NEdhTmprS1UyRmVjcG40a0tBWGRFc3BWWDcyZkdpbVpTNW5NMitreTVh?=
 =?utf-8?B?UnJtOE0yYmlJTjNyUXNVUmVuSkNZYnlYZ1lKZ1hRZ3dDTmNadDVWNFh6OWdZ?=
 =?utf-8?B?ZFArVjdNZWxaTWZsR2tCWHdjNXBuUmVPUFU2TExEODYyTTJ1T3gxM1dkMW9m?=
 =?utf-8?B?L2xhSUJpd3NzODJSRkNTOFF1c29EbmRJaXM2RklaR0JCWDU1YWVPZXFzU2I5?=
 =?utf-8?B?K2F5MkN2T2N3RU1LTzVLWHB5UWdBbFhZR1k3cTZoR2pTWFR2STcrYUlmS0hu?=
 =?utf-8?B?dkkxVndxUGhEWHhjMWZham9xeXFzd0JTZHZ6RzVVRW5oODlBOS9nRFU2bFgw?=
 =?utf-8?B?M3BSZk9scFM1ZlVqRmIvN1BSSW5yYXo1NWl5UitFeUgwbkpEQTJHVUNFOURE?=
 =?utf-8?B?NzBmS0QvWWJRL0dwVkZ4THdDS1loTklKTWI2dERmRXN5azBpaVEyZ2ZPaGV1?=
 =?utf-8?B?TW5yMkhYOGJGL21xTSthYm91TGtqVVR1Vy81V1VRMkVVN3FoOW9mSEJJRTZm?=
 =?utf-8?B?a0VwUTQ2Q0RQV3RLWmhDaTdhdjdjVzJXOVRabE5NcGs1aEJzbzZVcTJpZnRq?=
 =?utf-8?B?Njk3TXkxUzRaNFJMcGRTdHVydGJwL1RSTG4rczl6VHNqanBSNjlOZXBlQW1G?=
 =?utf-8?B?aDZzak9yWkxoVmg0emlGcnpEQ3VZTEI4RW43WEsvSW5GNnlVcDk4VDU1bS9i?=
 =?utf-8?B?ZzJNT216RHhNRHdRUk1Bb3VPakRIaytkVkJ3d01HUjhqYWIxTjVzMmZkQ1hv?=
 =?utf-8?B?Vzdzc0I2MlVEYVNnamlMQ3VPM3JKb25FMHB6RnR0MXUzbW5NTXdBRk5QYU1S?=
 =?utf-8?B?djRXU0FuQjJpWGxyaDVFaWJnZmpMMkN5SkFkeFlLWWM2UXFLWGhoUHVPWUMy?=
 =?utf-8?B?V3V4ZmNjR2dzMEN2c0ZFcUU1OFhwVTBwS2ROZ1ROL05ZNlRkamJLQytrM05a?=
 =?utf-8?B?ZW8xYTUyQzF0UnV3T0E3WERKU3ExREIyOEFuN2NsMXZrVXVuRUgzZXoyU1dl?=
 =?utf-8?B?dXFGY3htZk1KVEdvamk0a1NTUk5sOWVnTy9XV1lOOE1lKzFBSGwxcDBsUWNi?=
 =?utf-8?B?eDd1THZjRzVvZ01UN2VXRm96WjdQU0JRT1lYK2lzYVFHSE91emJZUlppMU8r?=
 =?utf-8?B?QkxidFU3TnNTSVl0elRRbmhwNTNub3dYZ0IzbFg2M3d3WTNjRXVQZTV3ekdn?=
 =?utf-8?B?VHR4S1k1K3FYWkNMTHpIVi9IdTlLTm02QzZISWxqVHZ5VTRPSnRsbExsQ3Fy?=
 =?utf-8?B?cTZuZEdTZTNybVVaRG9OazFiMFl1a3dkbHlvT3I5bkIzYVc0Z3lHRExJemRw?=
 =?utf-8?B?aEFIMkZicncvSFY5Vkp4U25WQ2ZISVZKZWRqMjRLa2hWMHB1eXRVMkVyQXBL?=
 =?utf-8?B?MitNYy94RlhKL0JjaitEN09lWFFudUtmUUR4OEZwbk5GM0VUcFNuQmhuOExO?=
 =?utf-8?B?UmpDa1RXMm8vZ3BxVEl3NDRLQmFNUjhuN1hlWFhhZmFYcFEwOWtFcmtndm54?=
 =?utf-8?B?c3pKME0xSnE1NEpwZmJoMDB2dnNWR29kZUtjWXVTd3U2V1IvalhZTTZxeXRI?=
 =?utf-8?B?TGV5RFZkb051VXNNYkU5T3hlNFNBU1paVHJJZ2VPblhLc1N4eWhPaEtrMjNa?=
 =?utf-8?B?alBBWTIwYmVhZmtnekJIbUQ0WnhQeWZrcGdIS2E0b3FWNkFGOWdYOHdWUlVN?=
 =?utf-8?B?NGJDU3hWRHNxMXFTdEJhWnM4bnFjNWxNQlAveGZGaDZPMDdHTFdLcGpNSFY5?=
 =?utf-8?Q?78UvFF01txeZs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a447d5e-1c86-4452-5b30-08d91a138a8f
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 15:42:28.2246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dvuHFPa3YuauuXAJDSn79rIQi2XC9rv1MqC0F1XEQaBw0ebdvS5RsJ/58it6n5wG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4390
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

QW0gMTguMDUuMjEgdW0gMTc6Mzggc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDUv
MTgvMjEgNToyOCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMTguMDUuMjEgdW0g
MTc6MjAgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Cj4+PiBPbiA1LzE4LzIxIDU6MTgg
UE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IEFtIDE4LjA1LjIxIHVt
IDE3OjE1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+Cj4+Pj4+IE9uIDUvMTgvMjEg
MTA6MjYgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4+Pj4gV2UgYXJlIGNhbGxpbmcg
dGhlIGV2aWN0aW9uX3ZhbHVhYmxlIGRyaXZlciBjYWxsYmFjayBhdCBldmljdGlvbiAKPj4+Pj4+
IHRpbWUgdG8KPj4+Pj4+IGRldGVybWluZSB3aGV0aGVyIHdlIGFjdHVhbGx5IGNhbiBldmljdCBh
IGJ1ZmZlciBvYmplY3QuCj4+Pj4+PiBUaGUgdXBjb21pbmcgaTkxNSBUVE0gYmFja2VuZCBuZWVk
cyB0aGUgc2FtZSBmdW5jdGlvbmFsaXR5IGZvciAKPj4+Pj4+IHN3YXBvdXQsCj4+Pj4+PiBhbmQg
dGhhdCBtaWdodCBhY3R1YWxseSBiZSBiZW5lZmljaWFsIHRvIG90aGVyIGRyaXZlcnMgYXMgd2Vs
bC4KPj4+Pj4+Cj4+Pj4+PiBBZGQgYW4gZXZpY3Rpb25fdmFsdWFibGUgY2FsbCBhbHNvIGluIHRo
ZSBzd2Fwb3V0IHBhdGguIFRyeSB0byAKPj4+Pj4+IGtlZXAgdGhlCj4+Pj4+PiBjdXJyZW50IGJl
aGF2aW91ciBmb3IgYWxsIGRyaXZlcnMgYnkgcmV0dXJuaW5nIHRydWUgaWYgdGhlIGJ1ZmZlciAK
Pj4+Pj4+IG9iamVjdAo+Pj4+Pj4gaXMgYWxyZWFkeSBpbiB0aGUgVFRNX1BMX1NZU1RFTSBwbGFj
ZW1lbnQuIFdlIGNoYW5nZSBiZWhhdmlvdXIgCj4+Pj4+PiBmb3IgdGhlCj4+Pj4+PiBjYXNlIHdo
ZXJlIGEgYnVmZmVyIG9iamVjdCBpcyBpbiBhIFRUIGJhY2tlZCBwbGFjZW1lbnQgd2hlbiAKPj4+
Pj4+IHN3YXBwZWQgb3V0LAo+Pj4+Pj4gaW4gd2hpY2ggY2FzZSB0aGUgZHJpdmVycyBub3JtYWwg
ZXZpY3Rpb25fdmFsdWFibGUgcGF0aCBpcyBydW4uCj4+Pj4+Pgo+Pj4+Pj4gRmluYWxseSBleHBv
cnQgdHRtX3R0X3VucG9wdWxhdGUoKSBhbmQgZG9uJ3Qgc3dhcCBvdXQgYm9zCj4+Pj4+PiB0aGF0
IGFyZSBub3QgcG9wdWxhdGVkLiBUaGlzIGFsbG93cyBhIGRyaXZlciB0byBwdXJnZSBhIGJvIGF0
Cj4+Pj4+PiBzd2Fwb3V0IHRpbWUgaWYgaXRzIGNvbnRlbnQgaXMgbm8gbG9uZ2VyIHZhbHVhYmxl
IHJhdGhlciB0aGFuIHRvCj4+Pj4+PiBoYXZlIFRUTSBzd2FwIHRoZSBjb250ZW50cyBvdXQuCj4+
Pj4+Pgo+Pj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0
cm9tQGxpbnV4LmludGVsLmNvbT4KPj4+Pj4KPj4+Pj4gQ2hyaXN0aWFuLAo+Pj4+Pgo+Pj4+PiBI
ZXJlIHdlIGhhdmUgYSB0dG1fdHRfdW5wb3B1bGF0ZSgpIGV4cG9ydCBhcyB3ZWxsIGF0IHRoZSBl
bmQuIEkgCj4+Pj4+IGZpZ3VyZSB5b3Ugd2lsbCBwdXNoIGJhY2sgb24gdGhhdCBvbmUuIFdoYXQg
d2UgcmVhbGx5IG5lZWQgaXMgYSAKPj4+Pj4gZnVuY3Rpb25hbGl0eSB0byBqdXN0IGRyb3AgdGhl
IGJvIGNvbnRlbnRzIGFuZCBlbmQgdXAgaW4gc3lzdGVtIAo+Pj4+PiBtZW1vcnkgdW5wb3B1bGF0
ZWQuIFNob3VsZCBJIHBlcmhhcHMgYWRkIGEgdXRpbGl0eSBmdW5jdGlvbiB0byBkbyAKPj4+Pj4g
dGhhdCBpbnN0ZWFkPyBsaWtlIHR0bV9ib19wdXJnZSgpPwo+Pj4+Cj4+Pj4gV2UgYWxyZWFkeSBo
YXZlIHRoYXQuIEp1c3QgY2FsbCB0dG1fYm9fdmFsaWRhdGUoKSB3aXRob3V0IGFueSBwbGFjZSAK
Pj4+PiB0byBwdXQgdGhlIGJ1ZmZlci4KPj4+Pgo+Pj4+IFNlZSBob3cgdHRtX2JvX3BpcGVsaW5l
X2d1dHRpbmcoKSBpcyB1c2VkLgo+Pj4+Cj4+Pj4gQ2hyaXN0aWFuLgo+Pj4KPj4+IE9LLCBzbyBp
cyB0aGF0IHJlZW50cmFudCBmcm9tIHRoZSBtb3ZlKCkgb3Igc3dhcF9ub3RpZnkoKSBjYWxsYmFj
ay4KPj4KPj4gVGhhdCBzb3VuZHMgbGlrZSBhIGRlc2lnbiBidWcgdG8gbWUgc2luY2UgeW91IHNo
b3VsZCBuZXZlciBuZWVkIHRvIGRvIAo+PiB0aGlzLgo+Pgo+PiBXaGVuIHlvdSB3YW50IHRvIGRl
c3Ryb3kgdGhlIGJhY2tpbmcgc3RvcmUgb2YgYSBidWZmZXIgZHVyaW5nIAo+PiBldmljdGlvbiB5
b3Ugc2hvdWxkIGp1c3QgZG8gdGhpcyBieSByZXR1cm5pbmcgYW4gZW1wdHkgcGxhY2VtZW50IGZy
b20gCj4+IHRoZSBldmljdF9mbGFncyBjYWxsYmFjay4KPgo+IFNvIHRoaXMgaXMgZm9yIHRoZSBm
dW5jdGlvbmFsaXR5IHdoZXJlIHRoZSB1c2VyIGhhcyBpbmRpY2F0ZWQgdGhhdCB0aGUgCj4gY29u
dGVudHMgaXMgbm8gbG9uZ2VyIG9mIHZhbHVlLCBidXQgdGhlIGJ1ZmZlciBpdHNlbGYKPiBpcyBj
YWNoZWQgdW50aWwgZXZpY3RlZCBvciBzd2FwcGVkIG91dCBmb3IgcGVyZm9ybWFuY2UgcmVhc29u
cy4gU28gdGhlIAo+IGFib3ZlIHdvdWxkIHdvcmsgZm9yIGV2aWN0aW9uLCBidXQgd2hhdCBhYm91
dCBzd2Fwb3V0LiBDb3VsZCB3ZSBhZGQgCj4gc29tZSBzaW1pbGFyIGZ1bmN0aW9uYWxpdHkgdGhl
cmU/CgpBbWRncHUgaGFzIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgYW5kIHlvdSBkb24ndCBuZWVk
IHRvIGhhbmRsZSBzd2FwIGF0IGFsbC4KCkp1c3QgcmV0dXJuIGZyb20gdGhlIGV2aWN0X2ZsYWdz
IHRoYXQgeW91IHdhbnQgdG8gZHJvcCB0aGUgYmFja2luZyBzdG9yZSAKYXMgc29vbiBhcyB0aGUg
Qk8gbGVhdmVzIHRoZSBHVFQgZG9tYWluLgoKQ2hyaXN0aWFuLgoKPgo+IC9UaG9tYXMKPgo+Pgo+
PiBSZWdhcmRzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+Pgo+Pj4gL1Rob21hcwo+Pj4KPj4+Cj4+Pgo+
Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4KPj4+Pj4gVGhvbWFzCj4+Pj4+Cj4+Pj4+Cj4+
Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
