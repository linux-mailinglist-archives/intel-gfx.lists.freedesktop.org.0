Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C183B3020
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 15:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5DD6EB90;
	Thu, 24 Jun 2021 13:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam08on2085.outbound.protection.outlook.com [40.107.101.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F88B6EB90;
 Thu, 24 Jun 2021 13:35:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ud0DX/bZSY7AbLUMDJ89vt9MGOB1dXdqrYY9/jAVVXIBnrVyHw6WQuV6DRxMWoAVE0MQaJWZhb077DFjHkbdF1QBADdGmVfBKYm+SpEV7Ywjd5J/aJL397hlnA4DtKBAksusWqI654ZJeU6pFaQawq7TZqacSxZ2ZjXS6hVIWecCz3IOske0XIBe+hkbvhls06dZ0kyy0vcKhQlYXuCGQ5fPdBF7xaR653CINUJ7X9+mHCJ3rkHQffSTd49fF/2ibd7qwjabQPStxOXr7TMHfRvxP4xwVCV5CyftuzQaitLZ//qaHviG9L06n9AzR09jmRnMWnj58iGRxWfUMfb1fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XsOzKu7Hj0n42rOpCIjUHjqREcCVMuotiuvH1N7Nwkw=;
 b=DBmRmRm1uNBWPX3KKAYpAa/Gph5EauG22q0R8xug8M0IbxHldssqAWVfIfQQ3F1Xp70dbBAHwzG1pLwMX06jVut4ildX8Y/gnCMsE7AdRs+tl2ydPtLPrmk241Y5mrjNp/X2eqWF7MDt8HFYqxGSFwcGLJXlQGwHP9W1RiPUGlf5cUC9s/L8xvon2aNHsjP5+b3vjDucZL0WiGkpEyd81lLxfFSie2+NDu87eemq7QVG1YHJwZJcVyri4QUCFwbE0+44KLZUgl4TgA2XZj1QBo+b//Bomri59HHfKxnEMxMu8X3n4P3WlqdR7kUW7Qr4zl5uot6iMWP3lKVof8dR4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XsOzKu7Hj0n42rOpCIjUHjqREcCVMuotiuvH1N7Nwkw=;
 b=K3UldxIG0BxDbujdim+UIFNOLNogXNhlSo+oLn0IHwv9kP1yZw01tVBpbDvu69Yufxh/YtrwTDX3E4G7i7HCGoWFxWbYK3RSiqgUtT+SOs1RJ/D3YU3LzRX0qX+Fv/iuk2qOyelyWyTjxuoQZakz8ifRWBp4XMfr+kS8/EvChxo=
Authentication-Results: linux.ie; dkim=none (message not signed)
 header.d=none;linux.ie; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4929.namprd12.prod.outlook.com (2603:10b6:208:1c4::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Thu, 24 Jun
 2021 13:35:26 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4264.020; Thu, 24 Jun 2021
 13:35:26 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-15-daniel.vetter@ffwll.ch>
 <4ed8f1d3-eb9c-74d6-d93f-ee28971af7f6@amd.com>
 <YNR9hSMVmzYmotF0@phenom.ffwll.local>
 <4fba7964-3306-4e2a-f87e-906ebedbe7fe@amd.com>
 <YNSJaizc5BpmTM8p@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <3800d89a-3591-daf5-6a9a-292f95c58619@amd.com>
Date: Thu, 24 Jun 2021 15:35:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <YNSJaizc5BpmTM8p@phenom.ffwll.local>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8a1c:e700:29c4:44b6]
X-ClientProxiedBy: PR2PR09CA0019.eurprd09.prod.outlook.com
 (2603:10a6:101:16::31) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8a1c:e700:29c4:44b6]
 (2a02:908:1252:fb60:8a1c:e700:29c4:44b6) by
 PR2PR09CA0019.eurprd09.prod.outlook.com (2603:10a6:101:16::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.18 via Frontend Transport; Thu, 24 Jun 2021 13:35:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70f3e53d-addf-419c-20e2-08d93714ece9
X-MS-TrafficTypeDiagnostic: BL0PR12MB4929:
X-Microsoft-Antispam-PRVS: <BL0PR12MB49296ACC694C74A3B735C99883079@BL0PR12MB4929.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:913;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I2hBUeYmFWbrrexQ0oOuulI4KfPTgJjwOJvqgQ4ZPbRd4WKUikG3QgYlMzfRStYrPJKiOzeKtutifi7PUeYiWresukhvO106qYuxFGVVqy5sDZkQf9aUtvqMfjvNKSaCOphNHYWUj9Mygk8ocYd/tT8hlReiRa2R6jY1WRPTJTgI4PHfwnVIFC2qq+ab5gfyxyYv7idTWXqrAfxL6XQ6pgOa1206ROBPcNOUZyywhocXmgNsvdtGZUIzG/K7ho2NaBHsFVzaoXOBuzVIyAkX+gAJUG++aMekd9CE2oIcWJ+MdtdIQvwPfwKdMS1dAETyYPSQUXiJ5SQ7ksce1H1xd9VB2WCJv4EwvQ9ZD2+Pb+Cm2LeqBOjUCJns650CuHdwmlCpQAsVRKimJfN47jozVfB+XVbL4XAbMGD4CxJPx8YyePU+eqjtq5QBX1zwTrP5sZrNnCtRhUMMiJHDiu1jeT7ueegtH75OWZpfb7PAUFs/lalokdGdT1EksX4s4T/Po+aEqPRPKm09iMsa0Ogt3H+mN2o7+etIR835B6vdTfsuZRtXiYNRHebU0Jo6w4jHJe9ZsqU7hRaoNEdIOZWGlIhmf7iG6yAdHMcLxqOpa7JorWU5hItgn+Ka0x5aV4785qqRgGmKpnlc9p/Z9izUrAWqYu1ZS1less5ySgnLEGqK7rxwo7WH3v/NWYxlFC3x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(346002)(39860400002)(136003)(7416002)(2616005)(8936002)(83380400001)(4326008)(6666004)(5660300002)(186003)(478600001)(8676002)(16526019)(36756003)(54906003)(316002)(31696002)(38100700002)(31686004)(6486002)(86362001)(2906002)(6916009)(66946007)(66476007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXFyWkdVL210ZWFEMHBrMTdHbjFPNXhDd2VtZURYdkRkTWN3enRseDlkTzdk?=
 =?utf-8?B?RGpxUzFqSjdNMnBKdmRXWVdKaXpHaHdKSDhHQzI3VGtpOC93Nk1YQ3VDVFFQ?=
 =?utf-8?B?a0lLTmtwR2xKSzE1dHBpK3hHYlRidVErSHpGeVRiK1ZMVnZuaEJTOHhvaUQv?=
 =?utf-8?B?SUYrejZwUU9JUEJHODA3bUIxdU9Eb3lEU1YwRncrZGV1Uk16eC93eXhmZHN3?=
 =?utf-8?B?SGsrdU9JMWR5TDVpaUJzbFdjR2NIZUJyVC9hSnJXcHBPREJQb2VLaWhMSkxr?=
 =?utf-8?B?dGVkcG5CYk1HUHZLSG91bXIybWl5Umhxa2grUEI0cVNubUFoRGJWZTlDYkg0?=
 =?utf-8?B?REkxZ3dSMHI1eGpMOHhtRmlwZi82eGhiZlNjZ0pEcHVTRXpCc0xHUlgxc1Rk?=
 =?utf-8?B?bVZjN2pyNkJNU2NSQWFHN1pTVGlPRnJBdmZiNG1ZWFM4NDRrU3FYVjZMSjJ4?=
 =?utf-8?B?WkIrQjhBeUtGc2RKTmhRMjdLZkQ2TXhBa0tyK25QR0hkWTE3cndMNk1rTGFF?=
 =?utf-8?B?VU5WWTEvdmRkeFcxUHhUYm9jaEd0ZjEzV05PeXlmNWdXMkZDUlJHY2pJWXU2?=
 =?utf-8?B?Uy9iMHN5enRmWjhoNy9BMU9CTTcyWlZPRzZ3ZUViZEx5eWxtVGJybWxDQzcz?=
 =?utf-8?B?WUlJdlFUY2RWNVZaL0hFN1VscjJaTFdpUk5oUXVlV1BUREpBOUdGaUN6OEs4?=
 =?utf-8?B?M2EybFdxZmJ0SnRCU3BjOXp6aWhLaXVYajNtQWpBZmQ4Y2lYd2NaWDR0ditK?=
 =?utf-8?B?MHY4WHhCcmdBZHFkNkZBTzRUQWNHeUF6OFFGOVFCZHBHajU4N1ZsaG8rbnZn?=
 =?utf-8?B?dXEzTlpDaDI4UkdlenlHanJObE0wTE1sdm9qRnN0ZExhZTF2aCsyc2tGQzl3?=
 =?utf-8?B?QU85THlDSElLZ1JZSzlHTnFkUGtRYWlvVTIzWnc5clhpVG0xRTVaeHhpaUlW?=
 =?utf-8?B?VXYvdWlhZ2d4TnRRRUNFWm9TUVlmYzZmbDg3a2FYUWJ6aWh4QVF6ZmNVS1I1?=
 =?utf-8?B?aXAreE5rVkNQbFl1WmVDaE9JSFJKcTN1QmVtYkFDTVUyenZRUlhWUGZDalQ2?=
 =?utf-8?B?TWZnRmx3OHVBTXNHaXA0UytmRXZ6SlViaVF4a1cyNVdmcXpiSkxjWGpyelNa?=
 =?utf-8?B?VEFQYi83YTI1SzBzNXJVNXRYMzQ2TlYzWTNmeUE5b0VBWmIzY050UG01Q2pi?=
 =?utf-8?B?QW93SlFNVDg1WTc0cjQ5RnRIb2dHOEM2Y1M5a3QybTh6QWh1RGtZdmN4WHI1?=
 =?utf-8?B?YXhGWWNVN2dlU010WDRibmNZTm5KcVpBMUFkZXhaZ3NGZ01zeUVpTU9ocVdF?=
 =?utf-8?B?cGJIeVhtczYwck4vamlWdEMwUFVTbzcrRGU3QjEvMkFwbmtPK3VYcFlOd3Fl?=
 =?utf-8?B?NyszZEdncVkwNTZPMzZCcHZaNzRVeC9BRUxkZ2VTelNxL0N2dzYyL0Vhbm1S?=
 =?utf-8?B?V0diVk8rdWIveEtTKy9LL2VIZWZJaVN2YmF5MHROTjFXcU9yRC9zTzJ6ekNo?=
 =?utf-8?B?OHQrc1ZBK2JKTkJQbjlPRGJncktrNXhBdnlGZHpMcHd0WTA0UEVTMjhteC8r?=
 =?utf-8?B?UmZ4enovNHRsRWRjUmF2RnNyVW9oNXRiNkZaUUZYQkRUMkJxeEFZbkVCdGZn?=
 =?utf-8?B?aUhBV3pJbGNYdE1MQW8zVzFKV2FxdDVFd1ZxV3lpMk56RkJ6bWErMEV4aHNt?=
 =?utf-8?B?L3k1KzNRZ1AremRBZmNKQ2s0UHNqQ3h3UnEycDZWWmdhUUNpdjFXaVZ1bW5B?=
 =?utf-8?B?cDZxT1lRZ1A2UFoxbFZkRVAzOW5rV1JyZElmUUtoZkRINGk4RlNlcFdOUWtk?=
 =?utf-8?B?eUtIN2Y2QUhiZ3QyVnhmaFFySTFQekpUZzlZRlNlMTl5L00yMGk5YmlrQSsz?=
 =?utf-8?Q?Y+NdK1/xcwT1m?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70f3e53d-addf-419c-20e2-08d93714ece9
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 13:35:26.4170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cQeana9K59dx9zv9PcBGAASlKledh42GL5oguT1iaurOWqv4MQ9T771BvnY1K6wf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4929
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

QW0gMjQuMDYuMjEgdW0gMTU6MzIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFRodSwgSnVu
IDI0LCAyMDIxIGF0IDAyOjQ4OjU0UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
Cj4+IEFtIDI0LjA2LjIxIHVtIDE0OjQxIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+IE9uIFdl
ZCwgSnVuIDIzLCAyMDIxIGF0IDEwOjQyOjUwQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6Cj4+Pj4gQW0gMjIuMDYuMjEgdW0gMTg6NTUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+Pj4+
PiBTcG90dGVkIHdoaWxlIHRyeWluZyB0byBjb252ZXJ0IHBhbmZyb3N0IHRvIHRoZXNlLgo+Pj4+
Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KPj4+Pj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgo+Pj4+PiBDYzogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4+Pj4+
IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Pgo+Pj4+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+Pj4+PiBDYzog
VGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4+Pj4+IENjOiBEYXZpZCBB
aXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4+Pj4+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+Cj4+Pj4+IC0tLQo+Pj4+PiAgICAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyB8
IDMgKysrCj4+Pj4+ICAgICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Pj4+Cj4+
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW0uYwo+Pj4+PiBpbmRleCBiYTJlNjRlZDhiNDcuLjY4ZGViMWRlODIzNSAxMDA2
NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwo+Pj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCj4+Pj4+IEBAIC0xMzAyLDYgKzEzMDIsOSBAQCBFWFBPUlRf
U1lNQk9MKGRybV9nZW1fdW5sb2NrX3Jlc2VydmF0aW9ucyk7Cj4+Pj4+ICAgICAgKiBAZmVuY2Vf
YXJyYXk6IGFycmF5IG9mIGRtYV9mZW5jZSAqIGZvciB0aGUgam9iIHRvIGJsb2NrIG9uLgo+Pj4+
PiAgICAgICogQGZlbmNlOiB0aGUgZG1hX2ZlbmNlIHRvIGFkZCB0byB0aGUgbGlzdCBvZiBkZXBl
bmRlbmNpZXMuCj4+Pj4+ICAgICAgKgo+Pj4+PiArICogVGhpcyBmdW5jdGlvbnMgY29uc3VtZXMg
dGhlIHJlZmVyZW5jZSBmb3IgQGZlbmNlIGJvdGggb24gc3VjY2VzcyBhbmQgZXJyb3IKPj4+Pj4g
KyAqIGNhc2VzLgo+Pj4+PiArICoKPj4+PiBPaCwgdGhlIGxhdGVyIGlzIGEgYml0IHVnbHkgSSB0
aGluay4gQnV0IGdvb2QgdG8ga25vdy4KPj4+Pgo+Pj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+PiBNZXJnZWQgdG8gZHJtLW1pc2Mt
bmV4dCwgdGhhbmtzIGZvciB0YWtpbmcgYSBsb29rLiBDYW4geW91IHBlcmhhcHMgdGFrZSBhCj4+
PiBsb29rIGF0IHRoZSBkcm0vYXJtYWRhIHBhdGNoIHRvbywgdGhlbiBJIHRoaW5rIEkgaGF2ZSBy
ZXZpZXdzL2Fja3MgZm9yIGFsbAo+Pj4gb2YgdGhlbT8KPj4gV2hhdCBhcmUgeW91IHRhbGtpbmcg
YWJvdXQ/IEkgb25seSBzZWUgZHJtL2FybWFkYSBwYXRjaGVzIGZvciB0aGUgaXJxIHN0dWZmCj4+
IFRob21hcyBpcyB3b3JraW5nIG9uLgo+IFRoZXJlIHdhcyBvbmUgaW4gdGhpcyBzZXJpZXMsIGJ1
dCBNYXhpbWUgd2FzIHF1aWNrZXIuIEknbSBnb2luZyB0byBhcHBseQo+IGFsbCB0aGUgcmVtYWlu
aW5nIG9uZXMgbm93LiBBZnRlciB0aGF0IEknbGwgc2VuZCBvdXQgYSBwYXRjaCBzZXQgdG8gYWRk
Cj4gc29tZSBkZXBlbmRlbmN5IHRyYWNraW5nIHRvIGRybV9zY2hlZF9qb2Igc28gdGhhdCB0aGVy
ZSdzIG5vdCBzbyBtdWNoCj4gY29weXBhc3RhIGdvaW5nIG9uIHRoZXJlLiBJIHN0dW1ibGVkIG92
ZXIgdGhhdCB3aGVuIHJldmlld2luZyBob3cgd2UKPiBoYW5kbGUgZGVwZW5kZW5jaWVzLgoKRG8g
eW91IG1lYW4gYSBjb21tb24gY29udGFpbmVyIGZvciBkbWFfZmVuY2Ugb2JqZWN0cyBhIGRybV9z
Y2hlZF9qb2IgCmRlcGVuZHMgb24/CgpUaGFua3MsCkNocmlzdGlhbi4KCj4gLURhbmllbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
