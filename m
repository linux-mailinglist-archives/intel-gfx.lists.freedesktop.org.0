Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3043B1BED
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57BF6E8F1;
	Wed, 23 Jun 2021 14:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2089.outbound.protection.outlook.com [40.107.212.89])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEB26E8EF;
 Wed, 23 Jun 2021 14:02:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Laatx25QNTeML8NFIoTP2rdryDSN9pkR+a4m/paytCepE50Ccn9lltsq0oNRvfszyqyt+MvCuLjaPamS4z1bJWHFMpkCRWu1ZqE9pe4eVN+rKhhGqZ7YWIqjIq8mZ0hQGw/jqCAzTVx3Iq6HY4M5s2hP6McnyO8SrOSkHdt7KPLJ+0KvlOb3sWAWNZDvUb9w1bgAPVRL9Y++ojIPhwRNSfUTeOY+wk1XghDHvx/vfeb0R0ekW2bFcNgofo5oChI6Ii7R1H4B1WcxTZnGzKrGK4R2loYMTH1OvnJkviQS2eLE20zLhrsnFqMaJlEjFTG+naKhijgjf21RI2pXaxNRug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kj/mz8hNtbodQSqe3wZXFR5Z5vUYsc2sBVBJi+EnV2M=;
 b=fEyjQNIVlrFhvff9WlP2vJ2+jdGbV29Iw0ILvqQda/Y8I1OCeobVSh2wMkb2OqDRJdjpy4M1Y7csmxABIPLIi23SPaMcE4+QNBmffVL+5xA0gL+7zlOVpRkJhr0jYXcIUp+PRfIbkZggUSgS4CoJDXKl6W9pX0GhJvaVFtUAkBBWnOpblM+tQkpg88Ll7+3A9p0/ZWl4RGHeZf12o+20Q8TmnbwwiaaN4n4HYP1tYQ4tDJbWo3Fp6501gaSnCAA+UJI7Yq77tYleIIBpuM4jkvAWta6bomnhrXJpIPQ4k7ZmpR/nUjNmvEy402kGx2ltjPCHFJQz1gSuk5Ip6teJBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kj/mz8hNtbodQSqe3wZXFR5Z5vUYsc2sBVBJi+EnV2M=;
 b=O1dSyFIg0cGoQfnbRlyT43vdk8gpQFoOy/IcqGk3I3p86EBcQrO5wq5LTRGIDWsRV/KBRPS3XPv3ZCYSxf0CPCt0/XbU3hNFDapTUEwI7fRTxNaUNtTezIL39S2C3ncbnryQocQivnVwWbwBRFNCKaaYIWxcAWDFhuWlAiRbFig=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3968.namprd12.prod.outlook.com (2603:10b6:208:16f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 14:02:31 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 14:02:31 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-16-daniel.vetter@ffwll.ch>
 <CAP+8YyHPLpe6jM7gz3ZNL3QqdHiCdL0P5cVMS7ddNgBSJmutSA@mail.gmail.com>
 <CAKMK7uGOrro7-2+OVJse3CcuZO66kreq-XjL45Ay5vhL=2TZvQ@mail.gmail.com>
 <3bf45006-4256-763d-601b-3a25a7057820@amd.com>
 <CAP+8YyH1xyYVfEkYVudCn+=jyiWxoZgDndrcSLM0Qq=E9_GDKg@mail.gmail.com>
 <421cb10d-92a7-0780-3d38-d4cabd008c0c@amd.com>
 <CAKMK7uEjc+tZCKB8Yu3_zAjOgYLPBhnYebHOXgxpFaSunuPCfA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <682d2f3b-8ba3-cccb-1385-1f74f0b06ada@amd.com>
Date: Wed, 23 Jun 2021 16:02:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAKMK7uEjc+tZCKB8Yu3_zAjOgYLPBhnYebHOXgxpFaSunuPCfA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:871f:87e2:f394:e667]
X-ClientProxiedBy: FR3P281CA0049.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::22) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:871f:87e2:f394:e667]
 (2a02:908:1252:fb60:871f:87e2:f394:e667) by
 FR3P281CA0049.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4a::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.9 via Frontend Transport; Wed, 23 Jun 2021 14:02:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce169a59-1e12-408a-dfbe-08d9364f8b29
