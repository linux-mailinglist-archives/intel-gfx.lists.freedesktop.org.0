Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697753B15EB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 10:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E4B6E87E;
	Wed, 23 Jun 2021 08:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2074.outbound.protection.outlook.com [40.107.223.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F9C6E87A;
 Wed, 23 Jun 2021 08:32:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtTtKMexypjgH2eSpTjgZ1v1L1Rt+fy8su3/oXFzsX7teTUcQZgZLZ8uOtST0VJGvPJisW55dpfgWYRSkMIk+ZuberOfWLM5iFGCv72qHI9bugsh/T78tHvnoMYbNbdV2qWywT6qf3d4wea5Li3HrzbExHO5p+Wq9bEH8pOI3dWhmz6sLTkYVavyjCA8RKl/eil1R3ISwuF7i4RATsou2p/MF5dVEVTNU3mHntlCesCm1JyprjADbeez5x1deZE+ZADAcXEjAk4qN4ctDbdzgOsgMAHoHOePgwNZQzQEWkgQ2Vhs2jnREZDdy/xaKO/z7u35fAUwiC7M5JQU71vIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oM+vfC1XipeGRU/f4AUhyG5S1zS3JSGlj5sTeBuaDTI=;
 b=ne1C7n5Oc8KsNUPiM2UrdylFzAHFvn5Jq06PK+srdMGx5wFukEUUKqdLdqY0Aqq2KqBZE/Njh9ZCiDkrES4LBhVGBmRtkzVnGmWBA0Q65+YxjDG+s0KclKwrAjNbCfD8drLUI+Xths62uO4TYJR6hQ50ttcz2J+xDrcV3CO5qi6NmunzIzcu2MM/VdPIC+vc+RfJemOx6R/i/DhQp5CF3jg0ozpfBpYHVPbHtOm60nphSj9r+B9TFsmEy53rZHWZ2HLIqQxpQFQLAyvMktqOFxKkZkpFoo6ONV3XJPznmOZTo8403Jg47gTV97dkCHNHttYWAHMz1xbigGqqiAWF6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oM+vfC1XipeGRU/f4AUhyG5S1zS3JSGlj5sTeBuaDTI=;
 b=UTBnp3Prss9TVLDdDTBfQGNFVzvEYlrvBwMzt+/rn3VtDreE7QMyAclm/XTKqubEj/ouOC9kzWcDko07Y3GmKowdzdhmmKBX6yKBN+JjHpIx/v1RyVD5A5sjS5RShEEotjLfL8TR3B2HFggi6VVc4U+M38ZEkoY0EWbjSnRQH4U=
Authentication-Results: lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4206.namprd12.prod.outlook.com (2603:10b6:208:1d5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18; Wed, 23 Jun
 2021 08:32:23 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 08:32:23 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-3-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <5043bdf9-6f39-cc91-b7f0-adfb2dab2d9a@amd.com>
Date: Wed, 23 Jun 2021 10:32:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210622165511.3169559-3-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:69e4:a619:aa86:4e9c]
X-ClientProxiedBy: PR1P264CA0025.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:19f::12) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:69e4:a619:aa86:4e9c]
 (2a02:908:1252:fb60:69e4:a619:aa86:4e9c) by
 PR1P264CA0025.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:19f::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.19 via Frontend Transport; Wed, 23 Jun 2021 08:32:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7a37e39-b847-45da-5875-08d936216c94
