Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A89D20AE97
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 10:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA60A6E184;
	Fri, 26 Jun 2020 08:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2088.outbound.protection.outlook.com [40.107.244.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C106E184
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 08:56:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BMnO8WxcH7mFeh7IyTs8sHVrdPWDde/8FpnSrTryWUE5U3dOmMUr+HJm/+83QACd/fSbGl3UXfdcEFk/uLWxQNJKXhfkpSBznP9iuX7/l/J91tTE59H3zcJjthDiYXWBo8kM8JyZ8tGQDflM3/UcptQPUCUi/t8PncDIw3juI+Tjne8BgUr+bHmgq/jdFXGzSCNKSZJ+vR5k+axwFLtcRVr108hVtAMJNI3cP3UHrk2enLfA1HUILIBu2uqHIncdGF3HF2eysQv9O/U5dHDc0jYQPY1QsZg3uZEf1DjmiseMIlrVUtd6vL8Et7us/8bcVKPvLXLAjMPbKfAQ7IPyrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/cBBDHR8JzW58RUYS4fgc3AtvUKD3L8z0cVSt+QqEQ=;
 b=LEiJ2J0SntibBqpxuIPVqyFRrAYc2zEOdAOef+qoa+pDhk29V3vJua0tPi8PBrGjNrUDc6LRU6AfUESOnflsDTDrVge3LTWUlCSAVwH/QUJC1aainH/KDTjadFnsXNxgpuO2KmCkB9mIMgnZHKPpLcH2Fqht9eBMC31iBkCnBA9MfreFz2A6RvY7DUgseo50l+N98hrGLhuioRKB28s8fpsCxDtdOVfoyP+dc5cwEGRZz005Vh75U+hIOZ2ezBXiT4AU+Z1g+sF9f/2ok4a1ZemFivrark7YM03Cm3jn0qbPSkw1I9hdB5izhi2QJU4mZPII69HaLbb9/9H+PlplJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/cBBDHR8JzW58RUYS4fgc3AtvUKD3L8z0cVSt+QqEQ=;
 b=hIBDC0rTsQ5rt3Rizl7Xo+WklqgM343lh46DMaxAPK19qUMF5hzToOkZpVZNpl418586WN06+GrR+CIy5XgJXvEZO8gfD4jccPMNXWnip8QAXdBTVnaMdH9neaxh0pGC/KV3Ai440eZupbktbuKx4HCEQ/XLXK6B/e0agAIgISI=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM6PR12MB4316.namprd12.prod.outlook.com (2603:10b6:5:21a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Fri, 26 Jun
 2020 08:56:21 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::a045:f8c0:8edb:1ef1]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::a045:f8c0:8edb:1ef1%9]) with mapi id 15.20.3131.025; Fri, 26 Jun 2020
 08:56:21 +0000
To: Chris Wilson <chris@chris-wilson.co.uk>, Dave Airlie <airlied@gmail.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <159302990055.4527.16849537545776334660@build.alporthouse.com>
 <de87a30b-3ac2-1bee-4ee0-5a05baef6146@gmail.com>
 <159308931300.4527.14536354033703689604@build.alporthouse.com>
 <6d99c4d9-7294-9ce1-471a-f81de7dc2c4f@amd.com>
 <159309140216.31486.2359580281725596670@build.alporthouse.com>
 <011fe07b-1e2c-7cc2-ade8-2c8b4df80b90@gmail.com>
 <159309782319.31486.530565133539052103@build.alporthouse.com>
 <746b10ad-7521-78dd-9a2b-2f44b6594842@amd.com>
 <159310696106.31486.9034080828697272264@build.alporthouse.com>
 <159315901171.15982.4604268132167952820@build.alporthouse.com>
 <a5417984-202b-f252-2aa5-19e8cdaecf20@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <9a3ce245-1169-9e10-517d-d78058cab0e1@amd.com>
