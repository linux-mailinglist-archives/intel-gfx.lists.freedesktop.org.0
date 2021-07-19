Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959AD3CEB49
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 21:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12A789F08;
	Mon, 19 Jul 2021 19:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2055.outbound.protection.outlook.com [40.107.94.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7737689D39;
 Mon, 19 Jul 2021 19:21:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Els1Tzm3q18RbzOZbM3gZRsUWkJYo+n+EHIAFGhWgIQEQoG1OBgshl7ULP2IinPhSTE6bCxE9XAkLRyWSH0jb9eSgyPm0IgIla3WFsKpmFctXdZhyG0jI6EgEHeN7S+K06xk6u1c7Sz1up8BGIrP1vDHmKgfAXW/JVsY/LO0NCgRPAyBqW4PfUf1G0X1SI8r6aeAiYgDtJHH+d24zbYbkUJUq3XnOhV6JL1ykOGf9vFAF6RNhdmeYuKL6Ohsm3il24A4AkFsJdMnjkAgG9br+PMxNW+ZR+0qgBpBPDwlqqQQU4CKboLLW2mY/SpfI3ATaT+szGS7ECa9aYp6/YqY0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FpAHC1VuurC4w91R9j+eJCCe4x12waF9SqqIUQzafw=;
 b=Rjkin8p1AVcunF0SyhaUKP1UB305pg3339j1v3GHew4HwHhBfAXuDeG2I+gQo2hxCPqtRFiEb2DY2zfJkQ5EBbockmC9w3lGpyhG3RpLcGN20nx0YOyFaAM04LaO/ObOysSYeRVxgn0hSLvW9g1Sa6WW/McsN0VdizXZk/Q9orrNQafoyCuJ+a/CQSDCQAZVNjtFduwZ/Wd25JXn9yLVV4j2YZoNhaz+JNYXm76inMedMJ7JiwYpmC4iI1Hc/3f53vOqYlvsl+zNwGdinyXderz9NiqbEjqeq2uhJH+L716jzrmHaV+YhrBxmeaOi6w6BRLFHYJszzooxEZ9DOHJng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FpAHC1VuurC4w91R9j+eJCCe4x12waF9SqqIUQzafw=;
 b=qqfiREa6f0dcrteyLuzHWzDPeb9X4j+bsqsREzQGGw/Goz8sMRQOzwUqnC80GFTF4/51A8uY/v3Rmk4xPfPF/+UvqT8hfPFX7y1fYXHOTpnnQbXckv38cbJJ71jRPxx/Ftva3xnft1GKaXkjRnCZxgMBOhpMJ8mL34OTvOluGvg=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB2417.namprd12.prod.outlook.com (2603:10b6:207:45::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Mon, 19 Jul
 2021 19:21:40 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4331.033; Mon, 19 Jul 2021
 19:21:40 +0000
To: Jason Ekstrand <jason@jlekstrand.net>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20210719183047.2624569-1-jason@jlekstrand.net>
 <20210719183047.2624569-5-jason@jlekstrand.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <54acbce7-29bd-9840-743b-7d58ba595462@amd.com>
Date: Mon, 19 Jul 2021 21:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210719183047.2624569-5-jason@jlekstrand.net>
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::22) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:b9ac:906c:3209:6aa0]
 (2a02:908:1252:fb60:b9ac:906c:3209:6aa0) by
 FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.8 via Frontend Transport; Mon, 19 Jul 2021 19:21:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39d8faec-05fd-4c85-3cf2-08d94aea6f82
