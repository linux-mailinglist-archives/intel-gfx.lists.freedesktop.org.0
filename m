Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C78D612E99D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 19:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297546E125;
	Thu,  2 Jan 2020 18:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2040.outbound.protection.outlook.com [40.107.244.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1E489EBD;
 Mon, 30 Dec 2019 16:11:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J8MzrXbTYic/kSboY6OReTrnCM+otDGp0Q9stwKTfd8zqt0apqrys3oMDeu7S7OZaUVA15rwn55YZqCqLL18tzjFXSajxwe8KJj00fcPtYLBUR6E+OcNnzIXeTJpkVQcQNsmDV71tZlKnBvtOVXZVv8ghCaiY+wuUr9KxY9EQzbRlq2ekaFvz3WxmhlgK7NVM6N0s2+HOBeEzug1qTRE5o7nokP1v9woNRP7lkSfbjqSIT+Xq0Kc9cJVpTHaEmWJckFo9ERUQzXXKGgna775T621N1rt9ggGFCl00RG/ot9evSXhJf5cVVbaF0AoxQaRikj9Kyy7M+LqYulVCQRDxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RY1yb0J2oqlC0XBhATd2NpoSYrZChxjaiyoNQZYm9s=;
 b=bj22pLtRuktNAZ2Wd/KDGyrhBPxv++HZlRlW5rm2mO0rDPdBRy0dwO5I5zzQNLPnZav8qn1ZhVI44VYdW2ZB5n7xFH69Oo6+bXzQnsCXr6nDnmnPjU8bVRMafOCT4ADOJRvU/0aweZ24x4NIasxxoijTH+N7aej0hDDEeBlN1+gG2Skgx0tSm7qKwDCKVVMiztja233M9rguQ2cQW1yWwxU/YLJvrNRVTrSkFgHaLvcSFmEWc/L26nc7j/4pN2g8SbcTmbImtikVuVcNqlvYkrQxiMjphZGj7uuVdZz8bQ3YyXeBYk+dInWjNS94ZEhLM0ryMjKJiRo1WgiZe24NOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RY1yb0J2oqlC0XBhATd2NpoSYrZChxjaiyoNQZYm9s=;
 b=kfxX+3DteYm6SCvEr0MMTHzVS/0RJub3SNo+fZTB7cgOb9a28b0Lc/nmnnnprEo51apJEMcIfFhuodzxaC3OHFYL4faJmRvqwKqBeNqa0ETAHZyCdCp+GfKfk92sYu0aJLXp7tOspe0TUSctezqrQDaIGx8cjLWoV1LXl3b2DbM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Harry.Wentland@amd.com; 
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com (10.172.79.7) by
 CY4PR1201MB0054.namprd12.prod.outlook.com (10.172.77.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 16:11:08 +0000
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::301e:b0c8:7af:d77d]) by CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::301e:b0c8:7af:d77d%11]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 16:11:08 +0000
To: "Manna, Animesh" <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20191218235324.GI12192@intel.com>
 <20191223170350.15531-1-animesh.manna@intel.com>
 <20191223170350.15531-2-animesh.manna@intel.com>
 <2bf4630b-52f3-138d-9061-766275cbfbe8@amd.com>
 <93fd1b3e-2c97-2cfb-0e1a-9de86b327451@intel.com>