X-MS-TrafficTypeDiagnostic: MN2PR12MB3968:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3968E678BAC7766F579A971B83089@MN2PR12MB3968.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ipUOXL7E6hz6FM343luKW3RKHUHX41nAbZR3PKj4ue0yeswdc52A6tkN/dfGDrbsD+sl6JYRdT1B6VixBjai6EabCI7/5YvBG42/EIF4ZYe9iHKfnOizUKKRkA3eyQK4BXSFgKEss58zp5owrjLKxvAQQGOeXHckEmpj9QlElQ0g2N6fqNK0LVutc+r1wsyaEmFHde8cROh5xjvRTUIchsvfSiGTTHHAd6uwx2/nSbvrviYpKT5yJ3Clc57nqCd7mmO3K/7kTL9UVzGtWA3NKXPoq7X6yzLhJj7mSfQPPFcszl0WYQ8Zdhzh2SULKUF76AQvG82FzncRparYm4gQ3qzHgYeL+u11JRCiWM/gzsasZZuhqYGWRm6JiSxIgjcOmsY8Q05FyqxVTeDbOPIPEiWio/eXlr6k3PmHs8nC/4tMiLKnr1d+/HJqrhCA0k8LTyaaeL1kgHSrr2TTIAaQYGC4ANCJgszvNw5sgZ+O8SS+V1qh0PWoz0GrMRj2reQ9N2s4GivcS7o3RKVqpPBZOiE6mcRlZOMjdJthSYsRgwrpziUrtx4fm1ELLasi4NKXWvuglT+4eumyXUC2U2QMbv1BRDXLfUEIJyS0FQKRLkCXahjz0TPDlO9jcFc7qL/udI5Je5ROiKY+4i8kxNozPHeKpIlVB1HOPPJUWuiUhPc5XadwCMXPo8RnLjDBjrbzOx3INoXtCTmuUEARGeC+OeMlDiBl+CZp66gPxstBVR4f6N9R7AaogNtzAK1VZXh0OimsIbZdlIdARWd6rw6PpKcmQO546U3xyzXngLwAh9ZzMvblhx3REIbSC8qF+ThkA2+Vk5/kWn6LUECjHbIi/X0gGGQvFyu2x8R4pVk7g9s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(39860400002)(366004)(136003)(54906003)(66574015)(2906002)(66556008)(66476007)(66946007)(4326008)(7416002)(53546011)(186003)(5660300002)(16526019)(30864003)(6486002)(478600001)(83380400001)(38100700002)(86362001)(36756003)(6666004)(8936002)(31686004)(6916009)(8676002)(45080400002)(31696002)(966005)(2616005)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVErVVJGTUVtb3krWk8zdGF0dVU0WkppU0YvaUMxRS9sZWZnYkZzK2g5NnhR?=
 =?utf-8?B?RVhabEkvc3V1OWV1SkNjT1RwN1dqUzJvMW5JMVBvUytnTTVEY2pZdjh3K3o3?=
 =?utf-8?B?TVlZdXhXNjB5ZkhiT0JUbWc5OFh6VXNMcXExVHJQM3FGZlEyMzV1YVF6YmVy?=
 =?utf-8?B?MTc1MnF2ZVNhRE9uYkJPTmdGSWZTNFZYaW5pdjhRRnlyY0lhcjMzR1BFMXdn?=
 =?utf-8?B?RUdSbG13L1BqYVJkRE9zcDFoekl2QmxSb0xqQ0Y5Ymh2aWFERStGMFMrd0NT?=
 =?utf-8?B?K0R5U1BTbGtSWENza0VuRVNLT0VLY1B6cDhlcXQ4Q0FXY0tsd2RCVlFwK1V4?=
 =?utf-8?B?N1JZOVFMdkpPeDBDYnlLdnVrV3d0Wi9iWDNKUGhhR2tBc1BEQmRUcnVQK2wx?=
 =?utf-8?B?Z3hBQkhhbEI1c3VvMHZndHN3R1pKazhDN3c5MTFiZmhMZVhSODJUZVh3R1RQ?=
 =?utf-8?B?Z0hHdjlFSkQ1S1hDQzVxSVhGVEcyNDRDWkVsT0o4Z2dLclFBcVZLaS92aU92?=
 =?utf-8?B?N2ZpTWZuamNBM01XanVJNHhtOWVNUjRqRGZleHBCTHptZXRHL3BPa1VyZE1o?=
 =?utf-8?B?Ukp2aGoyYm1Sd1dyVnpCdTh4Q2ZMMDhIeWtXb1pHNGxQSk5KTm1tOHpYbXBK?=
 =?utf-8?B?SDVINFRvalhzaTBnUi9NUVFJTGtBMHQwOFR6OGcvRmV3akVoUkY5MFRQZDFj?=
 =?utf-8?B?aDdWNUpMdExYUlcwV043Lzc3WnlXVVp6R3YvNlAzbitaNWcyaVNuVUx2ZzJR?=
 =?utf-8?B?QUV2akNpOHFseTFya3NBaXdKVHU2c0IyK1h2aVUrZnorVzNoRWl3ZklsNmpT?=
 =?utf-8?B?VVhSN1ZHZmRyWjVLckdPR1p2VXhaeTlEN0pzQU84Nm8zejBFMFZ3TXU3dkVw?=
 =?utf-8?B?S3F1dzhkLzFDRHFmanVzWHRoKzZaai80VWFTejY4dGRJVjhYQUt0OHUzL3lV?=
 =?utf-8?B?d1hleHdPTlNNYUcrZ2w1ZEFZU1BVRjNUeUV1Z2R0MHZLK0pmUUh6V0xXVWU5?=
 =?utf-8?B?MnR1UXBFV0lVayt6djdxajdOZUh6UmlKUnlCcU1DR2Y1YWx3YTFOZWN0aWZV?=
 =?utf-8?B?ZzhOUHRpVitjQWpvWW85V2ZTQmZOWTVUaEF1dDNPMkxHTTRrcVBGdHQ3OGE5?=
 =?utf-8?B?ZElkM2VaMDBhVVJSVmd4WjhmUzNXbEJCbGlMWEg4WCtLQXIraENvVGo0YjBP?=
 =?utf-8?B?T1Y3RVU5Q3Nlc1daOThDQVNkSmgyZk9zMTBpcXNDb2xHWnZ3OE9TSGlnVng5?=
 =?utf-8?B?S3ZNLzZFK1R4c1FNRDZsN0k4NmQvZFVMYXJvMmorcWc2Z09PcmQyVG9Ock03?=
 =?utf-8?B?aFhkdTJDbmxKQnZNamt1YUZheFUyTDdOK1lqVTdUMDZna3hEc3dPWmkzeFhp?=
 =?utf-8?B?SW4yM1FFTzZQUnloOUFwN0tFL3VlWWhSVmdwa0hzSHdzeFJkL3VrcVZDSlVH?=
 =?utf-8?B?ZFhabzk1SlRMVU9iaE5kMlhSSXFzWThmZXhxU0FwQmJueFF5UVNhT0tQNUZ6?=
 =?utf-8?B?NmdDd09zdjJnci8xTTZIMkpTdGVkWFFCOG42Vi93YXQvbFMya01KV3VGTTk2?=
 =?utf-8?B?bnlEUTNMNkYreVJRYWUwRWN5eG9HOE9uMXUwZG8raURJVCtZYUVyci9BUnY3?=
 =?utf-8?B?Rm1nM3N5NTJWbVE2UGIrMnpacVlFMXpJa1ZGY3pPSHJ4K0ptOWljSlRVV2pH?=
 =?utf-8?B?QmZHQW5tR3NKbkZDYjlNQkpaRTgxaUx6cTdmWDkxdEdEbHdxL0t4NzBWeGVm?=
 =?utf-8?B?THNNUFM1aUhONHhQRm96WGxIeWp1ckIzSWJvWTJMamhBdlpYUi8yc0R1MFdo?=
 =?utf-8?B?YjlyTEpQVEZQdVlKdEk4VGpJSlRveGhWbkc2MFNlSEd3TlRxZVpYVWNZSDUy?=
 =?utf-8?Q?tu/GJZhIcJIBZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce169a59-1e12-408a-dfbe-08d9364f8b29
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 14:02:31.8037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pZYHkF+P+MIrF+zweu5bkq09CuxvHGFOurj+r1P4ANxdRPnr8BeMB/1y/K3xyL0B
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3968
Subject: Re: [Intel-gfx] [PATCH 15/15] RFC: drm/amdgpu: Implement a proper
 implicit fencing uapi
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Alex Deucher <alexander.deucher@amd.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>, Dave Airlie <airlied@gmail.com>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjMuMDYuMjEgdW0gMTU6NDkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgSnVu
IDIzLCAyMDIxIGF0IDM6NDQgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOgo+PiBBbSAyMy4wNi4yMSB1bSAxNTozOCBzY2hyaWViIEJhcyBOaWV1
d2VuaHVpemVuOgo+Pj4gT24gV2VkLCBKdW4gMjMsIDIwMjEgYXQgMjo1OSBQTSBDaHJpc3RpYW4g
S8O2bmlnCj4+PiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPj4+PiBBbSAyMy4w
Ni4yMSB1bSAxNDoxOCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+Pj4+IE9uIFdlZCwgSnVuIDIz
LCAyMDIxIGF0IDExOjQ1IEFNIEJhcyBOaWV1d2VuaHVpemVuCj4+Pj4+IDxiYXNAYmFzbmlldXdl
bmh1aXplbi5ubD4gd3JvdGU6Cj4+Pj4+PiBPbiBUdWUsIEp1biAyMiwgMjAyMSBhdCA2OjU1IFBN
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Pj4+Pj4+IFdB
Uk5JTkc6IEFic29sdXRlbHkgdW50ZXN0ZWQgYmV5b25kICJnY2MgaXNuJ3QgZHlpbmcgaW4gYWdv
bnkiLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSW1wbGljaXQgZmVuY2luZyBkb25lIHByb3Blcmx5IG5lZWRz
IHRvIHRyZWF0IHRoZSBpbXBsaWNpdCBmZW5jaW5nCj4+Pj4+Pj4gc2xvdHMgbGlrZSBhIGZ1bm55
IGtpbmQgb2YgSVBDIG1haWxib3guIEluIG90aGVyIHdvcmRzIGl0IG5lZWRzIHRvIGJlCj4+Pj4+
Pj4gZXhwbGljaXRseS4gVGhpcyBpcyB0aGUgb25seSB3YXkgaXQgd2lsbCBtZXNoIHdlbGwgd2l0
aCBleHBsaWNpdAo+Pj4+Pj4+IGZlbmNpbmcgdXNlcnNwYWNlIGxpa2UgdmssIGFuZCBpdCdzIGFs
c28gdGhlIGJhcmUgbWluaW11bSByZXF1aXJlZCB0bwo+Pj4+Pj4+IGJlIGFibGUgdG8gbWFuYWdl
IGFueXRoaW5nIGVsc2UgdGhhdCB3YW50cyB0byB1c2UgdGhlIHNhbWUgYnVmZmVyIG9uCj4+Pj4+
Pj4gbXVsdGlwbGUgZW5naW5lcyBpbiBwYXJhbGxlbCwgYW5kIHN0aWxsIGJlIGFibGUgdG8gc2hh
cmUgaXQgdGhyb3VnaAo+Pj4+Pj4+IGltcGxpY2l0IHN5bmMuCj4+Pj4+Pj4KPj4+Pj4+PiBhbWRn
cHUgY29tcGxldGVseSBsYWNrcyBzdWNoIGFuIHVhcGkuIEZpeCB0aGlzLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gTHVja2lseSB0aGUgY29uY2VwdCBvZiBpZ25vcmluZyBpbXBsaWNpdCBmZW5jZXMgZXhpc3Rz
IGFscmVhZHksIGFuZAo+Pj4+Pj4+IHRha2VzIGNhcmUgb2YgYWxsIHRoZSBjb21wbGV4aXRpZXMg
b2YgbWFraW5nIHN1cmUgdGhhdCBub24tb3B0aW9uYWwKPj4+Pj4+PiBmZW5jZXMgKGxpa2UgYm8g
bW92ZXMpIGFyZSBub3QgaWdub3JlZC4gVGhpcyBzdXBwb3J0IHdhcyBhZGRlZCBpbgo+Pj4+Pj4+
Cj4+Pj4+Pj4gY29tbWl0IDE3N2FlMDliNWQ2OTlhNWViZDFjYWZjZWU3ODg4OWRiOTY4YWJmNTQK
Pj4+Pj4+PiBBdXRob3I6IEFuZHJlcyBSb2RyaWd1ZXogPGFuZHJlc3g3QGdtYWlsLmNvbT4KPj4+
Pj4+PiBEYXRlOiAgIEZyaSBTZXAgMTUgMjA6NDQ6MDYgMjAxNyAtMDQwMAo+Pj4+Pj4+Cj4+Pj4+
Pj4gICAgICAgIGRybS9hbWRncHU6IGludHJvZHVjZSBBTURHUFVfR0VNX0NSRUFURV9FWFBMSUNJ
VF9TWU5DIHYyCj4+Pj4+Pj4KPj4+Pj4+PiBVbmZvcnR1YW50ZWx5IGl0J3MgdGhlIHdyb25nIHNl
bWFudGljcywgYmVjYXVzZSBpdCdzIGEgYm8gZmxhZyBhbmQKPj4+Pj4+PiBkaXNhYmxlcyBpbXBs
aWNpdCBzeW5jIG9uIGFuIGFsbG9jYXRlZCBidWZmZXIgY29tcGxldGVseS4KPj4+Pj4+Pgo+Pj4+
Pj4+IFdlIF9kb18gd2FudCBpbXBsaWNpdCBzeW5jLCBidXQgY29udHJvbCBpdCBleHBsaWNpdGx5
LiBGb3IgdGhpcyB3ZQo+Pj4+Pj4+IG5lZWQgYSBmbGFnIG9uIHRoZSBkcm1fZmlsZSwgc28gdGhh
dCBhIGdpdmVuIHVzZXJzcGFjZSAobGlrZSB2dWxrYW4pCj4+Pj4+Pj4gY2FuIG1hbmFnZSB0aGUg
aW1wbGljaXQgc3luYyBzbG90cyBleHBsaWNpdGx5LiBUaGUgb3RoZXIgc2lkZSBvZiB0aGUKPj4+
Pj4+PiBwaXBlbGluZSAoY29tcG9zaXRvciwgb3RoZXIgcHJvY2VzcyBvciBqdXN0IGRpZmZlcmVu
dCBzdGFnZSBpbiBhIG1lZGlhCj4+Pj4+Pj4gcGlwZWxpbmUgaW4gdGhlIHNhbWUgcHJvY2Vzcykg
Y2FuIHRoZW4gZWl0aGVyIGRvIHRoZSBzYW1lLCBvciBmdWxseQo+Pj4+Pj4+IHBhcnRpY2lwYXRl
IGluIHRoZSBpbXBsaWNpdCBzeW5jIGFzIGltcGxlbWVudGVkIGJ5IHRoZSBrZXJuZWwgYnkKPj4+
Pj4+PiBkZWZhdWx0Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gQnkgYnVpbGRpbmcgb24gdGhlIGV4aXN0aW5n
IGZsYWcgZm9yIGJ1ZmZlcnMgd2UgYXZvaWQgYW55IGlzc3VlcyB3aXRoCj4+Pj4+Pj4gb3Blbmlu
ZyB1cCBhZGRpdGlvbmFsIHNlY3VyaXR5IGNvbmNlcm5zIC0gYW55dGhpbmcgdGhpcyBuZXcgZmxh
ZyBoZXJlCj4+Pj4+Pj4gYWxsb3dzIGlzIGFscmVhZHkuCj4+Pj4+Pj4KPj4+Pj4+PiBBbGwgZHJp
dmVycyB3aGljaCBzdXBwb3J0cyB0aGlzIGNvbmNlcHQgb2YgYSB1c2Vyc3BhY2Utc3BlY2lmaWMK
Pj4+Pj4+PiBvcHQtb3V0IG9mIGltcGxpY2l0IHN5bmMgaGF2ZSBhIGZsYWcgaW4gdGhlaXIgQ1Mg
aW9jdGwsIGJ1dCBpbiByZWFsaXR5Cj4+Pj4+Pj4gdGhhdCB0dXJuZWQgb3V0IHRvIGJlIGEgYml0
IHRvbyBpbmZsZXhpYmxlLiBTZWUgdGhlIGRpc2N1c3Npb24gYmVsb3csCj4+Pj4+Pj4gbGV0J3Mg
dHJ5IHRvIGRvIGEgYml0IGJldHRlciBmb3IgYW1kZ3B1Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBh
bG9uZSBvbmx5IGFsbG93cyB1cyB0byBjb21wbGV0ZWx5IGF2b2lkIGFueSBzdGFsbHMgZHVlIHRv
Cj4+Pj4+Pj4gaW1wbGljaXQgc3luYywgaXQgZG9lcyBub3QgeWV0IGFsbG93IHVzIHRvIHVzZSBp
bXBsaWNpdCBzeW5jIGFzIGEKPj4+Pj4+PiBzdHJhbmdlIGZvcm0gb2YgSVBDIGZvciBzeW5jX2Zp
bGUuCj4+Pj4+Pj4KPj4+Pj4+PiBGb3IgdGhhdCB3ZSBuZWVkIHR3byBtb3JlIHBpZWNlczoKPj4+
Pj4+Pgo+Pj4+Pj4+IC0gYSB3YXkgdG8gZ2V0IHRoZSBjdXJyZW50IGltcGxpY2l0IHN5bmMgZmVu
Y2VzIG91dCBvZiBhIGJ1ZmZlci4gQ291bGQKPj4+Pj4+PiAgICAgIGJlIGRvbmUgaW4gYSBkcml2
ZXIgaW9jdGwsIGJ1dCBldmVyeW9uZSBuZWVkcyB0aGlzLCBhbmQgZ2VuZXJhbGx5IGEKPj4+Pj4+
PiAgICAgIGRtYS1idWYgaXMgaW52b2x2ZWQgYW55d2F5IHRvIGVzdGFibGlzaCB0aGUgc2hhcmlu
Zy4gU28gYW4gaW9jdGwgb24KPj4+Pj4+PiAgICAgIHRoZSBkbWEtYnVmIG1ha2VzIGEgdG9uIG1v
cmUgc2Vuc2U6Cj4+Pj4+Pj4KPj4+Pj4+PiAgICAgIGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUua2VybmVsLm9yZyUy
RmRyaS1kZXZlbCUyRjIwMjEwNTIwMTkwMDA3LjUzNDA0Ni00LWphc29uJTQwamxla3N0cmFuZC5u
ZXQlMkYmYW1wO2RhdGE9MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDODNk
YmRkMGExZWI4NDQyY2JmNzEwOGQ5MzY0ZGI1MWUlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5
OTRlMTgzZCU3QzAlN0MwJTdDNjM3NjAwNTI5Njg0MDQwODAyJTdDVW5rbm93biU3Q1RXRnBiR1pz
YjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lM
Q0pYVkNJNk1uMCUzRCU3QzEwMDAmYW1wO3NkYXRhPWZiZHd0dXRFajkzYW5acDZQc2hzMjc3UW9N
VEhaeEl5MFlsNTRUOTVyQ3clM0QmYW1wO3Jlc2VydmVkPTAKPj4+Pj4+Pgo+Pj4+Pj4+ICAgICAg
Q3VycmVudCBkcml2ZXJzIGluIHVwc3RyZWFtIHNvbHZlcyB0aGlzIGJ5IGhhdmluZyB0aGUgb3B0
LW91dCBmbGFnCj4+Pj4+Pj4gICAgICBvbiB0aGVpciBDUyBpb2N0bC4gVGhpcyBoYXMgdGhlIGRv
d25zaWRlIHRoYXQgdmVyeSBvZnRlbiB0aGUgQ1MKPj4+Pj4+PiAgICAgIHdoaWNoIG11c3QgYWN0
dWFsbHkgc3RhbGwgZm9yIHRoZSBpbXBsaWNpdCBmZW5jZSBpcyBydW4gYSB3aGlsZQo+Pj4+Pj4+
ICAgICAgYWZ0ZXIgdGhlIGltcGxpY2l0IGZlbmNlIHBvaW50IHdhcyBsb2dpY2FsbHkgc2FtcGxl
ZCBwZXIgdGhlIGFwaQo+Pj4+Pj4+ICAgICAgc3BlYyAodmsgcGFzc2VzIGFuIGV4cGxpY2l0IHN5
bmNvYmogYXJvdW5kIGZvciB0aGF0IGFmYWl1aSksIGFuZCBzbwo+Pj4+Pj4+ICAgICAgcmVzdWx0
cyBpbiBvdmVyc3luYy4gQ29udmVydGluZyB0aGUgaW1wbGljaXQgc3luYyBmZW5jZXMgaW50byBh
Cj4+Pj4+Pj4gICAgICBzbmFwLXNob3Qgc3luY19maWxlIGlzIGFjdHVhbGx5IGFjY3VyYXRlLgo+
Pj4+Pj4+Cj4+Pj4+Pj4gLSBTaW1pbGxhciB3ZSBuZWVkIHRvIGJlIGFibGUgdG8gc2V0IHRoZSBl
eGNsdXNpdmUgaW1wbGljaXQgZmVuY2UuCj4+Pj4+Pj4gICAgICBDdXJyZW50IGRyaXZlcnMgYWdh
aW4gZG8gdGhpcyB3aXRoIGEgQ1MgaW9jdGwgZmxhZywgd2l0aCBhZ2FpbiB0aGUKPj4+Pj4+PiAg
ICAgIHNhbWUgcHJvYmxlbXMgdGhhdCB0aGUgdGltZSB0aGUgQ1MgaGFwcGVucyBhZGRpdGlvbmFs
IGRlcGVuZGVuY2llcwo+Pj4+Pj4+ICAgICAgaGF2ZSBiZWVuIGFkZGVkLiBBbiBleHBsaWNpdCBp
b2N0bCB0byBvbmx5IGluc2VydCBhIHN5bmNfZmlsZSAod2hpbGUKPj4+Pj4+PiAgICAgIHJlc3Bl
Y3RpbmcgdGhlIHJ1bGVzIGZvciBob3cgZXhjbHVzaXZlIGFuZCBzaGFyZWQgZmVuY2Ugc2xvdHMg
bXVzdAo+Pj4+Pj4+ICAgICAgYmUgdXBkYXRlIGluIHN0cnVjdCBkbWFfcmVzdikgaXMgbXVjaCBi
ZXR0ZXIuIFRoaXMgaXMgcHJvcG9zZWQgaGVyZToKPj4+Pj4+Pgo+Pj4+Pj4+ICAgICAgaHR0cHM6
Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJG
JTJGbG9yZS5rZXJuZWwub3JnJTJGZHJpLWRldmVsJTJGMjAyMTA1MjAxOTAwMDcuNTM0MDQ2LTUt
amFzb24lNDBqbGVrc3RyYW5kLm5ldCUyRiZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtv
ZW5pZyU0MGFtZC5jb20lN0M4M2RiZGQwYTFlYjg0NDJjYmY3MTA4ZDkzNjRkYjUxZSU3QzNkZDg5
NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2MDA1Mjk2ODQwNDA4MDIl
N0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVN
eklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9dnYlMkJS
RW5Xb3Jqb1RPd3JEMWpIMUdIVlFjalB5MW9lc2FvcGhzejA1NmFJJTNEJmFtcDtyZXNlcnZlZD0w
Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGVzZSB0aHJlZSBwaWVjZXMgdG9nZXRoZXIgYWxsb3cgdXNlcnNw
YWNlIHRvIGZ1bGx5IGNvbnRyb2wgaW1wbGljaXQKPj4+Pj4+PiBmZW5jaW5nIGFuZCByZW1vdmUg
YWxsIHVuZWNlc3Nhcnkgc3RhbGwgcG9pbnRzIGR1ZSB0byB0aGVtLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
V2VsbCwgYXMgbXVjaCBhcyB0aGUgaW1wbGljaXQgZmVuY2luZyBtb2RlbCBmdW5kYW1lbnRhbGx5
IGFsbG93czoKPj4+Pj4+PiBUaGVyZSBpcyBvbmx5IG9uZSBzZXQgb2YgZmVuY2VzLCB5b3UgY2Fu
IG9ubHkgY2hvb3NlIHRvIHN5bmMgYWdhaW5zdAo+Pj4+Pj4+IG9ubHkgd3JpdGVycyAoZXhjbHVz
aXZlIHNsb3QpLCBvciBldmVyeW9uZS4gSGVuY2Ugc3ViYWxsb2NhdGluZwo+Pj4+Pj4+IG11bHRp
cGxlIGJ1ZmZlcnMgb3IgYW55dGhpbmcgZWxzZSBsaWtlIHRoaXMgaXMgZnVuZGFtZW50YWxseSBu
b3QKPj4+Pj4+PiBwb3NzaWJsZSwgYW5kIGNhbiBvbmx5IGJlIGZpeGVkIGJ5IGEgcHJvcGVyIGV4
cGxpY2l0IGZlbmNpbmcgbW9kZWwuCj4+Pj4+Pj4KPj4+Pj4+PiBBc2lkZSBmcm9tIHRoYXQgY2F2
ZWF0IHRoaXMgbW9kZWwgZ2V0cyBpbXBsaWNpdCBmZW5jaW5nIGFzIGNsb3NlbHkgdG8KPj4+Pj4+
PiBleHBsaWNpdCBmZW5jaW5nIHNlbWFudGljcyBhcyBwb3NzaWJsZToKPj4+Pj4+Pgo+Pj4+Pj4+
IE9uIHRoZSBhY3R1YWwgaW1wbGVtZW50YXRpb24gSSBvcHRlZCBmb3IgYSBzaW1wbGUgc2V0cGFy
YW0gaW9jdGwsIG5vCj4+Pj4+Pj4gbG9ja2luZyAoanVzdCBhdG9taWMgcmVhZHMvd3JpdGVzKSBm
b3Igc2ltcGxpY2l0eS4gVGhlcmUgaXMgYSBuaWNlCj4+Pj4+Pj4gZmxhZyBwYXJhbWV0ZXIgaW4g
dGhlIFZNIGlvY3RsIHdoaWNoIHdlIGNvdWxkIHVzZSwgZXhjZXB0Ogo+Pj4+Pj4+IC0gaXQncyBu
b3QgY2hlY2tlZCwgc28gdXNlcnNwYWNlIGxpa2VseSBwYXNzZXMgZ2FyYmFnZQo+Pj4+Pj4+IC0g
dGhlcmUncyBhbHJlYWR5IGEgY29tbWVudCB0aGF0IHVzZXJzcGFjZSBfZG9lc18gcGFzcyBnYXJi
YWdlIGluIHRoZQo+Pj4+Pj4+ICAgICAgcHJpb3JpdHkgZmllbGQKPj4+Pj4+PiBTbyB5ZWFoIHVu
Zm9ydHVuYXRlbHkgdGhpcyBmbGFnIHBhcmFtZXRlciBmb3Igc2V0dGluZyB2bSBmbGFncyBpcwo+
Pj4+Pj4+IHVzZWxlc3MsIGFuZCB3ZSBuZWVkIHRvIGhhY2sgdXAgYSBuZXcgb25lLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gdjI6IEV4cGxhaW4gd2h5IGEgbmV3IFNFVFBBUkFNIChKYXNvbikKPj4+Pj4+Pgo+
Pj4+Pj4+IHYzOiBCYXMgbm90aWNlZCBJIGZvcmdvdCB0byBob29rIHVwIHRoZSBkZXBlbmRlbmN5
LXNpZGUgc2hvcnRjdXQuIFdlCj4+Pj4+Pj4gbmVlZCBib3RoLCBvciB0aGlzIGRvZXNuJ3QgZG8g
bXVjaC4KPj4+Pj4+Pgo+Pj4+Pj4+IHY0OiBSZWJhc2Ugb3ZlciB0aGUgYW1kZ3B1IHBhdGNoIHRv
IGFsd2F5cyBzZXQgdGhlIGltcGxpY2l0IHN5bmMKPj4+Pj4+PiBmZW5jZXMuCj4+Pj4+PiBTbyBJ
IHRoaW5rIHRoZXJlIGlzIHN0aWxsIGEgY2FzZSBtaXNzaW5nIGluIHRoaXMgaW1wbGVtZW50YXRp
b24uCj4+Pj4+PiBDb25zaWRlciB0aGVzZSAzIGNhc2VzCj4+Pj4+Pgo+Pj4+Pj4gKGZvcm1hdDog
YS0+YjogYiB3YWl0cyBvbiBhLiBZZXMsIEkga25vdyBhcnJvd3MgYXJlIGhhcmQpCj4+Pj4+Pgo+
Pj4+Pj4gZXhwbGljaXQtPmV4cGxpY2l0OiBUaGlzIGRvZXNuJ3Qgd2FpdCBub3csIHdoaWNoIGlz
IGdvb2QKPj4+Pj4+IEltcGxpY2l0LT5leHBsaWNpdDogVGhpcyBkb2Vzbid0IHdhaXQgbm93LCB3
aGljaCBpcyBnb29kCj4+Pj4+PiBleHBsaWNpdC0+aW1wbGljaXQgOiBUaGlzIHN0aWxsIHdhaXRz
IGFzIHRoZSBleHBsaWNpdCBzdWJtaXNzaW9uIHN0aWxsCj4+Pj4+PiBhZGRzIHNoYXJlZCBmZW5j
ZXMgYW5kIG1vc3QgdGhpbmdzIHRoYXQgc2V0IGFuIGV4Y2x1c2l2ZSBmZW5jZSBmb3IKPj4+Pj4+
IGltcGxpY2l0IHN5bmMgd2lsbCBoZW5jZSB3YWl0IG9uIGl0Lgo+Pj4+Pj4KPj4+Pj4+IFRoaXMg
aXMgcHJvYmFibHkgZ29vZCBlbm91Z2ggZm9yIHdoYXQgcmFkdiBuZWVkcyBub3cgYnV0IGFsc28g
c291bmRzCj4+Pj4+PiBsaWtlIGEgcmlzayB3cnQgYmFraW5nIGluIG5ldyB1YXBpIGJlaGF2aW9y
IHRoYXQgd2UgZG9uJ3Qgd2FudCB0byBiZQo+Pj4+Pj4gdGhlIGVuZCByZXN1bHQuCj4+Pj4+Pgo+
Pj4+Pj4gV2l0aGluIEFNREdQVSB0aGlzIGlzIHByb2JhYmx5IHNvbHZhYmxlIGluIHR3byB3YXlz
Ogo+Pj4+Pj4KPj4+Pj4+IDEpIERvd25ncmFkZSBBTURHUFVfU1lOQ19ORV9PV05FUiB0byBBTURH
UFVfU1lOQ19FWFBMSUNJVCBmb3Igc2hhcmVkIGZlbmNlcy4KPj4+Pj4gSSdtIG5vdCBzdXJlIHRo
YXQgd29ya3MuIEkgdGhpbmsgdGhlIHJpZ2h0IGZpeCBpcyB0aGF0IHJhZGVvbnNpIGFsc28KPj4+
Pj4gc3dpdGNoZXMgdG8gdGhpcyBtb2RlbCwgd2l0aCBtYXliZSBhIHBlci1ibyBDUyBmbGFnIHRv
IHNldCBpbmRpY2F0ZQo+Pj4+PiB3cml0ZSBhY2Nlc3MsIHRvIGN1dCBkb3duIG9uIHRoZSBudW1i
ZXIgb2YgaW9jdGxzIHRoYXQgYXJlIG5lZWRlZAo+Pj4+PiBvdGhlcndpc2Ugb24gc2hhcmVkIGJ1
ZmZlcnMuIFRoaXMgcGVyLWJvIGZsYWcgd291bGQgZXNzZW50aWFsbHkgc2VsZWN0Cj4+Pj4+IGJl
dHdlZW4gU1lOQ19ORV9PV05FUiBhbmQgU1lOQ19FWFBMSUNJVCBvbiBhIHBlci1idWZmZXIgYmFz
aXMuCj4+Pj4gWWVhaCwgYnV0IEknbSBzdGlsbCBub3QgZW50aXJlbHkgc3VyZSB3aHkgdGhhdCBh
cHByb2FjaCBpc24ndCBzdWZmaWNpZW50Pwo+Pj4+Cj4+Pj4gUHJvYmxlbSB3aXRoIHRoZSBwZXIg
Y29udGV4dCBvciBwZXIgdm0gZmxhZyBpcyB0aGF0IHlvdSB0aGVuIGRvbid0IGdldAo+Pj4+IGFu
eSBpbXBsaWNpdCBzeW5jaHJvbml6YXRpb24gYW55IG1vcmUgd2hlbiBhbm90aGVyIHByb2Nlc3Mg
c3RhcnRzIHVzaW5nCj4+Pj4gdGhlIGJ1ZmZlci4KPj4+IFRoYXQgaXMgZXhhY3RseSB3aGF0IEkg
d2FudCBmb3IgVnVsa2FuIDopCj4+IFllYWgsIGJ1dCBhcyBmYXIgYXMgSSBrbm93IHRoaXMgaXMg
bm90IHNvbWV0aGluZyB3ZSBjYW4gZG8uCj4+Cj4+IFNlZSB3ZSBoYXZlIHVzZSBjYXNlcyBsaWtl
IHNjcmVlbiBjYXB0dXJlIGFuZCBkZWJ1ZyB3aGljaCByZWx5IG9uIHRoYXQKPj4gYmVoYXZpb3Iu
Cj4gVGhleSB3aWxsIGtlZXAgd29ya2luZywgaWYgKGFuZCBvbmx5IGlmKSB0aGUgdnVsa2FuIHNp
ZGUgc2V0cyB0aGUKPiB3aW5zeXMgZmVuY2VzIGNvcnJlY3RseS4gQWxzbywgZXZlcnl0aGluZyBl
bHNlIGluIHZ1bGthbiBhc2lkZSBmcm9tCj4gd2luc3lzIGlzIGV4cGxpY2l0bHkgbm90IHN5bmNl
ZCBhdCBhbGwsIHlvdSBoYXZlIHRvIGltcG9ydCBkcm0gc3luY29iago+IHRpbWVsaW5lIG9uIHRo
ZSBnbCBzaWRlLgo+Cj4+IFRoZSBvbmx5IHRoaW5nIHdlIGNhbiBkbyBpcyB0byBzYXkgb24gYSBw
ZXIgYnVmZmVyIGZsYWcgdGhhdCBhIGJ1ZmZlcgo+PiBzaG91bGQgbm90IHBhcnRpY2lwYXRlIGlu
IGltcGxpY2l0IHN5bmMgYXQgYWxsLgo+IE5haCwgdGhpcyBkb2Vzbid0IHdvcmsuIEJlY2F1c2Ug
aXQncyBub3QgYSBnbG9iYWwgZGVjaXNpb24sIGlzIGEgbG9jYWwKPiBkZWNpc2lvbiBmb3IgdGhl
IHJlbmRlcmVkLiBWdWxrYW4gd2FudHMgdG8gY29udHJvbCBpbXBsaWNpdCBzeW5jCj4gZXhwbGlj
aXRseSwgYW5kIHRoZSBrZXJuZWwgY2FuJ3QgZm9yY2UgbW9yZSBzeW5jaHJvbml6YXRpb24uIElm
IGEKPiBidWZmZXIgaXMgc2hhcmVkIGFzIGEgd2luc3lzIGJ1ZmZlciBiZXR3ZWVuIHZ1bGthbiBj
bGllbnQgYW5kIGdsIHVzaW5nCj4gY29tcG9zaXRvciwgdGhlbiB5b3UgX2hhdmVfIHRvIHVzZSBp
bXBsaWNpdCBzeW5jIG9uIGl0LiBCdXQgdmsgbmVlZHMKPiB0byBzZXQgdGhlIGZlbmNlcyBkaXJl
Y3RseSAoYW5kIGlmIHRoZSBhcHAgZ2V0cyBpdCB3cm9uZywgeW91IGdldAo+IG1pc3JlbmRlcmlu
ZywgYnV0IHRoYXQgaXMgdGhlIHNwZWNpZmllZCBiZWhhdm91ciBvZiB2dWxrYW4pLgoKWWVhaCwg
YnV0IHRoYXQncyBleGFjdGx5IHdoYXQgd2UgdHJpZWQgdG8gYXZvaWQuCgpNaG0sIHdoZW4gd2Ug
YXR0YWNoIHRoZSBmbGFnIHRvIHRoZSBwcm9jZXNzL1ZNIHRoZW4gdGhpcyB3b3VsZCBicmVhayB0
aGUgCnVzZSBjYXNlIG9mIFZBLUFQSSBhbmQgVnVsa2FuIGluIHRoZSBzYW1lIHByb2Nlc3MuCgpC
dXQgSSB0aGluayBpZiB5b3UgYXR0YWNoIHRoZSBmbGFnIHRvIHRoZSBjb250ZXh0IHRoYXQgc2hv
dWxkIGluZGVlZCAKd29yayBmaW5lLgoKQ2hyaXN0aWFuLgoKPiAtRGFuaWVsCj4KPj4gUmVnYXJk
cywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4+PiBUaGUgY3VycmVudCBhbWRncHUgdWFwaSBqdXN0IGRv
ZXNuJ3QgYWxsb3cgYW55IG90aGVyIG1vZGVsIHdpdGhvdXQgYW4KPj4+Pj4gZXhwbGljaXQgb3B0
LWluLiBTbyBjdXJyZW50IGltcGxpY2l0IHN5bmMgdXNlcnNwYWNlIGp1c3QgaGFzIHRvCj4+Pj4+
IG92ZXJzeW5jLCB0aGVyZSdzIG5vdCBtdWNoIGNob2ljZS4KPj4+Pj4KPj4+Pj4+IDIpIEhhdmUg
YW4gRVhQTElDSVQgZmVuY2Ugb3duZXIgdGhhdCBpcyB1c2VkIGZvciBleHBsaWNpdCBzdWJtaXNz
aW9ucwo+Pj4+Pj4gdGhhdCBpcyBpZ25vcmVkIGJ5IEFNREdQVV9TWU5DX05FX09XTkVSLgo+Pj4+
Pj4KPj4+Pj4+IEJ1dCB0aGlzIGRvZXNuJ3Qgc29sdmUgY3Jvc3MtZHJpdmVyIGludGVyYWN0aW9u
cyBoZXJlLgo+Pj4+PiBZZWFoIGNyb3NzLWRyaXZlciBpcyBzdGlsbCBlbnRpcmVseSB1bnNvbHZl
ZCwgYmVjYXVzZQo+Pj4+PiBhbWRncHVfYm9fZXhwbGljaXRfc3luYygpIG9uIHRoZSBibyBkaWRu
J3Qgc29sdmUgdGhhdCBlaXRoZXIuCj4+Pj4gSHVpPyBZb3UgaGF2ZSBsb3N0IG1lLiBXaHkgaXMg
dGhhdCBzdGlsbCB1bnNvbHZlZD8KPj4+IFRoZSBwYXJ0IHdlJ3JlIHRyeWluZyB0byBzb2x2ZSB3
aXRoIHRoaXMgcGF0Y2ggaXMgVnVsa2FuIHNob3VsZCBub3QKPj4+IHBhcnRpY2lwYXRlIGluIGFu
eSBpbXBsaWNpdCBzeW5jIGF0IGFsbCB3cnQgc3VibWlzc2lvbnMgKGFuZCB0aGVuCj4+PiBoYW5k
bGUgdGhlIGltcGxpY2l0IHN5bmMgZm9yIFdTSSBleHBsaWNpdGx5IHVzaW5nIHRoZSBmZW5jZQo+
Pj4gaW1wb3J0L2V4cG9ydCBzdHVmZiB0aGF0IEphc29uIHdyb3RlKS4gQXMgbG9uZyB3ZSBhZGQg
c2hhcmVkIGZlbmNlcyB0bwo+Pj4gdGhlIGRtYV9yZXN2IHdlIHBhcnRpY2lwYXRlIGluIGltcGxp
Y2l0IHN5bmMgKGF0IHRoZSBsZXZlbCBvZiBhbgo+Pj4gaW1wbGljaXQgc3luYyByZWFkKSBzdGls
bCwgYXQgbGVhc3QgZnJvbSB0aGUgcGVyc3BlY3RpdmUgb2YgbGF0ZXIgam9icwo+Pj4gd2FpdGlu
ZyBvbiB0aGVzZSBmZW5jZXMuCj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+
Cj4+Pj4+IC1EYW5pZWwKPj4+Pj4KPj4+Pj4+PiBDYzogbWVzYS1kZXZAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4+Pj4+Pj4gQ2M6IEJhcyBOaWV1d2VuaHVpemVuIDxiYXNAYmFzbmlldXdlbmh1aXpl
bi5ubD4KPj4+Pj4+PiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgo+Pj4+Pj4+
IENjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pj4+Pj4gQ2M6IEtyaXN0
aWFuIEguIEtyaXN0ZW5zZW4gPGhvZWdzYmVyZ0Bnb29nbGUuY29tPgo+Pj4+Pj4+IENjOiBNaWNo
ZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0Pgo+Pj4+Pj4+IENjOiBEYW5pZWwgU3RvbmUg
PGRhbmllbHNAY29sbGFib3JhLmNvbT4KPj4+Pj4+PiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5z
ZW13YWxAbGluYXJvLm9yZz4KPj4+Pj4+PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4+Pj4+Pj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRl
dWNoZXJAYW1kLmNvbT4KPj4+Pj4+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KPj4+Pj4+PiBDYzogRGVlcGFrIFIgVmFybWEgPG1oMTJneDI4MjVAZ21haWwuY29t
Pgo+Pj4+Pj4+IENjOiBDaGVuIExpIDxjaGVubGlAdW5pb250ZWNoLmNvbT4KPj4+Pj4+PiBDYzog
S2V2aW4gV2FuZyA8a2V2aW4xLndhbmdAYW1kLmNvbT4KPj4+Pj4+PiBDYzogRGVubmlzIExpIDxE
ZW5uaXMuTGlAYW1kLmNvbT4KPj4+Pj4+PiBDYzogTHViZW4gVHVpa292IDxsdWJlbi50dWlrb3ZA
YW1kLmNvbT4KPj4+Pj4+PiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4+Pj4+
Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9jcy5jICB8ICA3ICsrKysrLS0KPj4+Pj4+PiAgICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2Rydi5jIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4+Pj4+Pj4gICAgIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5oICB8ICA2ICsrKysrKwo+Pj4+Pj4+
ICAgICBpbmNsdWRlL3VhcGkvZHJtL2FtZGdwdV9kcm0uaCAgICAgICAgICAgfCAxMCArKysrKysr
KysrCj4+Pj4+Pj4gICAgIDQgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9j
cy5jCj4+Pj4+Pj4gaW5kZXggNjVkZjM0YzE3MjY0Li5jNTM4NmQxM2ViNGEgMTAwNjQ0Cj4+Pj4+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKPj4+Pj4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwo+Pj4+Pj4+IEBAIC00
OTgsNiArNDk4LDcgQEAgc3RhdGljIGludCBhbWRncHVfY3NfcGFyc2VyX2JvcyhzdHJ1Y3QgYW1k
Z3B1X2NzX3BhcnNlciAqcCwKPj4+Pj4+PiAgICAgICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmdk
czsKPj4+Pj4+PiAgICAgICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmd3czsKPj4+Pj4+PiAgICAg
ICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKm9hOwo+Pj4+Pj4+ICsgICAgICAgYm9vbCBub19pbXBs
aWNpdF9zeW5jID0gUkVBRF9PTkNFKGZwcml2LT52bS5ub19pbXBsaWNpdF9zeW5jKTsKPj4+Pj4+
PiAgICAgICAgICAgIGludCByOwo+Pj4+Pj4+Cj4+Pj4+Pj4gICAgICAgICAgICBJTklUX0xJU1Rf
SEVBRCgmcC0+dmFsaWRhdGVkKTsKPj4+Pj4+PiBAQCAtNTc3LDcgKzU3OCw4IEBAIHN0YXRpYyBp
bnQgYW1kZ3B1X2NzX3BhcnNlcl9ib3Moc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsCj4+Pj4+
Pj4KPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgZS0+Ym9fdmEgPSBhbWRncHVfdm1fYm9fZmlu
ZCh2bSwgYm8pOwo+Pj4+Pj4+Cj4+Pj4+Pj4gLSAgICAgICAgICAgICAgIGlmIChiby0+dGJvLmJh
c2UuZG1hX2J1ZiAmJiAhYW1kZ3B1X2JvX2V4cGxpY2l0X3N5bmMoYm8pKSB7Cj4+Pj4+Pj4gKyAg
ICAgICAgICAgICAgIGlmIChiby0+dGJvLmJhc2UuZG1hX2J1ZiAmJgo+Pj4+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgIShub19pbXBsaWNpdF9zeW5jIHx8IGFtZGdwdV9ib19leHBsaWNpdF9zeW5j
KGJvKSkpIHsKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICBlLT5jaGFpbiA9IGRt
YV9mZW5jZV9jaGFpbl9hbGxvYygpOwo+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGlmICghZS0+Y2hhaW4pIHsKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHIgPSAtRU5PTUVNOwo+Pj4+Pj4+IEBAIC02NDksNiArNjUxLDcgQEAgc3RhdGljIGludCBh
bWRncHVfY3Nfc3luY19yaW5ncyhzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCkKPj4+Pj4+PiAg
ICAgewo+Pj4+Pj4+ICAgICAgICAgICAgc3RydWN0IGFtZGdwdV9mcHJpdiAqZnByaXYgPSBwLT5m
aWxwLT5kcml2ZXJfcHJpdjsKPj4+Pj4+PiAgICAgICAgICAgIHN0cnVjdCBhbWRncHVfYm9fbGlz
dF9lbnRyeSAqZTsKPj4+Pj4+PiArICAgICAgIGJvb2wgbm9faW1wbGljaXRfc3luYyA9IFJFQURf
T05DRShmcHJpdi0+dm0ubm9faW1wbGljaXRfc3luYyk7Cj4+Pj4+Pj4gICAgICAgICAgICBpbnQg
cjsKPj4+Pj4+Pgo+Pj4+Pj4+ICAgICAgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeShlLCAmcC0+
dmFsaWRhdGVkLCB0di5oZWFkKSB7Cj4+Pj4+Pj4gQEAgLTY1Niw3ICs2NTksNyBAQCBzdGF0aWMg
aW50IGFtZGdwdV9jc19zeW5jX3JpbmdzKHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwKQo+Pj4+
Pj4+ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSBiby0+dGJvLmJh
c2UucmVzdjsKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgZW51bSBhbWRncHVfc3luY19tb2Rl
IHN5bmNfbW9kZTsKPj4+Pj4+Pgo+Pj4+Pj4+IC0gICAgICAgICAgICAgICBzeW5jX21vZGUgPSBh
bWRncHVfYm9fZXhwbGljaXRfc3luYyhibykgPwo+Pj4+Pj4+ICsgICAgICAgICAgICAgICBzeW5j
X21vZGUgPSBub19pbXBsaWNpdF9zeW5jIHx8IGFtZGdwdV9ib19leHBsaWNpdF9zeW5jKGJvKSA/
Cj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgQU1ER1BVX1NZTkNfRVhQTElDSVQg
OiBBTURHUFVfU1lOQ19ORV9PV05FUjsKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgciA9IGFt
ZGdwdV9zeW5jX3Jlc3YocC0+YWRldiwgJnAtPmpvYi0+c3luYywgcmVzdiwgc3luY19tb2RlLAo+
Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZnByaXYtPnZt
KTsKPj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jCj4+Pj4+Pj4g
aW5kZXggYzA4MGJhMTVhZTc3Li5mOTgyNjI2YjUzMjggMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jCj4+Pj4+Pj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jCj4+Pj4+Pj4gQEAgLTE3MjQsNiArMTcy
NCwyNiBAQCBpbnQgYW1kZ3B1X2ZpbGVfdG9fZnByaXYoc3RydWN0IGZpbGUgKmZpbHAsIHN0cnVj
dCBhbWRncHVfZnByaXYgKipmcHJpdikKPj4+Pj4+PiAgICAgICAgICAgIHJldHVybiAwOwo+Pj4+
Pj4+ICAgICB9Cj4+Pj4+Pj4KPj4+Pj4+PiAraW50IGFtZGdwdV9zZXRwYXJhbV9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+Pj4+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxwKQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gKyAgICAg
ICBzdHJ1Y3QgZHJtX2FtZGdwdV9zZXRwYXJhbSAqc2V0cGFyYW0gPSBkYXRhOwo+Pj4+Pj4+ICsg
ICAgICAgc3RydWN0IGFtZGdwdV9mcHJpdiAqZnByaXYgPSBmaWxwLT5kcml2ZXJfcHJpdjsKPj4+
Pj4+PiArCj4+Pj4+Pj4gKyAgICAgICBzd2l0Y2ggKHNldHBhcmFtLT5wYXJhbSkgewo+Pj4+Pj4+
ICsgICAgICAgY2FzZSBBTURHUFVfU0VUUEFSQU1fTk9fSU1QTElDSVRfU1lOQzoKPj4+Pj4+PiAr
ICAgICAgICAgICAgICAgaWYgKHNldHBhcmFtLT52YWx1ZSkKPj4+Pj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICBXUklURV9PTkNFKGZwcml2LT52bS5ub19pbXBsaWNpdF9zeW5jLCB0cnVlKTsK
Pj4+Pj4+PiArICAgICAgICAgICAgICAgZWxzZQo+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIFdSSVRFX09OQ0UoZnByaXYtPnZtLm5vX2ltcGxpY2l0X3N5bmMsIGZhbHNlKTsKPj4+Pj4+
PiArICAgICAgICAgICAgICAgYnJlYWs7Cj4+Pj4+Pj4gKyAgICAgICBkZWZhdWx0Ogo+Pj4+Pj4+
ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4+Pj4+PiArICAgICAgIH0KPj4+Pj4+
PiArCj4+Pj4+Pj4gKyAgICAgICByZXR1cm4gMDsKPj4+Pj4+PiArfQo+Pj4+Pj4+ICsKPj4+Pj4+
PiAgICAgY29uc3Qgc3RydWN0IGRybV9pb2N0bF9kZXNjIGFtZGdwdV9pb2N0bHNfa21zW10gPSB7
Cj4+Pj4+Pj4gICAgICAgICAgICBEUk1fSU9DVExfREVGX0RSVihBTURHUFVfR0VNX0NSRUFURSwg
YW1kZ3B1X2dlbV9jcmVhdGVfaW9jdGwsIERSTV9BVVRIfERSTV9SRU5ERVJfQUxMT1cpLAo+Pj4+
Pj4+ICAgICAgICAgICAgRFJNX0lPQ1RMX0RFRl9EUlYoQU1ER1BVX0NUWCwgYW1kZ3B1X2N0eF9p
b2N0bCwgRFJNX0FVVEh8RFJNX1JFTkRFUl9BTExPVyksCj4+Pj4+Pj4gQEAgLTE3NDIsNiArMTc2
Miw3IEBAIGNvbnN0IHN0cnVjdCBkcm1faW9jdGxfZGVzYyBhbWRncHVfaW9jdGxzX2ttc1tdID0g
ewo+Pj4+Pj4+ICAgICAgICAgICAgRFJNX0lPQ1RMX0RFRl9EUlYoQU1ER1BVX0dFTV9WQSwgYW1k
Z3B1X2dlbV92YV9pb2N0bCwgRFJNX0FVVEh8RFJNX1JFTkRFUl9BTExPVyksCj4+Pj4+Pj4gICAg
ICAgICAgICBEUk1fSU9DVExfREVGX0RSVihBTURHUFVfR0VNX09QLCBhbWRncHVfZ2VtX29wX2lv
Y3RsLCBEUk1fQVVUSHxEUk1fUkVOREVSX0FMTE9XKSwKPj4+Pj4+PiAgICAgICAgICAgIERSTV9J
T0NUTF9ERUZfRFJWKEFNREdQVV9HRU1fVVNFUlBUUiwgYW1kZ3B1X2dlbV91c2VycHRyX2lvY3Rs
LCBEUk1fQVVUSHxEUk1fUkVOREVSX0FMTE9XKSwKPj4+Pj4+PiArICAgICAgIERSTV9JT0NUTF9E
RUZfRFJWKEFNREdQVV9TRVRQQVJBTSwgYW1kZ3B1X3NldHBhcmFtX2lvY3RsLCBEUk1fQVVUSHxE
Uk1fUkVOREVSX0FMTE9XKSwKPj4+Pj4+PiAgICAgfTsKPj4+Pj4+Pgo+Pj4+Pj4+ICAgICBzdGF0
aWMgY29uc3Qgc3RydWN0IGRybV9kcml2ZXIgYW1kZ3B1X2ttc19kcml2ZXIgPSB7Cj4+Pj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5oIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtLmgKPj4+Pj4+PiBpbmRleCBkZGI4NWE4
NWNiYmEuLjBlOGM0NDBjNjMwMyAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdm0uaAo+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV92bS5oCj4+Pj4+Pj4gQEAgLTMyMSw2ICszMjEsMTIgQEAgc3RydWN0IGFt
ZGdwdV92bSB7Cj4+Pj4+Pj4gICAgICAgICAgICBib29sICAgICAgICAgICAgICAgICAgICBidWxr
X21vdmVhYmxlOwo+Pj4+Pj4+ICAgICAgICAgICAgLyogRmxhZyB0byBpbmRpY2F0ZSBpZiBWTSBp
cyB1c2VkIGZvciBjb21wdXRlICovCj4+Pj4+Pj4gICAgICAgICAgICBib29sICAgICAgICAgICAg
ICAgICAgICBpc19jb21wdXRlX2NvbnRleHQ7Cj4+Pj4+Pj4gKyAgICAgICAvKgo+Pj4+Pj4+ICsg
ICAgICAgICogRmxhZyB0byBpbmRpY2F0ZSB3aGV0aGVyIGltcGxpY2l0IHN5bmMgc2hvdWxkIGFs
d2F5cyBiZSBza2lwcGVkIG9uCj4+Pj4+Pj4gKyAgICAgICAgKiB0aGlzIGNvbnRleHQuIFdlIGRv
IG5vdCBjYXJlIGFib3V0IHJhY2VzIGF0IGFsbCwgdXNlcnNwYWNlIGlzIGFsbG93ZWQKPj4+Pj4+
PiArICAgICAgICAqIHRvIHNob290IGl0c2VsZiB3aXRoIGltcGxpY2l0IHN5bmMgdG8gaXRzIGZ1
bGxlc3QgbGlraW5nLgo+Pj4+Pj4+ICsgICAgICAgICovCj4+Pj4+Pj4gKyAgICAgICBib29sIG5v
X2ltcGxpY2l0X3N5bmM7Cj4+Pj4+Pj4gICAgIH07Cj4+Pj4+Pj4KPj4+Pj4+PiAgICAgc3RydWN0
IGFtZGdwdV92bV9tYW5hZ2VyIHsKPj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2Ry
bS9hbWRncHVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2FtZGdwdV9kcm0uaAo+Pj4+Pj4+IGlu
ZGV4IDBjYmQxNTQwYWVhYy4uOWVhZTI0NWMxNGQ2IDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2luY2x1
ZGUvdWFwaS9kcm0vYW1kZ3B1X2RybS5oCj4+Pj4+Pj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9h
bWRncHVfZHJtLmgKPj4+Pj4+PiBAQCAtNTQsNiArNTQsNyBAQCBleHRlcm4gIkMiIHsKPj4+Pj4+
PiAgICAgI2RlZmluZSBEUk1fQU1ER1BVX1ZNICAgICAgICAgICAgICAgICAgMHgxMwo+Pj4+Pj4+
ICAgICAjZGVmaW5lIERSTV9BTURHUFVfRkVOQ0VfVE9fSEFORExFICAgICAweDE0Cj4+Pj4+Pj4g
ICAgICNkZWZpbmUgRFJNX0FNREdQVV9TQ0hFRCAgICAgICAgICAgICAgIDB4MTUKPj4+Pj4+PiAr
I2RlZmluZSBEUk1fQU1ER1BVX1NFVFBBUkFNICAgICAgICAgICAgMHgxNgo+Pj4+Pj4+Cj4+Pj4+
Pj4gICAgICNkZWZpbmUgRFJNX0lPQ1RMX0FNREdQVV9HRU1fQ1JFQVRFICAgIERSTV9JT1dSKERS
TV9DT01NQU5EX0JBU0UgKyBEUk1fQU1ER1BVX0dFTV9DUkVBVEUsIHVuaW9uIGRybV9hbWRncHVf
Z2VtX2NyZWF0ZSkKPj4+Pj4+PiAgICAgI2RlZmluZSBEUk1fSU9DVExfQU1ER1BVX0dFTV9NTUFQ
ICAgICAgRFJNX0lPV1IoRFJNX0NPTU1BTkRfQkFTRSArIERSTV9BTURHUFVfR0VNX01NQVAsIHVu
aW9uIGRybV9hbWRncHVfZ2VtX21tYXApCj4+Pj4+Pj4gQEAgLTcxLDYgKzcyLDcgQEAgZXh0ZXJu
ICJDIiB7Cj4+Pj4+Pj4gICAgICNkZWZpbmUgRFJNX0lPQ1RMX0FNREdQVV9WTSAgICAgICAgICAg
IERSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fQU1ER1BVX1ZNLCB1bmlvbiBkcm1fYW1k
Z3B1X3ZtKQo+Pj4+Pj4+ICAgICAjZGVmaW5lIERSTV9JT0NUTF9BTURHUFVfRkVOQ0VfVE9fSEFO
RExFIERSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fQU1ER1BVX0ZFTkNFX1RPX0hBTkRM
RSwgdW5pb24gZHJtX2FtZGdwdV9mZW5jZV90b19oYW5kbGUpCj4+Pj4+Pj4gICAgICNkZWZpbmUg
RFJNX0lPQ1RMX0FNREdQVV9TQ0hFRCAgICAgICAgIERSTV9JT1coRFJNX0NPTU1BTkRfQkFTRSAr
IERSTV9BTURHUFVfU0NIRUQsIHVuaW9uIGRybV9hbWRncHVfc2NoZWQpCj4+Pj4+Pj4gKyNkZWZp
bmUgRFJNX0lPQ1RMX0FNREdQVV9TRVRQQVJBTSAgICAgIERSTV9JT1coRFJNX0NPTU1BTkRfQkFT
RSArIERSTV9BTURHUFVfU0VUUEFSQU0sIHN0cnVjdCBkcm1fYW1kZ3B1X3NldHBhcmFtKQo+Pj4+
Pj4+Cj4+Pj4+Pj4gICAgIC8qKgo+Pj4+Pj4+ICAgICAgKiBET0M6IG1lbW9yeSBkb21haW5zCj4+
Pj4+Pj4gQEAgLTMwNiw2ICszMDgsMTQgQEAgdW5pb24gZHJtX2FtZGdwdV9zY2hlZCB7Cj4+Pj4+
Pj4gICAgICAgICAgICBzdHJ1Y3QgZHJtX2FtZGdwdV9zY2hlZF9pbiBpbjsKPj4+Pj4+PiAgICAg
fTsKPj4+Pj4+Pgo+Pj4+Pj4+ICsjZGVmaW5lIEFNREdQVV9TRVRQQVJBTV9OT19JTVBMSUNJVF9T
WU5DICAgICAgIDEKPj4+Pj4+PiArCj4+Pj4+Pj4gK3N0cnVjdCBkcm1fYW1kZ3B1X3NldHBhcmFt
IHsKPj4+Pj4+PiArICAgICAgIC8qIEFNREdQVV9TRVRQQVJBTV8qICovCj4+Pj4+Pj4gKyAgICAg
ICBfX3UzMiAgIHBhcmFtOwo+Pj4+Pj4+ICsgICAgICAgX191MzIgICB2YWx1ZTsKPj4+Pj4+PiAr
fTsKPj4+Pj4+PiArCj4+Pj4+Pj4gICAgIC8qCj4+Pj4+Pj4gICAgICAqIFRoaXMgaXMgbm90IGEg
cmVsaWFibGUgQVBJIGFuZCB5b3Ugc2hvdWxkIGV4cGVjdCBpdCB0byBmYWlsIGZvciBhbnkKPj4+
Pj4+PiAgICAgICogbnVtYmVyIG9mIHJlYXNvbnMgYW5kIGhhdmUgZmFsbGJhY2sgcGF0aCB0aGF0
IGRvIG5vdCB1c2UgdXNlcnB0ciB0bwo+Pj4+Pj4+IC0tCj4+Pj4+Pj4gMi4zMi4wLnJjMgo+Pj4+
Pj4+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
