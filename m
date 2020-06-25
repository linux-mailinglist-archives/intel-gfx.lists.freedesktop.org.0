Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FEA209F03
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 14:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B1E6EBD5;
	Thu, 25 Jun 2020 12:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2082.outbound.protection.outlook.com [40.107.220.82])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 778856E29E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 12:59:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3e4vE/IKVYgtgQf5Lpp0bT7bU1P25obEw7cQV3rJUGZk4Iw2CSn+zQksW8kJkB9exU37fK1A4SZc6BBIl5Ubbt46JhiKpYsuc/e/+s7tmxIvle4VUHeAE05oGt9RX1oU6500+8I37pBANrgmVbt3SZIFW9BoM/gcbLmltsvqeATH5gfWhRaAiS/LWBOd8YvTMhdcchhZYkaVdUBCKoAK+zmJ2X2zJUDOmel23b+8ZV5k/PWfualinRoTwah6d7dvcreqymAIyhmDUoqfE0H+N6KNytjGnQ/QmSO5PCLpo0rUj/nhTuY+9xlWlephA+acUxLMbv6uu4JVOalTHpcvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReIC0eLd4fatDPo/uIN/R5I8hqvM9wGh4bIYEJolVks=;
 b=ZfzEUcP/vRzKH7croXbw1Qocccink5jCZDA+yonbEkX5jLQk5bi5Vjm+QUnhGJoCQvOjxa/uFc94MbeDGK3V9KR50RNmW9d7TDnJPYXCf5iuvdG/RWk2rxCzIIxttDJB9EahYJp9klHr6tU7txwHCTRTHcXxf+FqYaoW3Gq/ly2sN9HDqrsAuJAT0CAoUtTgErFbfBPl3k0J0l2lT2nJaCHWKE3+PgJ8JuexsNQdd4aqPkrztBWLtdAEyxkEb/oHbMv+kHIIxoz5m2BmEDnZX/Yql592Y+3VklGC4Io7XxgG0RQn3BSCOIDmX7jHRau7WTCfsGPg4rkDWHnQGpMReg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReIC0eLd4fatDPo/uIN/R5I8hqvM9wGh4bIYEJolVks=;
 b=rAxtYkL3GRyw+0+dAWaiWXEOi6B0XbdLhaCFnqDArpJy0KKr8WgukxJs07ijcgUWBzGQqpXLD0jd+7OpMrqjm3evHZdGN/eFzVWQQv5SqhsPHHBeDkKwt/hi4YcWsDNKwdkiNNKumJJAfHOWTGGUiOwMUaTkrJPQvai+5LpODCA=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM5PR1201MB0092.namprd12.prod.outlook.com (2603:10b6:4:54::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Thu, 25 Jun
 2020 12:59:21 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::a045:f8c0:8edb:1ef1]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::a045:f8c0:8edb:1ef1%9]) with mapi id 15.20.3131.020; Thu, 25 Jun 2020
 12:59:21 +0000
To: Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Dave Airlie <airlied@gmail.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
 <159290661156.6856.12185315246799210214@build.alporthouse.com>
 <CAPM=9tx69Xv3xbAb1U+SGOuKk7wirZy6FbRejsajCt9Lvan9VA@mail.gmail.com>
 <159294714433.24819.3044662904558073290@build.alporthouse.com>
 <CAPM=9tzY0An5THnH=+KEv35LfX0DGt9q6u=t83id6OPgFsN-LQ@mail.gmail.com>
 <159302990055.4527.16849537545776334660@build.alporthouse.com>
 <de87a30b-3ac2-1bee-4ee0-5a05baef6146@gmail.com>
 <159308931300.4527.14536354033703689604@build.alporthouse.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <6d99c4d9-7294-9ce1-471a-f81de7dc2c4f@amd.com>