Date: Fri, 26 Jun 2020 10:56:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <a5417984-202b-f252-2aa5-19e8cdaecf20@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR04CA0077.eurprd04.prod.outlook.com
 (2603:10a6:208:be::18) To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR04CA0077.eurprd04.prod.outlook.com (2603:10a6:208:be::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.21 via Frontend Transport; Fri, 26 Jun 2020 08:56:20 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4f8a1b3b-3e12-4ca4-360e-08d819aecc20
X-MS-TrafficTypeDiagnostic: DM6PR12MB4316:
X-Microsoft-Antispam-PRVS: <DM6PR12MB43163F23D635CDCB2A6D3C0B83930@DM6PR12MB4316.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0446F0FCE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IxHbtCa/yIvLVcIcrFp1Nnzwp3fcpdXZUuzFe9YQ+RRflGSjA7RS9eZxS41E9SI0zM4pmyuUAyVIv9oovIc9lRwwQzIHbpvRmee/BMXfHvHyD8RkNl6ubFBmx89cnjtLrpSwRGgJB1QhKEyqvGWmnSjuT5dqNY0/WpnJff31UE4gA/RBY/CvVFJta6NdH0XFCpaTiU1fxOSwxeykbluxDrxMnm1DZLQSFbde92ZhlmyqlFPJwViBxTfYBJkWk0vviL+JfSp/sbzni6/PPdsVyE2C23/ykOtcHwlgaOuVV2iszKvXE3WdxTPoLd2FxXPKQKBc0aeXV9CGuvLySB8NEFKhGsez3tX0+LdBd4Sf2WmbByEWpmJjw/diFSBXi2uG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4401.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(4326008)(66556008)(8936002)(2906002)(52116002)(83380400001)(54906003)(66476007)(86362001)(6486002)(31696002)(66946007)(5660300002)(36756003)(2616005)(186003)(16526019)(110136005)(316002)(6666004)(31686004)(478600001)(66574015)(8676002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: IMzAG4zGidgS0uLcPjGGSOXHN3S6tclDbqqJbmLNC99/Cy4j0MMikV6lW2vNpsvbFrajaEnZsRVSY59lPtjFglrf102nRFmp94u2170GLCr9yNSwy1e/uS0u/tkPYcOQB/yqLZU/uBbLDhA9y0CcoYW2jyC4RwOJcLDqEPdhpdAqJNwgpNJoJgLVNawupN107aHjtg/OvqkbmuYZkYD1HnXjJpIYeXHn9It8TzR7QcLvIXlNxHeELvDgURUM6XhUVKqeOoJUcFoTS3m9K8SqoEP6NWOzjU9DkaHlwH4ULaCD0qM7jLYcTwjBSCDae1yYY3XVJQlnOiN/zEXkaa9RppFH9qbsRfJC1ldhSFeS/Ve7DW1GqBqRWIB/b29qxptwD6U2OWJLyKJpQZlHGBDt+MIV5vRQlYqQv/vii8LCMWzR0EOYk2fz1lCCwFMWro30qzTam0yzf53ns/uhZW/UTONR41QMqC6N7YJJM1Zu/YuJwEnmGhoO/rAdgWXBUxIw8scjaciyJRFwQgABE/bRJlERbZ7y3ISjW2PJuFQvQjlYA7/PDh4wJlbUNPGPgJSI
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8a1b3b-3e12-4ca4-360e-08d819aecc20
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4401.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2020 08:56:21.4722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s6su14iBr6yWmw1HbRUHMkcD+4rAQKSVVp3Wt2rSQnwMUSfrtNrFruDyn4xzx8Wu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4316
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsLAoKY291bGQgeW91IGhlbHAgbXkgZXhwbGFpbmluZyB0byBDaHJpc3RvcGggd2h5
IHRoaXMgZG9lc24ndCB3b3JrPwoKV2UgaGF2ZSBleGVyY2lzZWQgdGhpcyBtdWx0aXBsZSB0aW1l
cyBpbiB0aGUgcGFzdCBtb250aCBhbmQgSSdtIHJlYWxseSAKc3VycHJpc2VkIHRoYXQgYW55Ym9k
eSBpcyBzdGlsbCB0cnlpbmcgdGhpcyBhcHByb2FjaC4KClRoYW5rcywKQ2hyaXN0aWFuLgoKQW0g
MjYuMDYuMjAgdW0gMTA6NTQgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+IEFtIDI2LjA2LjIw
IHVtIDEwOjEwIHNjaHJpZWIgQ2hyaXMgV2lsc29uOgo+PiBRdW90aW5nIENocmlzIFdpbHNvbiAo
MjAyMC0wNi0yNSAxODo0Mjo0MSkKPj4+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5pZyAoMjAyMC0w
Ni0yNSAxNjo0NzowOSkKPj4+PiBBbSAyNS4wNi4yMCB1bSAxNzoxMCBzY2hyaWViIENocmlzIFdp
bHNvbjoKPj4+Pj4gV2UgaGF2ZSB0aGUgREFHIG9mIGZlbmNlcywgd2UgY2FuIHVzZSB0aGF0IGlu
Zm9ybWF0aW9uIHRvIGF2b2lkIAo+Pj4+PiBhZGRpbmcKPj4+Pj4gYW4gaW1wbGljaXQgY291cGxp
bmcgYmV0d2VlbiBleGVjdXRpb24gY29udGV4dHMuCj4+Pj4gTm8sIHdlIGNhbid0LiBBbmQgaXQg
c291bmRzIGxpa2UgeW91IHN0aWxsIGhhdmUgbm90IHVuZGVyc3Rvb2QgdGhlCj4+Pj4gdW5kZXJs
eWluZyBwcm9ibGVtLgo+Pj4+Cj4+Pj4gU2VlIHRoaXMgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCB0
aGUgZmVuY2VzIGl0c2VsZiBvciB0aGVpciBEQUcuCj4+Pj4KPj4+PiBXaGVuIHlvdSBkZXBlbmQg
b24gdXNlcnNwYWNlIHRvIGRvIGFub3RoZXIgc3VibWlzc2lvbiBzbyB5b3VyIGZlbmNlIAo+Pj4+
IGNhbgo+Pj4+IHN0YXJ0IHByb2Nlc3NpbmcgeW91IGVuZCB1cCBkZXBlbmRpbmcgb24gd2hhdGV2
ZXIgdXNlcnNwYWNlIGRvZXMuCj4+PiBIVyBkZXBlbmRlbmN5IG9uIHVzZXJzcGFjZSBpcyBleHBs
aWNpdCBpbiB0aGUgQUJJIGFuZCBjbGllbnQgQVBJcywgYW5kCj4+PiB0aGUgZGlyZWN0IGNvbnRy
b2wgdXNlcnNwYWNlIGhhcyBvdmVyIHRoZSBIVy4KPj4+Cj4+Pj4gVGhpcyBpbiB0dXJuIG1lYW5z
IHdoZW4gdXNlcnNwYWNlIGNhbGxzIGEgc3lzdGVtIGNhbGwgKG9yIGRvZXMgcGFnZQo+Pj4+IGZh
dWx0KSBpdCBpcyBwb3NzaWJsZSB0aGF0IHRoaXMgZW5kcyB1cCBpbiB0aGUgcmVjbGFpbSBjb2Rl
IHBhdGguCj4+PiBXZSBoYXZlIGJvdGggc2FpZCB0aGUgdmVyeSBzYW1lIHRoaW5nLgo+Cj4gVGhl
biBJJ20gcmVhbGx5IHdvbmRlcmluZyB3aHkgeW91IGRvbid0IGNvbWUgdG8gdGhlIHNhbWUgY29u
Y2x1c2lvbiA6KQo+Cj4+Pj4gQW5kIHdoaWxlIHdlIHdhbnQgdG8gYXZvaWQgaXQgYm90aCBEYW5p
ZWwgYW5kIEkgYWxyZWFkeSBkaXNjdXNzZWQgdGhpcwo+Pj4+IG11bHRpcGxlIHRpbWVzIGFuZCB3
ZSBhZ3JlZSBpdCBpcyBzdGlsbCBhIG11c3QgaGF2ZSB0byBiZSBhYmxlIHRvIGRvCj4+Pj4gZmVu
Y2Ugd2FpdHMgaW4gdGhlIHJlY2xhaW0gY29kZSBwYXRoLgo+Pj4gQnV0IGNhbWUgdG8gdGhlIG9w
cG9zaXRlIGNvbmNsdXNpb24uIEZvciBkb2luZyB0aGF0IHdhaXQgaGFybXMgdGhlCj4+PiB1bnJl
bGF0ZWQgY2FsbGVyIGFuZCB0aGUgcmVjbGFpbSBpcyBvcHBvcnR1bmlzdGljLiBUaGVyZSBpcyBu
byBuZWVkIGZvcgo+Pj4gdGhhdCBjYWxsZXIgdG8gcmVjbGFpbSB0aGF0IHBhZ2UsIHdoZW4gaXQg
Y2FuIGhhdmUgYW55IG90aGVyLiBXaHkgCj4+PiBkaWQgeW91Cj4+PiBldmVuIGNob29zZSB0aGF0
IHBhZ2UgdG8gcmVjbGFpbT8gSW5kdWNpbmcgbGF0ZW5jeSBpbiB0aGUgY2FsbGVyIGlzIAo+Pj4g
YSBidWcsCj4+PiBoYXMgYmVlbiByZXBvcnRlZCBwcmV2aW91c2x5IGFzIGEgYnVnLCBhbmQgc3Rp
bGwgY29uc2lkZXJlZCBhIGJ1Zy4gCj4+PiBbQnV0IGF0Cj4+PiB0aGUgZW5kIG9mIHRoZSBkYXks
IGlmIHRoZSBzeXN0ZW0gaXMgb3V0IG9mIG1lbW9yeSwgdGhlbiB5b3UgaGF2ZSB0byAKPj4+IHBp
Y2sKPj4+IGEgdmljdGltLl0KPgo+IENvcnJlY3QuIEJ1dCB0aGlzIGlzIGFsc28gbm90IGxpbWl0
ZWQgdG8gdGhlIHJlY2xhaW0gcGF0aCBhcyBhbnkgCj4ga2VybmVsIHN5c3RlbSBjYWxsIGFuZCBw
YWdlIGZhdWx0IGNhbiBjYXVzZSBhIHByb2JsZW0gYXMgd2VsbC4KPgo+IEluIG90aGVyIHdvcmRz
ICJmZW5jZSAtPiB1c2Vyc3BhY2UgLT4gcGFnZSBmYXVsdCAtPiBmZW5jZSIgb3IgImZlbmNlIAo+
IC0+IHVzZXJzcGFjZSAtPiBzeXN0ZW0gY2FsbCAtPiBmZW5jZSIgY2FuIGVhc2lseSBjYXVzZSB0
aGUgc2FtZSAKPiBwcm9ibGVtIGFuZCB0aGF0IGlzIG5vdCBhdm9pZGFibGUuCj4KPj4gQW4gZXhh
bXBsZQo+Pgo+PiBUaHJlYWQgQcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUaHJlYWQg
Qgo+Pgo+PiDCoMKgwqDCoHN1Ym1pdChWa0NtZFdhaXRFdmVudHMpCj4+IMKgwqDCoMKgcmVjdmZy
b20oVGhyZWFkQinCoMKgwqAgLi4uwqDCoMKgIHNlbmR0byhUaHJlYWRCKQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcLSBhbGxvY19wYWdlCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXC0gZGlyZWN0IHJlY2xhaW0KPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwtIGRtYV9mZW5jZV93YWl0KEEp
Cj4+IMKgwqDCoMKgVmtTZXRFdmVudCgpCj4+Cj4+IFJlZ2FyZGxlc3Mgb2YgdGhhdCBhY3R1YWwg
ZGVhZGxvY2ssIHdhaXRpbmcgb24gYW4gYXJiaXRyYXJ5IGZlbmNlIGluY3Vycwo+PiBhbiB1bmJv
dW5kZWQgbGF0ZW5jeSB3aGljaCBpcyB1bmFjY2VwdGFibGUgZm9yIGRpcmVjdCByZWNsYWltLgo+
Pgo+PiBPbmxpbmUgZGVidWdnaW5nIGNhbiBpbmRlZmluaXRlbHkgc3VzcGVuZCBmZW5jZSBzaWdu
YWxpbmcsIGFuZCB0aGUgb25seQo+PiBndWFyYW50ZWUgd2UgbWFrZSBvZiBmb3J3YXJkIHByb2dy
ZXNzLCBpbiBzb21lIGNhc2VzLCBpcyBwcm9jZXNzCj4+IHRlcm1pbmF0aW9uLgo+Cj4gQW5kIGV4
YWN0bHkgdGhhdCBpcyB3aGF0IGRvZXNuJ3Qgd29yay4gWW91IGRvbid0IGhhdmUgYW55IGZvcndh
cmQgCj4gcHJvZ3Jlc3MgYW55IG1vcmUgYmVjYXVzZSB5b3UgcmFuIGludG8gYSBzb2Z0d2FyZSBk
ZWFkbG9jay4KPgo+IEluIG90aGVyIHdvcmRzIHRoZSBzaWduYWxpbmcgb2YgYSBmZW5jZSBkZXBl
bmRzIG9uIHRoZSB3ZWxmYXJlIG9mIAo+IHVzZXJzcGFjZS4gWW91IGNhbiB0cnkgdG8ga2lsbCB1
c2Vyc3BhY2UsIGJ1dCB0aGlzIGNhbiB3YWl0IGZvciB0aGUgCj4gZmVuY2UgeW91IHRyeSB0byBz
aWduYWwgaW4gdGhlIGZpcnN0IHBsYWNlLgo+Cj4gU2VlIHRoZSBkaWZmZXJlbmNlIHRvIGEgZGVh
ZGxvY2sgb24gdGhlIEdQVSBpcyB0aGF0IHlvdSBjYW4gY2FuIGFsd2F5cyAKPiBraWxsIGEgcnVu
bmluZyBqb2Igb3IgcHJvY2VzcyBldmVuIGlmIGl0IGlzIHN0dWNrIHdpdGggc29tZXRoaW5nIGVs
c2UuIAo+IEJ1dCBpZiB0aGUga2VybmVsIGlzIGRlYWRsb2NrZWQgd2l0aCBpdHNlbGYgeW91IGNh
bid0IGtpbGwgdGhlIHByb2Nlc3MgCj4gYW55IG1vcmUsIHRoZSBvbmx5IG9wdGlvbiBsZWZ0IHRv
IGdldCBjbGVhbmx5IG91dCBvZiB0aGlzIGlzIHRvIHJlYm9vdCAKPiB0aGUga2VybmVsLgo+Cj4g
VGhlIG9ubHkgd2F5IHRvIGF2b2lkIHRoaXMgd291bGQgYmUgdG8gbmV2ZXIgZXZlciB3YWl0IGZv
ciB0aGUgZmVuY2UgCj4gaW4gdGhlIGtlcm5lbCBhbmQgdGhlbiB5b3VyIHdob2xlIGNvbnN0cnVj
dCBpcyBub3QgdXNlZnVsIGFueSBtb3JlLgo+Cj4gSSdtIHJ1bm5pbmcgb3V0IG9mIGlkZWFzIGhv
dyB0byBleHBsYWluIHdoYXQgdGhlIHByb2JsZW0gaXMgaGVyZS4uLi4KPgo+IFJlZ2FyZHMsCj4g
Q2hyaXN0aWFuLgo+Cj4+IC1DaHJpcwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