From: Harry Wentland <hwentlan@amd.com>
Autocrypt: addr=hwentlan@amd.com; keydata=
 mQENBFhb4C8BCADhHHUNoBQ7K7LupCP0FsUb443Vuqq+dH0uo4A3lnPkMF6FJmGcJ9Sbx1C6
 cd4PbVAaTFZUEmjqfpm+wCRBe11eF55hW3GJ273wvfH69Q/zmAxwO8yk+i5ZWWl8Hns5h69K
 D9QURHLpXxrcwnfHFah0DwV23TrD1KGB7vowCZyJOw93U/GzAlXKESy0FM7ZOYIJH83X7qhh
 Q9KX94iTEYTeH86Wy8hwHtqM6ySviwEz0g+UegpG8ebbz0w3b5QmdKCAg+eZTmBekP5o77YE
 BKqR+Miiwo9+tzm2N5GiF9HDeI2pVe/egOLa5UcmsgdF4Y5FKoMnBbAHNaA6Fev8PHlNABEB
 AAG0J0hhcnJ5IFdlbnRsYW5kIDxoYXJyeS53ZW50bGFuZEBhbWQuY29tPokBNwQTAQgAIQUC
 WFvgLwIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRAtWBXJjBS24xUlCAC9MqAlIbZO
 /a37s41h+MQ+D20C6/hVErWO+RA06nA+jFDPUWrDJKYdn6EDQWdLY3ATeAq3X8GIeOTXGrPD
 b2OXD6kOViW/RNvlXdrIsnIDacdr39aoAlY1b+bhTzZVz4pto4l+K1PZb5jlMgTk/ks9HesL
 RfYVq5wOy3qIpocdjdlXnSUKn0WOkGBBd8Nv3o0OI18tiJ1S/QwLBBfZoVvfGinoB2p4j/wO
 kJxpi3F9TaOtLGcdrgfghg31Fb48DP+6kodZ4ircerp4hyAp0U2iKtsrQ/sVWR4mbe3eTfcn
 YjBxGd2JOVdNQZa2VTNf9GshIDMD8IIQK6jN0LfY8Py2uQENBFhb4C8BCAC/0KWY3pIbU2cy
 i7GMj3gqB6h0jGqRuMpMRoSNDoAUIuSh17w+bawuOF6XZPdK3D4lC9cOXMwP3aP9tTJOori2
 8vMH8KW9jp9lAYnGWYhSqLdjzIACquMqi96EBtawJDct1e9pVgp+d4JXHlgIrl11ITJo8rCP
 dEqjro2bCBWxijsIncdCzMjf57+nR7u86SBtGSFcXKapS7YJeWcvM6MzFYgIkxHxxBDvBBvm
 U2/mAXiL72kwmlV1BNrabQxX2UnIb3xt3UovYJehrnDUMdYjxJgSPRBx27wQ/D05xAlhkmmL
 FJ01ZYc412CRCC6gjgFPfUi2y7YJTrQHS79WSyANABEBAAGJAR8EGAEIAAkFAlhb4C8CGwwA
 CgkQLVgVyYwUtuM72Qf+J6JOQ/27pWf5Ulde9GS0BigA1kV9CNfIq396TgvQzeyixHMvgPdq
 Z36x89zZi0otjMZv6ypIdEg5co1Bvz0wFaKbCiNbTjpnA1VAbQVLSFjCZLQiu0vc+BZ1yKDV
 T5ASJ97G4XvQNO+XXGY55MrmhoNqMaeIa/3Jas54fPVd5olcnUAyDty29/VWXNllUq38iBCX
 /0tTF7oav1lzPGfeW2c6B700FFZMTR4YBVSGE8jPIzu2Fj0E8EkDmsgS+nibqSvWXfo1v231
 410h35CjbYDlYQO7Z1YD7asqbaOnF0As+rckyRMweQ9CxZn5+YBijtPJA3x5ldbCfQ9rWiTu XQ==
Message-ID: <d733d496-108a-d0c0-ce5b-04cfb03416f2@amd.com>
Date: Mon, 30 Dec 2019 11:11:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
In-Reply-To: <93fd1b3e-2c97-2cfb-0e1a-9de86b327451@intel.com>
Content-Language: en-US
X-ClientProxiedBy: YTOPR0101CA0072.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:14::49) To CY4PR1201MB0230.namprd12.prod.outlook.com
 (2603:10b6:910:1e::7)
MIME-Version: 1.0
Received: from [172.29.18.152] (165.204.55.250) by
 YTOPR0101CA0072.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:14::49) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Mon, 30 Dec 2019 16:11:08 +0000
