Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEF93A2882
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 11:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFD76E02C;
	Thu, 10 Jun 2021 09:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2064.outbound.protection.outlook.com [40.107.237.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B646E02C;
 Thu, 10 Jun 2021 09:39:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ES+FlPkM+v78ZNOEa3m25JfnlDEFaj6K/S+ElLt80Ub8A8M6ow/mux5N7VW+psQ1TqDYWxEsNQfBlM/g+2YxbnSu+2YIlZcqJv2xXHdfZVkLTtb3wwhqX6ouETEVBED1PWBDcw8jWwglGzJRg2ZPdS5RuEjhvk+aRu8CSKAM5aVfcqTghX7LPDcBXpcxH1n5cBYPWOlDPvzwIs0BJyf2idw1jxPHfflT+RO2g69SVNHiDU3PzDIBXU682fN4X67BeHcCF7n8JgSZW7+DHMQIMAiqSxTP2O9wAvNZcDKjotaNxWz4Wgj56Cx0ViYHgrbE847f7/S9t3mpkIzuNTCJzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o9xrMgtpyAz8mOtcLF2JuKFbvqTebF/G8+wCEPut6Ag=;
 b=Eko1V9LTIKev13vwupAttuWQ654CCo2mYjzoXmEh6s67vIvj9EGSVw+o9ppUx13vpL3Gmeml2/P4jip65JAK/+uLzpTvFo7zpDfbECmB5fx93DIknLq9xKZP2iV8DUpPhIkVHI8WrHwV2+Zyaje8nmpxb/H7z+WTP3C/xwTc3mR+Pq8UQKxuNCpVIem7xPupYpuV4beUNkY3IVc4zGTdqs2Kc6YYqqhggpkBn6k2mg9L/w9G8IWnRDswM7mHs5WZaydPVbhqYPFSCe9P+3RgRG+j9q6uOS8YSdDQ79FzqDSHZc5RJ90z7Vt6IGAXxhVm/mB1/WTwoDXJiSpGKdgnmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o9xrMgtpyAz8mOtcLF2JuKFbvqTebF/G8+wCEPut6Ag=;
 b=fiBJDebZxLbGkjXBLcrhwLFAQw9gaPdS4sYFWArF/9ub777R6dlq5Pfe8n5Nl3L/cVYnlYcMA3A74PC8B7MjbyvWPru9GQV5JGwb2ycLXl43reRaObac/gvqjUEZgvMvxLYIxff/kCdY2P9mACfb0Qrh/fh4UsNgSabzzypVx+4=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4126.namprd12.prod.outlook.com (2603:10b6:208:199::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Thu, 10 Jun
 2021 09:39:21 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4219.022; Thu, 10 Jun 2021
 09:39:20 +0000
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20210609212959.471209-1-jason@jlekstrand.net>
 <ae289388-911f-2928-d695-050863ee1007@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <f9be43e3-4107-3742-a11b-8021b2c19e32@amd.com>
Date: Thu, 10 Jun 2021 11:39:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <ae289388-911f-2928-d695-050863ee1007@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:c285:5f9a:99f5:633e]
X-ClientProxiedBy: PR0P264CA0166.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::34) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:c285:5f9a:99f5:633e]
 (2a02:908:1252:fb60:c285:5f9a:99f5:633e) by
 PR0P264CA0166.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1b::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4219.21 via Frontend Transport; Thu, 10 Jun 2021 09:39:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb7abfea-0c6f-4a52-80c5-08d92bf39fa9
