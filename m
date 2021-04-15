Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923C63641A8
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 14:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 772156E2C8;
	Mon, 19 Apr 2021 12:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36646E504
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 12:41:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LI/pX7xbscH/8SeWqNNxrJPJdr4eNo3lLD0DplJv3twJh9F4NV3Vq702i3p8CxR2SaU5L82N43Z/N66m1PZtvg5dsFhbxzz6L3eoC77L8d+N7p/w1noiKVf2H1bHqbqQLUAZ8owAHgSli6UdKjpM7OImmwGOmJOp3R1fCxdN5qqwruw83aeFzs3O6w2Vpgbc0DEO7JRB2Sus1lBHBMDmE3qXO5/+8n91kerayYqv5M0BHmsmi6AjKC4nymG8X3eyRZn+IYjEkewviu5YpX1wnSIThq15uuCrOfQ+vQ+ktHdLSTtdEb548wcQpKx/C2gbTEucSQcsiR5uiG1FL0YPTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0zZGT2QwCSXGrqyvLflYkC4oJPBDDIQHm2dcy9v5tps=;
 b=CN59DtNGTPFOuPABxwvSRuJ3jVSgnvPQO7fQZyH63AQAND7d3heJ+2pvXR7KDOKcwdxGx4Qt3m5Xir6/vQO9pk93KPftQuRWSB4CGmhTqvUH3thDb20kE3AARPhc1oBt3Qiq/6YcxZ6yK1xeUWeVhbf6v3XA1x4g66xvm9AIxX+qyBLmuKISZpwcJ5EWWDDzLU5PAy+1+xarh7B1DJHXbqB6YfQs4VGy5vJc5tsSX7f2Z60I9qGX9FhplsPapKt91BTyqhLRm5J4b2qJdyqIxPzLNtoNfRcQCI7xhqbuh078JPlGuH3FLsllmplbDEJZhJZ3eJbhpxxf1yJBQEP0JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0zZGT2QwCSXGrqyvLflYkC4oJPBDDIQHm2dcy9v5tps=;
 b=Hkol1UNXSDlNvVM8bTq5UtoinxOKyHEaS0zH7Dnm/hfr97pVkS4kMP265yFiBUuurt9KtRTAY43iHnrix4D9wZmIc0aeTc5pGK5ZPKsy8ipq6CkN+vvEFZDrup1Y5X1spFZbnBbVlCNHOViw+XtLLssA9uiedtL8UlWgLKYq4k4=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=windriver.com;