X-MS-TrafficTypeDiagnostic: MN2PR12MB4206:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB42068A4D15196763C7323B6F83089@MN2PR12MB4206.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BzfY40kDQaQyzzrob72jSLSwETu0LgDqFeexHPWj/E2ZM+2Gf5FuN47CuM/qIZ+QBuSKG35LfEeHGTEWnd4rEaaUHtSOBh639Pql9ML3IQL+fzgy05PTTFNDjZ8B4ElKYfZVsUTQVHCA68UcldeFjE6Qv29FMfbjNmShQLwuZ23/PJTIj2PYBqL76fZLtg/73jsM7UhXWNYmOCNAYyNfc8XQOPI/X5yFuac2pCZOJ4xPncGjdLUdBKxagwXyV6bIO3oCsSs2Ui7YlMO681YrXMBO7f8QLPEdlpg35V5zRTqxThsa6cBEMmrDNd3sRCPBWmm7sdg1GG/CR4lUnJoMBj6AgSsZ9GBD4p5vwsl0nq2P8RBTaNlFyrfKRLrUlZZG99aZuy2LmJ/tiGjbFoXKqHBZh/H/LScq4yQf5POW4bkd1lFPPk3+jwzob8W+bqbqrTH+o5lbsLQBoaGvzimx9/OCrbLznUc8t09VAppW5mmWUVrLM6ybJGU7KUOExW52Qo1frEMMCLD2tlBPmR/GH7n0VtWLtthfffQndFPvRphkLBwIzkQn4XK5gkgzKmTWL2Ew2NEsGpIairwhA33MafJPB8bXmcu7/SqxBlGkpZFFd6CV7Eq+kjoRUGG73A7EJkS8N9+QvbGUL3DlaJAodt+41kC20gPvtWhN0ymrPfdMLaSBeqME9FvGgkl9gS4y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(2906002)(7416002)(2616005)(86362001)(83380400001)(8676002)(6666004)(478600001)(4326008)(66574015)(186003)(16526019)(316002)(31686004)(5660300002)(38100700002)(66946007)(66476007)(8936002)(6486002)(66556008)(36756003)(31696002)(54906003)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2M5c0RvK3JQT3pNVFF4ZnBzTUl4NG04RjczSDNuZmdCUXh3MXRJcnhFQVBN?=
 =?utf-8?B?YjJWRDl6ZTE2RUVnbzFTTzlpQzkvcjg3TVdVVTlJeWN4Rm8rUDdPbFRGaUNa?=
 =?utf-8?B?SmRtQzc5MzhXUGJSV2ZWWG9udjEvYkVabWw4Ty9JTExCMURHbTRnRC9UUlpj?=
 =?utf-8?B?di9CQnVRTHFsbEdWVzhobERBV2JVZHdmUSt3WTg1ZmxuQk5yNU9KeGJOaXda?=
 =?utf-8?B?aG11NlNvRFVXR2pLYWxneGJzQjlxVUt5VUpUL3pVUGZ0L2JRS0N3YVVNVWNC?=
 =?utf-8?B?RUV4U1oxUmx6RGV0Yld6MC9xQWxsQWk1eHBjSkFmK2tEUlZsY2dkbEtXUG5q?=
 =?utf-8?B?aW00OUZib29kQmZEemExSGpTOFhvL2t0akxQc0pBWGhOY1BqQ2hINWliWS9i?=
 =?utf-8?B?aUtqOUkzT0pISmp6b0ZKKzcxUm9sdVMrNkZZY2RJZ21xZS9TNWRTcXIxTXRi?=
 =?utf-8?B?U1QzS1RsRmNhcTdueElEcUdzcHhGTzNJYXJCNHZkZ3lZMjdHN2YyZUo2b1F3?=
 =?utf-8?B?Y2NTRCtTOEVlQzBJdlU5cFQxT0VVWTcwWCtwVVMvc1BDdDdvUkhRVk81T1d5?=
 =?utf-8?B?dDBPZjcvUk9QVmFXenUxbVdIdlZWZDlBRHhjcStvdTdBSjhCR0ltVlJPUUxB?=
 =?utf-8?B?aFBZa0laNTNVQnllbTNPSFhvWXBNeitHS0tnRG1IbEJ6dmY2T2tNdmVCZFp4?=
 =?utf-8?B?RG93ekJ4dFBTY0tnTlhIeURrQ2xXbXRJZ2FSWGFyeFBDVmVRQ0R6MmQ1ZTND?=
 =?utf-8?B?REcvam9kNDU5ejZ3YWt5b2RmWElmQ1RTNHhtRmljVFFtNXdPcytkWnQ2SEFk?=
 =?utf-8?B?Mld3SEwxand4R0JoTElEc1Jnc09pNFRiK3Bnb0xjK01CNE9uWEVsVXNVWXlM?=
 =?utf-8?B?alYwSW1pdG9PRlhlZS9lekpSMEc2OWpleWxVai9rd2hYT3lsbHN1YW4yZkw3?=
 =?utf-8?B?TTdWaDhrSDZDdFBYcW1kTlNZSmhzYlJSNHZYV0luQU9CNDk1YXpobDE0c1Rj?=
 =?utf-8?B?enRaY2tjUU1NNlJ2bVdLcG1wQzRkQmVhbVNWMXd1aDR3RFgzMHFmb1FxLzNR?=
 =?utf-8?B?dDYyNTVicnBYYzMxU2NCQUx0SGQ2WUc2K0VyOVRwbWFCbTZqYnVNRS8rRFR3?=
 =?utf-8?B?ZW40ZjQ5SVYwMWVZOHRxWklJbGY3alo0TEkvQ2xWOXRYbTE1N0RjVXJZL01M?=
 =?utf-8?B?cDdnQitqamc2ZkEydUF3cU1QSzNWeW92b3BMZklzbXRleHJPL0lCc21ZTXpu?=
 =?utf-8?B?aWJkdHVXbU45aWVyczl1TjZZV3BOVFZkZHBQRC9QNWlTUitIUTlMWS8wU1Nw?=
 =?utf-8?B?T1hJRTBUUGUrSDlQMTNuQWI1VWVLM3NUb1lXN2ZHZVl5aUZGS0RWL3lkM2pr?=
 =?utf-8?B?TEtucXlGdkFiMlo5RWJRYjUyVU9rODAzWWJBTVhwZGNvR3U1Zld6ak1ORUY1?=
 =?utf-8?B?N1BoZjN1aGlHaHRsa0NqQ3J6MXFiRkU2eE80UWlid1hmWU5hVVhWb3VwT0Nu?=
 =?utf-8?B?b2FQcE45ZHYzRC9NMlU1V1JtbFVRZUdCUStzYklSYkpWYUtNQ094SnBCZE14?=
 =?utf-8?B?TTVFL2FmQTl0WkNkNkxuUytkNVBaY0VmbFNEYnFsUTRRYllsckJyMHlkSk5C?=
 =?utf-8?B?NUd3SE5NNHIwTjNxVWVLQ3lXcEpxVnUxWW1rcEU0d1BJUGFOU0Z0QnpFK2d0?=
 =?utf-8?B?WjB2SVBPL3htbDk1SFhpVTlWa29RdURPT1ZkMElGV1BzTGZOdVpXZ3habzVV?=
 =?utf-8?B?aXVvN2ZjS3I4dmVBS2lxczdCeUl1eEVxYTgvSjJXekdsQ0xMQ1dzZ0RIRTZV?=
 =?utf-8?B?U3NjbkNENXVMSWlLaDdRR0FJYnVQUjU4NXowUUpkQ0FZNlJsUnNJZ2hsZjdX?=
 =?utf-8?Q?RgWxzm3MQhT+g?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7a37e39-b847-45da-5875-08d936216c94
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 08:32:23.4716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jtr9K1cmzFoTCfvT1DcPwoqlmbQgJEuoT+DviL0bL251cO/B5k7chRT0hYINksvO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4206
Subject: Re: [Intel-gfx] [PATCH 02/15] dma-buf: Switch to inline kerneldoc
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
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>, linaro-mm-sig@lists.linaro.org,
 Nirmoy Das <nirmoy.das@amd.com>, Chen Li <chenli@uniontech.com>,
 Dave Airlie <airlied@redhat.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjIuMDYuMjEgdW0gMTg6NTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IEFsc28gcmV2aWV3