X-MS-TrafficTypeDiagnostic: BL0PR12MB2417:
X-Microsoft-Antispam-PRVS: <BL0PR12MB2417B2BB7DCD341BE3D5AA2683E19@BL0PR12MB2417.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kip9GsYuSFM4WkotLv6a3ut8Ens4daKZPIq99B7V+4AuQhscdRtp266y4OJWU99XTbz4g5G4m4hXeTYKbuKnSheUVL8qwskVd48TfJcVU4AXphA/c9qBcNpw3FjLqhjgn7Vr5s5H82oKPss3923HKLcOz3nh6sD6G+ek8Pz0vW3xdDaLUmI2J09UI7ia8NprALguzZtgjVtSe9IG8QThcujiZkczD25A3JjPlJSf0F9J+dqlKsjnn/4BsrBFyn0tvoZqEE+XaGqX7odVdKMClHQgP5c07cB7JxPs/FIViuAt4CE/LaQ171y5QybqzpmnCnohNT8lj2ZsilhiznqIVopOk8h/7dlhVd64WzZ0g15Vv/cZWXTBFZ1y2Xsg1X6c0OYa2ypfirnsyo9Z3NX+BmGYT2f7gQsh0DfLx3mJDi4MnirKCaMOs4nuCYS1vZjojPztAXdTogeYWTut7G5yF48ZRvOtLJQcB6amZ4XBPlIewQKIvMpNF4gEVtx1EuvmBRISSkTx/Qig2WJC9/DgW1p0V1d7l/eF2W4QVXMzPOSqpJkuZ0bNLUNswQBViJo2SvH58HMgqsx1jBgHKKJc0auQ4nWs7tXdf30Ds/K5Fajv5EhVsAqYhmOqMxvMzg5CBdgZqLCNMTEX1mkpNRoIjg7+LFEbO4R7gY+w+uePaQzVa607pbxiFxnOaQmC5DxXTBzaZFgeV1cSOJN/9lMMCDNmHNJPXKzUWhwyu22vZY8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(39860400002)(396003)(38100700002)(86362001)(2906002)(2616005)(36756003)(316002)(5660300002)(31686004)(8676002)(478600001)(186003)(66556008)(66946007)(6486002)(83380400001)(66476007)(31696002)(6666004)(66574015)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STNxVm5ucnl5Vm9aNVlpc2FJY1NlQUdMV01NdkJyVEFzemZnZE4wbjhzT1Qr?=
 =?utf-8?B?Vit0cVdaMCtMdzhveGN0ZHlBRXRzYWxHSGlIWnNXbzhFVkYxL0NSSW50emNh?=
 =?utf-8?B?ZktFU1I2UUVKTGlBVXlmR3N1QTU4eC92MEkrTFZJNHpzMDUrZG12cVFiQlpE?=
 =?utf-8?B?U0E1T2QzNGhCZ2Y3S0c4M09YYWg3Q1BFelVhMlZoOXRCZk5KWDdONHAvcXhB?=
 =?utf-8?B?TGlwWi9iRU80dnRhdnZyUHJRc09aNkZNZk9HZlJIeFpaMnlHejZVZk50R0JD?=
 =?utf-8?B?ZVUybnQrK3QveVgyL1hOenRjTVU4NVhzRzVJdjIrUFYvSlVRVEs5SGkzNGpT?=
 =?utf-8?B?WFNTWERuT0RzY2pIQXhKTERpMEVscHJrRlpEM1AzMXh4RnFlYlg3WXB1WkxI?=
 =?utf-8?B?VUNHNEZZR0Q5aW02Smk5eEFlbmRQZExXWDF6OE0xMXdXdjl3SjlmN0pkUFc3?=
 =?utf-8?B?cXc3a1d2Z1JUSUxGampEcDBmeGFYOEQwM01mSStMeksxenZEUWxmNE5lZnpZ?=
 =?utf-8?B?TmNHYW5TSFFMeTB3eFRkRVV1Y1BLUUp6bDdnYU5ncC9NVlpPVXRjbUp3eENp?=
 =?utf-8?B?b2pWZkxBSWJmMm9NVkNKYjZiRzdvT3BQcnNlVkRHOWNCQ0FEVVhQc21zUG9z?=
 =?utf-8?B?OTI5MWxNRFlvbXNWRVNmUjJrOCtUaFhyVHJYL3QvWWQ1S0pKWG5LYnZ5Nkhy?=
 =?utf-8?B?SDBnRUVFcEtHWTYzOXBlclRYWS9Jb0ZwRkk4UFN6MDI0cTA3NStnRnFWcWNL?=
 =?utf-8?B?YTNFdHAwenVyNXI5NVpRYnQrY3p2Y1AwdjE0TUxaRDBWUGwvUjFGdHlJaXgw?=
 =?utf-8?B?Y1BMWUx0UWFocmhjczk2Q3BFOVliR3F4OEs3Z2p6MlpYTkUvWGZaS3d6d0Rz?=
 =?utf-8?B?V1czNi9obXRMUm96UVRibEVCTWlDNlZ1YklBTklKM1prK3FCTFN0T2p0VGZQ?=
 =?utf-8?B?ckRjVWV0a2NXdk85RGJWZjFNYnFlWEd4azMzSDArbHFxRFkxdFpaaTNIWlVn?=
 =?utf-8?B?ZXNGNXprRGIxUkdCOUx6dFMvWTRmWTBDZzN0aFg1QnpYZ2d1UDJDRW50TTcv?=
 =?utf-8?B?enJaMUl6WVVlOXhFMUx1MmwyVHBwdldpdng2N01HRkhwaklTaUwwV09CbS9F?=
 =?utf-8?B?dW83TVljdWM4QXJoSC9YUVpEL2xwYlFHejE2YTNjcUw3T0tPQ01EWUF2eXcv?=
 =?utf-8?B?OEUzeXpTYkwvckx0QTlDVTVUY3hBUm90M3ZKM3VySTJoUkVVV1dqeUl3WGRZ?=
 =?utf-8?B?TVZjbFREakZYeUJDZWtqcXBuc3M1bmZTelNrd296elhLOU1PZExMa25GWGVY?=
 =?utf-8?B?NEpCZmcyU21wK2x5ZUdCd3hDV0xrN0hrNXJkRHY4SlVoZ2pMcGFuRHdGTEVt?=
 =?utf-8?B?TVkzOHVEYXpUUmRuR1hkYTVDM0xobjJuM2UzZWdHWjRRNDJHMGdRL0taWjFa?=
 =?utf-8?B?T3dYWWVuaVdoRHQrMWJBc3NhR1F6eit6UTdEMDVVMTNON0RNWmJFQ2hzNU5Q?=
 =?utf-8?B?NElFZ3BubW9zbGh3eFVqRFdYZUN4cFpMd1lDV1EyeW5IdDZibHc4M2VFTVNM?=
 =?utf-8?B?MFNLVU8xVGRwd1ZSVk1IcVZMeDRNL3ltenpwSmsxbm53eWgyMUtSaWlTZ1Nv?=
 =?utf-8?B?aTVMcEJKb3RVbFJ1REJHTVJqTkJpQ3FlZUZCNEsvZGtIaDZoWnBsZ0FjeUZQ?=
 =?utf-8?B?bVpkT0NXZmVkWnlTQzFJQmNVSFlBTmxrQ0tjTEhHaFd0ZFZiL2ZqZWNtUDNp?=
 =?utf-8?B?aEliSE03N2hzZURuMHpHS0ZrMlNmc1JIR0VWMWdDS2IzVlUwd0x3VC8rVW91?=
 =?utf-8?B?Y2F4RmFSbkN6aDRpMzBPZEVyeGkzWGQvb0F5YVZFYkZPM2o5ZzREcS9RWFNh?=
 =?utf-8?Q?j4HUp7NcJQ3R7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39d8faec-05fd-4c85-3cf2-08d94aea6f82
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2021 19:21:40.6173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n0s+S/ZievJrwo/AthMFwgaGzuLzW3H4aTnD1C3WBwVzGMPAKomm64x9b5GrNVA8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2417
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/ttm: Force re-init if
 ttm_global_init() fails
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTkuMDcuMjEgdW0gMjA6MzAgc2NocmllYiBKYXNvbiBFa3N0cmFuZDoKPiBJZiB3ZSBoYXZl
IGEgZmFpbHVyZSwgZGVjcmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQgc28gdGhhdCB0aGUgbmV4
dAo+IGNhbGwgdG8gdHRtX2dsb2JhbF9pbml0KCkgd2lsbCBhY3R1YWxseSBkbyBzb21ldGhpbmcg
aW5zdGVhZCBvZiBhc3N1bWUKPiBldmVyeXRoaW5nIGlzIGFsbCBzZXQgdXAuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gRml4ZXM6IDYy
YjUzYjM3ZTRiMSAoImRybS90dG06IHVzZSBhIHN0YXRpYyB0dG1fYm9fZ2xvYmFsIGluc3RhbmNl
IikKPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKR29v
ZCBjYXRjaCwgcGF0aCBpcyBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Rldmlj
ZS5jIHwgMiArKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jIGIvZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fZGV2aWNlLmMKPiBpbmRleCA1ZjMxYWNlYzNhZDc2Li41MTlkZWVhOGUzOWI3IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fZGV2aWNlLmMKPiBAQCAtMTAwLDYgKzEwMCw4IEBAIHN0YXRp
YyBpbnQgdHRtX2dsb2JhbF9pbml0KHZvaWQpCj4gICAJZGVidWdmc19jcmVhdGVfYXRvbWljX3Qo
ImJ1ZmZlcl9vYmplY3RzIiwgMDQ0NCwgdHRtX2RlYnVnZnNfcm9vdCwKPiAgIAkJCQkmZ2xvYi0+
Ym9fY291bnQpOwo+ICAgb3V0Ogo+ICsJaWYgKHJldCkKPiArCQktLXR0bV9nbG9iX3VzZV9jb3Vu
dDsKPiAgIAltdXRleF91bmxvY2soJnR0bV9nbG9iYWxfbXV0ZXgpOwo+ICAgCXJldHVybiByZXQ7
Cj4gICB9CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