Received: from BN7PR11MB2579.namprd11.prod.outlook.com (2603:10b6:406:ab::21)
 by BN6PR11MB3956.namprd11.prod.outlook.com (2603:10b6:405:77::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 15 Apr
 2021 12:41:12 +0000
Received: from BN7PR11MB2579.namprd11.prod.outlook.com
 ([fe80::4c79:805b:e69d:948b]) by BN7PR11MB2579.namprd11.prod.outlook.com
 ([fe80::4c79:805b:e69d:948b%6]) with mapi id 15.20.4042.018; Thu, 15 Apr 2021
 12:41:12 +0000
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 jani.nikula@linux.intel.com, daniel@ffwll.ch, airlied@linux.ie
References: <20210414144828.22813-1-jun.miao@windriver.com>
 <338067c3-406e-a617-3efa-824787793e43@linux.intel.com>
From: "jun.miao" <jun.miao@windriver.com>
Message-ID: <1606bffe-f8c9-b619-9647-483393f87105@windriver.com>
Date: Thu, 15 Apr 2021 20:41:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <338067c3-406e-a617-3efa-824787793e43@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HKAPR04CA0002.apcprd04.prod.outlook.com
 (2603:1096:203:d0::12) To BN7PR11MB2579.namprd11.prod.outlook.com
 (2603:10b6:406:ab::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.214] (60.247.85.82) by
 HKAPR04CA0002.apcprd04.prod.outlook.com (2603:1096:203:d0::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Thu, 15 Apr 2021 12:41:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b7266382-057b-4739-204b-08d9000bc037
X-MS-TrafficTypeDiagnostic: BN6PR11MB3956:
X-Microsoft-Antispam-PRVS: <BN6PR11MB39567213F99AC616B830764F8E4D9@BN6PR11MB3956.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oUqEiaTNkqd4XP4k4FDld4TTUsmm3VYY0HED3doTJsleNsw8ILWWn4GV6UgE8tNtJSs1wrHbwPnMTjQCrXsFBA37ede2tcvBpmsH19LVO02Y0l5c5bRIpUsxcRJfjn73Q6q/66N4ZkGYi5x9LR37Cih2gMAQpNXzYVkrW5MFhupPtQeRyIHYdb8kH/Hd2V4ucAzj7MyWS40yZ9rsy79NRSHtOUS8il9eX8fg2PgEiCtvmYBLJ88OxysnSzNV6iQziu7T0Zwq7P6xfN8xzAUUn8i0rD2MelMKIEB2KkyNgB8YONXYzSJxLZgBE+6gyUFsxr/bVmhl3C6V6KxU8d0+HhW08qNr9VXS8XGLtaSFxUdTVoARyG8U5fbtKpgEv3zQklKAFRVDhMUyLb3LR4JEBzRfsIsXn/G0G9DPcvjTEIR8v/8dJPWhw3ZZTi4wp7IZebPbQJP6w+2E8eTcOEcZgJK17P7oTog+83JziReiSInuuIwmebbNv6b115FsyZv1Gx0VJdTg/zujXviqDqH0MKctbcjC9OfK4Dga9Gq1dqftXjh89GTloXs8G1bQEQ5ukI91CmMkWPGoCwhblPh8VvPOtgREwarEF2n4gjgcxfKgZuU8FFdeGXw9I+/9EueOLdzu6mxwJgG3F1g/rP2wkA/ohDDD8faoVrT2SYIQsAdZZioeOyJ/cRsAlKwACYv5mQqW0Tuu2wIx2RxNO3xzJMRLC4nxg3doBb1Be3zeQ94=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR11MB2579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(376002)(396003)(346002)(136003)(366004)(2906002)(316002)(83380400001)(6666004)(5660300002)(956004)(6706004)(2616005)(16576012)(6486002)(8676002)(66476007)(66556008)(86362001)(52116002)(66946007)(31696002)(38350700002)(4326008)(53546011)(8936002)(478600001)(26005)(31686004)(16526019)(186003)(38100700002)(36756003)(78286007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?OUtPbnR1NkdmRVlEd05sTmFzSkFQeFVOQUI2bHkzVnlVVWVrVWtHeExlSS9u?=
 =?utf-8?B?UkNHVnhLVkZzemQyS01qUVppRGNkNndXSzF6VGpPR1JZMVhDUjZZTHB4SlBI?=
 =?utf-8?B?T2VMRHA4NmE1T3I1LzVkK3NsUUFPYkI3Yyt0YllVbjhiR1ZCWlplaEljdkxD?=
 =?utf-8?B?REN3bVZoU0NsRFdDWkd1elpDelVvaDJKSXVVckt2RmVLcFM5Y3NHSnBQOXVr?=
 =?utf-8?B?MzEvMElDejNRcCtveFFLaWtVaVlPOWVBdFNQNUttaDdVcFpQaHJlOUc1MEhC?=
 =?utf-8?B?b1pXZncyUzlQMjJJenRlWjc1Qzc2RmxoMFM0V3VFRkIvRURSbkxyMXFJVTIv?=
 =?utf-8?B?ZWFhajBDSWM5cy84cHNwTTlCQXJXbnk3N0kwaXlqYWFMcGFNY1M1cHp1VGdB?=
 =?utf-8?B?NWE4dVZiZU9HYzJsNldGaFZQekx4aHU3TldidGt6YVdDWG96TTRVY3Nzc0dV?=
 =?utf-8?B?NE5rTEdqVnlZUC9ndWZuUkhRZ0lwYUpsSEsvcm5nbzVqYUdsNHdhTStTeHkz?=
 =?utf-8?B?b1V3QWVrSTdyOWpPVFlaKzJHbENZdkZlTUU2aVRKUVdZOUJYeXdjd0dqNEEw?=
 =?utf-8?B?a2duKzQ4dVhZN2RnU0dLMGU2VWRFV1RobWN1M0VSOEMwKzNIKysvNjMzbDAx?=
 =?utf-8?B?RHhOTG5IZk5qTU1EMGVpaHNPVEY3MjZKcVJuM3hTZStNeFUwTG04RVR2d3hk?=
 =?utf-8?B?Z04zWURpNmZKa0pKWjYzQnBRTUlUWnNDbG5zNzcrSTNydVdGQmc2dTJ2ckY1?=
 =?utf-8?B?ZWNKbktsWXFZUTM2Q25TeXBFQ0t3RklSQ3RhdFlrOHFhOHVkdlZtdWx2bjBv?=
 =?utf-8?B?T1M5YjRNQy85bDNjdGlCV1VZcGRWcjZTSnN5YUxHNk5TbFRRVnQ4c2pJeVZw?=
 =?utf-8?B?TjZDczU3ZXgxRnVEcjlBem1rR20zVXN4d3dHVmtuY0JYMFRrYjRNbDFSakJj?=
 =?utf-8?B?cEVtM05saG9ab2w3N3JJZm5BTWdmQjlLcnhrWmdRTysxT2FHOUJ1dllicm9w?=
 =?utf-8?B?ejJ2V01RdlZvSkFERVN2ZE51V0JHUFJyTGhUUmhxV3ZLMmtUbUxvVkgzdDJD?=
 =?utf-8?B?aWdJcHZ0RFM4azZQTjBtK2VtazVXR2VSU3MvaWJVeTM0NHV6dGNsVjI3OGR6?=
 =?utf-8?B?QVFwWlNzazdxK0hmQnZmZmlrUUl5WXlrYnlVYjIwQzZ0QmVNMVh1T20xaW1U?=
 =?utf-8?B?cEx3S2QwQVNVUlpiVHZiYWZaVFJRNzAvVVZUclVMY1BCZFpuMUo1MzEwdzJR?=
 =?utf-8?B?T3dJbmdJNDNuTGJ6U3FvL1d1Q1hDelFPNEQwZ3o0bUp4d2ZBTlIxUEwwQ0FD?=
 =?utf-8?B?UE55aW53ck1TRWJmUGlLOUtQQkV0Q2k4VS9SSTNBZkMxNWtxc1k1UWpscFRp?=
 =?utf-8?B?QS9sMDh1WWZ1V1F4aEE0TUdFemJ3THpOTnc5b3dpVFJGQlc3TjMydXBOc3lM?=
 =?utf-8?B?cHNUK3JPSnRaU2tjVERlS245OUpvNFhRTFZtV0grOERrdUI4M2V6WHVMNXVj?=
 =?utf-8?B?Q3Q0OW5MczhsV3hibE0yY1RIL0VFajQrQmVKc0xINmNNZDJqVGZ4NVQ2clFv?=
 =?utf-8?B?eU05WTlESmh5Q0x2S0xiUkFna2pjTVREc2YrbW8vY2plbFUyNk9OZlRSdXV5?=
 =?utf-8?B?bFBMMnVCRmZUUWJwTHZWOUNrNU9zV2MxdnlNeHg5WEhDbDhnbTBybkozQWxo?=
 =?utf-8?B?a3hxL2x5RjJFQmlvTDBBSFNkOUdud0YwcXQ3STJ0ZllhOVluWEZLMmt4L2kx?=
 =?utf-8?Q?NW8dcs3pAodumoBKeZe2MQhBGvBPANjQVqj+9mM?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7266382-057b-4739-204b-08d9000bc037
X-MS-Exchange-CrossTenant-AuthSource: BN7PR11MB2579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2021 12:41:12.1622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JioH2y3ffKHe0t3qG5wLkqGA2P8bue0CKML7M6rP19Q3umdtCqJCVLUnAdIzzZhRaNtBt3WftxOsD4X+/109eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3956
X-Mailman-Approved-At: Mon, 19 Apr 2021 12:28:02 +0000
Subject: Re: [Intel-gfx] [PATCH][V2] drm/i915/gt: Fix a lockdep warning on
 RT kernel
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDQvMTUvMjEgNzoxMiBQTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gW1BsZWFzZSBub3Rl
OiBUaGlzIGUtbWFpbCBpcyBmcm9tIGFuIEVYVEVSTkFMIGUtbWFpbCBhZGRyZXNzXQo+Cj4gSGks
Cj4KPiBPbiAxNC8wNC8yMDIxIDE1OjQ4LCBKdW4gTWlhbyB3cm90ZToKPj4gRG9uYHQgc2ltcGxl
IGRpc2FibGUgYWxsIHRoZSBIRC1pcnEsIHNob3VsZCByYWNlIHRoZSByZWdpb24gaW4gdGhlCj4+
IGludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnEoKSBvbmx5Lgo+Pgo+Cj4gV2hhdCBpcyBIRC1p
cnEsIEkgYW0sIG5vdCBmYW1pbGlhciB3aXRoIHRoYXQgdGVybT8KCkRpc2FibGUgbG9jYWwgaW50
ZXJydXB0IGRlbGl2ZXJ5IGZyb20gSGFyZHdhcmUgb2YgY3B1LjotKQoKVGhhbmtzLAoKSnVuCgo+
Cj4+IEJVRzogc2xlZXBpbmcgZnVuY3Rpb24gY2FsbGVkIGZyb20gaW52YWxpZCBjb250ZXh0IGF0
IAo+PiBrZXJuZWwvbG9ja2luZy9ydG11dGV4LmM6OTY5Cj4+IMKgwqAgIzA6IGZmZmY4OWM0YzAw
Y2E5NzAgKCh3cV9jb21wbGV0aW9uKWV2ZW50cyl7Ky4rLn0tezA6MH0sIGF0OiAKPj4gcHJvY2Vz
c19vbmVfd29yaysweDFjZi8weDZkMAo+PiDCoMKgICMxOiBmZmZmYTQzM2MxZjUzZTYwIAo+PiAo
KHdvcmtfY29tcGxldGlvbikoJmVuZ2luZS0+cmV0aXJlX3dvcmspKXsrLisufS17MDowfSwgYXQ6
IAo+PiBwcm9jZXNzX29uZV93b3JrKzB4MWNmIDB4NmQKPj4gwqDCoCAjMjogZmZmZjg5YzRjY2Iw
YTBhOCAoa2VybmVsX2NvbnRleHQpeysuKy59LXswOjB9LCBhdDogCj4+IGVuZ2luZV9yZXRpcmUr
MHg2Mi8weDExMCBbaTkxNV0KPj4gwqDCoCAjMzogZmZmZjg5YzRjZjY4MjMwMCAod2FrZXJlZi5t
dXRleCMzKXsrLisufS17MDowfSwgYXQ6IAo+PiBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3QrMHgy
MC8weDYwIFtpOTE1XQo+PiDCoMKgICM0OiBmZmZmODljNGNjYjA4Mzk4ICgmYi0+aXJxX2xvY2sp
eysuKy59LXswOjB9LCBhdDogCj4+IGludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnErMHgyMC8w
eGQwIFtpOTE1XQo+PiDCoCBpcnEgZXZlbnQgc3RhbXA6IDIxMjYKPj4gwqAgaGFyZGlycXMgbGFz
dMKgIGVuYWJsZWQgYXQgKDIxMjUpOiBbPGZmZmZmZmZmYmIxMzQ3Mzk+XSAKPj4gY2FuY2VsX2Rl
bGF5ZWRfd29yaysweGE5LzB4YzAKPj4gwqAgaGFyZGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoMjEy
Nik6IFs8ZmZmZmZmZmZjMDUwN2ZlNj5dIAo+PiBfX2ludGVsX2JyZWFkY3J1bWJzX3BhcmsrMHg3
Ni8weDgwIFtpOTE1XQo+PiDCoCBzb2Z0aXJxcyBsYXN0wqAgZW5hYmxlZCBhdCAoMCk6IFs8ZmZm
ZmZmZmZiYjEwOTljZT5dIAo+PiBjb3B5X3Byb2Nlc3MrMHg2M2UvMHgxNjMwCj4+IMKgIHNvZnRp
cnFzIGxhc3QgZGlzYWJsZWQgYXQgKDApOiBbPDAwMDAwMDAwMDAwMDAwMDA+XSAweDAKPj4gwqAg
Q1BVOiAzIFBJRDogMjgxIENvbW06IGt3b3JrZXIvMzozIE5vdCB0YWludGVkIAo+PiA1LjEwLjI3
LXJ0MzQteW9jdG8tcHJlZW1wdC1ydCAjMQo+PiDCoCBIYXJkd2FyZSBuYW1lOiBJbnRlbChSKSBD
bGllbnQgU3lzdGVtcyBOVUM3aTVETktFL05VQzdpNUROQiwgQklPUyAKPj4gRE5LQkxpNXYuODZB
LjAwNjQuMjAxOS4wNTIzLjE5MzMgMDUvMjMgMjAxOQo+PiDCoCBXb3JrcXVldWU6IGV2ZW50cyBl
bmdpbmVfcmV0aXJlIFtpOTE1XQo+PiDCoCBDYWxsIFRyYWNlOgo+PiDCoMKgIHNob3dfc3RhY2sr
MHg1Mi8weDU4Cj4+IMKgwqAgZHVtcF9zdGFjaysweDdkLzB4OWYKPj4gwqDCoCBfX19taWdodF9z
bGVlcC5jb2xkKzB4ZTMvMHhmNAo+PiDCoMKgIHJ0X3NwaW5fbG9jaysweDNmLzB4YzAKPj4gwqDC
oCA/IGludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnErMHgyMC8weGQwIFtpOTE1XQo+PiDCoMKg
IGludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnErMHgyMC8weGQwIFtpOTE1XQo+PiDCoMKgIHNp
Z25hbF9pcnFfd29yaysweDI0MS8weDY2MCBbaTkxNV0KPj4gwqDCoCA/IF9fdGhpc19jcHVfcHJl
ZW1wdF9jaGVjaysweDEzLzB4MjAKPj4gwqDCoCA/IGxvY2tkZXBfaGFyZGlycXNfb2ZmKzB4MTA2
LzB4MTIwCj4+IMKgwqAgX19pbnRlbF9icmVhZGNydW1ic19wYXJrKzB4M2YvMHg4MCBbaTkxNV0K
Pj4gwqDCoCBfX2VuZ2luZV9wYXJrKzB4YmQvMHhlMCBbaTkxNV0KPj4gwqDCoCBfX19faW50ZWxf
d2FrZXJlZl9wdXRfbGFzdCsweDIyLzB4NjAgW2k5MTVdCj4+IMKgwqAgX19pbnRlbF93YWtlcmVm
X3B1dF9sYXN0KzB4NTAvMHg2MCBbaTkxNV0KPj4gwqDCoCBpbnRlbF9jb250ZXh0X2V4aXRfZW5n
aW5lKzB4NWYvMHg3MCBbaTkxNV0KPj4gwqDCoCBpOTE1X3JlcXVlc3RfcmV0aXJlKzB4MTM5LzB4
MmQwIFtpOTE1XQo+PiDCoMKgIGVuZ2luZV9yZXRpcmUrMHhiMC8weDExMCBbaTkxNV0KPj4gwqDC
oCBwcm9jZXNzX29uZV93b3JrKzB4MjZkLzB4NmQwCj4+IMKgwqAgd29ya2VyX3RocmVhZCsweDUz
LzB4MzMwCj4+IMKgwqAga3RocmVhZCsweDFiMC8weDFkMAo+PiDCoMKgID8gcHJvY2Vzc19vbmVf
d29yaysweDZkMC8weDZkMAo+PiDCoMKgID8gX19rdGhyZWFkX3BhcmttZSsweGMwLzB4YzAKPj4g
wqDCoCByZXRfZnJvbV9mb3JrKzB4MjIvMHgzMAo+Pgo+PiBGaXhlczogOWQ1NjEyY2ExNjVhICgi
ZHJtL2k5MTUvZ3Q6IERlZmVyIGVuYWJsaW5nIHRoZSBicmVhZGNydW1iIAo+PiBpbnRlcnJ1cHQg
dG8gYWZ0ZXIgc3VibWlzc2lvbiIpCj4+IFNpZ25lZC1vZmYtYnk6IEp1biBNaWFvIDxqdW4ubWlh
b0B3aW5kcml2ZXIuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfYnJlYWRjcnVtYnMuYyB8IDggKysrKy0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwo+PiBpbmRleCAzNGE2NDVkLi4wNTg5YjFhIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPj4gQEAg
LTEwMywxMCArMTAzLDEyIEBAIHN0YXRpYyB2b2lkIAo+PiBfX2ludGVsX2JyZWFkY3J1bWJzX2Rp
c2FybV9pcnEoc3RydWN0IGludGVsX2JyZWFkY3J1bWJzICpiKQo+Pgo+PiDCoCBzdGF0aWMgdm9p
ZCBpbnRlbF9icmVhZGNydW1ic19kaXNhcm1faXJxKHN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAq
YikKPj4gwqAgewo+PiAtwqDCoMKgwqAgc3Bpbl9sb2NrKCZiLT5pcnFfbG9jayk7Cj4+ICvCoMKg
wqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+PiArCj4+ICvCoMKgwqDCoCBzcGluX2xvY2tfaXJx
c2F2ZSgmYi0+aXJxX2xvY2ssIGZsYWdzKTsKPj4gwqDCoMKgwqDCoCBpZiAoYi0+aXJxX2FybWVk
KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfX2ludGVsX2JyZWFkY3J1bWJzX2Rpc2Fy
bV9pcnEoYik7Cj4+IC3CoMKgwqDCoCBzcGluX3VubG9jaygmYi0+aXJxX2xvY2spOwo+PiArwqDC
oMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmYi0+aXJxX2xvY2ssIGZsYWdzKTsKPj4gwqAg
fQo+Pgo+PiDCoCBzdGF0aWMgdm9pZCBhZGRfc2lnbmFsaW5nX2NvbnRleHQoc3RydWN0IGludGVs
X2JyZWFkY3J1bWJzICpiLAo+PiBAQCAtMzM3LDkgKzMzOSw3IEBAIHZvaWQgX19pbnRlbF9icmVh
ZGNydW1ic19wYXJrKHN0cnVjdCAKPj4gaW50ZWxfYnJlYWRjcnVtYnMgKmIpCj4+IMKgwqDCoMKg
wqAgLyogS2ljayB0aGUgd29yayBvbmNlIG1vcmUgdG8gZHJhaW4gdGhlIHNpZ25hbGVycywgYW5k
IGRpc2FybSAKPj4gdGhlIGlycSAqLwo+PiDCoMKgwqDCoMKgIGlycV93b3JrX3N5bmMoJmItPmly
cV93b3JrKTsKPj4gwqDCoMKgwqDCoCB3aGlsZSAoUkVBRF9PTkNFKGItPmlycV9hcm1lZCkgJiYg
IWF0b21pY19yZWFkKCZiLT5hY3RpdmUpKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
bG9jYWxfaXJxX2Rpc2FibGUoKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2lnbmFs
X2lycV93b3JrKCZiLT5pcnFfd29yayk7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9j
YWxfaXJxX2VuYWJsZSgpOwo+Cj4gVW5mb3J0dW5hdGVseSB0aGVyZSBpcyBhbm90aGVyIGxvY2sg
aW5zaWRlIHNpZ25hbF9pcnFfd29yayAocnEtPmxvY2spCj4gd2hpY2ggbmVlZHMgdG8gYmUgdGFr
ZW4gaXJxIHNhZmUuCj4KT2ssIGkgd2lsbCBjaGFuZ2UgdGhlIGxlZnQgc3Bpbl9sb2NrIC0+IHNw
aW5fbG9ja19pcnFzYXZlLgoKSW4gZmFjdCzCoCBpbnNpZGUgc2lnbmFsX2lycV93b3JrLMKgIGlu
dGVsX2JyZWFkY3J1bWJzX2FybV9pcnEgCigmYi0+aXJxX2xvY2spwqAgd2hpY2ggYWxzbyBuZWVk
cyB0byBiZSB0YWtlbiBpcnEgc2FmZS4KClRoYW5rcywKCkp1bgoKPiBSVCBwYXRjaGVzIGFyZSBp
biB0cmVlIG9yIG91dCBvZiB0aGUgdHJlZSB0aGVzZSBkYXlzPwoKSSBiYXNlIG9uIHRoZSBtYWlu
bGluZSBrZXJuZWwgdHJlZe+8jCBhbmQgdGhpcyBCVUcgd2FybmluZyB3aWxsIG5vdCAKaGFwcGVu
LsKgIEJ1dCBSVCB2NS4xMCB3aWxsIGNvbXBsYWluICJCVUcgd2FybmluZyIsIHNvIGkgd2FudCB0
aGlzIHBhdGNoIAp3aWxsIHNvbHZlIFJUIFdBUk5JTkcgd2l0aG91dCBhZmZlY3RpbmcgbWFpbmxp
bmUgcGVyZm9ybWFuY2UgaW4gbWFpbmxpbmUgCnRyZWUuCgpUaGFua3MsCgpKdW4KCgo+Cj4gUmVn
YXJkcywKPgo+IFR2cnRrbwo+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbmRfcmVz
Y2hlZCgpOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgfQo+PgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
