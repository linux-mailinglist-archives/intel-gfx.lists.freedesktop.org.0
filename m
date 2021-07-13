Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F26A23C6AA6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 08:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D602F898E8;
	Tue, 13 Jul 2021 06:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2059.outbound.protection.outlook.com [40.107.237.59])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DAC89893;
 Tue, 13 Jul 2021 06:35:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIfkrqtQLPQ39k9jYKqRNxohj0rPAmkGUf4hl3WH6tuzXHMBVlXvfOAdwsdyIMU3eB7R4cI9Ovv9Ngi0tUX0+S2C7Dg+OGCRs9fD9YcU4RtAHx6pJstXKaSCjQyJEUoBTczq3RVyIgwymHnT5VorwAce6jjFbBD20YqJxGaxMBwLEDBEY1LlJcVgODr0fwaMMpXn8cLKLET4RyfYV3GztJZzhkryA/y7A6IA4sk3c6zoO2oFdYX4kT6gM8bZ89rtPcCF4y9FmuUaDQDc9ThsQm9re1dCi8rNS+tprDo33gXZSe3CMxRUAGEgalIj4PBimUI98rj9tO5mPRDcWn+YvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNT8tWFEqzLyjw3v4NbBsxk3WosPWnIEKmI/kdJQ4Ms=;
 b=KuA37ihkzuMMlQfCGivPsU5Y7XN1HXIqBUOFRHVtkFw/WuWNRd9ft1b/Npc0Iq4UAxhq3g3o9I0iz4M4toPuy6f4J8sUCeMBj3716DLAmB9H2GTK6ilpTWhL/Kp3U+RfRN75S8wFQ27NvolPUfilXv51omE5kkpr+0PgkWM14L5gr8Kw1DVyYQUooUDKYl5dWi1JCS+SJwWsP5B6ANGB9Za8B+CofR229pG1L0bnAj6FandZ/6lFFYMPJn/87sgtQu5rAIl77tV+l6n5EsW5SFrg3gG3w5ZgYvPClXJVVBSYM+wGIoi8qs566+C2ibxJFHuB5lp3vymy5tgRa/ngWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNT8tWFEqzLyjw3v4NbBsxk3WosPWnIEKmI/kdJQ4Ms=;
 b=rrv+1hckPzlT4KK8z9ESEc9sxVvYNH8HtAn2jP5vcu+NZdmBzH+skfdMO0pUyOj9IM/9lS0wsmQT8cC/f835w9La+LuS70rcWm0xwie8Gv4UmCc8DpkvFy/lIIiZT2csf0G4uqVpuAMCx6EKB8zPtZeQx4jaaZUwp9SQUWqBK8I=