Date: Thu, 25 Jun 2020 14:59:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <159308931300.4527.14536354033703689604@build.alporthouse.com>
Content-Language: en-US
X-ClientProxiedBy: FRYP281CA0018.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::28)
 To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 FRYP281CA0018.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20 via Frontend Transport; Thu, 25 Jun 2020 12:59:20 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 04d957eb-8eb3-44a8-0355-08d819079412
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0092:
X-Microsoft-Antispam-PRVS: <DM5PR1201MB00926D9F50548FC19C6CFF5183920@DM5PR1201MB0092.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0445A82F82
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: azzMSiMTjey1t2hxFwyJ4bA3bkabQ5iwQQO/8TuxNYuZY4N4tyeFuJTvYcbAXg446CacIWXyoGc0587CWrJ2eS0ooYYw3k21ofQxjXbbnNjbtWracsKHl/I0tHPAV7+JnpKhFXbC2KWOrWqfoOX11ywFhyFooVzpC9IDy6MA4j89AB8L9lvvIZKvcSQ6GyKTh5Vpswkna6E4g4NHTIPmpGLfyiKIAZmip5NrpfJU1coPLNzMFg8GOpdwqUBruMc1RLmZfkWtNP6hAQnsLx/EbYk3fxMPSADNALjLKuYMGqqM/m1E7UYZyoFCrjFa0NEaFbaPKui5VxBkPwNIMwQ3rBUQoimW5PUprsVm0kAxO4XGp5rEisjFxvQrde2MXgU9MIxu2y8j3b/IGvO12HfLADnGqPzSyTnTXE9Uce0Buym6mWQb2tKdtwV0okFrqQxJjAPqO23KhXGImiCEjr7r1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4401.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(66476007)(66574015)(36756003)(186003)(66556008)(86362001)(45080400002)(66946007)(966005)(8936002)(478600001)(16526019)(53546011)(316002)(6486002)(54906003)(5660300002)(110136005)(8676002)(83380400001)(52116002)(2616005)(4326008)(31686004)(2906002)(31696002)(6666004)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: NuZYP3rJDooRmpXuVpR7ojxF32JB+KFx1SWaq5bzDAPNRnPr957Xn37EvcuGHx9/m3mPnC7ugsg2o4eHROMeT6O2ReVDCiK0HX/0A3TCuWrRtU/ISm2TY+HNOkwZ+D+TWvqaeOZFLuaLkf6aorT7fDaGwS2oH23HaaOBH9F19c4N1TM9CoVrX1xmYPwqRP6Jslh4hqXX7Yx6S3X8CH5EDCGowJB652ut84CwWweFJlEM0o0+2YLOZWkz6zBisi/oKz8wzfLALXx/l2icSGuiI52paK1Z6VmtliQriFNJcrIKw5UAny22IpiC9iC4NKCgD92DBFPYf5wQtnGDd0qLrH5GYf1P0m8n8lf8j7S7ynE4/zm2PchXU8D66b/CPI1u63puSxiMfSJFfSiWpC9FvWbceRoZ77PKfOtPnOe7Vj0PsoY6O4vawBaYZoplJ+wCkmv3TMXhKtPePNWa1Lqjz6Ib2q8lPgPbWjbOk8NlkDwCP8r0QFD7VTy4k+VRfMyx2iFdPnmgE+3QmkFSrv9pOCIF487k8MdZhjYxPAZRblOPTu5BRfiaNFC5+r72/Qs7
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d957eb-8eb3-44a8-0355-08d819079412
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4401.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2020 12:59:21.4032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R1gkMHg2fTvHVLFZOr9CuK+E4xGfRGu+WsJzv5JvS5dxRUaAt4d0UGQRwetQ22A8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0092
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjUuMDYuMjAgdW0gMTQ6NDggc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDIwLTA2LTI1IDA5OjExOjM1KQo+PiBBbSAyNC4wNi4yMCB1bSAyMjox
OCBzY2hyaWViIENocmlzIFdpbHNvbjoKPj4+IFF1b3RpbmcgRGF2ZSBBaXJsaWUgKDIwMjAtMDYt
MjQgMjA6MDQ6MDIpCj4+Pj4gT24gV2VkLCAyNCBKdW4gMjAyMCBhdCAwNzoxOSwgQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+Pj4+PiBRdW90aW5nIERhdmUg
QWlybGllICgyMDIwLTA2LTIzIDIyOjAxOjI0KQo+Pj4+Pj4gT24gVHVlLCAyMyBKdW4gMjAyMCBh
dCAyMDowMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+
Pj4+Pj4+IFF1b3RpbmcgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNi0yMyAxMDoz
MzoyMCkKPj4+Pj4+Pj4gSGksIENocmlzIQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiA2LzIyLzIwIDEx
OjU5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+Pj4+Pj4+PiBJbiBvcmRlciB0byBhY3R1YWxs
eSBoYW5kbGUgZXZpY3Rpb24gYW5kIHdoYXQgbm90LCB3ZSBuZWVkIHRvIHByb2Nlc3MKPj4+Pj4+
Pj4+IGFsbCB0aGUgb2JqZWN0cyB0b2dldGhlciB1bmRlciBhIGNvbW1vbiBsb2NrLCByZXNlcnZh
dGlvbl93d19jbGFzcy4gQXMKPj4+Pj4+Pj4+IHN1Y2gsIGRvIGEgbWVtb3J5IHJlc2VydmF0aW9u
IHBhc3MgYWZ0ZXIgbG9va2luZyB1cCB0aGUgb2JqZWN0L3ZtYSwKPj4+Pj4+Pj4+IHdoaWNoIHRo
ZW4gZmVlZHMgaW50byB0aGUgcmVzdCBvZiBleGVjYnVmIFtyZWxvY2F0aW9uLCBjbWRwYXJzaW5n
LAo+Pj4+Pj4+Pj4gZmx1c2hpbmcgYW5kIG9mYyBleGVjdXRpb25dLgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+PiAgICAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZXhlY2J1ZmZlci5jICAgIHwgOTEgKysrKysrKysrKysrKystLS0tLQo+Pj4+Pj4+Pj4gICAg
IDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IFdoaWNoIHRyZWUgaXMgdGhpcyBhZ2FpbnN0PyBUaGUgc2VyaWVzIGRvZXNu
J3QgYXBwbHkgY2xlYW5seSBhZ2FpbnN0Cj4+Pj4+Pj4+IGRybS10aXA/Cj4+Pj4+Pj4gSXQncyBj
b250aW51aW5nIG9uIGZyb20gdGhlIHNjaGVkdWxlciBwYXRjaGVzLCB0aGUgYnVnIGZpeGVzIGFu
ZCB0aGUKPj4+Pj4+PiBpcmlzLWRlZmVycmVkLWZlbmNlIHdvcmsuIEkgdGhvdWdodCB0aHJvd2lu
ZyBhbGwgb2YgdGhvc2Ugb2xkIHBhdGNoZXMKPj4+Pj4+PiBpbnRvIHRoZSBwaWxlIHdvdWxkIGhh
dmUgYmVlbiBkaXN0cmFjdGluZy4KPj4+Pj4+Pgo+Pj4+Pj4+PiAuLi4KPj4+Pj4+Pj4KPj4+Pj4+
Pj4+ICtzdGF0aWMgaW50IGViX3Jlc2VydmVfbW0oc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIp
Cj4+Pj4+Pj4+PiArewo+Pj4+Pj4+Pj4gKyAgICAgY29uc3QgdTY0IGlkeCA9IGViLT5jb250ZXh0
LT50aW1lbGluZS0+ZmVuY2VfY29udGV4dDsKPj4+Pj4+Pj4+ICsgICAgIHN0cnVjdCB3d19hY3F1
aXJlX2N0eCBhY3F1aXJlOwo+Pj4+Pj4+Pj4gKyAgICAgc3RydWN0IGViX3ZtYSAqZXY7Cj4+Pj4+
Pj4+PiArICAgICBpbnQgZXJyOwo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gKyAgICAgZWItPm1tX2Zl
bmNlID0gX19kbWFfZmVuY2VfY3JlYXRlX3Byb3h5KDAsIDApOwo+Pj4+Pj4+Pj4gKyAgICAgaWYg
KCFlYi0+bW1fZmVuY2UpCj4+Pj4+Pj4+PiArICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+
Pj4+Pj4+PiBXaGVyZSBhcmUgdGhlIHByb3h5IGZlbmNlIGZ1bmN0aW9ucyBkZWZpbmVkPwo+Pj4+
Pj4+IEluIGRtYS1mZW5jZS1wcm94eS5jIDspCj4+Pj4+PiBUaGUgZG1hLWZlbmNlLXByb3h5IHRo
YXQgQ2hyaXN0aWFuIE5BS2VkIGJlZm9yZT8KPj4+Pj4gSSBkbyBub3QgaGF2ZSBhbiBlbWFpbCBm
cm9tIENocmlzdGlhbiBhYm91dCBkbWEtZmVuY2UtcHJveHkgaW4gdGhlIGxhc3QKPj4+Pj4gMyB5
ZWFycyBpdCBoYXMgYmVlbiBvbiB0aGUgbGlzdC4KPj4+PiBodHRwczovL25hbTExLnNhZmVsaW5r
cy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsb3JlLmtlcm5lbC5v
cmclMkZkcmktZGV2ZWwlMkZhZWIwMzczZC0wNTgzLWQ5MjItM2I3My05MzY2OGMyN2QxNzclNDBh
bWQuY29tJTJGJmFtcDtkYXRhPTAyJTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3
Q2NiMDYwZTM1OGQ4NDQ3ODQ4MTU3MDhkODE5MDYxODY4JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFh
ODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzI4Njg2MTI5MjM0NjM3MiZhbXA7c2RhdGE9RGxIaXN0
bXFQaSUyQnR3ZGNUJTJGeWNydFJwb0xHWjZ4Y0JEJTJGa1B2VlpjUTJZUSUzRCZhbXA7cmVzZXJ2
ZWQ9MAo+Pj4gRGFybiwgSSBza2ltbWVkIHRoZSB0aHJlYWQgdGl0bGUgYW5kIHRob3VnaHQgaXQg
d2FzIGp1c3QgYWJvdXQgdGhlCj4+PiB0aW1lbGluZXMuCj4+Pgo+Pj4+IEknbSBhc3N1bWluZyB0
aGlzIHdhcyBhYm91dCBwYXRjaCA4IHRoZXJlIHdoaWNoIHRvIG1lIGxvb2tzIGxpa2UgcHJveHkK
Pj4+PiBmZW5jZXMgYnV0IG1heWJlIGJ5IHRocmVhZGluZyBpcyBvZmYgcmVhZGluZyB0aGF0Lgo+
Pj4gVGhlIGRlYWRsb2NrcyBhcmUgZWFzeSB0byByZXNvbHZlLiBUaGUgZmVuY2UgaXMgZWl0aGVy
IHNpZ25hbGVkIG5vcm1hbGx5Cj4+PiBieSB1c2Vyc3BhY2UsIHRoZXkgY3JlYXRlIGEgZGVhZGxv
Y2sgdGhhdCBpcyByZWplY3RlZCBieSBjaGVja2luZyB0aGUgZGFnCj4+PiBhbmQgdGhlIGZlbmNl
IHNpZ25hbGVkIHdpdGggYW4gZXJyb3IgKGFuZCB3b3JrIGNhbmNlbGxlZCwgZXJyb3IKPj4+IHBy
b3BhZ2F0ZWQgYmFjayB0byB1c2Vyc3BhY2UgaWYgdGhleSBrZXB0IHRoZSBvdXRwdXQgZmVuY2Ug
YXJvdW5kKSwgb3IKPj4+IHVzZXJzcGFjZSBmb3JnZXRzIGVudGlyZWx5IGFib3V0IHRoZSBmZW5j
ZSB0aGV5IHdlcmUgd2FpdGluZyBvbiBpbiB3aGljaAo+Pj4gY2FzZSBpdCBpcyBzaWduYWxlZCBi
eSBjbG9zaW5nIHRoZSBzeW5jb2JqcyBbc2FkbHkgbm90IGluIGVycm9yIHRob3VnaCwKPj4+IEkg
aG9waW5nIHRvIHJlcG9ydCBFUElQRV0gb24gcHJvY2VzcyB0ZXJtaW5hdGlvbi4KPj4gQW5kIGV4
YWN0bHkgdGhhdCBjb25jZXB0IGlzIHN0aWxsIGEgYmlnIE5BSy4KPj4KPj4gVGhlIGtlcm5lbCBt
ZW1vcnkgbWFuYWdlbWVudCBkZXBlbmRzIG9uIGRtYV9mZW5jZXMgdG8gYmUgc2lnbmFsaW5nIGFz
Cj4+IHNvb24gYXMgdGhleSBhcmUgZXhpc3RpbmcuCj4+Cj4+IEp1c3QgaW1hZ2luZSB3aGF0IERh
bmllbCdzIGRlcGVuZGVuY3kgcGF0Y2hlcyB3b3VsZCBzcGxhdCBvdXQgd2hlbiB5b3UKPj4gZG8g
c29tZXRoaW5nIGxpa2UgdGhpcyBhbmQgY29ycmVjdGx5IGFubm90YXRlIHRoZSBzaWduYWxpbmcg
Y29kZSBwYXRoLgo+IE5vdGhpbmcgYXQgYWxsLiBGb3J3YXJkIHByb2dyZXNzIG9mIHRoZSB3YWl0
ZXIgZG9lcyBub3Qgc29sZWx5IGRlcGVuZCBvbgo+IHRoZSBzaWduYWxlciwganVzdCBhcyBpbiBi
YzljODBmZTAxYTI1NzBhMmZkNzhhYmJjNDkyYjM3N2I1ZmRhMDY4Lgo+ICAgCj4+IFByb3h5IGZl
bmNlcywgZXNwZWNpYWxseSB3aGVuIHRoZXkgZGVwZW5kIG9uIHVzZXJzcGFjZSBmb3Igc2lnbmFs
aW5nIGFyZQo+PiBhbiBhYnNvbHV0ZWx5IE5PLUdPLgo+IFdlIGFyZSBpbiBmdWxsIGNvbnRyb2wg
b2YgdGhlIHNpZ25hbGluZyBhbmQgYXJlIGFibGUgdG8gY2FuY2VsIHRoZSBwZW5kaW5nCj4gdXNl
cnNwYWNlIG9wZXJhdGlvbiwgbW92ZSBpdCBvZmYgdG8gb25lIHNpZGUgYW5kIHNodXRkb3duIHRo
ZSBIVywKPiB3aGF0ZXZlci4gV2UgY2FuIGFuZCBkbyBkbyBkZXBlbmRlbmN5IGFuYWx5c2lzIG9m
IHRoZSBmZW5jZSBjb250ZXh0cyB0bwo+IGF2b2lkIGRlYWRsb2NrcywganVzdCBhcyBlYXNpbHkg
YXMgZGV0ZWN0aW5nIHJlY3Vyc2lvbi4KPgo+IFRvIGNsYWltIHRoYXQgdXNlcnNwYWNlIGlzIG5v
dCBhbHJlYWR5IGFibGUgdG8gY29udHJvbCBzaWduYWxpbmcsIGlzIGEKPiBmYWxzZSBkaWNob3Rv
bXkuIFVzZXJzcGFjZSBpcyBmdWxseSBhYmxlIHRvIGxvY2sgdGhlIEhXIHJlc291cmNlcwo+IGlu
ZGVmaW5pdGVseSAoZXZlbiBpZiB5b3UgY2FwIGV2ZXJ5IGpvYiwgb25lIGNhbiBhbHdheXMgYnVp
bGQgYSBjaGFpbiBvZgo+IGpvYnMgdG8gY2lyY3VtdmVudCBhbnkgaW1wb3NlZCB0aW1lb3V0LCBh
IGNvdXBsZSBvZiBzZWNvbmRzIHRpbWVvdXQKPiBiZWNvbWVzIHNldmVyYWwgbW9udGhzIG9mIGpv
YnMgYmVmb3JlIHRoZSBHUFUgcnVucyBvdXQgb2YgbWVtb3J5IGFuZCBpcwo+IHVuYWJsZSB0byBh
Y2NlcHQgYW55IG1vcmUgam9icykuIEFueSBpb2N0bCB0aGF0IGJsb2NrcyB3aGlsZSBob2xkaW5n
IGEgSFcKPiByZXNvdXJjZSByZW5kZXJzIGl0c2VsZiBsaWFibGUgdG8gYSB1c2VyIGNvbnRyb2xs
YWJsZSBsaXZlbG9jaywgeW91IGtub3cKPiB0aGlzLCBiZWNhdXNlIGl0IGlzIGJsb2NraW5nIHRo
ZSBzaWduYWxpbmcgb2YgdGhvc2UgZWFybGllciBqb2JzLgo+IFdvcnJ5aW5nIGFib3V0IHRoaW5n
cyB0aGF0IGFyZSBlbnRpcmVseSB3aXRoaW4gb3VyIGNvbnRyb2wgYW5kIGhlbmNlCj4gYXZvaWRh
YmxlLCBtaXNzZXMgdGhlIHBvaW50LgoKWW91IGFyZSBjb21wbGV0ZWx5IG1pc3NpbmcgdGhlIHBy
b2JsZW0gaGVyZS4KCkFzIHlvdSBjb3JyZWN0bHkgcG9pbnRlZCBvdXQgdGhhdCBhbiB1c2Vyc3Bh
Y2UgdGhyZWFkIGJsb2NrcyBvbiAKc29tZXRoaW5nIGlzIHBlcmZlY3RseSBhY2NlcHRhYmxlLiBB
bmQgdGhhdCdzIGhvdyAKYmM5YzgwZmUwMWEyNTcwYTJmZDc4YWJiYzQ5MmIzNzdiNWZkYTA2OCB3
b3JrcyBhcyB3ZWxsLgoKQW5kIGJjOWM4MGZlMDFhMjU3MGEyZmQ3OGFiYmM0OTJiMzc3YjVmZGEw
Njggb25seSBpbXBsZW1lbnRzIHdhaXRpbmcgc28gCnRoYXQgZHVyaW5nIENTIG9yIFdBSVQgSU9D
VEwgd2UgY2FuIGJsb2NrIGZvciB0aGUgZmVuY2UgdG8gYXBwZWFyLgoKCldoYXQgaGFwcGVucyBp
biB5b3VyIGFwcHJvYWNoIGlzIHRoYXQgdGhlIGtlcm5lbCBzdGFydHMgdG8gd2FpdCBmb3IgCnVz
ZXJzcGFjZSBpbiBpdHMgbWVtb3J5IHJlY2xhaW0gcGF0aC4gVGhhdCBpcyBleGFjdGx5IHRoZSBr
aW5kIG9mIApwcm9ibGVtIERhbmllbHMgcGF0Y2hlcyBub3cgcG9pbnQgb3V0IGltbWVkaWF0ZWx5
LgoKU28gd2hpbGUgdGhlIGhhcmR3YXJlIGNhbiBvYnZpb3VzbHkgZ2V0IHN0dWNrIGluIGFuIGVu
ZGxlc3MgbG9vcCBhbmQgCm5lZWRzIHRvIGJlIHJlY292ZXJlZCwgdGhpcyBoZXJlIGhhcyB0aGUg
cG90ZW50aWFsIG9mIGEgc3lzdGVtIHdpZGUgCmtlcm5lbCBkZWFkbG9jayB3aGljaCBpcyBub3Qg
cmVjb3ZlcmFibGUuCgpUaGUgd2hvbGUgYXBwcm9hY2ggaXMgYW4gYWJzb2x1dGVseSBjbGVhciBO
QUshCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+IC1DaHJpcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
