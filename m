Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BED3C197A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 20:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738976E979;
	Thu,  8 Jul 2021 18:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2083.outbound.protection.outlook.com [40.107.244.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E026E957;
 Thu,  8 Jul 2021 18:56:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xa4XM6AFiNDFF5zMuzlq14/7ZoN/QRrI/xrkYBFgNo2NNlSjGeFcnMsfcjrL3YLtisZQfbadZM36uOZlOFfsVCvfb/8W2eSL+F+HSQiPXtWdH1+/0/WTd7Ao9poO8+vyiL6/dqYa4ma43R/SJ+f/j8Ka4EB2KNOFJ8b57BD941Tu7qBtBjfHj5f1KIkOCEHhdFxS2RlXyy1iWZHnWrcugrLkWB/o5D0HNJQpypPyeseQGOaSExG0ncLoj7EsANOJFWILle8C9dLFgtEM8sE9MrMIp+RwqMsn3kLrhkClWfVdHGfNCi9S2yaLazlvRbuTRAx92gYpspZyJ6A3UVyPUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cN5+SSyW8J42v738DmZrphjZoBT9E3aoqONrvSfudWg=;
 b=lSgsIV2kWPj7T86Dmjdh7tR16y4SBaryYjbqCccsZ3BwPMFDUrXFZt9EsJlb3h8jVgOpWG28jrJaAa3ZkvT5XXfZtg4KESd80DwomJIm36UBuG+bkNm0uh+O4imuMn0nhVhxLb9FfmoMuqdrY/bY204QQDGHtewd3M5vt/8YI9ZaD+pxXVHkyDEKCv4HXoVXuQ6fwDcHOCv20cOvfIU3Zu4/a4b+hbge7p6Fy9Y3hg+kFowc8JVXhyCJ3XAwM9Ar8t0kNDchxWS2n5v7RRG2QrVnIqr/Db2viyJgyaCIREwGiJVmpwMbYlB1uQ4A2U+M9Be6+OCrkbneOEzQb3v1bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cN5+SSyW8J42v738DmZrphjZoBT9E3aoqONrvSfudWg=;
 b=3dRaudLL4mmxLYVaKyh7TFtQkrtNBPQE20XQaAz7IOOQZxWXZGqmC/zEfzqj0de83/7v5HML2qXJon9tZE0FwEAfnW2YD0T5dmmk+d5WiZh3HeWzBJSMJ5TZXO91mBq0/flOlyqvfnndh7B3G+YhhvwwnFcchqYd6cAAHmp5ot4=
Authentication-Results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none header.from=amd.com;
Received: from SN6PR12MB4623.namprd12.prod.outlook.com (2603:10b6:805:e9::17)
 by SN6PR12MB2750.namprd12.prod.outlook.com (2603:10b6:805:77::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.29; Thu, 8 Jul
 2021 18:56:53 +0000
Received: from SN6PR12MB4623.namprd12.prod.outlook.com
 ([fe80::9f8:ec71:6535:cd36]) by SN6PR12MB4623.namprd12.prod.outlook.com
 ([fe80::9f8:ec71:6535:cd36%5]) with mapi id 15.20.4308.022; Thu, 8 Jul 2021
 18:56:53 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-4-daniel.vetter@ffwll.ch>
From: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
Message-ID: <9cc93adc-0a93-a0d5-422b-a57fac9bd450@amd.com>
Date: Thu, 8 Jul 2021 14:56:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210708173754.3877540-4-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-ClientProxiedBy: YTXPR0101CA0006.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::19) To SN6PR12MB4623.namprd12.prod.outlook.com
 (2603:10b6:805:e9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:3edf:49b0:449c:5ff:35e2:16a]
 (2607:fea8:3edf:49b0:449c:5ff:35e2:16a) by
 YTXPR0101CA0006.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.19 via Frontend Transport; Thu, 8 Jul 2021 18:56:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6713766-ce14-4dfa-d74c-08d94242267a
X-MS-TrafficTypeDiagnostic: SN6PR12MB2750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR12MB2750A241E1C1382681D56550EA199@SN6PR12MB2750.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9c5Wk8M8sv6wB2OotASkrE72aVxskUORDxAPCpeCQJ9LLEQ7uwicMcOPFGk/g1Hz4jBP7hhBeI8vynFaFrvWFjpYxT8z5QbbZfdOU9uzfC0lg7uUsrMsGy3zbE9hFJP0MbSc4jTIqk5+M7RIbER7X+EGWXDNGVUV8YuBQiICuMcHv+7XMXNuRKw31E97RGNFnktjIE1Z9e1dEekIO2j4HgjTaXdElgOHKGqZgy9n0i1PCtvcmJWE1fPIREPBOBaV8hFBIoDwmQnrBRQotFzr15o2wkFbJKR04MHv7po6MccEDWuyvBpzr6kjXTmdSabNLXIgHX7qqKku32jJLljyIzzmOjqdspBf7DFqM3StrUxLn+Bbf8M1Rz/TJIhJlayXcTaBBe89ZL9cCfUklp7wyk/dfp2G1iCf/ij4KQIQccn941wpaqRuvD9MLw/v/IRMppPjJQYhY4O8W7ZyeOUnF6XZL7GOhk1YbJA368+4SbFOoWmaIbf/3dlMmNO1YE0qQSkVl4YQ8a2zbA0WBEamekW+CuSBEcZc5Yijeanp3J/LWA8jeXhQt420wGaIPf6IGnWxufnSun1upYGpKYphI6tVs7cM97Qweao81YU9cJwyXYhO+Ge7jCZRehdVxIWb8EEjJmmmwkUfiYoXzyangqDgoS9fWMm+fi6LoexlhNwAL7sZS2xDwXgrymUFyeimr1ufccGQYh2X9uwD2uZVtCQWXwgIgn1P/Dwlj0f2xGSIc2Bz4YvlwkyqAPSTZpFePeVeChX/zK+7xTUiMcNQXw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR12MB4623.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(66574015)(8676002)(4326008)(5660300002)(83380400001)(44832011)(316002)(38100700002)(86362001)(2616005)(186003)(2906002)(66476007)(31696002)(478600001)(66946007)(6486002)(53546011)(66556008)(8936002)(110136005)(36756003)(31686004)(54906003)(60764002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2t2TEJBd0x0ZmZhdWZ6bDVzY01rTDNFMTlCbWR0bzZuaGdvZCtTRUJ6czlL?=
 =?utf-8?B?aWhTNFlTUEcyL04wRUs4bWdtMldDL3QxbjdURStSR0kwZ2xLZnluZ01KNnh3?=
 =?utf-8?B?aTJiYjdwTmNOKzRYRjB2cGdxb1h1UVdNb1hRYWZuT0hPQU0wWWd6eFcybDU1?=
 =?utf-8?B?QmNIR1k0b3YxVzZhMVVhWm9adCtkSkNvZ1FTV040SFRHNnB4S2ZyUCs3eVl4?=
 =?utf-8?B?WlJKRGhwVC9uaVZuRTZCb0NDenI4MUlERWJVUmdyeWV3R0pjVmRWV080TzBn?=
 =?utf-8?B?RzZzUjRxNzN1dnhwT0RlcTd4RUNzSWlZM3IvU3AyaVlEL2Y4UnBHWGlmQUdH?=
 =?utf-8?B?WUFMOUMwbjBEcWNWK3BpMHJuV0UvU3duNncwQnZlVjNqNTFpY2Ftd09nTGky?=
 =?utf-8?B?amtiQ29qOEFHazM1Yjg1N3U0SGpyL1hjYy85cnZnTVFsQVZuYUcrMVZCeERV?=
 =?utf-8?B?TlA4djhBQzFUOG16STErbUJyZ3lSQnVaSGNOQUZ4SEphSWh0ajZUUmk3VGs2?=
 =?utf-8?B?WE84ZWpXQ3FWbVVjNWdRZVkvcGNURFNBTXZqcUVLZVNxelpzajNoRE1ML2Qv?=
 =?utf-8?B?WVhaM2I0K2NMTE1zMUNLNzZ6TlZXWTlPNm4vWFRRNFQ4cFluckxJaTdXTzYr?=
 =?utf-8?B?UUkxT3M4VUNWSzlTWjlhRGZVUkZGdWplVzFidFlSN1I0NU1ZQWFJaHRCWmxv?=
 =?utf-8?B?UStucExsalJlRXNlSFBQamVzbDNSTGhycWxjT3h2RzhZQXhpZHVJV3g2RDZC?=
 =?utf-8?B?cE9QYTc1SDBqRS81b1lWb3pwQVNXVDA3RStCc05VTExUcjIzbWdTR1haSVdW?=
 =?utf-8?B?MXVWN0kwYmVZWlVnaDFSM3BaYVQ5bWc2bm5jQ2RNMWtWbkdZZTZkZXN1REJu?=
 =?utf-8?B?dG9VY2xrYlUwTnBZR3NNMWdnREZGYkYxVU4xd3BlSVdxUGJuSGZXY2lESlBp?=
 =?utf-8?B?dnY4Tk5EVUk1Q2wvOHZDRjZZM0lpbjZLMEc0b3BmSG1FbWZUMzhXRzkxaHJO?=
 =?utf-8?B?cmJFdVlXUHNhRzBlVXhrREp0dGxnUmtzU09mem1wdWRwcDlJMGlEczJpWUlD?=
 =?utf-8?B?OWJTMFFKZVAwSnB5MmZyYnhlQm1oOXZSSFNEcWpmUU54YUtkVlBjZE9XQmdH?=
 =?utf-8?B?emRtK3dERTJPbFRHeTRtUEtiMGNpaERTMm1tcmVjWWJ5QURTYlJzQWNVL2l2?=
 =?utf-8?B?T2p5WHBrOWpzQmFnZnBsZ09xanB6YnRpQWd6VmVRcGR5cVpFVjF4Q2tOQW4w?=
 =?utf-8?B?RWRvUk4vMENlV2VuQXBoLzJmZEZSQksyTXhtWlZhc3B5NFlrOG9DMnRKSFN1?=
 =?utf-8?B?RkE2WTYwb0tjL09XS0krbStVa3JoVmMzK09UQ3FmSHh5SW5KbDVBRWFwRnVm?=
 =?utf-8?B?K0RxN1J1RU5nMGRqODE4dUh2bDlPTjh4UHVMMVlVQmliOXh3ZnRjZ2dQTEVJ?=
 =?utf-8?B?TzBQTWZJMzcvRFZmYTFIU1B0TURtZG1rMlJqQkFsWmF1WnlRSkk2UnRmNFR3?=
 =?utf-8?B?TzAyZjlTc3FXUTdKaHcwa1NidHB0YkFQSXFOMHh0d1EyYndPRm1OR0VXQlUv?=
 =?utf-8?B?RCtEeUFqM1drQ0Z5cW14NGRLZkYzOW82d1F5MnJnTmNPbmIrN1JtTHdmcHdX?=
 =?utf-8?B?c0tLbVF5b0dsMkUrK1ZJVitETE4wcHJWUXRYM2luRUtLajR1WWUzZ1VaZ0px?=
 =?utf-8?B?L2JIeXhYV0g1ZXYyam53SmJpWXpveVRIZFVTN1pVT1VIcmZaU1lyM2FzRngz?=
 =?utf-8?B?azZGNUttR2I4OWpNTkxFNGNsenVKZHdrLzVwTGNsVVpiSHJHYldCQ0w0T0pa?=
 =?utf-8?B?R3g2TzZFQzdtS1E5aE5rYzYySFFDNGJhOGFadlJCb3V3cXNlM3dKNnpvZ3lZ?=
 =?utf-8?Q?6bv4yaHy3aDrk?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6713766-ce14-4dfa-d74c-08d94242267a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR12MB4623.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2021 18:56:53.1922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YfCODxGVunmHMuG4SIZlyLnxBf/Gy39rTeOOjd4m3DL1hll85hSni5L6VrZ+nZLR9kjsdZrpKDoNieqW7RgK9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2750
Subject: Re: [Intel-gfx] [PATCH v3 03/20] drm/sched: Barriers are needed for
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMjEtMDctMDggMTozNyBwLm0uLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IEl0IG1pZ2h0
IGJlIGdvb2QgZW5vdWdoIG9uIHg4NiB3aXRoIGp1c3QgUkVBRF9PTkNFLCBidXQgdGhlIHdyaXRl
IHNpZGUKPiBzaG91bGQgdGhlbiBhdCBsZWFzdCBiZSBXUklURV9PTkNFIGJlY2F1c2UgeDg2IGhh
cyB0b3RhbCBzdG9yZSBvcmRlci4KPgo+IEl0J3MgZGVmaW5pdGVseSBub3QgZW5vdWdoIG9uIGFy
bS4KPgo+IEZpeCB0aGlzIHByb3BsZXJ5LCB3aGljaCBtZWFucwo+IC0gZXhwbGFpbiB0aGUgbmVl
ZCBmb3IgdGhlIGJhcnJpZXIgaW4gYm90aCBwbGFjZXMKPiAtIHBvaW50IGF0IHRoZSBvdGhlciBz
aWRlIGluIGVhY2ggY29tbWVudAo+Cj4gQWxzbyBwdWxsIG91dCB0aGUgIXNjaGVkX2xpc3QgY2Fz
ZSBhcyB0aGUgZmlyc3QgY2hlY2ssIHNvIHRoYXQgdGhlCj4gY29kZSBmbG93IGlzIGNsZWFyZXIu
Cj4KPiBXaGlsZSBhdCBpdCBzcHJpbmtsZSBzb21lIGNvbW1lbnRzIGFyb3VuZCBiZWNhdXNlIGl0
IHdhcyB2ZXJ5Cj4gbm9uLW9idmlvdXMgdG8gbWUgd2hhdCdzIGFjdHVhbGx5IGdvaW5nIG9uIGhl
cmUgYW5kIHdoeS4KPgo+IE5vdGUgdGhhdCB3ZSByZWFsbHkgbmVlZCBmdWxsIGJhcnJpZXJzIGhl
cmUsIGF0IGZpcnN0IEkgdGhvdWdodAo+IHN0b3JlLXJlbGVhc2UgYW5kIGxvYWQtYWNxdWlyZSBv
biAtPmxhc3Rfc2NoZWR1bGVkIHdvdWxkIGJlIGVub3VnaCwKPiBidXQgd2UgYWN0dWFsbHkgcmVx
dWlyaW5nIG9yZGVyaW5nIGJldHdlZW4gdGhhdCBhbmQgdGhlIHF1ZXVlIHN0YXRlLgo+Cj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6
ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBTdGV2
ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBBbmRyZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6
b3Zza3lAYW1kLmNvbT4KPiBDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiBD
YzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiAtLS0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAyNyArKysrKysr
KysrKysrKysrKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZW50aXR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5j
Cj4gaW5kZXggNjRkMzk4MTY2NjQ0Li40ZTExMjRlZDgwZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiBAQCAtNDM5LDggKzQzOSwxNiBAQCBzdHJ1Y3Qg
ZHJtX3NjaGVkX2pvYiAqZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKHN0cnVjdCBkcm1fc2NoZWRf
ZW50aXR5ICplbnRpdHkpCj4gICAJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnNjaGVkX2pvYi0+c19m
ZW5jZS0+ZmluaXNoZWQsIC1FQ0FOQ0VMRUQpOwo+ICAgCj4gICAJZG1hX2ZlbmNlX3B1dChlbnRp
dHktPmxhc3Rfc2NoZWR1bGVkKTsKPiArCj4gICAJZW50aXR5LT5sYXN0X3NjaGVkdWxlZCA9IGRt
YV9mZW5jZV9nZXQoJnNjaGVkX2pvYi0+c19mZW5jZS0+ZmluaXNoZWQpOwo+ICAgCj4gKwkvKgo+
ICsJICogaWYgdGhlIHF1ZXVlIGlzIGVtcHR5IHdlIGFsbG93IGRybV9zY2hlZF9qb2JfYXJtKCkg
dG8gbG9ja2xlc3NseQoKClByb2JhYmx5IG1lYW50IGRybV9zY2hlZF9lbnRpdHlfc2VsZWN0X3Jx
IGhlcmUKCgo+ICsJICogYWNjZXNzIC0+bGFzdF9zY2hlZHVsZWQuIFRoaXMgb25seSB3b3JrcyBp
ZiB3ZSBzZXQgdGhlIHBvaW50ZXIgYmVmb3JlCj4gKwkgKiB3ZSBkZXF1ZXVlIGFuZCBpZiB3ZSBh
IHdyaXRlIGJhcnJpZXIgaGVyZS4KPiArCSAqLwo+ICsJc21wX3dtYigpOwo+ICsKPiAgIAlzcHNj
X3F1ZXVlX3BvcCgmZW50aXR5LT5qb2JfcXVldWUpOwo+ICAgCXJldHVybiBzY2hlZF9qb2I7Cj4g
ICB9Cj4gQEAgLTQ1OSwxMCArNDY3LDI1IEBAIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9zZWxlY3Rf
cnEoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSkKPiAgIAlzdHJ1Y3QgZHJtX2dwdV9z
Y2hlZHVsZXIgKnNjaGVkOwo+ICAgCXN0cnVjdCBkcm1fc2NoZWRfcnEgKnJxOwo+ICAgCj4gLQlp
ZiAoc3BzY19xdWV1ZV9jb3VudCgmZW50aXR5LT5qb2JfcXVldWUpIHx8ICFlbnRpdHktPnNjaGVk
X2xpc3QpCj4gKwkvKiBzaW5nbGUgcG9zc2libGUgZW5naW5lIGFuZCBhbHJlYWR5IHNlbGVjdGVk
ICovCj4gKwlpZiAoIWVudGl0eS0+c2NoZWRfbGlzdCkKPiArCQlyZXR1cm47Cj4gKwo+ICsJLyog
cXVldWUgbm9uLWVtcHR5LCBzdGF5IG9uIHRoZSBzYW1lIGVuZ2luZSAqLwo+ICsJaWYgKHNwc2Nf
cXVldWVfY291bnQoJmVudGl0eS0+am9iX3F1ZXVlKSkKPiAgIAkJcmV0dXJuOwoKClNob3VsZG4n
dCBzbXBfcm1iIGJlIGhlcmUgaW4gYmV0d2VlbiA/IEdpdmVuIHRoZSBxdWV1ZSBpcyBlbXB0eSB3
ZSB3YW50IHRvCmJlIGNlcnRhaW4gd2UgYXJlIHJlYWRpbmcgdGhlIG1vc3QgcmVjZW50IHZhbHVl
IG9mIGVudGl0eS0+bGFzdF9zY2hlZHVsZWQKCkFuZHJleQoKCgo+ICAgCj4gLQlmZW5jZSA9IFJF
QURfT05DRShlbnRpdHktPmxhc3Rfc2NoZWR1bGVkKTsKPiArCWZlbmNlID0gZW50aXR5LT5sYXN0
X3NjaGVkdWxlZDsKPiArCj4gKwkvKgo+ICsJICogT25seSB3aGVuIHRoZSBxdWV1ZSBpcyBlbXB0
eSBhcmUgd2UgZ3VhcmFudGVlZCB0aGUgdGhlIHNjaGVkdWxlcgo+ICsJICogdGhyZWFkIGNhbm5v
dCBjaGFuZ2UgLT5sYXN0X3NjaGVkdWxlZC4gVG8gZW5mb3JjZSBvcmRlcmluZyB3ZSBuZWVkCj4g
KwkgKiBhIHJlYWQgYmFycmllciBoZXJlLiBTZWUgZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKCkg
Zm9yIHRoZSBvdGhlcgo+ICsJICogc2lkZS4KPiArCSAqLwo+ICsJc21wX3JtYigpOwo+ICsKPiAr
CS8qIHN0YXkgb24gdGhlIHNhbWUgZW5naW5lIGlmIHRoZSBwcmV2aW91cyBqb2IgaGFzbid0IGZp
bmlzaGVkICovCj4gICAJaWYgKGZlbmNlICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2Up
KQo+ICAgCQlyZXR1cm47Cj4gICAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