X-MS-TrafficTypeDiagnostic: MN2PR12MB4126:
X-Microsoft-Antispam-PRVS: <MN2PR12MB412696459F82668C55183A6083359@MN2PR12MB4126.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7N+PHX92tt/jbWsiqzVjh4XGLhSSnNAIGJxMqteTSLx6BJerPKgH1bBzvLgIfmBpG7XFJZeW41cuo1vQE6ZLtK5Ljwx0B4/SCE/13fNv3RIUPdIbXxlh0mQNtzEMH7Lk00eDqN4BLbjRyVvQ7C/YWgaJO3CXD+/gI5jsUnFQzibbOKZ/E/y9/r08Fi323HX9G+/WCxuItYU2BN5o2q/Kr2uHDPQlxPuX/Um1WWvpCkq7Kht92ohnjX4zjlyR+JaNo/BJwreZ2GtJt72H4cr72XgWdev6QN8S3xlFNlmIv3p0Wb2af2s4bfX6xU011AC/1eYiebMrCran74rbyQPVJkp2/hYvRhusi4ugE4qIjGi0nBCgcKte7hJdwgpE7Vx6GcJEbEPNz7sPJec64BqiJQvQgVDJacdN/urUfwdDrv2TOroIT0P51zFJUK6hyvBwy8BzGs7hlo83AaepeZLLevX+IEa1qyuj1zAyIUVHnPWHJaqCPZ5Zu5skGgEWmpyorEFruO9GFwDy1IuIGObKt+3ikKeOeByhF+FJnKHMFTfcHtcqfYo5yCYlpQY04mgW6DSrhVkkIKzti24WQ/1Twqgzgb/RbsVZbsAF6zDWPTF9qP/gKOFehfb6JiKmrAMmb7x52Rn6mhtc8UlhqelCxLEGb5kF6D+11eo/7je5KntUK8+7vzpwMC/wAtssBy5X
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39850400004)(346002)(376002)(366004)(136003)(66476007)(6486002)(66946007)(4326008)(36756003)(66574015)(38100700002)(186003)(16526019)(53546011)(31696002)(86362001)(66556008)(2616005)(6666004)(54906003)(478600001)(110136005)(5660300002)(316002)(2906002)(8936002)(31686004)(8676002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVVxdTBvbElWSzUyUWVwYlVsRjRPeTFKUTh0YWF2c3NIUlF4TXlrS1Z2TkdC?=
 =?utf-8?B?c0pIb2g5c1RGaE9QOVFCT1BhME50NjJYRGJuZ1VmYlNPSERDS0gvZGpYNThj?=
 =?utf-8?B?YjA5Q2ZLVURob0J1R2lYQTNzNi9TL3kwQXgya0UyUjR0RUFqSnkvZDd0UEM4?=
 =?utf-8?B?NFloaDhFejFNdGhhdG1NS0EzT1dIWEFHQlRpYjRnbFpHbU8rQmpFZUM0MFl3?=
 =?utf-8?B?dmNHdXY2aUZaSGxzeXVFQmNKWVZIMmdRTGVXWXd6emh4N041aGU3QXNsNXIv?=
 =?utf-8?B?UUVrNk0rSTRMd2UwN28rSEJXak05RXlZZkZ1UDhGZXA2MG40VEx0bWVxSEt6?=
 =?utf-8?B?NFFtb0lxLzE4MlJsTyt1amRkZGlxbUxycE00Q0RIUlVVbmYrbDNhMU91NUpS?=
 =?utf-8?B?VU1OZHg4a1o5WDlSYllscjBwYjhTQVVkeUdkb2NIUlFQYmpmbC94ODhSVU05?=
 =?utf-8?B?R0toT0YwVUVERjRnNzhROU04dGI1bVJWSS9rbXhjR0E1bjdVVzBCNEhQek9B?=
 =?utf-8?B?ZEdqamlXbnIzUWhEcXNnOFhDdlhnQ1pTUi9DUEJQQXA3MzB6Ni81WWdpbko4?=
 =?utf-8?B?azJLNjN1eWtBb2FBNHQ3OC9qTHczV3FxTWUyOUNuNmtuK0FYT0QwTDdxOXl6?=
 =?utf-8?B?SFM1ek5JeTB0TVZJUFBCR1NFVzNoWDVTZlFGY2xEak9RWU5nSUZJTXoybS9P?=
 =?utf-8?B?WThxMldjMytGVWJITG1QbWtlVWFSSi8ra2lFUUI1TmpTN1JGT25iTjRzU0Ux?=
 =?utf-8?B?WjMzcTR3eEx3ZHB5SnI2em5rUVUyQU9ZampoNmllTEJpUWpJWm1ZTWt0SnFV?=
 =?utf-8?B?S1FURnl2cXRocGZ0Wjg3NW5ZeU9yV1VzZ043SnMrYXhpM0JuRFU1Ykhkb2U0?=
 =?utf-8?B?M0ZkLytLdkhxVWtnN0I4RlNpUFFSMWtsY1pabGtWdnlRbms3OFc4TXFod0M0?=
 =?utf-8?B?eDNUOUZWV2RoSWNBNXlQU3lUamNoWlg2QnBnVkpra3N6K01vRzV5dWRwa2tP?=
 =?utf-8?B?UjhBa0QxaVpJQnNibVlqb3pUWVp5S1JrRm9NTHhra3BGc0p0bUQrdmdIMi9C?=
 =?utf-8?B?N0IzRk03MEhvMnhZYU9SWVRYSFhvWVNUQUl3dVdWR1p2cTJDTm5LMDBmZTBo?=
 =?utf-8?B?b1VXZEZKM093WjFOa0J4VklHSGlzTVZIZzBIUmE0R09GZkxwZEVJb2ZTYnl0?=
 =?utf-8?B?N3UxTVUrcmwxRWFTSTMvemJRU3FjaXFVQXdJbzNVck9MUEVHTThqWFBuaDhy?=
 =?utf-8?B?dEEzS2JHU0o2bjBoeFRBNTE4bDJYUmFOMWNPQUxTcWs2aTNDNC8zK1R6cFZI?=
 =?utf-8?B?eXFOTWVhaGFHRHRyV2M4dktUSDk2dk9TNUc1b0dzRDNwTUNGc0p0cXhPWC9C?=
 =?utf-8?B?QTYrSXVaL3ZGeUVDZElaY3NsU25kc1pqOHlSbHFFOG94cW5idTNRd1N2aXNn?=
 =?utf-8?B?cGFmL0NEZ0xQMmxhaGhLSGlSWi9kSGVXbmV5S0w2SUVnSHovYzVrU2dRYlRs?=
 =?utf-8?B?c0JTN0tCVE1ad1VtMEkvWGFXcmZtM3NocTFSb0gveXBwQWo2ZmFhV3o3TEc4?=
 =?utf-8?B?ZFFUTlEveHpBZExUREwzTDlGMTUyd2dVVlM4WDlXOEVDL1JhRDBKcXo1V2w3?=
 =?utf-8?B?M0NnS0c0M3ZRcGFRUUIrYUxuNlpEVThobVZWVVM3SFZQWVUrWFM4TlRaaXl0?=
 =?utf-8?B?Z0VmLzlYNktGVWJheWJxb1ZHb0h6TXZYZkVTMTlaTi81ZDd3N3FubnZQcTRN?=
 =?utf-8?B?cU5DbThCb2drelJmQU5mU0hsbWFETlloOFRHOW1LbkpBNmZnYkR4ck9LWjBw?=
 =?utf-8?B?Z0RJdzdTeFhUdjZLSzB3bWFUMUpNakQyYk11YXp6WGxxVHhlallYOHg1Q1Vy?=
 =?utf-8?Q?SbXyrKttwr2rn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb7abfea-0c6f-4a52-80c5-08d92bf39fa9
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2021 09:39:20.6978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: baVYrKtfTmfWeCbNeeUVzCnFNMPbzuy3adEjiyFBfgaGDZigZeJ1wAsALPqiVtHI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4126
Subject: Re: [Intel-gfx] [PATCH 0/5] dma-fence,
 i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTAuMDYuMjEgdW0gMTE6Mjkgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDA5LzA2
LzIwMjEgMjI6MjksIEphc29uIEVrc3RyYW5kIHdyb3RlOgo+PiBFdmVyIHNpbmNlIDBlYWZlYzZk
MzI0NCAoImRybS9pOTE1OiBFbmFibGUgbG9ja2xlc3MgbG9va3VwIG9mIHJlcXVlc3QKPj4gdHJh
Y2tpbmcgdmlhIFJDVSIpLCB0aGUgaTkxNSBkcml2ZXIgaGFzIHVzZWQgU0xBQl9UWVBFU0FGRV9C
WV9SQ1UgKGl0Cj4+IHdhcyBjYWxsZWQgU0xBQl9ERVNUUk9ZX0JZX1JDVSBhdCB0aGUgdGltZSkg
aW4gb3JkZXIgdG8gYWxsb3cgUkNVIG9uCj4+IGk5MTVfcmVxdWVzdC7CoCBBcyBuaWZ0eSBhcyBT
TEFCX1RZUEVTQUZFX0JZX1JDVSBtYXkgYmUsIGl0IGNvbWVzIHdpdGgKPj4gc29tZSBzZXJpb3Vz
IGRpc2NsYWltZXJzLsKgIEluIHBhcnRpY3VsYXIsIG9iamVjdHMgY2FuIGdldCByZWN5Y2xlZCB3
aGlsZQo+PiBSQ1UgcmVhZGVycyBhcmUgc3RpbGwgaW4tZmxpZ2h0LsKgIFRoaXMgY2FuIGJlIG9r
IGlmIGV2ZXJ5b25lIHdobyB0b3VjaGVzCj4+IHRoZXNlIG9iamVjdHMga25vd3MgYWJvdXQgdGhl
IGRpc2NsYWltZXJzIGFuZCBpcyBjYXJlZnVsLiBIb3dldmVyLAo+PiBiZWNhdXNlIHdlJ3ZlIGNo
b3NlbiB0byB1c2UgU0xBQl9UWVBFU0FGRV9CWV9SQ1UgZm9yIGk5MTVfcmVxdWVzdCBhbmQKPj4g
YmVjYXVzZSBpOTE1X3JlcXVlc3QgY29udGFpbnMgYSBkbWFfZmVuY2UsIHdlJ3ZlIGxlYWtlZAo+
PiBTTEFCX1RZUEVTQUZFX0JZX1JDVSBhbmQgaXRzIHdob2xlIHBpbGUgb2YgZGlzY2xhaW1lcnMg
dG8gZXZlcnkgZHJpdmVyCj4+IGluIHRoZSBrZXJuZWwgd2hpY2ggbWF5IGNvbnN1bWUgYSBkbWFf
ZmVuY2UuCj4KPiBJIGRvbid0IHRoaW5rIHRoZSBwYXJ0IGFib3V0IGxlYWtpbmcgaXMgdHJ1ZS4u
Lgo+Cj4+IFdlJ3ZlIHRyaWVkIHRvIGtlZXAgaXQgc29tZXdoYXQgY29udGFpbmVkIGJ5IGRvaW5n
IG1vc3Qgb2YgdGhlIGhhcmQgd29yawo+PiB0byBwcmV2ZW50IGFjY2VzcyBvZiByZWN5Y2xlZCBv
YmplY3RzIHZpYSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCkuCj4+IEhvd2V2ZXIsIGEgcXVpY2sg
Z3JlcCBvZiBrZXJuZWwgc291cmNlcyBzYXlzIHRoYXQsIG9mIHRoZSAzMCBpbnN0YW5jZXMKPj4g
b2YgZG1hX2ZlbmNlX2dldF9yY3UqLCBvbmx5IDExIG9mIHRoZW0gdXNlIGRtYV9mZW5jZV9nZXRf
cmN1X3NhZmUoKS4KPj4gSXQncyBsaWtlbHkgdGhlcmUgYmVhciB0cmFwcyBpbiBEUk0gYW5kIHJl
bGF0ZWQgc3Vic3lzdGVtcyBqdXN0IHdhaXRpbmcKPj4gZm9yIHNvbWVvbmUgdG8gYWNjaWRlbnRh
bGx5IHN0ZXAgaW4gdGhlbS4KPgo+IC4uLmJlY2F1c2UgZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZSBh
cGVhcnMgdG8gYmUgYWJvdXQgd2hldGhlciB0aGUgCj4gKnBvaW50ZXIqIHRvIHRoZSBmZW5jZSBp
dHNlbGYgaXMgcmN1IHByb3RlY3RlZCwgbm90IGFib3V0IHRoZSBmZW5jZSAKPiBvYmplY3QgaXRz
ZWxmLgoKWWVzLCBleGFjdGx5IHRoYXQuCgo+Cj4gSWYgb25lIGhhcyBhIHN0YWJsZSBwb2ludGVy
IHRvIGEgZmVuY2UgZG1hX2ZlbmNlX2dldF9yY3UgaXMgSSB0aGluayAKPiBlbm91Z2ggdG8gZGVh
bCB3aXRoIFNMQUJfVFlQRVNBRkVfQllfUkNVIHVzZWQgYnkgaTkxNV9yZXF1ZXN0IChhcyBkbWEg
Cj4gZmVuY2UgaXMgYSBiYXNlIG9iamVjdCB0aGVyZSkuIFVubGVzcyB5b3UgZm91bmQgYSBidWcg
aW4gcnEgZmllbGQgCj4gcmVjeWNsaW5nLiBCdXQgYWNjZXNzIHRvIHRoZSBkbWEgZmVuY2UgaXMg
YWxsIHRpZ2h0bHkgY29udHJvbGxlZCBzbyBJIAo+IGRvbid0IGdldCB3aGF0IGxlYWtzLgo+Cj4+
IFRoaXMgcGF0Y2ggc2VyaWVzIHN0b3BzIHVzIHVzaW5nIFNMQUJfVFlQRVNBRkVfQllfUkNVIGZv
ciBpOTE1X3JlcXVlc3QKPj4gYW5kLCBpbnN0ZWFkLCBkb2VzIGFuIFJDVS1zYWZlIHNsYWIgZnJl
ZSB2aWEgcmN1X2NhbGwoKS7CoCBUaGlzIHNob3VsZAo+PiBsZXQgdXMga2VlcCBtb3N0IG9mIHRo
ZSBwZXJmIGJlbmVmaXRzIG9mIHNsYWIgYWxsb2NhdGlvbiB3aGlsZSBhdm9pZGluZwo+PiB0aGUg
YmVhciB0cmFwcyBpbmhlcmVudCBpbiBTTEFCX1RZUEVTQUZFX0JZX1JDVS7CoCBJdCB0aGVuIHJl
bW92ZXMgCj4+IHN1cHBvcnQKPj4gZm9yIFNMQUJfVFlQRVNBRkVfQllfUkNVIGZyb20gZG1hX2Zl
bmNlIGVudGlyZWx5Lgo+Cj4gQWNjb3JkaW5nIHRvIHRoZSByYXRpb25hbGUgYmVoaW5kIFNMQUJf
VFlQRVNBRkVfQllfUkNVIHRyYWRpdGlvbmFsIFJDVSAKPiBmcmVlaW5nIGNhbiBiZSBhIGxvdCBt
b3JlIGNvc3RseSBzbyBJIHRoaW5rIHdlIG5lZWQgYSBjbGVhciAKPiBqdXN0aWZpY2F0aW9uIG9u
IHdoeSB0aGlzIGNoYW5nZSBpcyBiZWluZyBjb25zaWRlcmVkLgoKVGhlIHByb2JsZW0gaXMgdGhh
dCBTTEFCX1RZUEVTQUZFX0JZX1JDVSByZXF1aXJlcyB0aGF0IHdlIHVzZSBhIHNlcXVlbmNlIApj
b3VudGVyIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGRvbid0IGdyYWIgdGhlIHJlZmVyZW5jZSB0byBh
IHJlYWxsb2NhdGVkIApkbWFfZmVuY2UuCgpVcGRhdGluZyB0aGUgc2VxdWVuY2UgY291bnRlciBl
dmVyeSB0aW1lIHdlIGFkZCBhIGZlbmNlIG5vdyBtZWFucyB0d28gCmFkZGl0aW9ucyB3cml0ZXMg
YW5kIG9uZSBhZGRpdGlvbmFsIGJhcnJpZXIgZm9yIGFuIGV4dHJlbWVseSBob3QgcGF0aC4gClRo
ZSBleHRyYSBvdmVyaGVhZCBvZiBSQ1UgZnJlZWluZyBpcyBjb21wbGV0ZWx5IG5lZ2xpZ2libGUg
Y29tcGFyZWQgdG8gdGhhdC4KClRoZSBnb29kIG5ld3MgaXMgdGhhdCBJIHRoaW5rIGlmIHdlIGFy
ZSBqdXN0IGEgYml0IG1vcmUgY2xldmVyIGFib3V0IG91ciAKaGFuZGxlIHdlIGNhbiBib3RoIGF2
b2lkIHRoZSBzZXF1ZW5jZSBjb3VudGVyIGFuZCBrZWVwIApTTEFCX1RZUEVTQUZFX0JZX1JDVSBh
cm91bmQuCgpCdXQgdGhpcyBuZWVkcyBtb3JlIGNvZGUgY2xlYW51cCBhbmQgYWJzdHJhY3Rpbmcg
dGhlIHNlcXVlbmNlIGNvdW50ZXIgCnVzYWdlIGluIGEgbWFjcm8uCgpSZWdhcmRzLApDaHJpc3Rp
YW4uCgoKPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+Pgo+PiBOb3RlOiBUaGUgbGFzdCBwYXRj
aCBpcyBsYWJsZWQgRE9OT1RNRVJHRS7CoCBUaGlzIHdhcyBhdCBEYW5pZWwgVmV0dGVyJ3MKPj4g
cmVxdWVzdCBhcyB3ZSBtYXkgd2FudCB0byBsZXQgdGhpcyBiYWtlIGZvciBhIGNvdXBsZSByZWxl
YXNlcyBiZWZvcmUgd2UKPj4gcmlwIG91dCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIGVudGlyZWx5
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5u
ZXQ+Cj4+IENjOiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+PiBD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPj4gQ2M6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gQ2M6IERhdmUgQWlybGllIDxh
aXJsaWVkQHJlZGhhdC5jb20+Cj4+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgo+Pgo+PiBKYXNvbiBFa3N0cmFuZCAoNSk6Cj4+IMKgwqAgZHJtL2k5MTU6IE1v
dmUgaW50ZWxfZW5naW5lX2ZyZWVfcmVxdWVzdF9wb29sIHRvIGk5MTVfcmVxdWVzdC5jCj4+IMKg
wqAgZHJtL2k5MTU6IFVzZSBhIHNpbXBsZXIgc2NoZW1lIGZvciBjYWNoaW5nIGk5MTVfcmVxdWVz
dAo+PiDCoMKgIGRybS9pOTE1OiBTdG9wIHVzaW5nIFNMQUJfVFlQRVNBRkVfQllfUkNVIGZvciBp
OTE1X3JlcXVlc3QKPj4gwqDCoCBkbWEtYnVmOiBTdG9wIHVzaW5nIFNMQUJfVFlQRVNBRkVfQllf
UkNVIGluIHNlbGZ0ZXN0cwo+PiDCoMKgIERPTk9UTUVSR0U6IGRtYS1idWY6IEdldCByaWQgb2Yg
ZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZQo+Pgo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LWNoYWluLmPCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDggKy0KPj4gwqAgZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgNCArLQo+PiDC
oCBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmPCoMKgwqDCoMKgIHzCoCAyNCAr
LS0tCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuY8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDI3ICstLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2ZlbmNlLmMgfMKgwqAgNCArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYyB8wqDCoCA4IC0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlLmjCoMKgwqDCoMKgwqDCoCB8wqDCoCA0ICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5jwqDCoMKgwqDCoMKgIHwgMTQ3ICsrKysrKysrKysrKy0tLS0tLS0tLS0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmjCoMKgwqDCoMKgwqAgfMKg
wqAgMiAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmPCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoCA0ICstCj4+IMKgIGluY2x1ZGUvZHJtL2RybV9zeW5jb2JqLmjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA0ICstCj4+IMKgIGluY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNTAgLS0tLS0t
LS0KPj4gwqAgaW5jbHVkZS9saW51eC9kbWEtcmVzdi5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoCA0ICstCj4+IMKgIDEzIGZpbGVzIGNoYW5nZWQsIDExMCBpbnNlcnRp
b25zKCspLCAxODAgZGVsZXRpb25zKC0pCj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