X-Originating-IP: [165.204.55.250]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5994e666-a3d1-4f76-5c99-08d78d42e159
X-MS-TrafficTypeDiagnostic: CY4PR1201MB0054:
X-Microsoft-Antispam-PRVS: <CY4PR1201MB00543F33DE5C92D47895378C8C270@CY4PR1201MB0054.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0267E514F9
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(189003)(199004)(53546011)(31686004)(66556008)(4326008)(66476007)(6486002)(66946007)(16576012)(316002)(2906002)(2616005)(26005)(956004)(186003)(4001150100001)(16526019)(478600001)(52116002)(36756003)(8936002)(5660300002)(8676002)(31696002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1201MB0054;
 H:CY4PR1201MB0230.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jGn2iEMxHGSGaQOU7dQufDYMM2LKifMkENCeny66d4ieVsJLRea0OkRXeSAdL27lWxjLdeyCOn+mFI0URM0/7cktpTRonIf57VWSLfC+tRSPGAcU1b8ilBdmfCySf//HgsCCbf6cQ5uk32sVlgfgvF/9x48Q7lPhxNB6UklxCKFH3sMw7Se4We2+YCCKj1PagiLdxYtr9BVrx5ZrgtfJs23kKcwLV53ErGVpkVTnbNJ/kKSZiV1ru6xwAuoiLUTbk2/G/R2RMpf2iFywGAudaxaYizbmlXB4RWU4Sfxj6EVVMrh1znYvsF9mcYbnSxiJqWrRtl/80wCBtBtAqG30F8MRTYUSWJsTRHjPHFy+qggt4xFNQXjMSSsms1mp+B12SJzYgwXzNouViCud+TCFytdVOQ0K3aabQUBlvirCrR2CYLlVeIjxYOp2148PpXEP
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5994e666-a3d1-4f76-5c99-08d78d42e159
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2019 16:11:08.6221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dH4IgiT/1OMwH/0B6AoEt7glqGcKWYEK/R9q/3YPRCmja1RgpaBWCMZ4k2Je4HN3sJuW4iCXaSjOKNTNvHFL/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0054
X-Mailman-Approved-At: Thu, 02 Jan 2020 18:00:15 +0000
Subject: Re: [Intel-gfx] [PATCH v3 2/9] drm/dp: get/set phy compliance
 pattern
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAyMDE5LTEyLTMwIDExOjA1IGEubS4sIE1hbm5hLCBBbmltZXNoIHdyb3RlOgo+IE9uIDI0
LTEyLTIwMTkgMDE6MjMsIEhhcnJ5IFdlbnRsYW5kIHdyb3RlOgo+Pgo+PiBPbiAyMDE5LTEyLTIz
IDEyOjAzIHAubS4sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4+PiBEdXJpbmcgcGh5IGNvbXBsaWFu
Y2UgYXV0byB0ZXN0IG1vZGUgc291cmNlIG5lZWQgdG8gcmVhZAo+Pj4gcmVxdWVzdGVkIHRlc3Qg
cGF0dGVybiBmcm9tIHNpbmsgdGhyb3VnaCBEUENELiBBZnRlciBwcm9jZXNzaW5nCj4+PiB0aGUg
cmVxdWVzdCBzb3VyY2UgbmVlZCB0byBzZXQgdGhlIHBhdHRlcm4uIFNvIHNldC9nZXQgbWV0aG9k
Cj4+PiBhZGRlZCBpbiBkcm0gbGF5ZXIgYXMgaXQgaXMgRFAgcHJvdG9jb2wuCj4+Pgo+Pj4gdjI6
IEFzIHBlciByZXZpZXcgZmVlZGJhY2sgZnJvbSBNYW5hc2kgb24gUkZDIHZlcnNpb24sCj4+PiAt
IGFkZGVkIGRwIHJldmlzaW9uIGFzIGZ1bmN0aW9uIGFyZ3VtZW50IGluIHNldF9waHlfcGF0dGVy
biBhcGkuCj4+PiAtIHVzZWQgaW50IGZvciBsaW5rX3JhdGUgYW5kIHU4IGZvciBsYW5lX2NvdW50
IHRvIGFsaWduIHdpdGgKPj4+IGV4aXN0aW5nIGNvZGUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgfCA5Mwo+Pj4gKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4+PiDCoCBpbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmjCoMKgwqDC
oCB8IDMxICsrKysrKysrKysrCj4+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEyNCBpbnNlcnRpb25z
KCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMK
Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+Pj4gaW5kZXggMmM3ODcwYWVm
NDY5Li45MWM4MDk3M2FhODMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rw
X2hlbHBlci5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCj4+PiBA
QCAtMTM3MSwzICsxMzcxLDk2IEBAIGludAo+Pj4gZHJtX2RwX2RzY19zaW5rX3N1cHBvcnRlZF9p
bnB1dF9icGNzKGNvbnN0IHU4Cj4+PiBkc2NfZHBjZFtEUF9EU0NfUkVDRUlWRVJfQ0FQX1MKPj4+
IMKgwqDCoMKgwqAgcmV0dXJuIG51bV9icGM7Cj4+PiDCoCB9Cj4+PiDCoCBFWFBPUlRfU1lNQk9M
KGRybV9kcF9kc2Nfc2lua19zdXBwb3J0ZWRfaW5wdXRfYnBjcyk7Cj4+PiArCj4+PiArLyoqCj4+
PiArICogZHJtX2RwX2dldF9waHlfdGVzdF9wYXR0ZXJuKCkgLSBnZXQgdGhlIHJlcXVlc3RlZCBw
YXR0ZXJuIGZyb20KPj4+IHRoZSBzaW5rLgo+Pj4gKyAqIEBhdXg6IERpc3BsYXlQb3J0IEFVWCBj
aGFubmVsCj4+PiArICogQGRhdGE6IERQIHBoeSBjb21wbGlhbmNlIHRlc3QgcGFyYW1ldGVycy4K
Pj4+ICsgKgo+Pj4gKyAqIFJldHVybnMgMCBvbiBzdWNjZXNzIG9yIGEgbmVnYXRpdmUgZXJyb3Ig
Y29kZSBvbiBmYWlsdXJlLgo+Pj4gKyAqLwo+Pj4gK2ludCBkcm1fZHBfZ2V0X3BoeV90ZXN0X3Bh
dHRlcm4oc3RydWN0IGRybV9kcF9hdXggKmF1eCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGRybV9kcF9waHlfdGVzdF9wYXJhbXMgKmRhdGEpCj4+PiArewo+Pj4g
K8KgwqDCoCBpbnQgZXJyOwo+Pj4gK8KgwqDCoCB1OCByYXRlLCBsYW5lczsKPj4+ICsKPj4+ICvC
oMKgwqAgZXJyID0gZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9URVNUX0xJTktfUkFURSwgJnJh
dGUpOwo+Pj4gK8KgwqDCoCBpZiAoZXJyIDwgMCkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
ZXJyOwo+Pj4gK8KgwqDCoCBkYXRhLT5saW5rX3JhdGUgPSBkcm1fZHBfYndfY29kZV90b19saW5r
X3JhdGUocmF0ZSk7Cj4+PiArCj4+PiArwqDCoMKgIGVyciA9IGRybV9kcF9kcGNkX3JlYWRiKGF1
eCwgRFBfVEVTVF9MQU5FX0NPVU5ULCAmbGFuZXMpOwo+Pj4gK8KgwqDCoCBpZiAoZXJyIDwgMCkK
Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+Pj4gK8KgwqDCoCBkYXRhLT5udW1fbGFu
ZXMgPSBsYW5lcyAmIERQX01BWF9MQU5FX0NPVU5UX01BU0s7Cj4+PiArCj4+PiArwqDCoMKgIGlm
IChsYW5lcyAmIERQX0VOSEFOQ0VEX0ZSQU1FX0NBUCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBkYXRh
LT5lbmFoYW5jZWRfZnJhbWVfY2FwID0gdHJ1ZTsKPj4+ICsKPj4+ICvCoMKgwqAgZXJyID0gZHJt
X2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9QSFlfVEVTVF9QQVRURVJOLAo+Pj4gJmRhdGEtPnBoeV9w
YXR0ZXJuKTsKPj4+ICvCoMKgwqAgaWYgKGVyciA8IDApCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIGVycjsKPj4+ICsKPj4+ICvCoMKgwqAgc3dpdGNoIChkYXRhLT5waHlfcGF0dGVybikgewo+
Pj4gK8KgwqDCoCBjYXNlIERQX1BIWV9URVNUX1BBVFRFUk5fODBCSVRfQ1VTVE9NOgo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGVyciA9IGRybV9kcF9kcGNkX3JlYWQoYXV4LCBEUF9URVNUXzgwQklUX0NV
U1RPTV9QQVRURVJOXzdfMCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAmZGF0YS0+Y3VzdG9tODAsIDEwKTsKPj4gVXNpbmcgc2l6ZW9mKGRhdGEtPmN1
c3RvbTgwKSBtaWdodCBiZSBzYWZlci4KPj4KPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoZXJyIDwg
MCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+PiArCj4+PiArwqDC
oMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiArwqDCoMKgIGNhc2UgRFBfUEhZX1RFU1RfUEFUVEVSTl9D
UDI1MjA6Cj4+PiArwqDCoMKgwqDCoMKgwqAgZXJyID0gZHJtX2RwX2RwY2RfcmVhZChhdXgsIERQ
X1RFU1RfSEJSMl9TQ1JBTUJMRVJfUkVTRVQsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgJmRhdGEtPmhicjJfcmVzZXQsIDIpOwo+PiBTYW1lIGhlcmUs
IHVzaW5nIHNpemVvZihkYXRhLT5oYnIyX3Jlc2V0KS4KPj4KPj4+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAoZXJyIDwgMCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+PiAr
wqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+PiArfQo+Pj4gK0VYUE9SVF9T
WU1CT0woZHJtX2RwX2dldF9waHlfdGVzdF9wYXR0ZXJuKTsKPj4+ICsKPj4+ICsvKioKPj4+ICsg
KiBkcm1fZHBfc2V0X3BoeV90ZXN0X3BhdHRlcm4oKSAtIHNldCB0aGUgcGF0dGVybiB0byB0aGUg
c2luay4KPj4+ICsgKiBAYXV4OiBEaXNwbGF5UG9ydCBBVVggY2hhbm5lbAo+Pj4gKyAqIEBkYXRh
OiBEUCBwaHkgY29tcGxpYW5jZSB0ZXN0IHBhcmFtZXRlcnMuCj4+PiArICoKPj4+ICsgKiBSZXR1
cm5zIDAgb24gc3VjY2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KPj4+
ICsgKi8KPj4+ICtpbnQgZHJtX2RwX3NldF9waHlfdGVzdF9wYXR0ZXJuKHN0cnVjdCBkcm1fZHBf
YXV4ICphdXgsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1f
ZHBfcGh5X3Rlc3RfcGFyYW1zICpkYXRhLCB1OCBkcF9yZXYpCj4+PiArewo+Pj4gK8KgwqDCoCBp
bnQgZXJyLCBpOwo+Pj4gK8KgwqDCoCB1OCBsaW5rX2NvbmZpZ1syXTsKPj4+ICvCoMKgwqAgdTgg
dGVzdF9wYXR0ZXJuOwo+Pj4gKwo+Pj4gK8KgwqDCoCBsaW5rX2NvbmZpZ1swXSA9IGRybV9kcF9s
aW5rX3JhdGVfdG9fYndfY29kZShkYXRhLT5saW5rX3JhdGUpOwo+Pj4gK8KgwqDCoCBsaW5rX2Nv
bmZpZ1sxXSA9IGRhdGEtPm51bV9sYW5lczsKPj4+ICvCoMKgwqAgaWYgKGRhdGEtPmVuYWhhbmNl
ZF9mcmFtZV9jYXApCj4+PiArwqDCoMKgwqDCoMKgwqAgbGlua19jb25maWdbMV0gfD0gRFBfTEFO
RV9DT1VOVF9FTkhBTkNFRF9GUkFNRV9FTjsKPj4+ICvCoMKgwqAgZXJyID0gZHJtX2RwX2RwY2Rf
d3JpdGUoYXV4LCBEUF9MSU5LX0JXX1NFVCwgbGlua19jb25maWcsIDIpOwo+Pj4gK8KgwqDCoCBp
ZiAoZXJyIDwgMCkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCB0ZXN0X3BhdHRlcm4gPSBkYXRhLT5waHlfcGF0dGVybjsKPj4+ICvCoMKgwqAgaWYgKGRw
X3JldiA8IDB4MTIpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCB0ZXN0X3BhdHRlcm4gPSAodGVzdF9w
YXR0ZXJuIDw8IDIpICYKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
RFBfTElOS19RVUFMX1BBVFRFUk5fMTFfTUFTSzsKPj4+ICvCoMKgwqDCoMKgwqDCoCBlcnIgPSBk
cm1fZHBfZHBjZF93cml0ZWIoYXV4LCBEUF9UUkFJTklOR19QQVRURVJOX1NFVCwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRlc3RfcGF0dGVybik7Cj4+PiAr
wqDCoMKgwqDCoMKgwqAgaWYgKGVyciA8IDApCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gZXJyOwo+Pj4gK8KgwqDCoCB9IGVsc2Ugewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGZvciAo
aSA9IDA7IGkgPCBkYXRhLT5udW1fbGFuZXM7IGkrKykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZXJyID0gZHJtX2RwX2RwY2Rfd3JpdGViKGF1eCwKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfTElOS19RVUFMX0xBTkUwX1NFVCAr
IGksCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHRlc3RfcGF0dGVybik7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZXJyIDwgMCkK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4+ICvCoMKg
wqDCoMKgwqDCoCB9Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+
PiArfQo+Pj4gK0VYUE9SVF9TWU1CT0woZHJtX2RwX3NldF9waHlfdGVzdF9wYXR0ZXJuKTsKPj4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9k
cm1fZHBfaGVscGVyLmgKPj4+IGluZGV4IGQ2ZTU2MDg3MGZiMS4uNDJhMzY0NzQ4MzA4IDEwMDY0
NAo+Pj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4+PiArKysgYi9pbmNsdWRl
L2RybS9kcm1fZHBfaGVscGVyLmgKPj4+IEBAIC03MDAsNiArNzAwLDE1IEBACj4+PiDCoCAjIGRl
ZmluZSBEUF9URVNUX0NPVU5UX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4Zgo+Pj4gwqAg
wqAgI2RlZmluZSBEUF9QSFlfVEVTVF9QQVRURVJOwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMHgyNDgKPj4+ICsjIGRlZmluZSBEUF9QSFlfVEVTVF9QQVRURVJOX1NFTF9NQVNLwqDC
oMKgwqDCoMKgIDB4Nwo+Pj4gKyMgZGVmaW5lIERQX1BIWV9URVNUX1BBVFRFUk5fTk9ORcKgwqDC
oMKgwqDCoMKgwqDCoMKgIDB4MAo+Pj4gKyMgZGVmaW5lIERQX1BIWV9URVNUX1BBVFRFUk5fRDEw
XzLCoMKgwqDCoMKgwqDCoMKgwqAgMHgxCj4+PiArIyBkZWZpbmUgRFBfUEhZX1RFU1RfUEFUVEVS
Tl9FUlJPUl9DT1VOVMKgwqDCoCAweDIKPj4+ICsjIGRlZmluZSBEUF9QSFlfVEVTVF9QQVRURVJO
X1BSQlM3wqDCoMKgwqDCoMKgwqDCoMKgIDB4Mwo+Pj4gKyMgZGVmaW5lIERQX1BIWV9URVNUX1BB
VFRFUk5fODBCSVRfQ1VTVE9NwqDCoCAweDQKPj4+ICsjIGRlZmluZSBEUF9QSFlfVEVTVF9QQVRU
RVJOX0NQMjUyMMKgwqDCoMKgwqDCoMKgwqAgMHg1Cj4+PiArCj4+PiArI2RlZmluZSBEUF9URVNU
X0hCUjJfU0NSQU1CTEVSX1JFU0VUwqDCoMKgwqDCoMKgwqAgMHgyNEEKPj4+IMKgICNkZWZpbmUg
RFBfVEVTVF84MEJJVF9DVVNUT01fUEFUVEVSTl83XzDCoMKgwqAgMHgyNTAKPj4+IMKgICNkZWZp
bmXCoMKgwqAgRFBfVEVTVF84MEJJVF9DVVNUT01fUEFUVEVSTl8xNV84wqDCoCAweDI1MQo+Pj4g
wqAgI2RlZmluZcKgwqDCoCBEUF9URVNUXzgwQklUX0NVU1RPTV9QQVRURVJOXzIzXzE2wqAgMHgy
NTIKPj4+IEBAIC0xNTcwLDQgKzE1NzksMjYgQEAgc3RhdGljIGlubGluZSB2b2lkCj4+PiBkcm1f
ZHBfY2VjX3Vuc2V0X2VkaWQoc3RydWN0IGRybV9kcF9hdXggKmF1eCkKPj4+IMKgIMKgICNlbmRp
Zgo+Pj4gwqAgKy8qKgo+Pj4gKyAqIHN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zIC0gRFAg
UGh5IENvbXBsaWFuY2UgcGFyYW1ldGVycwo+Pj4gKyAqIEBsaW5rOiBMaW5rIGluZm9ybWF0aW9u
Lgo+PiBAbGluayBzZWVtcyB0byBiZSBmcm9tIGEgcHJldmlvdXMgcGF0Y2ggdmVyc2lvbi4gUGxl
YXNlIGRlc2NyaWJlCj4+IGxpbmtfcmF0ZSBhbmQgbnVtX2xhbmVzIGluc3RlYWQuCj4+Cj4+PiAr
ICogQHBoeV9wYXR0ZXJuOiBEUCBQaHkgdGVzdCBwYXR0ZXJuIGZyb20gRFBDRCAweDI0OCAoc2lu
aykKPj4+ICsgKiBAaGIyX3Jlc2V0OiBEUCBIQlIyX0NPTVBMSUFOQ0VfU0NSQU1CTEVSX1JFU0VU
IGZyb20gRENQRAo+Pj4gKyAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDI0QSBhbmQgMHgyNEIg
KHNpbmspCj4+PiArICogQGN1c3RvbTgwOiBEUCBUZXN0XzgwQklUX0NVU1RPTV9QQVRURVJOIGZy
b20gRFBDRHMgMHgyNTAKPj4+ICsgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhyb3Vn
aCAweDI1OS4KPj4gTWlzc2luZyBkb2MgZm9yIGVuaGFuY2VkX2ZyYW1lX2NhcC4KPj4KPj4+ICsg
Ki8KPj4+ICtzdHJ1Y3QgZHJtX2RwX3BoeV90ZXN0X3BhcmFtcyB7Cj4+PiArwqDCoMKgIGludCBs
aW5rX3JhdGU7Cj4+IElzIHRoZXJlIGEgcmVhc29uIHlvdSdyZSBub3QgdXNpbmcgdTggaGVyZT8g
V291bGQgYmUgbmljZSB0byBrZWVwIGl0Cj4+IGNvbnNpc3RlbnQgd2l0aCBudW1fbGFuZXMuCj4K
PiBsaW5rX3JhdGUgdmFyaWFibGUgaXMgdXNlZCBoZXJlIHRvIHN0b3JlIGFjdHVhbCBjbG9jayB2
YWx1ZSBhZnRlcgo+IG11bHRpcGx5aW5nIHdpdGggMjcwMDAgKDAuMjcgZ2Jwcykgd2l0aCBsaW5r
LWNvZGUgdXNpbmcKPiBkcm1fZHBfYndfY29kZV90b19saW5rX3JhdGUoKS4KPiBGb2xsb3dlZCB0
aGUgc2FtZSBhbmQgdTggbWF5YmUgbm90IGJlIHN1ZmZpY2llbnQuIEFkZGVkIG90aGVyCj4gc3Vn
Z2VzdGVkIGNoYW5nZXMuIFRoYW5rcyBmb3IgcmV2aWV3Lgo+ClRoYXQgbWFrZXMgc2Vuc2UuIEkg
bWlzc2VkIHRoYXQuIEluIHRoYXQgY2FzZSBmZWVsIGZyZWUgdG8gYWRkIG15ClJldmlld2VkLWJ5
OiBIYXJyeSBXZW50bGFuZCA8aGFycnkud2VudGxhbmRAYW1kLmNvbT4KCkhhcnJ5Cgo+IFJlZ3Jh
ZHMsCj4gQW5pbWVzaAo+Cj4+Cj4+PiArwqDCoMKgIHU4IG51bV9sYW5lczsKPj4+ICvCoMKgwqAg
dTggcGh5X3BhdHRlcm47Cj4+PiArwqDCoMKgIHU4IGhicjJfcmVzZXRbMl07Cj4+PiArwqDCoMKg
IHU4IGN1c3RvbTgwWzEwXTsKPj4+ICvCoMKgwqAgYm9vbCBlbmFoYW5jZWRfZnJhbWVfY2FwOwo+
PiBUeXBvLiBTaG91bGQgYmUgZW5oYW52ZWRfZnJhbWVfY2FwLgo+Pgo+PiBIYXJyeQo+Pgo+Pj4g
K307Cj4+PiArCj4+PiAraW50IGRybV9kcF9nZXRfcGh5X3Rlc3RfcGF0dGVybihzdHJ1Y3QgZHJt
X2RwX2F1eCAqYXV4LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qg
ZHJtX2RwX3BoeV90ZXN0X3BhcmFtcyAqZGF0YSk7Cj4+PiAraW50IGRybV9kcF9zZXRfcGh5X3Rl
c3RfcGF0dGVybihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2RwX3BoeV90ZXN0X3BhcmFtcyAqZGF0YSwgdTggZHBf
cmV2KTsKPj4+IMKgICNlbmRpZiAvKiBfRFJNX0RQX0hFTFBFUl9IXyAqLwo+Pj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