ICYgdXBkYXRlIGV2ZXJ5dGhpbmcgd2hpbGUgd2UncmUgYXQgaXQuCj4KPiBUaGlzIGlzIHByZXAg
d29yayB0byBzbWFzaCBhIHRvbiBvZiBzdHVmZiBpbnRvIHRoZSBrZXJuZWxkb2MgZm9yCj4gQHJl
c3YuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzog
IkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IEFsZXgg
RGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0
LmNvbT4KPiBDYzogTmlybW95IERhcyA8bmlybW95LmRhc0BhbWQuY29tPgo+IENjOiBEZWVwYWsg
UiBWYXJtYSA8bWgxMmd4MjgyNUBnbWFpbC5jb20+Cj4gQ2M6IENoZW4gTGkgPGNoZW5saUB1bmlv
bnRlY2guY29tPgo+IENjOiBLZXZpbiBXYW5nIDxrZXZpbjEud2FuZ0BhbWQuY29tPgo+IENjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCgpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgoKPiAtLS0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIHwgMTA3ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4MyBpbnNl
cnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gaW5kZXggOTJlZWMzOGEwM2Fh
Li42ZDE4YjllNDQ4YjkgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+IEBAIC0yODksMjggKzI4OSw2IEBAIHN0cnVj
dCBkbWFfYnVmX29wcyB7Cj4gICAKPiAgIC8qKgo+ICAgICogc3RydWN0IGRtYV9idWYgLSBzaGFy
ZWQgYnVmZmVyIG9iamVjdAo+IC0gKiBAc2l6ZTogc2l6ZSBvZiB0aGUgYnVmZmVyOyBpbnZhcmlh
bnQgb3ZlciB0aGUgbGlmZXRpbWUgb2YgdGhlIGJ1ZmZlci4KPiAtICogQGZpbGU6IGZpbGUgcG9p
bnRlciB1c2VkIGZvciBzaGFyaW5nIGJ1ZmZlcnMgYWNyb3NzLCBhbmQgZm9yIHJlZmNvdW50aW5n
Lgo+IC0gKiBAYXR0YWNobWVudHM6IGxpc3Qgb2YgZG1hX2J1Zl9hdHRhY2htZW50IHRoYXQgZGVu
b3RlcyBhbGwgZGV2aWNlcyBhdHRhY2hlZCwKPiAtICogICAgICAgICAgICAgICBwcm90ZWN0ZWQg
YnkgZG1hX3Jlc3YgbG9jay4KPiAtICogQG9wczogZG1hX2J1Zl9vcHMgYXNzb2NpYXRlZCB3aXRo
IHRoaXMgYnVmZmVyIG9iamVjdC4KPiAtICogQGxvY2s6IHVzZWQgaW50ZXJuYWxseSB0byBzZXJp
YWxpemUgbGlzdCBtYW5pcHVsYXRpb24sIGF0dGFjaC9kZXRhY2ggYW5kCj4gLSAqICAgICAgICB2
bWFwL3VubWFwCj4gLSAqIEB2bWFwcGluZ19jb3VudGVyOiB1c2VkIGludGVybmFsbHkgdG8gcmVm
Y250IHRoZSB2bWFwcwo+IC0gKiBAdm1hcF9wdHI6IHRoZSBjdXJyZW50IHZtYXAgcHRyIGlmIHZt
YXBwaW5nX2NvdW50ZXIgPiAwCj4gLSAqIEBleHBfbmFtZTogbmFtZSBvZiB0aGUgZXhwb3J0ZXI7
IHVzZWZ1bCBmb3IgZGVidWdnaW5nLgo+IC0gKiBAbmFtZTogdXNlcnNwYWNlLXByb3ZpZGVkIG5h
bWU7IHVzZWZ1bCBmb3IgYWNjb3VudGluZyBhbmQgZGVidWdnaW5nLAo+IC0gKiAgICAgICAgcHJv
dGVjdGVkIGJ5IEByZXN2Lgo+IC0gKiBAbmFtZV9sb2NrOiBzcGlubG9jayB0byBwcm90ZWN0IG5h
bWUgYWNjZXNzCj4gLSAqIEBvd25lcjogcG9pbnRlciB0byBleHBvcnRlciBtb2R1bGU7IHVzZWQg
Zm9yIHJlZmNvdW50aW5nIHdoZW4gZXhwb3J0ZXIgaXMgYQo+IC0gKiAgICAgICAgIGtlcm5lbCBt
b2R1bGUuCj4gLSAqIEBsaXN0X25vZGU6IG5vZGUgZm9yIGRtYV9idWYgYWNjb3VudGluZyBhbmQg
ZGVidWdnaW5nLgo+IC0gKiBAcHJpdjogZXhwb3J0ZXIgc3BlY2lmaWMgcHJpdmF0ZSBkYXRhIGZv
ciB0aGlzIGJ1ZmZlciBvYmplY3QuCj4gLSAqIEByZXN2OiByZXNlcnZhdGlvbiBvYmplY3QgbGlu
a2VkIHRvIHRoaXMgZG1hLWJ1Zgo+IC0gKiBAcG9sbDogZm9yIHVzZXJzcGFjZSBwb2xsIHN1cHBv
cnQKPiAtICogQGNiX2V4Y2w6IGZvciB1c2Vyc3BhY2UgcG9sbCBzdXBwb3J0Cj4gLSAqIEBjYl9z
aGFyZWQ6IGZvciB1c2Vyc3BhY2UgcG9sbCBzdXBwb3J0Cj4gLSAqIEBzeXNmc19lbnRyeTogZm9y
IGV4cG9zaW5nIGluZm9ybWF0aW9uIGFib3V0IHRoaXMgYnVmZmVyIGluIHN5c2ZzLgo+ICAgICog
VGhlIGF0dGFjaG1lbnRfdWlkIG1lbWJlciBvZiBAc3lzZnNfZW50cnkgaXMgcHJvdGVjdGVkIGJ5
IGRtYV9yZXN2IGxvY2sKPiAgICAqIGFuZCBpcyBpbmNyZW1lbnRlZCBvbiBlYWNoIGF0dGFjaC4K
PiAgICAqCj4gQEAgLTMyNCwyNCArMzAyLDEwMCBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewo+ICAg
ICogRGV2aWNlIERNQSBhY2Nlc3MgaXMgaGFuZGxlZCBieSB0aGUgc2VwYXJhdGUgJnN0cnVjdCBk
bWFfYnVmX2F0dGFjaG1lbnQuCj4gICAgKi8KPiAgIHN0cnVjdCBkbWFfYnVmIHsKPiArCS8qKgo+
ICsJICogQHNpemU6Cj4gKwkgKgo+ICsJICogU2l6ZSBvZiB0aGUgYnVmZmVyOyBpbnZhcmlhbnQg
b3ZlciB0aGUgbGlmZXRpbWUgb2YgdGhlIGJ1ZmZlci4KPiArCSAqLwo+ICAgCXNpemVfdCBzaXpl
Owo+ICsKPiArCS8qKgo+ICsJICogQGZpbGU6Cj4gKwkgKgo+ICsJICogRmlsZSBwb2ludGVyIHVz
ZWQgZm9yIHNoYXJpbmcgYnVmZmVycyBhY3Jvc3MsIGFuZCBmb3IgcmVmY291bnRpbmcuCj4gKwkg
KiBTZWUgZG1hX2J1Zl9nZXQoKSBhbmQgZG1hX2J1Zl9wdXQoKS4KPiArCSAqLwo+ICAgCXN0cnVj
dCBmaWxlICpmaWxlOwo+ICsKPiArCS8qKgo+ICsJICogQGF0dGFjaG1lbnRzOgo+ICsJICoKPiAr
CSAqIExpc3Qgb2YgZG1hX2J1Zl9hdHRhY2htZW50IHRoYXQgZGVub3RlcyBhbGwgZGV2aWNlcyBh
dHRhY2hlZCwKPiArCSAqIHByb3RlY3RlZCBieSAmZG1hX3Jlc3YgbG9jayBAcmVzdi4KPiArCSAq
Lwo+ICAgCXN0cnVjdCBsaXN0X2hlYWQgYXR0YWNobWVudHM7Cj4gKwo+ICsJLyoqIEBvcHM6IGRt
YV9idWZfb3BzIGFzc29jaWF0ZWQgd2l0aCB0aGlzIGJ1ZmZlciBvYmplY3QuICovCj4gICAJY29u
c3Qgc3RydWN0IGRtYV9idWZfb3BzICpvcHM7Cj4gKwo+ICsJLyoqCj4gKwkgKiBAbG9jazoKPiAr
CSAqCj4gKwkgKiBVc2VkIGludGVybmFsbHkgdG8gc2VyaWFsaXplIGxpc3QgbWFuaXB1bGF0aW9u
LCBhdHRhY2gvZGV0YWNoIGFuZAo+ICsJICogdm1hcC91bm1hcC4gTm90ZSB0aGF0IGluIG1hbnkg
Y2FzZXMgdGhpcyBpcyBzdXBlcnNlZWRlZCBieQo+ICsJICogZG1hX3Jlc3ZfbG9jaygpIG9uIEBy
ZXN2Lgo+ICsJICovCj4gICAJc3RydWN0IG11dGV4IGxvY2s7Cj4gKwo+ICsJLyoqCj4gKwkgKiBA
dm1hcHBpbmdfY291bnRlcjoKPiArCSAqCj4gKwkgKiBVc2VkIGludGVybmFsbHkgdG8gcmVmY250
IHRoZSB2bWFwcyByZXR1cm5lZCBieSBkbWFfYnVmX3ZtYXAoKS4KPiArCSAqIFByb3RlY3RlZCBi
eSBAbG9jay4KPiArCSAqLwo+ICAgCXVuc2lnbmVkIHZtYXBwaW5nX2NvdW50ZXI7Cj4gKwo+ICsJ
LyoqCj4gKwkgKiBAdm1hcF9wdHI6Cj4gKwkgKiBUaGUgY3VycmVudCB2bWFwIHB0ciBpZiBAdm1h
cHBpbmdfY291bnRlciA+IDAuIFByb3RlY3RlZCBieSBAbG9jay4KPiArCSAqLwo+ICAgCXN0cnVj
dCBkbWFfYnVmX21hcCB2bWFwX3B0cjsKPiArCj4gKwkvKioKPiArCSAqIEBleHBfbmFtZToKPiAr
CSAqCj4gKwkgKiBOYW1lIG9mIHRoZSBleHBvcnRlcjsgdXNlZnVsIGZvciBkZWJ1Z2dpbmcuIFNl
ZSB0aGUKPiArCSAqIERNQV9CVUZfU0VUX05BTUUgSU9DVEwuCj4gKwkgKi8KPiAgIAljb25zdCBj
aGFyICpleHBfbmFtZTsKPiArCj4gKwkvKioKPiArCSAqIEBuYW1lOgo+ICsJICoKPiArCSAqIFVz
ZXJzcGFjZS1wcm92aWRlZCBuYW1lOyB1c2VmdWwgZm9yIGFjY291bnRpbmcgYW5kIGRlYnVnZ2lu
ZywKPiArCSAqIHByb3RlY3RlZCBieSBkbWFfcmVzdl9sb2NrKCkgb24gQHJlc3YgYW5kIEBuYW1l
X2xvY2sgZm9yIHJlYWQgYWNjZXNzLgo+ICsJICovCj4gICAJY29uc3QgY2hhciAqbmFtZTsKPiAr
Cj4gKwkvKiogQG5hbWVfbG9jazogU3BpbmxvY2sgdG8gcHJvdGVjdCBuYW1lIGFjY2VzIGZvciBy
ZWFkIGFjY2Vzcy4gKi8KPiAgIAlzcGlubG9ja190IG5hbWVfbG9jazsKPiArCj4gKwkvKioKPiAr
CSAqIEBvd25lcjoKPiArCSAqCj4gKwkgKiBQb2ludGVyIHRvIGV4cG9ydGVyIG1vZHVsZTsgdXNl
ZCBmb3IgcmVmY291bnRpbmcgd2hlbiBleHBvcnRlciBpcyBhCj4gKwkgKiBrZXJuZWwgbW9kdWxl
Lgo+ICsJICovCj4gICAJc3RydWN0IG1vZHVsZSAqb3duZXI7Cj4gKwo+ICsJLyoqIEBsaXN0X25v
ZGU6IG5vZGUgZm9yIGRtYV9idWYgYWNjb3VudGluZyBhbmQgZGVidWdnaW5nLiAqLwo+ICAgCXN0
cnVjdCBsaXN0X2hlYWQgbGlzdF9ub2RlOwo+ICsKPiArCS8qKiBAcHJpdjogZXhwb3J0ZXIgc3Bl
Y2lmaWMgcHJpdmF0ZSBkYXRhIGZvciB0aGlzIGJ1ZmZlciBvYmplY3QuICovCj4gICAJdm9pZCAq
cHJpdjsKPiArCj4gKwkvKioKPiArCSAqIEByZXN2Ogo+ICsJICoKPiArCSAqIFJlc2VydmF0aW9u
IG9iamVjdCBsaW5rZWQgdG8gdGhpcyBkbWEtYnVmLgo+ICsJICovCj4gICAJc3RydWN0IGRtYV9y
ZXN2ICpyZXN2Owo+ICAgCj4gLQkvKiBwb2xsIHN1cHBvcnQgKi8KPiArCS8qKiBAcG9sbDogZm9y
IHVzZXJzcGFjZSBwb2xsIHN1cHBvcnQgKi8KPiAgIAl3YWl0X3F1ZXVlX2hlYWRfdCBwb2xsOwo+
ICAgCj4gKwkvKiogQGNiX2V4Y2w6IGZvciB1c2Vyc3BhY2UgcG9sbCBzdXBwb3J0ICovCj4gKwkv
KiogQGNiX3NoYXJlZDogZm9yIHVzZXJzcGFjZSBwb2xsIHN1cHBvcnQgKi8KPiAgIAlzdHJ1Y3Qg
ZG1hX2J1Zl9wb2xsX2NiX3Qgewo+ICAgCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NiIGNiOwo+ICAgCQl3
YWl0X3F1ZXVlX2hlYWRfdCAqcG9sbDsKPiBAQCAtMzQ5LDcgKzQwMywxMiBAQCBzdHJ1Y3QgZG1h
X2J1ZiB7Cj4gICAJCV9fcG9sbF90IGFjdGl2ZTsKPiAgIAl9IGNiX2V4Y2wsIGNiX3NoYXJlZDsK
PiAgICNpZmRlZiBDT05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTCj4gLQkvKiBmb3Igc3lzZnMgc3Rh
dHMgKi8KPiArCS8qKgo+ICsJICogQHN5c2ZzX2VudHJ5Ogo+ICsJICoKPiArCSAqIEZvciBleHBv
c2luZyBpbmZvcm1hdGlvbiBhYm91dCB0aGlzIGJ1ZmZlciBpbiBzeXNmcy4gU2VlIGFsc28KPiAr
CSAqIGBETUEtQlVGIHN0YXRpc3RpY3NgXyBmb3IgdGhlIHVhcGkgdGhpcyBlbmFibGVzLgo+ICsJ
ICovCj4gICAJc3RydWN0IGRtYV9idWZfc3lzZnNfZW50cnkgewo+ICAgCQlzdHJ1Y3Qga29iamVj
dCBrb2JqOwo+ICAgCQlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