Authentication-Results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4061.namprd12.prod.outlook.com (2603:10b6:208:19a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.26; Tue, 13 Jul
 2021 06:35:10 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 06:35:09 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-3-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <2cd9df9e-08e5-d0bd-d4d3-aed00f699e4a@amd.com>
Date: Tue, 13 Jul 2021 08:35:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210712175352.802687-3-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-ClientProxiedBy: PR3P251CA0016.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:102:b5::8) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:7f5a:cff:4644:b698]
 (2a02:908:1252:fb60:7f5a:cff:4644:b698) by
 PR3P251CA0016.EURP251.PROD.OUTLOOK.COM (2603:10a6:102:b5::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.19 via Frontend Transport; Tue, 13 Jul 2021 06:35:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44d17762-17ea-46a4-78a0-08d945c85c53
X-MS-TrafficTypeDiagnostic: MN2PR12MB4061:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB40616CC522915A968B20AAED83149@MN2PR12MB4061.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1FurHEDPLTzu8BxHE+rACDNxT3eur6z1H0FE18WZ7Z0vpNOKf2IAYTE1VPJw0aNcNCkfsjV49I7/TgS6tG98uaAQd9OFdKhY0Lzc3dSVGhoDDHPmHrwugiIIHmiGkVUxXF0/usjuto95ggZk8ycD0Sa6Z00pube4WTqcxloN6cFzkBwXmlTYPezRIP2c3+2ItpBRpmelB81oVZ6f1yqjM7hemEAIVJPXSEPVel0dzKnX8j/YZCwCYE5dmKh4LRf7JKIfacDIiK8o+hQ0V+99kSoOL4tGeiok0FheoBDMy+o27wMMawklV9zDTekQFtNSzlYErClwPkhNg0tI1am9k47jw+ApILZMn9XH+/7Ifu2S5dkb8dTqkhhyl+LMEIx1+KBdxRS80NOhNrCVV/7rwFss2XygJitj0IhViREdgsSyr9rCMoNN7PL2BUvDfT2OZSektSwFkDfjlKySJ2/aPm0kdbdPFVJ0a1ElErEqE2g9eeMUUFwC/dzJA5a2pnKlcaE7mdEmHIr9nqU18SHY1+7B2Mmz63nlhX16YOFlyEskaZsohhfY8yxk0lDQ6xdaSdAGewB9UZ+I6mwwbP8DSKyhV8kiOGMoH1+3Eimq+kOUPwJe3ovweBOqghKPnC8B9Yzjsr08CcVJjgQugaYIjhUKMj6v+WH1KMuXSd1Gs/wAaPn6COrsUyPIMpwRWShrBny0BfTNuartBeylY+Sq7HLuRuri1D61YPlrVHHAdRfAjsFW3GbW4Tq3dlrHkWGQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(396003)(346002)(366004)(136003)(83380400001)(66574015)(6486002)(2616005)(54906003)(8676002)(31686004)(316002)(31696002)(36756003)(8936002)(66476007)(66556008)(66946007)(5660300002)(110136005)(2906002)(186003)(478600001)(6666004)(38100700002)(86362001)(4326008)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkU4aUJnVEorK1ZlR1lSd011Z0Nzcyt6ZE9SUnE2K1B4aVZEOHNHMjlSbHBD?=
 =?utf-8?B?TytiWU5rYmRCeCs0cFJobk9iUTJPTzRJR25pSDNvbEw2Z3lrSWpOODB0d0RG?=
 =?utf-8?B?cDQzMFd5Nm5MN3RRdkhGMTRXQTluUWdlRVNSWFh1OXUzbDBycVNkU1dBYkN0?=
 =?utf-8?B?QWFKZ1lCRGRpcUptTGVHUjZOK2dFYkpQYmRyRDlBenNaU3pNeVQyWHNZMk5K?=
 =?utf-8?B?MnBnNGpLV21BSHBCUW1wQXhSNll4OE92bnQ4Y040WFRhTy9YNWZ2MHdvQjhk?=
 =?utf-8?B?WVBVWGI4ZW4rSVpUYlpidHRwaThhMXBvR1V1bmJZekxMTzNCNXE3eTNjOHVr?=
 =?utf-8?B?VnZxMnZJNmZmTXRqRkMvb1VZMUp1UlNJZVRrQVVzWnVWT3I3Z2dSUUcxQ2s5?=
 =?utf-8?B?M01WdlBabWZpRmpaUjR1bTFlbk43YWlxNXZjcU5NT05iSWlNeTl2dXZxeWNv?=
 =?utf-8?B?OUJFdThpZi80UEdsVXdtNG9SbUJZZHVqTGczZHdLWGozNDNPQXNVaTVtMGQ1?=
 =?utf-8?B?TW1IcEtaSW1UbC9STlRHT0ZVLzhMR2dQM2FiWXNYcnFkVzhEcmZSdURIekpP?=
 =?utf-8?B?S1NMMjR3QkhxczZzT2IzQUY4ZVlyQUdtdm9VaG9jaXozbzE0TkdSRXhsYjlO?=
 =?utf-8?B?MGtUdmI1bE8xYy9Xc0s1QnR2WnM1b3FpM0t4ekFVSTN4Q0FDc3dnTzRNRlda?=
 =?utf-8?B?QWE5ZzNaVEFpRFE1WUZXNVBPNWh0eE4rWElKdzQvUTdHNzFHT2UzWm45bWJH?=
 =?utf-8?B?UFNCS2JRM28vTzRWTHBBRlpaWVR0ZVpIOTV2VldkNlpvTkVWVkdPMGVKeith?=
 =?utf-8?B?Y3hLMnZGUGF1Q2M3aTlLakg5MjltOG51blBYZGhWbHpIVVIzVis1TC9rRmxo?=
 =?utf-8?B?N2Q2alZTUXpsa0g3cGhUSHdlMExSc2EvdHRxYVQ4dFI5UndRU1BkeTkzY21O?=
 =?utf-8?B?cjduV0ZQd0I0UjVyQ2l5ZUpsMDk3RXRXUkU2UXllY2hWUlMzdFVrY2IxbEY1?=
 =?utf-8?B?OFlZdk83OEh2aGpzTzJQK1VxTlFMOEhhTkszUEY1ZVdWOHR0anZOTnR4SmVY?=
 =?utf-8?B?SlVwNlppNlY0cU40Wjh1bzFxZHhFSVp6eXdlMDFBcko0dDFpSUd4WXZ5cFZz?=
 =?utf-8?B?eHJwbjRyc2R6VTVBV0NYSGJGRzJPdU03eTdPVWJQRW9CUXlvaW5aYVZjY1Jo?=
 =?utf-8?B?QmVwcnZLTys1eDIwMGg1Ykt1Yit1OWxMT3I5ZUpSYnA1VjFiRlpmSzEydndp?=
 =?utf-8?B?aXpUMVp0VHZTbER2cjZkdFV2Mi9wQkgzZWhpVnM3U0ZOR2V0b0xvZ1p4S0hR?=
 =?utf-8?B?ZlJyeDhtVFNpRmRrUWNaNk0xSDJGTGR4dEFpM2tsTFhSa1B5NmdEZndaOTlx?=
 =?utf-8?B?TCtUYzdlNlVreC8rOXBycTVOUk44cW44OU5GTEtBQU1lQ1V1dXZ2TGFCOGNY?=
 =?utf-8?B?YWhlbG53V2JCaFdTc3oxRnBCSEczU0o4MWE2Ty9sMklIbDdxNUdkUmkrWXQ4?=
 =?utf-8?B?aWxIREVVc2JtSjZFd1VDdHlnZnhJRTI1cFNlaDdsTmNDU0UvV2REZm1oeSt0?=
 =?utf-8?B?NHFYbHpkMGFoa3p0eS9QK25mak01aC9xVDNnMTNCUGR0RERCNkJNd1p5eWFi?=
 =?utf-8?B?WHBkVkhEcElXT0g0TFFWZzJKbENZWGJJRnlwdEZvQW1MZysyaURIeGZSR0hF?=
 =?utf-8?B?eUM5UUhLTERKVFI2Y3Zoa0l5a1l1aFhwNHNWWDZqcCtyZnZOZzY2enh6TGta?=
 =?utf-8?B?SlUzQUt3b2RjK2hQbHZobXlVRkdxaTYyLzh3TVVIVUI5MWpCazBvL3BVUGZR?=
 =?utf-8?B?Mll2ZlNXbG9GMVN5eW9QSHhBRUlCZ1NGYzlJS29tUzlodWlYZ2pwMDhmWUlp?=
 =?utf-8?Q?bTMvCwBFFyatM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44d17762-17ea-46a4-78a0-08d945c85c53
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2021 06:35:09.8053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MHUc0VkqZvVX7T9ngUGQ1+GzwqUq38r+QDyw5K22JTP8FKYujwVgeCy7KJ/N4Ah5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4061
Subject: Re: [Intel-gfx] [PATCH v4 02/18] drm/sched: Barriers are needed for
 entity->last_scheduled
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTIuMDcuMjEgdW0gMTk6NTMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IEl0IG1pZ2h0IGJl
IGdvb2QgZW5vdWdoIG9uIHg4NiB3aXRoIGp1c3QgUkVBRF9PTkNFLCBidXQgdGhlIHdyaXRlIHNp
ZGUKPiBzaG91bGQgdGhlbiBhdCBsZWFzdCBiZSBXUklURV9PTkNFIGJlY2F1c2UgeDg2IGhhcyB0
b3RhbCBzdG9yZSBvcmRlci4KPgo+IEl0J3MgZGVmaW5pdGVseSBub3QgZW5vdWdoIG9uIGFybS4K
Pgo+IEZpeCB0aGlzIHByb3BsZXJ5LCB3aGljaCBtZWFucwo+IC0gZXhwbGFpbiB0aGUgbmVlZCBm
b3IgdGhlIGJhcnJpZXIgaW4gYm90aCBwbGFjZXMKPiAtIHBvaW50IGF0IHRoZSBvdGhlciBzaWRl
IGluIGVhY2ggY29tbWVudAo+Cj4gQWxzbyBwdWxsIG91dCB0aGUgIXNjaGVkX2xpc3QgY2FzZSBh
cyB0aGUgZmlyc3QgY2hlY2ssIHNvIHRoYXQgdGhlCj4gY29kZSBmbG93IGlzIGNsZWFyZXIuCj4K
PiBXaGlsZSBhdCBpdCBzcHJpbmtsZSBzb21lIGNvbW1lbnRzIGFyb3VuZCBiZWNhdXNlIGl0IHdh
cyB2ZXJ5Cj4gbm9uLW9idmlvdXMgdG8gbWUgd2hhdCdzIGFjdHVhbGx5IGdvaW5nIG9uIGhlcmUg
YW5kIHdoeS4KPgo+IE5vdGUgdGhhdCB3ZSByZWFsbHkgbmVlZCBmdWxsIGJhcnJpZXJzIGhlcmUs
IGF0IGZpcnN0IEkgdGhvdWdodAo+IHN0b3JlLXJlbGVhc2UgYW5kIGxvYWQtYWNxdWlyZSBvbiAt
Pmxhc3Rfc2NoZWR1bGVkIHdvdWxkIGJlIGVub3VnaCwKPiBidXQgd2UgYWN0dWFsbHkgcmVxdWly
aW5nIG9yZGVyaW5nIGJldHdlZW4gdGhhdCBhbmQgdGhlIHF1ZXVlIHN0YXRlLgo+Cj4gdjI6IFB1
dCBzbXBfcm1wKCkgaW4gdGhlIHJpZ2h0IHBsYWNlIGFuZCBmaXggdXAgY29tbWVudCAoQW5kcmV5
KQo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
IENjOiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPgo+IENjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBBbmRyZXkgR3JvZHpvdnNreSA8YW5k
cmV5Lmdyb2R6b3Zza3lAYW1kLmNvbT4KPiBDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJv
Lm9yZz4KPiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAy
NyArKysrKysrKysrKysrKysrKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2VudGl0eS5jCj4gaW5kZXggZjczNDdjMjg0ODg2Li44OWUzZjZlYWY1MTkgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiBAQCAtNDM5LDggKzQzOSwxNiBA
QCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKHN0cnVjdCBk
cm1fc2NoZWRfZW50aXR5ICplbnRpdHkpCj4gICAJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnNjaGVk
X2pvYi0+c19mZW5jZS0+ZmluaXNoZWQsIC1FQ0FOQ0VMRUQpOwo+ICAgCj4gICAJZG1hX2ZlbmNl
X3B1dChlbnRpdHktPmxhc3Rfc2NoZWR1bGVkKTsKPiArCj4gICAJZW50aXR5LT5sYXN0X3NjaGVk
dWxlZCA9IGRtYV9mZW5jZV9nZXQoJnNjaGVkX2pvYi0+c19mZW5jZS0+ZmluaXNoZWQpOwo+ICAg
Cj4gKwkvKgo+ICsJICogSWYgdGhlIHF1ZXVlIGlzIGVtcHR5IHdlIGFsbG93IGRybV9zY2hlZF9l
bnRpdHlfc2VsZWN0X3JxKCkgdG8KPiArCSAqIGxvY2tsZXNzbHkgYWNjZXNzIC0+bGFzdF9zY2hl
ZHVsZWQuIFRoaXMgb25seSB3b3JrcyBpZiB3ZSBzZXQgdGhlCj4gKwkgKiBwb2ludGVyIGJlZm9y
ZSB3ZSBkZXF1ZXVlIGFuZCBpZiB3ZSBhIHdyaXRlIGJhcnJpZXIgaGVyZS4KPiArCSAqLwo+ICsJ
c21wX3dtYigpOwo+ICsKCkFnYWluLCBjb25jZXB0dWFsIHRob3NlIGJhcnJpZXJzIHNob3VsZCBi
ZSBwYXJ0IG9mIHRoZSBzcHNjX3F1ZXVlIApjb250YWluZXIgYW5kIG5vdCBleHRlcm5hbGx5LgoK
UmVnYXJkcywKQ2hyaXN0aWFuLgoKPiAgIAlzcHNjX3F1ZXVlX3BvcCgmZW50aXR5LT5qb2JfcXVl
dWUpOwo+ICAgCXJldHVybiBzY2hlZF9qb2I7Cj4gICB9Cj4gQEAgLTQ1OSwxMCArNDY3LDI1IEBA
IHZvaWQgZHJtX3NjaGVkX2VudGl0eV9zZWxlY3RfcnEoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkg
KmVudGl0eSkKPiAgIAlzdHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIgKnNjaGVkOwo+ICAgCXN0cnVj
dCBkcm1fc2NoZWRfcnEgKnJxOwo+ICAgCj4gLQlpZiAoc3BzY19xdWV1ZV9jb3VudCgmZW50aXR5
LT5qb2JfcXVldWUpIHx8ICFlbnRpdHktPnNjaGVkX2xpc3QpCj4gKwkvKiBzaW5nbGUgcG9zc2li
bGUgZW5naW5lIGFuZCBhbHJlYWR5IHNlbGVjdGVkICovCj4gKwlpZiAoIWVudGl0eS0+c2NoZWRf
bGlzdCkKPiArCQlyZXR1cm47Cj4gKwo+ICsJLyogcXVldWUgbm9uLWVtcHR5LCBzdGF5IG9uIHRo
ZSBzYW1lIGVuZ2luZSAqLwo+ICsJaWYgKHNwc2NfcXVldWVfY291bnQoJmVudGl0eS0+am9iX3F1
ZXVlKSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gLQlmZW5jZSA9IFJFQURfT05DRShlbnRpdHktPmxh
c3Rfc2NoZWR1bGVkKTsKPiArCS8qCj4gKwkgKiBPbmx5IHdoZW4gdGhlIHF1ZXVlIGlzIGVtcHR5
IGFyZSB3ZSBndWFyYW50ZWVkIHRoYXQgdGhlIHNjaGVkdWxlcgo+ICsJICogdGhyZWFkIGNhbm5v
dCBjaGFuZ2UgLT5sYXN0X3NjaGVkdWxlZC4gVG8gZW5mb3JjZSBvcmRlcmluZyB3ZSBuZWVkCj4g
KwkgKiBhIHJlYWQgYmFycmllciBoZXJlLiBTZWUgZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKCkg
Zm9yIHRoZSBvdGhlcgo+ICsJICogc2lkZS4KPiArCSAqLwo+ICsJc21wX3JtYigpOwo+ICsKPiAr
CWZlbmNlID0gZW50aXR5LT5sYXN0X3NjaGVkdWxlZDsKPiArCj4gKwkvKiBzdGF5IG9uIHRoZSBz
YW1lIGVuZ2luZSBpZiB0aGUgcHJldmlvdXMgam9iIGhhc24ndCBmaW5pc2hlZCAqLwo+ICAgCWlm
IChmZW5jZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKPiAgIAkJcmV0dXJuOwo+
ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
