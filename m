Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FD33B2F5B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 14:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6340A6EB7B;
	Thu, 24 Jun 2021 12:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2073.outbound.protection.outlook.com [40.107.223.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0A76EB75;
 Thu, 24 Jun 2021 12:49:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oSgRJZJf2V0JsVX8UVGrK9d4AyYa6gWPyBP7Y2yoXSjnOzS8Jz7E82NbW0PTCVm3ViHbWWYnRIs7HoQL62UseoT9c1hfjWaxqfQlGmtwBQv9jgiC+gOhBiCFb0k48DRTla1EMXe8xVOYBd00HQ6+4AxnlobyVxqO0gKCIzWicPr08Y+CpbEwE7F6TtproIhjaiMbdx6RyKl9pyxl9rMzaqsnMh9z2hnvGcoOFkoDciDCGuP80S5HGv21ff5KiIgk8mdixnki4enSe5k3SrmmgCYjsOQYG1rs6AH8LwH5HhIR/kDf231WxzkDJ+6eb/n96k3Il/Z1GnhBDiOrgaqVag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zSA5C5L5i34apyhce66kppg6YzZ8Q2QDtRY/BSTf9j8=;
 b=QG39wlC3XkInB8h+wwwhqgxtmIs9OfPA5yaWBODxsvuM80S2KLm3KvFFsyAiySVNGeoVMYfnZGKFUf/k2Utv0hJ/OXDfZ1bSo1UUklZBUlXbRWFS2ACYA8rSWlXeEgieybVY9nic0Wn7p9+k3yPVbyZ3RLUeNeM61sOp+onFrKxTzfCMCgmAC67wdHfvvnnLLCo+wmXuVYZklUAr2xnJyw09+bav8wYcnQfcH0F6RZsZbOlKBR2BgL3EHpRg+NOfzZMN6HiyEoxm/fztpPPULsukRDSkWIusqpVXfkGh917a3zn35AL8NYvAvQQMpIf/S9vi34OnvxO8EuaQcH+HjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zSA5C5L5i34apyhce66kppg6YzZ8Q2QDtRY/BSTf9j8=;
 b=RcULALPjQDVoxi9v1hFUz3CFxjFkQw0GjVadMls8DEf6F13Kws4x0zz2HjH092Oei4qrYwnJZvWeJYfI+8XBMNBtGVGo0Xj2pVtKWf0J1hDFdGnboj1CiSubf+9suK9A4KskmCPY4yztEdWr0WiW2Fwsvma6W0M0gr9AAre3Ffs=
Authentication-Results: linux.ie; dkim=none (message not signed)
 header.d=none;linux.ie; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Thu, 24 Jun
 2021 12:49:00 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4264.020; Thu, 24 Jun 2021
 12:49:00 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-15-daniel.vetter@ffwll.ch>
 <4ed8f1d3-eb9c-74d6-d93f-ee28971af7f6@amd.com>
 <YNR9hSMVmzYmotF0@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <4fba7964-3306-4e2a-f87e-906ebedbe7fe@amd.com>
Date: Thu, 24 Jun 2021 14:48:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <YNR9hSMVmzYmotF0@phenom.ffwll.local>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8a1c:e700:29c4:44b6]
X-ClientProxiedBy: AM4PR0101CA0079.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::47) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8a1c:e700:29c4:44b6]
 (2a02:908:1252:fb60:8a1c:e700:29c4:44b6) by
 AM4PR0101CA0079.eurprd01.prod.exchangelabs.com (2603:10a6:200:41::47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend
 Transport; Thu, 24 Jun 2021 12:48:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e38fbf74-7a48-4ef4-3cb0-08d9370e7006
X-MS-TrafficTypeDiagnostic: MN2PR12MB4192:
X-Microsoft-Antispam-PRVS: <MN2PR12MB41923F899DDFA41040E8084E83079@MN2PR12MB4192.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:172;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /rN4lpJ0YhU/0BEm4jxRH04ohPKThKQCADDyEd1PdXrzO5gdPWzH62Wl2FI79sf/E4wwRocnyArzAQVULiJauTVZbuarwgT4lbhOzoIoolLBNpyKXlEX52XeKd5izDv6k3z4CnF2cIHjdAwqQ85+enOsp0p4Ojn2PbaReEamStPsH2qPAyI1oxsSZ74cOnoVmFyGbQUHKamn7Rs7FtUwiLrWfE0lgONjteqGNvN+CYoaz0mGFi5Cs/UpxJnOPfAvVizER7P6fZMePAijMb+C8CioZCm3OneO1uULdzkazfeQLrVeMfxK2RhgqvJny7fp3TG9f1OieTnYwzeCzPU4oaIvCZt3Sv/XxHwHCLPjIuavbbDbDypfYhIh5BCZYZe7YhqWMdDXqvGGtymKUkFzeECkKX3ujOiKTziWLwG58n+789rXV+9U5J/hgfwIBtjojhMdTLYUQRBHnVUVTJjALbG88MO/G/gCx2pi2B/xtpEMcEHNkk7fJvPtrr9bQ/4SuuqrH47WoyNxEJgyDyyoX71VYoFfEqXWmHcuj/nbcco7nodNoXBI3IkHR0Jrv0vnWM0JZ6gxcKywG9kgP3iOhlBvadqJ5KyBEksn1P0mquV6cll3Vm7A4uwglIWMXvZH1/mpuXASsQXmEbptQUAwuGcyFyN1XfUViDVEFA9rseY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(66946007)(54906003)(36756003)(31686004)(66476007)(66556008)(6916009)(5660300002)(31696002)(8676002)(186003)(16526019)(83380400001)(8936002)(2616005)(6666004)(316002)(2906002)(478600001)(66574015)(7416002)(38100700002)(6486002)(86362001)(4326008)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ujg2N2Fpdm85aXlOc21oTW1xbVQ2THFESXdVMmltZi9UcG96cHJxTlkxM2Zs?=
 =?utf-8?B?UjVzb21QQmN1YVdhREVDbFgxbm9QZ1RxdUMxZ1FLWE0xck1IbklkVnN4N0FN?=
 =?utf-8?B?VEIyWXFRR2Ixd3NrTDZVakdycnBGOHpXYjlqdjNhQTNiNzFMZVFiTlV4RDJS?=
 =?utf-8?B?Rm5mR1gxbVN2WXF1N1VPN3BHWXRBMVovelg1WEVubXJhL0hJaW9SRFNvNzZz?=
 =?utf-8?B?SDJUbGJVUnFHZnNuRll3N1N6NGUrUnhMVkJrMTlhcVhlZ1oxSzAvZ3NrUGtP?=
 =?utf-8?B?RjllTVgvQjNqZ0Y2elEyTVFPams5N2twWGNLT1BwRGxwMDM5bjYxRE5vMk9J?=
 =?utf-8?B?dTBIV0ZBdEZ6cWEvZWQ4WDU0NFpJZFhIQjV4UWJTMjBtZEVGWDU4eVhtYjQ3?=
 =?utf-8?B?ZjhROHJ6NERQbGNwNURJcnN0Z2JOYkNtdUJISlozd1hDenNKQmc0YUs4SE05?=
 =?utf-8?B?YWUwc1hwOXJlMWxocHZ1dlZ5azFqMzYzT0lUMTVja1dUT0NIN1NFa2QwNity?=
 =?utf-8?B?OVBlUWVNU0dJeUlOMldyVFN2SmlaVHZiVDNyQVBDbnUvQ3hDYnNjZ0pBK2k1?=
 =?utf-8?B?VEZ5bWJrYjZaNkJEeGUrYSszcXlZTFVWQ0VjWGt3czIvZWh2RXRiNFpWL0RJ?=
 =?utf-8?B?SlpPSFA1NmZmanQ0TUlDNDZoZDd5ejRqakZxYkRNanRvN2MzVmduZHVuRmNQ?=
 =?utf-8?B?d3B6NXJqWXd4cVpBbXpWazc0UGFrYjVhdWg3ekxaK3lINGJ3d3ZPUWFsZkRp?=
 =?utf-8?B?NXBBME5xdXBSeGsydWpCTk01WnI2Z1pva0kxYnY2SFpMSFdNdzhsb0pvM3Jq?=
 =?utf-8?B?VmRvWFZtZjJGNGQybjlESFJuQ0d1NGJMajdMYURLMkcvWmlqMTBobGJvL2ov?=
 =?utf-8?B?RnpRcUxBUFZPenU0YmsrdFRqL1piM21CdnlPZGxoWjRkUmRDc1V0UnI1eWtN?=
 =?utf-8?B?cnJ2TTJDbFhQQmxiTG9lajh5NHNNZ3MzQ082bEpOU29VdkE0QVlPTzI3UGFt?=
 =?utf-8?B?ZUN5MlpIaVpQVmIwazFrUm1mWkN1dm1FeHM5MkRQd1ZvREpZTE8xUllIdkJ5?=
 =?utf-8?B?TllmVkg4YnF0bFlTUmJEVjVWY1MrenQ5eTNyVFdQajV5NXpIbjZ1VHRaN3Qy?=
 =?utf-8?B?bWpSbGtLb1Awbm1HNVo0NkpOTGdmS0NuU0ZRMjUwTUFadnhEcmhoNnVkdWxJ?=
 =?utf-8?B?aE9WdTR3Rzh4Z1cwbjNmZFhoL0JQbXJZNE5ZbjBzUURMU1Z1SEhRTXgxbUR4?=
 =?utf-8?B?UFQ0TnBYL1FuTzNJUURVdVRzSFVQOHhHa0FQVEZIMDFFQzUyRC9FK1puOTlm?=
 =?utf-8?B?SnZ1NTc3bENjc2JOMnpMcmw1M0gwQ3ZXdWExWGx1R0tybVdQVjNad0dvM3Jw?=
 =?utf-8?B?U20reHpLZ1lyb3poQ3o2eG9oMlljVlVCRm01d01RU3lFVXZYQWNzUEdkY0NN?=
 =?utf-8?B?a1c4dElZdFlucDdZbkFqaFBHWmlTNmZQS3d5Tzkzb1R1WFU5dUpiNFI1SDgz?=
 =?utf-8?B?YnVyM0hqSVpsWVJ5bnk4VWZxNlFEekN2UUx1eVhSUXZ4cDk0a3dZdE1KNDFO?=
 =?utf-8?B?YUt4bmtWTGlNU0d2eTZCdWtiSGF5L1hPVFRJV2VqNlZDUnVuTFNmYWgyRjlF?=
 =?utf-8?B?YUNBcGp0L0JxR2Z0REkrT3lWa1VtZWl2Q2dKODdadXI3dS9ndUxHc0E3TWZz?=
 =?utf-8?B?QzhiUWlJQmJxZXZKcUlOd0VaLzd2c0FBZENiTi94ZWlVbTk2Sk02UGtWN21a?=
 =?utf-8?B?bDFCQVJwRlZFcm5kK25UWDhwWTAzZXRCbHNKODFhd0d4QTQ1VzlaeTRCNEV2?=
 =?utf-8?B?aGd5UVhUTGxJTGpidk9XMTgwS2M5RTZxVEsrZ0kxR3I1R1dRV2pFbzd4KzZG?=
 =?utf-8?Q?7VRucUOV9Ma6j?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e38fbf74-7a48-4ef4-3cb0-08d9370e7006
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 12:49:00.0271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J7OtS8chWSsv15OBQM9W2FLBS+lDm+qnOBgqY20tU+DQCFiaBJ7e6Mo8/ykjlH/X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4192
Subject: Re: [Intel-gfx] [PATCH 14/15] drm/gem: Tiny kernel clarification
 for drm_gem_fence_array_add
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpBbSAyNC4wNi4yMSB1bSAxNDo0MSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gT24gV2VkLCBK
dW4gMjMsIDIwMjEgYXQgMTA6NDI6NTBBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMjIuMDYuMjEgdW0gMTg6NTUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+Pj4gU3BvdHRl
ZCB3aGlsZSB0cnlpbmcgdG8gY29udmVydCBwYW5mcm9zdCB0byB0aGVzZS4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4+IENj
OiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+IENjOiBM
dWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPj4+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4gQ2M6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPj4+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4KPj4+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+
Cj4+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+Pj4gLS0tCj4+PiAgICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIHwgMyArKysKPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPj4+IGluZGV4IGJhMmU2NGVkOGI0Ny4u
NjhkZWIxZGU4MjM1IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwo+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwo+Pj4gQEAgLTEzMDIsNiArMTMwMiw5
IEBAIEVYUE9SVF9TWU1CT0woZHJtX2dlbV91bmxvY2tfcmVzZXJ2YXRpb25zKTsKPj4+ICAgICAq
IEBmZW5jZV9hcnJheTogYXJyYXkgb2YgZG1hX2ZlbmNlICogZm9yIHRoZSBqb2IgdG8gYmxvY2sg
b24uCj4+PiAgICAgKiBAZmVuY2U6IHRoZSBkbWFfZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0IG9m
IGRlcGVuZGVuY2llcy4KPj4+ICAgICAqCj4+PiArICogVGhpcyBmdW5jdGlvbnMgY29uc3VtZXMg
dGhlIHJlZmVyZW5jZSBmb3IgQGZlbmNlIGJvdGggb24gc3VjY2VzcyBhbmQgZXJyb3IKPj4+ICsg
KiBjYXNlcy4KPj4+ICsgKgo+PiBPaCwgdGhlIGxhdGVyIGlzIGEgYml0IHVnbHkgSSB0aGluay4g
QnV0IGdvb2QgdG8ga25vdy4KPj4KPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBNZXJnZWQgdG8gZHJtLW1pc2MtbmV4dCwgdGhhbmtz
IGZvciB0YWtpbmcgYSBsb29rLiBDYW4geW91IHBlcmhhcHMgdGFrZSBhCj4gbG9vayBhdCB0aGUg
ZHJtL2FybWFkYSBwYXRjaCB0b28sIHRoZW4gSSB0aGluayBJIGhhdmUgcmV2aWV3cy9hY2tzIGZv
ciBhbGwKPiBvZiB0aGVtPwoKV2hhdCBhcmUgeW91IHRhbGtpbmcgYWJvdXQ/IEkgb25seSBzZWUg
ZHJtL2FybWFkYSBwYXRjaGVzIGZvciB0aGUgaXJxIApzdHVmZiBUaG9tYXMgaXMgd29ya2luZyBv
bi4KCkNocmlzdGlhbi4KCj4KPiBUaGFua3MsIERhbmllbAo+Cj4+PiAgICAgKiBSZXR1cm5zOgo+
Pj4gICAgICogMCBvbiBzdWNjZXNzLCBvciBhbiBlcnJvciBvbiBmYWlsaW5nIHRvIGV4cGFuZCB0
aGUgYXJyYXkuCj4+PiAgICAgKi8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
