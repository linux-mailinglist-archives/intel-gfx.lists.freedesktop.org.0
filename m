Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A307840773
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 14:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9516510F71A;
	Mon, 29 Jan 2024 13:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2041.outbound.protection.outlook.com [40.107.101.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7123210F593;
 Wed, 24 Jan 2024 02:43:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6C1hk8XbA7zgUlLQXDaiGB8zNbm594CG9dkAGaEe30LNENQjPTiblyKXSfnJCQtyXuVbOqsDqooslPn2t13ULpqCYriaIbqz8ALsq5SZWDv0VyycxqMgGwjkejuqqmQSxEyFNaxrBLf6S3UBCqe0x/tVybKS2sIGrddRMsp3xM70HS5/t6Mgb11GVoYlBs9pdS/Fv/8eCbXrPJP/2tHJn6RE0jMJFUrrxTDp3dH285SFI+7AZGqtEhXZqwvG7NzEfMlf4OYE8hZff3BtlW77NTuarGO53R/2uXWFu/81h/FLBFKl7bgzbfP93vzfwgAE82IFyHm4F+m4HEpn+Dr5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pfN9/vgV7TpOm6WeAwpQM22PfTwpYGyFUGBN0F1+K7A=;
 b=XN4hTA8cRBpPJ3F3PREOjiyWYW25vW59xVRzogjja8FAa3/fAir5eCjG70c+TBM2cq3PhQ3e4skBeZUzzzn0mE1ym9zW1zvoQn5iOkx3XhzhFMPaJ+GTc9L1o1vORIYK0liD0nnRA32Tt4UwgcULXfQeV+Aetz6HNwfH5xq4a2WL8w8+5pNYX9t9nhuO2qImgIwNPPGIMagB+QhTKa+8xbmMLQVEmRfNgWMFem6zEaQ7qmTmdYVChwwZvLxC9Lv4zzzVVHhCb84hUmVOHPrmBDWX+goCTTj1XWY6xyJbI0Sitn+4LkorsfjM3AoQaZhWV1sfgJn99nia3YTpaCkC8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfN9/vgV7TpOm6WeAwpQM22PfTwpYGyFUGBN0F1+K7A=;
 b=cIK+L+HOZ2RlznCcZXWy/xqF2dpIjauwNqzz0biJ+rcXqe5eR0Xku6nvUwQ18qwZUfirKxERFAEZLV1JWxcG9+R87ybVn+X0XRR4s90tSkRsG/O8Twi2iNA3WnMabZENT7E35ei2U5ncZ048ftbBsTN53tc3lWoKT08A/EpO/jE=
Received: from MN2PR12MB4302.namprd12.prod.outlook.com (2603:10b6:208:1de::7)
 by CH2PR12MB4040.namprd12.prod.outlook.com (2603:10b6:610:ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 02:43:41 +0000
Received: from MN2PR12MB4302.namprd12.prod.outlook.com
 ([fe80::b1:8793:d033:817d]) by MN2PR12MB4302.namprd12.prod.outlook.com
 ([fe80::b1:8793:d033:817d%4]) with mapi id 15.20.7228.022; Wed, 24 Jan 2024
 02:43:41 +0000
From: "Zhou, Xianrong" <Xianrong.Zhou@amd.com>
To: "Koenig, Christian" <Christian.Koenig@amd.com>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] mm: Remove double faults once write a device pfn
Thread-Topic: [PATCH] mm: Remove double faults once write a device pfn
Thread-Index: AQHaTORksVH6LxCo+EKPcWB1F5QgmrDljgKAgAF81vCAAD5uAIAA+BeQ
Date: Wed, 24 Jan 2024 02:43:40 +0000
Message-ID: <MN2PR12MB4302BBF634B2E3872904872BF17B2@MN2PR12MB4302.namprd12.prod.outlook.com>
References: <20240122033210.713530-1-Xianrong.Zhou@amd.com>
 <5ed7d46b-ae26-43f2-81e0-91e3cfc0218a@amd.com>
 <MN2PR12MB4302C529B9F231F85539628EF1742@MN2PR12MB4302.namprd12.prod.outlook.com>
 <76c3658d-2256-49c6-8e4c-49555c0a350a@amd.com>
In-Reply-To: <76c3658d-2256-49c6-8e4c-49555c0a350a@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=0f91d601-e5ad-4120-a167-9f3505ce0489;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=0;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2024-01-24T02:32:28Z;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB4302:EE_|CH2PR12MB4040:EE_
x-ms-office365-filtering-correlation-id: 3d8423d0-15f0-4ab3-a10f-08dc1c864611
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0DkR/AzV9oZ0X3+qt1drGEuX8ZG3lz/a5NyIV+2S3h7uNhmzXfWDzFMUBgGn7KJiK31/iNwJ1ASSK6Us++tL92sxVlHX36u7RCUqX80mfQz2j7spjUuvADABaFFbJ7ocRK741HlQR2JI8IQxgGqtGa68sMo8DMv/8nu2XmSxiShzRy2spChAucfqaKc4mDnIEwyV/87yo15LtmwpYA+YTRwvksfRdw1xAr1EiLY2UKmqZYKSnsCiJpmZycNstuTQvmx7SfR4DQWD0y/wKKvzvreAqRx58yEIVbX+n/g7yBZHD0fKlSMDuJ6wlle2hlXeZDbj0ln3ttFdSejMQaBpaA+9fBxunFTBm2PEGLPvbPGJjrHN09mVEtvnSu+k1mLgSbw7JfZKKIKIdW9vkfvzAiqVu0cjKOnBnQ7uTyQwYurOTvikpUsQYMRE+rBTZHAxaYG2jlyGQ5TFiaYEvZW+oMevD9FgZJW0fRSUXXsupmz5+25+QxCgKp1FKCNbQV2qjq7C0zE+pBvFocXjzPxTMY2UFaG/syHgMTm7/uFDEk5qDKB2YG7ZspA8XretyY+4U8CHhkMICuiLdQpW3yt0FBmPgOhAIDm6+6GtNvDxHDV2K6r/H8wkM/0OXYOHRM9w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB4302.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(136003)(396003)(366004)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(26005)(7416002)(122000001)(38070700009)(6506007)(7696005)(71200400001)(33656002)(41300700001)(9686003)(110136005)(54906003)(66556008)(76116006)(66446008)(64756008)(316002)(66946007)(5660300002)(30864003)(7406005)(8936002)(4326008)(8676002)(52536014)(478600001)(38100700002)(2906002)(86362001)(66476007)(83380400001)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWRUeDdVdlpUS3JySzJRZDltMGRHUEw5TnhSeWF1TFF3N3hoUXIrdFRXbnIz?=
 =?utf-8?B?MEhaVzZJanI2c2IwUFNLQUdCN3l6OFRXYnh1T0U5eEN0NWoxSitXc1llc2Jt?=
 =?utf-8?B?cUpibXVvUFVTS1hBZmlBb0NsN2dvRlJ3VUFkczMyTlZTOCtwRmZZbUJXSkJO?=
 =?utf-8?B?RGZMcktxd29DZzkydnB5TzRoVXlwTm5YTVFxVTZHWGoxNGxFMDNDSkJCdTBk?=
 =?utf-8?B?QS9UdkhlQklYa1MyYzVxeFZ1Q05pMGt1cjRzWi8rREF2YnRYKy9zbnV3Y1l3?=
 =?utf-8?B?bjRIYWVLK0pUOUExV05rWjdkc0Z0WlZtM0p6ZVZwWGRzMU1NMjExQXppeXoz?=
 =?utf-8?B?YUZQUXB3ZDE3bi9qZ0p1M0lCQ1FabXFsblJtRmxUOUwwNTFDSWdvTUdvcmtu?=
 =?utf-8?B?Ykk1dXZacUlzRDVXTytuSnFkTEU2UzNBZldLbzY1dG1KcHk0NHJwZjI3NW42?=
 =?utf-8?B?YU51Q3BYdmRIdTJCT2hjZDFIOW00MlNZSERjWnY2eUJkQjJmdFk0ejlqcDI2?=
 =?utf-8?B?cGxPN2QwOE5YZ20rWmx0d3ZHcnI5ODNqUjZCQUFTTTdEUjllcUFlM3pPUXJH?=
 =?utf-8?B?UktERDBYUjY4MUFPMlI1NnJJdVYrL1RsUVhYdnJVSkFUUTBWWWJoYmZCdGNL?=
 =?utf-8?B?S2FHNE4zY09QeW5TakMzUkhNRXJ4MTIzT2J3dnU5MnpZMXozWGNka2trN294?=
 =?utf-8?B?S3RjMlBTRnJYWjNxRFZzRXZZeTB3Vm9nVkZ1VDVRMEpMNTZXTnYzWlM3OXdh?=
 =?utf-8?B?WXRvajB5Y2taU0FEQnhqWllJMHY1VnJqWWF2NU9ueXZQWVprQWZseEJvUUw1?=
 =?utf-8?B?dU5HSEVCRE4vV2lueGYveUtEK1hJN1dqZ0d5RWVhWW9xcmIwcjZ3dmQ4Y0Zv?=
 =?utf-8?B?eHlYMlZKNldlVjF1OTlFUmtOL1NxNkQ5REc0N0FOTjhXRGE1YmsyM3lRTHpV?=
 =?utf-8?B?TFBTejkrNEFEQTJTQmlUS3UvOUZidGpYa3QyVmhHQ2lUc3ZOZHh2MWFEbE9J?=
 =?utf-8?B?UzluOGJ0aVN1VEJteXNsTG96QlVYTzlidkNmd29IUitUaGtwQWYxeHhHQmpo?=
 =?utf-8?B?a2FtbHQzQng4VDd2TU9GdEM2MjNic1RUVFhoeXl6V20vZFp6MHp4M3ZVVDhw?=
 =?utf-8?B?bHo2aW5YWmdQWEZCeUhwYVVSYTZqc0JvaXJxbVZKWHZuSzA0RFNNaEFyNW15?=
 =?utf-8?B?c0s2bngwZkVWdGtWN0xjcU9kdzQ2WWVIZXY1QTc4V3h1NWtqMW50TERlZWpD?=
 =?utf-8?B?MHgyMU9nTTM2dVpva2YzTGZDK09qV1F3MWtEOG0xUUZnYVUxN252d01FcllY?=
 =?utf-8?B?cktEMXJ3TjhTWE1zK3FRRG0yekNBL3VJWGVNYld3TWdnK2VqcVBsK2wvTTk0?=
 =?utf-8?B?YnR0QTFYemFpVEpoc1M3dVBUOG92S09aYmxmbHRaUWVQSW0ycVlibFpEclFL?=
 =?utf-8?B?bVlNa0pmRmhTODVIWnZlNXJEeSt4NnQrNDlmM3MxRmtNNVZzSEE3WEFmRWlQ?=
 =?utf-8?B?QzlJczNsT1lRSVlYcWs1M3lRaTQ4cWJ6YWdsWWtubHE5Mm1mSjB5WVpiN2tw?=
 =?utf-8?B?WDZtM2pmU3VHakVRRGkvM1RVcXBqNDZXTHpCSlN3MkNncEptTE9lYVhlc1V5?=
 =?utf-8?B?c3pkS3ZsZEoxZkZISzlEcWt5d2VyTEZJSzRyTzVNRVEwb2NoZW5MaE41Y3NF?=
 =?utf-8?B?OUdZeE85dDFpN1N4bmRXYzFxOVhHWXVTZ0p4SWZFY1RzK09ycXRYTHN1Sm9v?=
 =?utf-8?B?NFo5UGc5NWFjdVVwTXlJdThhSXh4WmRaaE05NGtQNUQzRHBuMjVLaDJUNDQr?=
 =?utf-8?B?RDhlMzR2U1M3cjVFY282MGF5YzlhekFtZG5pSklSdU9iZUsxSWw2OHI0ay9z?=
 =?utf-8?B?RlpsLzVqYmpZdFdES3RENlhGejlXeWZRNXVnUGp6bEcrSDlaMy8zODl1SU56?=
 =?utf-8?B?SXpOelZ5K2QwcWs2MGhGS1hsZkpPTFZNNXg0SExQN2JIclFCSEEwZTQ2UzVK?=
 =?utf-8?B?UzlQMXcydElRUmt6UkpUMXIxSE5Eb2xiSWZnWWpQOHlmb2NuM2NMeEdTTjNj?=
 =?utf-8?B?T3hweUViZW1mUC9nMEU4ekFaRFFmeFFEMjhBWVdXTDlaeExZZjgwbVp2UHhx?=
 =?utf-8?Q?/Bzg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4302.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d8423d0-15f0-4ab3-a10f-08dc1c864611
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2024 02:43:40.6212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1JkYbhtOzs81RRJ2tS1C2RHvTeB4/onGusJw/laej03E6YplUoFSHfhFTwFCyZd778iTc3n0qnKSQoTIGYY+8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4040
X-Mailman-Approved-At: Mon, 29 Jan 2024 13:53:33 +0000
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
Cc: "lee@kernel.org" <lee@kernel.org>,
 "kherbst@redhat.com" <kherbst@redhat.com>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Huang,
 Ray" <Ray.Huang@amd.com>, "hpa@zytor.com" <hpa@zytor.com>,
 "zack.rusin@broadcom.com" <zack.rusin@broadcom.com>,
 "airlied@gmail.com" <airlied@gmail.com>, "Zhang,
 GuoQing \(Sam\)" <GuoQing.Zhang@amd.com>, "Li, Huazeng" <Huazeng.Li@amd.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "Xu,
 Colin" <Colin.Xu@amd.com>, "mingo@redhat.com" <mingo@redhat.com>,
 "dakr@redhat.com" <dakr@redhat.com>,
 "matthew.auld@intel.com" <matthew.auld@intel.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "Yang, Philip" <Philip.Yang@amd.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "bp@alien8.de" <bp@alien8.de>, "mripard@kernel.org" <mripard@kernel.org>,
 "luto@kernel.org" <luto@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "Zhu, James" <James.Zhu@amd.com>,
 "surenb@google.com" <surenb@google.com>, "Liu, Monk" <Monk.Liu@amd.com>,
 "Kuehling, Felix" <Felix.Kuehling@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Deucher, 
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "SHANMUGAM,
 SRINIVASAN" <SRINIVASAN.SHANMUGAM@amd.com>,
 "nirmoy.das@intel.com" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEdlbmVyYWxdDQoNCj4gPj4+IFRoZSB2bWZfaW5zZXJ0
X3Bmbl9wcm90IGNvdWxkIGNhdXNlIHVubmVjZXNzYXJ5IGRvdWJsZSBmYXVsdHMgb24gYQ0KPiA+
Pj4gZGV2aWNlIHBmbi4gQmVjYXVzZSBjdXJyZW50bHkgdGhlIHZtZl9pbnNlcnRfcGZuX3Byb3Qg
ZG9lcyBub3QgbWFrZQ0KPiA+Pj4gdGhlIHBmbiB3cml0YWJsZSBzbyB0aGUgcHRlIGVudHJ5IGlz
IG5vcm1hbGx5IHJlYWQtb25seSBvciBkaXJ0eQ0KPiA+Pj4gY2F0Y2hpbmcuDQo+ID4+IFdoYXQ/
IEhvdyBkbyB5b3UgZ290IHRvIHRoaXMgY29uY2x1c2lvbj8NCj4gPiBTb3JyeS4gSSBkaWQgbm90
IG1lbnRpb24gdGhhdCB0aGlzIHByb2JsZW0gb25seSBleGlzdHMgb24gYXJtNjQgcGxhdGZvcm0u
DQo+DQo+IE9rLCB0aGF0IG1ha2VzIGF0IGxlYXN0IGEgbGl0dGxlIGJpdCBtb3JlIHNlbnNlLg0K
Pg0KPiA+IEJlY2F1c2Ugb24gYXJtNjQgcGxhdGZvcm0gdGhlIFBURV9SRE9OTFkgaXMgYXV0b21h
dGljYWxseSBhdHRhY2hlZCB0bw0KPiA+IHRoZSB1c2Vyc3BhY2UgcHRlIGVudHJpZXMgZXZlbiB0
aHJvdWdoIFZNX1dSSVRFICsgVk1fU0hBUkUuDQo+ID4gVGhlICBQVEVfUkRPTkxZIG5lZWRzIHRv
IGJlIGNsZWFyZWQgaW4gdm1mX2luc2VydF9wZm5fcHJvdC4gSG93ZXZlcg0KPiA+IHZtZl9pbnNl
cnRfcGZuX3Byb3QgZG8gbm90IG1ha2UgdGhlIHB0ZSB3cml0YWJsZSBwYXNzaW5nIGZhbHNlDQo+
ID4gQG1rd3JpdGUgdG8gaW5zZXJ0X3Bmbi4NCj4NCj4gUXVlc3Rpb24gaXMgd2h5IGlzIGFybTY0
IGRvaW5nIHRoaXM/IEFzIGZhciBhcyBJIGNhbiBzZWUgdGhleSBtdXN0IGhhdmUgc29tZQ0KPiBo
YXJkd2FyZSByZWFzb24gZm9yIHRoYXQuDQo+DQo+IFRoZSBta3dyaXRlIHBhcmFtZXRlciB0byBp
bnNlcnRfcGZuKCkgd2FzIGFkZGVkIGJ5IGNvbW1pdA0KPiBiMjc3MGRhNjQyNTQwIHRvIG1ha2Ug
aW5zZXJ0X3BmbigpIGxvb2sgbW9yZSBsaWtlIGluc2VydF9wZm5fcG1kKCkgc28gdGhhdA0KPiB0
aGUgREFYIGNvZGUgY2FuIGluc2VydCBQVEVzIHdoaWNoIGFyZSB3cml0YWJsZSBhbmQgZGlydHkg
YXQgdGhlIHNhbWUgdGltZS4NCj4NCg0KVGhpcyBpcyBvbmUgc2NlbmFyaW8gdG8gZG8gc28uIElu
IGZhY3Qgb24gYXJtNjQgdGhlcmUgYXJlIG1hbnkgc2NlbmFyaW9zIGNvdWxkDQpiZSB0byBkbyBz
by4gU28gd2UgY2FuIGxldCB2bWZfaW5zZXJ0X3Bmbl9wcm90IHN1cHBvcnRpbmcgQG1rd3JpdGUg
Zm9yIGRyaXZlcnMNCmF0IGNvcmUgbGF5ZXIgYW5kIGxldCBkcml2ZXJzIHRvIGRlY2lkZSB3aGV0
aGVyIG9yIG5vdCB0byBtYWtlIHdyaXRhYmxlIGFuZCBkaXJ0eQ0KYXQgb25lIHRpbWUuIFRoZSBw
YXRjaCBkaWQgdGhpcy4gT3RoZXJ3aXNlIGRvdWJsZSBmYXVsdHMgb24gYXJtNjQgd2hlbiBjYWxs
DQp2bWZfaW5zZXJ0X3Bmbl9wcm90Lg0KDQo+IFRoaXMgaXMgYSBjb21wbGV0ZWx5IGRpZmZlcmVu
dCB1c2UgY2FzZSB0byB3aGF0IHlvdSB0cnkgdG8gdXNlIGl0IGhlcmUgZm9yIGFuZA0KPiB0aGF0
IGxvb2tzIGV4dHJlbWVseSBmaXNoeSB0byBtZS4NCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFu
Lg0KPg0KPiA+DQo+ID4+PiBUaGUgZmlyc3QgZmF1bHQgb25seSBzZXRzIHVwIHRoZSBwdGUgZW50
cnkgd2hpY2ggYWN0dWFsbHkgaXMgZGlydHkNCj4gPj4+IGNhdGNoaW5nLiBBbmQgdGhlIHNlY29u
ZCBpbW1lZGlhdGUgZmF1bHQgdG8gdGhlIHBmbiBkdWUgdG8gZmlyc3QNCj4gPj4+IGRpcnR5IGNh
dGNoaW5nIHdoZW4gdGhlIGNwdSByZS1leGVjdXRlIHRoZSBzdG9yZSBpbnN0cnVjdGlvbi4NCj4g
Pj4gSXQgY291bGQgYmUgdGhhdCB0aGlzIGlzIGRvbmUgdG8gd29yayBhcm91bmQgc29tZSBodyBi
ZWhhdmlvciwgYnV0DQo+ID4+IG5vdCBiZWNhdXNlIG9mIGRpcnR5IGNhdGNoaW5nLg0KPiA+Pg0K
PiA+Pj4gTm9ybWFsbHkgaWYgdGhlIGRyaXZlcnMgY2FsbCB2bWZfaW5zZXJ0X3Bmbl9wcm90IGFu
ZCBhbHNvIHN1cHBseQ0KPiA+Pj4gJ3Bmbl9ta3dyaXRlJyBjYWxsYmFjayB3aXRoaW4gdm1fb3Bl
cmF0aW9uc19zdHJ1Y3Qgd2hpY2ggcmVxdWlyZXMNCj4gPj4+IHRoZSBwdGUgdG8gYmUgZGlydHkg
Y2F0Y2hpbmcgdGhlbiB0aGUgdm1mX2luc2VydF9wZm5fcHJvdCBhbmQgdGhlDQo+ID4+PiBkb3Vi
bGUgZmF1bHQgYXJlIHJlYXNvbmFibGUuIEl0IGlzIG5vdCBhIHByb2JsZW0uDQo+ID4+IFdlbGws
IGFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBiZWhhdmlvciBhYnNvbHV0ZWx5IGRvZXNuJ3QgbWFr
ZSBzZW5zZS4NCj4gPj4NCj4gPj4gV2hlbiBwZm5fbWt3cml0ZSBpcyByZXF1ZXN0ZWQgdGhlbiB0
aGUgZHJpdmVyIHNob3VsZCB1c2UgUEFHRV9DT1BZLA0KPiA+PiB3aGljaCBpcyBleGFjdGx5IHdo
YXQgVk1XR0ZYICh0aGUgb25seSBkcml2ZXIgdXNpbmcgZGlydHkgdHJhY2tpbmcpIGlzDQo+IGRv
aW5nLg0KPiA+Pg0KPiA+PiBFdmVyeWJvZHkgZWxzZSB1c2VzIFBBR0VfU0hBUkVEIHdoaWNoIHNo
b3VsZCBtYWtlIHRoZSBwdGUgd3JpdGVhYmxlDQo+ID4+IGltbWVkaWF0ZWx5Lg0KPiA+Pg0KPiA+
PiBSZWdhcmRzLA0KPiA+PiBDaHJpc3RpYW4uDQo+ID4+DQo+ID4+PiBIb3dldmVyIHRoZSBtb3N0
IG9mIGRyaXZlcnMgY2FsbGluZyB2bWZfaW5zZXJ0X3Bmbl9wcm90IGRvIG5vdA0KPiA+Pj4gc3Vw
cGx5IHRoZSAncGZuX21rd3JpdGUnIGNhbGxiYWNrIHNvIHRoYXQgdGhlIHNlY29uZCBmYXVsdCBp
cyB1bm5lY2Vzc2FyeS4NCj4gPj4+DQo+ID4+PiBTbyBqdXN0IGxpa2Ugdm1mX2luc2VydF9taXhl
ZCBhbmQgdm1mX2luc2VydF9taXhlZF9ta3dyaXRlIHBhaXIsIHdlDQo+ID4+PiBzaG91bGQgYWxz
byBzdXBwbHkgdm1mX2luc2VydF9wZm5fbWt3cml0ZSBmb3IgZHJpdmVycyBhcyB3ZWxsLg0KPiA+
Pj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5yb25nIFpob3UgPFhpYW5yb25nLlpob3VAYW1k
LmNvbT4NCj4gPj4+IC0tLQ0KPiA+Pj4gICAgYXJjaC94ODYvZW50cnkvdmRzby92bWEuYyAgICAg
ICAgICAgICAgICAgIHwgIDMgKystDQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZ2VtLmMgICAgfCAgMiArLQ0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3R0bS5jICAgIHwgIDIgKy0NCj4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfZ2VtLmMgICAgICB8ICAyICstDQo+ID4+PiAgICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl9nZW0uYyAgICAgICAgfCAgMiArLQ0KPiA+Pj4gICAgZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm9fdm0uYyAgICAgICAgICAgIHwgIDggKysrKystLS0NCj4gPj4+ICAg
IGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3BhZ2VfZGlydHkuYyB8ICA4ICsrKysrLS0t
DQo+ID4+PiAgICBpbmNsdWRlL2RybS90dG0vdHRtX2JvLmggICAgICAgICAgICAgICAgICAgfCAg
MyArKy0NCj4gPj4+ICAgIGluY2x1ZGUvbGludXgvbW0uaCAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAyICstDQo+ID4+PiAgICBtbS9tZW1vcnkuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAxNCArKysrKysrKysrKy0tLQ0KPiA+Pj4gICAgMTAgZmlsZXMgY2hhbmdlZCwgMzAg
aW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+ID4+Pg0KPiA+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gveDg2L2VudHJ5L3Zkc28vdm1hLmMgYi9hcmNoL3g4Ni9lbnRyeS92ZHNvL3ZtYS5jDQo+
ID4+PiBpbmRleCA3NjQ1NzMwZGMyMjguLmRkMjQzMWMyOTc1ZiAxMDA2NDQNCj4gPj4+IC0tLSBh
L2FyY2gveDg2L2VudHJ5L3Zkc28vdm1hLmMNCj4gPj4+ICsrKyBiL2FyY2gveDg2L2VudHJ5L3Zk
c28vdm1hLmMNCj4gPj4+IEBAIC0xODUsNyArMTg1LDggQEAgc3RhdGljIHZtX2ZhdWx0X3QgdnZh
cl9mYXVsdChjb25zdCBzdHJ1Y3QNCj4gPj4gdm1fc3BlY2lhbF9tYXBwaW5nICpzbSwNCj4gPj4+
ICAgICAgICAgICAgICBpZiAocHZ0aSAmJiB2Y2xvY2tfd2FzX3VzZWQoVkRTT19DTE9DS01PREVf
UFZDTE9DSykpDQo+ID4+IHsNCj4gPj4+ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiB2bWZf
aW5zZXJ0X3Bmbl9wcm90KHZtYSwgdm1mLT5hZGRyZXNzLA0KPiA+Pj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF9fcGEocHZ0aSkgPj4gUEFHRV9TSElGVCwNCj4gPj4+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBncHJvdF9kZWNyeXB0ZWQodm1hLQ0K
PiA+Pj4gdm1fcGFnZV9wcm90KSk7DQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBwZ3Byb3RfZGVjcnlwdGVkKHZtYS0NCj4gPj4+IHZtX3BhZ2VfcHJvdCksDQo+ID4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0cnVlKTsNCj4gPj4+ICAgICAg
ICAgICAgICB9DQo+ID4+PiAgICAgIH0gZWxzZSBpZiAoc3ltX29mZnNldCA9PSBpbWFnZS0+c3lt
X2h2Y2xvY2tfcGFnZSkgew0KPiA+Pj4gICAgICAgICAgICAgIHBmbiA9IGh2X2dldF90c2NfcGZu
KCk7IGRpZmYgLS1naXQNCj4gPj4+IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2dlbS5jDQo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYw0K
PiA+Pj4gaW5kZXggNDlhNWYxYzczYjNlLi5hZGNiMjBkOWU2MjQgMTAwNjQ0DQo+ID4+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMNCj4gPj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYw0KPiA+Pj4gQEAgLTY0LDcgKzY0
LDcgQEAgc3RhdGljIHZtX2ZhdWx0X3QgYW1kZ3B1X2dlbV9mYXVsdChzdHJ1Y3QNCj4gdm1fZmF1
bHQNCj4gPj4gKnZtZikNCj4gPj4+ICAgICAgICAgICAgICB9DQo+ID4+Pg0KPiA+Pj4gICAgICAg
ICAgICAgIHJldCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHZtZi0+dm1hLQ0KPiA+
Pj4gdm1fcGFnZV9wcm90LA0KPiA+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFRUTV9CT19WTV9OVU1fUFJFRkFVTFQpOw0KPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRUTV9CT19WTV9OVU1fUFJFRkFVTFQsDQo+ID4+
IHRydWUpOw0KPiA+Pj4gICAgICAgICAgICAgIGRybV9kZXZfZXhpdChpZHgpOw0KPiA+Pj4gICAg
ICB9IGVsc2Ugew0KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV90dG0uYw0KPiA+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtLmMNCj4gPj4+IGluZGV4IDkyMjdmODE0NmE1OC4uYzZmMTNhZTZjMzA4IDEwMDY0NA0KPiA+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jDQo+ID4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMNCj4gPj4+IEBAIC0x
MTE0LDcgKzExMTQsNyBAQCBzdGF0aWMgdm1fZmF1bHRfdCB2bV9mYXVsdF90dG0oc3RydWN0IHZt
X2ZhdWx0DQo+ID4+PiAqdm1mKQ0KPiA+Pj4NCj4gPj4+ICAgICAgaWYgKGRybV9kZXZfZW50ZXIo
ZGV2LCAmaWR4KSkgew0KPiA+Pj4gICAgICAgICAgICAgIHJldCA9IHR0bV9ib192bV9mYXVsdF9y
ZXNlcnZlZCh2bWYsIHZtZi0+dm1hLQ0KPiA+Pj4gdm1fcGFnZV9wcm90LA0KPiA+Pj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRUTV9CT19WTV9OVU1fUFJFRkFV
TFQpOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRU
TV9CT19WTV9OVU1fUFJFRkFVTFQsDQo+ID4+IHRydWUpOw0KPiA+Pj4gICAgICAgICAgICAgIGRy
bV9kZXZfZXhpdChpZHgpOw0KPiA+Pj4gICAgICB9IGVsc2Ugew0KPiA+Pj4gICAgICAgICAgICAg
IHJldCA9IHR0bV9ib192bV9kdW1teV9wYWdlKHZtZiwgdm1mLT52bWEtDQo+ID4+PiB2bV9wYWdl
X3Byb3QpOyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0u
Yw0KPiA+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jDQo+ID4+PiBp
bmRleCA0OWMyYmNiZWYxMjkuLjdlMTQ1Mzc2MmVjOSAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmMNCj4gPj4+IEBAIC01Niw3ICs1Niw3IEBAIHN0YXRp
YyB2bV9mYXVsdF90IG5vdXZlYXVfdHRtX2ZhdWx0KHN0cnVjdA0KPiA+Pj4gdm1fZmF1bHQNCj4g
Pj4+ICp2bWYpDQo+ID4+Pg0KPiA+Pj4gICAgICBub3V2ZWF1X2JvX2RlbF9pb19yZXNlcnZlX2xy
dShibyk7DQo+ID4+PiAgICAgIHByb3QgPSB2bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3Mp
Ow0KPiA+Pj4gLSAgIHJldCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsDQo+
ID4+IFRUTV9CT19WTV9OVU1fUFJFRkFVTFQpOw0KPiA+Pj4gKyAgIHJldCA9IHR0bV9ib192bV9m
YXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsDQo+ID4+IFRUTV9CT19WTV9OVU1fUFJFRkFVTFQsDQo+
ID4+PiArdHJ1ZSk7DQo+ID4+PiAgICAgIG5vdXZlYXVfYm9fYWRkX2lvX3Jlc2VydmVfbHJ1KGJv
KTsNCj4gPj4+ICAgICAgaWYgKHJldCA9PSBWTV9GQVVMVF9SRVRSWSAmJiAhKHZtZi0+ZmxhZ3Mg
Jg0KPiA+PiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJVCkpDQo+ID4+PiAgICAgICAgICAgICAgcmV0
dXJuIHJldDsNCj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVv
bl9nZW0uYw0KPiA+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9nZW0uYw0KPiA+
Pj4gaW5kZXggM2ZlYzNhY2RhZjI4Li5iMjFjZjAwYWUxNjIgMTAwNjQ0DQo+ID4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9nZW0uYw0KPiA+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fZ2VtLmMNCj4gPj4+IEBAIC02Miw3ICs2Miw3IEBAIHN0YXRp
YyB2bV9mYXVsdF90IHJhZGVvbl9nZW1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0DQo+ID4+ICp2bWYp
DQo+ID4+PiAgICAgICAgICAgICAgZ290byB1bmxvY2tfcmVzdjsNCj4gPj4+DQo+ID4+PiAgICAg
IHJldCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHZtZi0+dm1hLT52bV9wYWdlX3By
b3QsDQo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRUTV9CT19WTV9O
VU1fUFJFRkFVTFQpOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBU
VE1fQk9fVk1fTlVNX1BSRUZBVUxULCB0cnVlKTsNCj4gPj4+ICAgICAgaWYgKHJldCA9PSBWTV9G
QVVMVF9SRVRSWSAmJiAhKHZtZi0+ZmxhZ3MgJg0KPiA+PiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJ
VCkpDQo+ID4+PiAgICAgICAgICAgICAgZ290byB1bmxvY2tfbWNsazsNCj4gPj4+DQo+ID4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYw0KPiA+Pj4gYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jIGluZGV4DQo+ID4+IDQyMTJiOGM5MWRkNC4uN2Qx
NGE3ZDI2N2FhDQo+ID4+PiAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0v
dHRtX2JvX3ZtLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMN
Cj4gPj4+IEBAIC0xNjcsNiArMTY3LDcgQEAgRVhQT1JUX1NZTUJPTCh0dG1fYm9fdm1fcmVzZXJ2
ZSk7DQo+ID4+PiAgICAgKiBAbnVtX3ByZWZhdWx0OiBNYXhpbXVtIG51bWJlciBvZiBwcmVmYXVs
dCBwYWdlcy4gVGhlIGNhbGxlcg0KPiA+Pj4gbWF5DQo+ID4+IHdhbnQgdG8NCj4gPj4+ICAgICAq
IHNwZWNpZnkgdGhpcyBiYXNlZCBvbiBtYWR2aWNlIHNldHRpbmdzIGFuZCB0aGUgc2l6ZSBvZiB0
aGUgR1BVIG9iamVjdA0KPiA+Pj4gICAgICogYmFja2VkIGJ5IHRoZSBtZW1vcnkuDQo+ID4+PiAr
ICogQG1rd3JpdGU6IG1ha2UgdGhlIHBmbiBvciBwYWdlIHdyaXRhYmxlDQo+ID4+PiAgICAgKg0K
PiA+Pj4gICAgICogVGhpcyBmdW5jdGlvbiBpbnNlcnRzIG9uZSBvciBtb3JlIHBhZ2UgdGFibGUg
ZW50cmllcyBwb2ludGluZyB0byB0aGUNCj4gPj4+ICAgICAqIG1lbW9yeSBiYWNraW5nIHRoZSBi
dWZmZXIgb2JqZWN0LCBhbmQgdGhlbiByZXR1cm5zIGEgcmV0dXJuDQo+ID4+PiBjb2RlIEBAIC0x
ODAsNyArMTgxLDggQEAgRVhQT1JUX1NZTUJPTCh0dG1fYm9fdm1fcmVzZXJ2ZSk7DQo+ID4+PiAg
ICAgKi8NCj4gPj4+ICAgIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVj
dCB2bV9mYXVsdCAqdm1mLA0KPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGdwcm90X3QgcHJvdCwNCj4gPj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdv
ZmZfdCBudW1fcHJlZmF1bHQpDQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBnb2ZmX3QgbnVtX3ByZWZhdWx0LA0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBib29sIG1rd3JpdGUpDQo+ID4+PiAgICB7DQo+ID4+PiAgICAgIHN0cnVjdCB2bV9hcmVh
X3N0cnVjdCAqdm1hID0gdm1mLT52bWE7DQo+ID4+PiAgICAgIHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8gPSB2bWEtPnZtX3ByaXZhdGVfZGF0YTsgQEAgLTI2Myw3DQo+ID4+PiArMjY1LDcg
QEAgdm1fZmF1bHRfdCB0dG1fYm9fdm1fZmF1bHRfcmVzZXJ2ZWQoc3RydWN0IHZtX2ZhdWx0ICp2
bWYsDQo+ID4+PiAgICAgICAgICAgICAgICogYXQgYXJiaXRyYXJ5IHRpbWVzIHdoaWxlIHRoZSBk
YXRhIGlzIG1tYXAnZWQuDQo+ID4+PiAgICAgICAgICAgICAgICogU2VlIHZtZl9pbnNlcnRfcGZu
X3Byb3QoKSBmb3IgYSBkaXNjdXNzaW9uLg0KPiA+Pj4gICAgICAgICAgICAgICAqLw0KPiA+Pj4g
LSAgICAgICAgICAgcmV0ID0gdm1mX2luc2VydF9wZm5fcHJvdCh2bWEsIGFkZHJlc3MsIHBmbiwg
cHJvdCk7DQo+ID4+PiArICAgICAgICAgICByZXQgPSB2bWZfaW5zZXJ0X3Bmbl9wcm90KHZtYSwg
YWRkcmVzcywgcGZuLCBwcm90LA0KPiA+Pj4gKyBta3dyaXRlKTsNCj4gPj4+DQo+ID4+PiAgICAg
ICAgICAgICAgLyogTmV2ZXIgZXJyb3Igb24gcHJlZmF1bHRlZCBQVEVzICovDQo+ID4+PiAgICAg
ICAgICAgICAgaWYgKHVubGlrZWx5KChyZXQgJiBWTV9GQVVMVF9FUlJPUikpKSB7IEBAIC0zMTIs
Nw0KPiA+Pj4gKzMxNCw3DQo+ID4+IEBADQo+ID4+PiB2bV9mYXVsdF90IHR0bV9ib192bV9kdW1t
eV9wYWdlKHN0cnVjdCB2bV9mYXVsdCAqdm1mLCBwZ3Byb3RfdA0KPiBwcm90KQ0KPiA+Pj4gICAg
ICAvKiBQcmVmYXVsdCB0aGUgZW50aXJlIFZNQSByYW5nZSByaWdodCBhd2F5IHRvIGF2b2lkIGZ1
cnRoZXIgZmF1bHRzICovDQo+ID4+PiAgICAgIGZvciAoYWRkcmVzcyA9IHZtYS0+dm1fc3RhcnQ7
IGFkZHJlc3MgPCB2bWEtPnZtX2VuZDsNCj4gPj4+ICAgICAgICAgICBhZGRyZXNzICs9IFBBR0Vf
U0laRSkNCj4gPj4+IC0gICAgICAgICAgIHJldCA9IHZtZl9pbnNlcnRfcGZuX3Byb3Qodm1hLCBh
ZGRyZXNzLCBwZm4sIHByb3QpOw0KPiA+Pj4gKyAgICAgICAgICAgcmV0ID0gdm1mX2luc2VydF9w
Zm5fcHJvdCh2bWEsIGFkZHJlc3MsIHBmbiwgcHJvdCwNCj4gPj4+ICsgdHJ1ZSk7DQo+ID4+Pg0K
PiA+Pj4gICAgICByZXR1cm4gcmV0Ow0KPiA+Pj4gICAgfQ0KPiA+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3BhZ2VfZGlydHkuYw0KPiA+Pj4gYi9kcml2ZXJz
L2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9wYWdlX2RpcnR5LmMNCj4gPj4+IGluZGV4IDc0ZmYyODEy
ZDY2YS4uYmI4ZTRiNjQxNjgxIDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zt
d2dmeC92bXdnZnhfcGFnZV9kaXJ0eS5jDQo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13
Z2Z4L3Ztd2dmeF9wYWdlX2RpcnR5LmMNCj4gPj4+IEBAIC00NTIsMTIgKzQ1MiwxNCBAQCB2bV9m
YXVsdF90IHZtd19ib192bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQNCj4gPj4gKnZtZikNCj4gPj4+
ICAgICAgICogc3VyZSB0aGUgcGFnZSBwcm90ZWN0aW9uIGlzIHdyaXRlLWVuYWJsZWQgc28gd2Ug
ZG9uJ3QgZ2V0DQo+ID4+PiAgICAgICAqIGEgbG90IG9mIHVubmVjZXNzYXJ5IHdyaXRlIGZhdWx0
cy4NCj4gPj4+ICAgICAgICovDQo+ID4+PiAtICAgaWYgKHZiby0+ZGlydHkgJiYgdmJvLT5kaXJ0
eS0+bWV0aG9kID09IFZNV19CT19ESVJUWV9NS1dSSVRFKQ0KPiA+Pj4gKyAgIGlmICh2Ym8tPmRp
cnR5ICYmIHZiby0+ZGlydHktPm1ldGhvZCA9PSBWTVdfQk9fRElSVFlfTUtXUklURSkNCj4gPj4g
ew0KPiA+Pj4gICAgICAgICAgICAgIHByb3QgPSB2bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxh
Z3MgJiB+Vk1fU0hBUkVEKTsNCj4gPj4+IC0gICBlbHNlDQo+ID4+PiArICAgICAgICAgICByZXQg
PSB0dG1fYm9fdm1fZmF1bHRfcmVzZXJ2ZWQodm1mLCBwcm90LCBudW1fcHJlZmF1bHQsDQo+ID4+
IGZhbHNlKTsNCj4gPj4+ICsgICB9IGVsc2Ugew0KPiA+Pj4gICAgICAgICAgICAgIHByb3QgPSB2
bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3MpOw0KPiA+Pj4gKyAgICAgICAgICAgcmV0ID0g
dHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHZtZiwgcHJvdCwgbnVtX3ByZWZhdWx0LA0KPiA+PiB0
cnVlKTsNCj4gPj4+ICsgICB9DQo+ID4+Pg0KPiA+Pj4gLSAgIHJldCA9IHR0bV9ib192bV9mYXVs
dF9yZXNlcnZlZCh2bWYsIHByb3QsIG51bV9wcmVmYXVsdCk7DQo+ID4+PiAgICAgIGlmIChyZXQg
PT0gVk1fRkFVTFRfUkVUUlkgJiYgISh2bWYtPmZsYWdzICYNCj4gPj4gRkFVTFRfRkxBR19SRVRS
WV9OT1dBSVQpKQ0KPiA+Pj4gICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ID4+Pg0KPiA+Pj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm8uaCBiL2luY2x1ZGUvZHJtL3R0bS90
dG1fYm8uaA0KPiA+Pj4gaW5kZXggMDIyM2E0MWE2NGIyLi42NmUyOTNkYjY5ZWUgMTAwNjQ0DQo+
ID4+PiAtLS0gYS9pbmNsdWRlL2RybS90dG0vdHRtX2JvLmgNCj4gPj4+ICsrKyBiL2luY2x1ZGUv
ZHJtL3R0bS90dG1fYm8uaA0KPiA+Pj4gQEAgLTM4Niw3ICszODYsOCBAQCB2bV9mYXVsdF90IHR0
bV9ib192bV9yZXNlcnZlKHN0cnVjdA0KPiA+PiB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQo+ID4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB2bV9mYXVsdCAqdm1mKTsNCj4gPj4+
ICAgIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVjdCB2bV9mYXVsdCAq
dm1mLA0KPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdwcm90X3QgcHJv
dCwNCj4gPj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdvZmZfdCBudW1fcHJl
ZmF1bHQpOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwZ29mZl90IG51
bV9wcmVmYXVsdCwNCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBt
a3dyaXRlKTsNCj4gPj4+ICAgIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0KHN0cnVjdCB2bV9m
YXVsdCAqdm1mKTsNCj4gPj4+ICAgIHZvaWQgdHRtX2JvX3ZtX29wZW4oc3RydWN0IHZtX2FyZWFf
c3RydWN0ICp2bWEpOw0KPiA+Pj4gICAgdm9pZCB0dG1fYm9fdm1fY2xvc2Uoc3RydWN0IHZtX2Fy
ZWFfc3RydWN0ICp2bWEpOyBkaWZmIC0tZ2l0DQo+ID4+PiBhL2luY2x1ZGUvbGludXgvbW0uaCBi
L2luY2x1ZGUvbGludXgvbW0uaCBpbmRleA0KPiA+Pj4gZjVhOTdkZWM1MTY5Li5mODg2OGUyOGVh
MDQgMTAwNjQ0DQo+ID4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L21tLmgNCj4gPj4+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvbW0uaA0KPiA+Pj4gQEAgLTM1NTMsNyArMzU1Myw3IEBAIGludCB2bV9tYXBf
cGFnZXNfemVybyhzdHJ1Y3QNCj4gdm1fYXJlYV9zdHJ1Y3QNCj4gPj4gKnZtYSwgc3RydWN0IHBh
Z2UgKipwYWdlcywNCj4gPj4+ICAgIHZtX2ZhdWx0X3Qgdm1mX2luc2VydF9wZm4oc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEsIHVuc2lnbmVkDQo+ID4+PiBsb25nDQo+ID4+IGFkZHIsDQo+ID4+
PiAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHBmbik7DQo+ID4+PiAgICB2bV9m
YXVsdF90IHZtZl9pbnNlcnRfcGZuX3Byb3Qoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsDQo+
ID4+PiB1bnNpZ25lZA0KPiA+PiBsb25nIGFkZHIsDQo+ID4+PiAtICAgICAgICAgICAgICAgICAg
IHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwZ3Byb3QpOw0KPiA+Pj4gKyAgICAgICAgICAg
ICAgICAgICB1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcGdwcm90LCBib29sDQo+ID4+PiAr
IG1rd3JpdGUpOw0KPiA+Pj4gICAgdm1fZmF1bHRfdCB2bWZfaW5zZXJ0X21peGVkKHN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqdm1hLCB1bnNpZ25lZA0KPiA+Pj4gbG9uZw0KPiA+PiBhZGRyLA0KPiA+
Pj4gICAgICAgICAgICAgICAgICAgICAgcGZuX3QgcGZuKTsNCj4gPj4+ICAgIHZtX2ZhdWx0X3Qg
dm1mX2luc2VydF9taXhlZF9ta3dyaXRlKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KPiA+
Pj4gZGlmZiAtLWdpdCBhL21tL21lbW9yeS5jIGIvbW0vbWVtb3J5LmMgaW5kZXgNCj4gPj4+IDdl
MWY0ODQ5NDYzYS4uMmMyOGYxYTM0OWZmDQo+ID4+PiAxMDA2NDQNCj4gPj4+IC0tLSBhL21tL21l
bW9yeS5jDQo+ID4+PiArKysgYi9tbS9tZW1vcnkuYw0KPiA+Pj4gQEAgLTIxOTUsNiArMjE5NSw3
IEBAIHN0YXRpYyB2bV9mYXVsdF90IGluc2VydF9wZm4oc3RydWN0DQo+ID4+IHZtX2FyZWFfc3Ry
dWN0ICp2bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwNCj4gPj4+ICAgICAqIEBhZGRyOiB0YXJnZXQg
dXNlciBhZGRyZXNzIG9mIHRoaXMgcGFnZQ0KPiA+Pj4gICAgICogQHBmbjogc291cmNlIGtlcm5l
bCBwZm4NCj4gPj4+ICAgICAqIEBwZ3Byb3Q6IHBncHJvdCBmbGFncyBmb3IgdGhlIGluc2VydGVk
IHBhZ2UNCj4gPj4+ICsgKiBAbWt3cml0ZTogbWFrZSB0aGUgcGZuIHdyaXRhYmxlDQo+ID4+PiAg
ICAgKg0KPiA+Pj4gICAgICogVGhpcyBpcyBleGFjdGx5IGxpa2Ugdm1mX2luc2VydF9wZm4oKSwg
ZXhjZXB0IHRoYXQgaXQgYWxsb3dzIGRyaXZlcnMNCj4gPj4+ICAgICAqIHRvIG92ZXJyaWRlIHBn
cHJvdCBvbiBhIHBlci1wYWdlIGJhc2lzLg0KPiA+Pj4gQEAgLTIyMjMsNyArMjIyNCw3IEBAIHN0
YXRpYyB2bV9mYXVsdF90IGluc2VydF9wZm4oc3RydWN0DQo+ID4+IHZtX2FyZWFfc3RydWN0ICp2
bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwNCj4gPj4+ICAgICAqIFJldHVybjogdm1fZmF1bHRfdCB2
YWx1ZS4NCj4gPj4+ICAgICAqLw0KPiA+Pj4gICAgdm1fZmF1bHRfdCB2bWZfaW5zZXJ0X3Bmbl9w
cm90KHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KPiA+Pj4gdW5zaWduZWQNCj4gPj4gbG9u
ZyBhZGRyLA0KPiA+Pj4gLSAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHBmbiwgcGdw
cm90X3QgcGdwcm90KQ0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHBm
biwgcGdwcm90X3QgcGdwcm90LCBib29sDQo+ID4+PiArIG1rd3JpdGUpDQo+ID4+PiAgICB7DQo+
ID4+PiAgICAgIC8qDQo+ID4+PiAgICAgICAqIFRlY2huaWNhbGx5LCBhcmNoaXRlY3R1cmVzIHdp
dGggcHRlX3NwZWNpYWwgY2FuIGF2b2lkIGFsbA0KPiA+Pj4gdGhlc2UgQEAgLTIyNDYsNyArMjI0
Nyw3IEBAIHZtX2ZhdWx0X3Qgdm1mX2luc2VydF9wZm5fcHJvdChzdHJ1Y3QNCj4gPj4gdm1fYXJl
YV9zdHJ1Y3QgKnZtYSwgdW5zaWduZWQgbG9uZyBhZGRyLA0KPiA+Pj4gICAgICB0cmFja19wZm5f
aW5zZXJ0KHZtYSwgJnBncHJvdCwgX19wZm5fdG9fcGZuX3QocGZuLCBQRk5fREVWKSk7DQo+ID4+
Pg0KPiA+Pj4gICAgICByZXR1cm4gaW5zZXJ0X3Bmbih2bWEsIGFkZHIsIF9fcGZuX3RvX3Bmbl90
KHBmbiwgUEZOX0RFViksIHBncHJvdCwNCj4gPj4+IC0gICAgICAgICAgICAgICAgICAgZmFsc2Up
Ow0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICBta3dyaXRlKTsNCj4gPj4+ICAgIH0NCj4gPj4+
ICAgIEVYUE9SVF9TWU1CT0wodm1mX2luc2VydF9wZm5fcHJvdCk7DQo+ID4+Pg0KPiA+Pj4gQEAg
LTIyNzMsMTAgKzIyNzQsMTcgQEAgRVhQT1JUX1NZTUJPTCh2bWZfaW5zZXJ0X3Bmbl9wcm90KTsN
Cj4gPj4+ICAgIHZtX2ZhdWx0X3Qgdm1mX2luc2VydF9wZm4oc3RydWN0IHZtX2FyZWFfc3RydWN0
ICp2bWEsIHVuc2lnbmVkDQo+ID4+PiBsb25nDQo+ID4+IGFkZHIsDQo+ID4+PiAgICAgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBsb25nIHBmbikNCj4gPj4+ICAgIHsNCj4gPj4+IC0gICByZXR1
cm4gdm1mX2luc2VydF9wZm5fcHJvdCh2bWEsIGFkZHIsIHBmbiwgdm1hLT52bV9wYWdlX3Byb3Qp
Ow0KPiA+Pj4gKyAgIHJldHVybiB2bWZfaW5zZXJ0X3Bmbl9wcm90KHZtYSwgYWRkciwgcGZuLCB2
bWEtPnZtX3BhZ2VfcHJvdCwNCj4gPj4+ICtmYWxzZSk7DQo+ID4+PiAgICB9DQo+ID4+PiAgICBF
WFBPUlRfU1lNQk9MKHZtZl9pbnNlcnRfcGZuKTsNCj4gPj4+DQo+ID4+PiArdm1fZmF1bHRfdCB2
bWZfaW5zZXJ0X3Bmbl9ta3dyaXRlKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KPiA+Pj4g
K3Vuc2lnbmVkDQo+ID4+IGxvbmcgYWRkciwNCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgdW5z
aWduZWQgbG9uZyBwZm4pIHsNCj4gPj4+ICsgICByZXR1cm4gdm1mX2luc2VydF9wZm5fcHJvdCh2
bWEsIGFkZHIsIHBmbiwgdm1hLT52bV9wYWdlX3Byb3QsDQo+ID4+IHRydWUpOw0KPiA+Pj4gK30g
RVhQT1JUX1NZTUJPTCh2bWZfaW5zZXJ0X3Bmbl9ta3dyaXRlKTsNCj4gPj4+ICsNCj4gPj4+ICAg
IHN0YXRpYyBib29sIHZtX21peGVkX29rKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCBwZm5f
dCBwZm4pDQo+ID4+PiAgICB7DQo+ID4+PiAgICAgIC8qIHRoZXNlIGNoZWNrcyBtaXJyb3IgdGhl
IGFib3J0IGNvbmRpdGlvbnMgaW4gdm1fbm9ybWFsX3BhZ2UNCj4gPj4+ICovDQoNCg==
