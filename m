Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E47459408
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 18:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9A689819;
	Mon, 22 Nov 2021 17:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C143B88EA7;
 Mon, 22 Nov 2021 17:34:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="234782037"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="234782037"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 09:34:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="537951717"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2021 09:34:49 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 09:34:49 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 09:34:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 09:34:48 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 09:34:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3jgI+ky4Uekeg4yfHE0rV5lOcg4k3Pqo7tLUMFNk4CpVSH31WCIWI4fteYDuipLs/xuVS1gcoMEqWqZx4R8rm9CcQ8FaXx6W+9MwlbqmRA3uD8m53JppUwSapZ95H6oRHX6BgVY1d8k3ZJpz6z+hKxDXg7oWeYKO1aulJuSmVupO4h0C7C/kSZjOb8985lK9MYFnINbZvAKKb8SAqqy8csgDjT/ayyNCMyXHjbJgkBDjgInS6UJM/KBtHA43KWmdb+NpHKKrB5oYrMOemno1cnevQVvYO1ej+ojE6eYvzTzGuaCPhXhwKZQJmbDJpSYx/tfXBey3+ifcltpzSCzWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JW0TyoZVf6HuHgnaRlgpXXtMSIZZDgz6w0eNEInkHPg=;
 b=hpcKDmgop/4P+tFIFD7ZYNqEDaD8Uj6AJYn0Kjc7v7Vn25/iBI2DNZGUA/YbPsFcFYLwn+v4Ttefgc+TLN/MHYEJRbH8vZRn/uKzKKI7qMCGWrNhjFAhw7PKOqO5v6ZBzHBQPMEpoNpP74MFNuJzrF6UJcAQaCh7XE5cM/6x5b34820xFh0m09olfZzQmlzcB3xO72ulfcJkpNjnSk/JOragkXo4G4chpU8XUMphy1rXEAPpuR0LMB3t+g7f7lcPhTGNK6WlnAaiGgH6sbhYHvhp1X+t1yvzD7ytYvQlZVTEpyt4QoVyqos4Tafz0/DFRQAz/T6gGK/IivdwSPxP7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JW0TyoZVf6HuHgnaRlgpXXtMSIZZDgz6w0eNEInkHPg=;
 b=rU+zF1aGQCrr3Hou7zdsiWhdEB0n8SCmYtypmjB1cMkYKmsKX+z+DQcrpXzVRn6pRCa+b3wDkfCzSvfu1YWtpHAbhJQg6EkHaOr1Kqm6UPDePzln1Czw1tQ46GI7oSIkGGyqXi/IWz/0wTdtEAp0d0DxRUZNugqm/ZMvRQvAgV8=
Received: from BYAPR11MB3174.namprd11.prod.outlook.com (2603:10b6:a03:76::27)
 by BYAPR11MB3414.namprd11.prod.outlook.com (2603:10b6:a03:85::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Mon, 22 Nov
 2021 17:34:42 +0000
Received: from BYAPR11MB3174.namprd11.prod.outlook.com
 ([fe80::c8cf:4c17:3f03:e6ec]) by BYAPR11MB3174.namprd11.prod.outlook.com
 ([fe80::c8cf:4c17:3f03:e6ec%3]) with mapi id 15.20.4690.027; Mon, 22 Nov 2021
 17:34:42 +0000
From: "Lubart, Vitaly" <vitaly.lubart@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Jason A.
 Donenfeld" <Jason@zx2c4.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
Thread-Topic: RPM raw-wakeref not held in intel_pxp_fini_hw
Thread-Index: AQHX38E+yOVyxKPlmUav+4h0gh8bAawPw3sAgAAK2YA=
Date: Mon, 22 Nov 2021 17:34:42 +0000
Message-ID: <BYAPR11MB317416729CAB4D29E2FA3723E29F9@BYAPR11MB3174.namprd11.prod.outlook.com>
References: <CAHmME9pShXywMogVkcBsXtfKxFHmQLe0F9cMF27aveUz6iyWhA@mail.gmail.com>
 <454da641-c065-132e-174b-4e6c9d7db83e@intel.com>
In-Reply-To: <454da641-c065-132e-174b-4e6c9d7db83e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 169ed412-cadf-4c75-6aa7-08d9adde5e60
x-ms-traffictypediagnostic: BYAPR11MB3414:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3414C19BEA3A68ED4E5855D7E29F9@BYAPR11MB3414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:486;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BXtbbEk+HAlv7okyDFH5DAhSijPv1sAx/9E/gil5UiHrJiG1SoIG6ExQJU5sWsQi5ZFmG9OlFzuwO9OpGdKRuQZPokNDmmkqlORGtPigYweOcmOfbCVm9F4wwuQd2fup+3QmnGQdNB6A1k2hTUz/tFxs9iP921O4b7iTd+6hy17YE5BRIyTtgr0NiRUyaJKmOEAV2w+QeRKXNqee2byKRuBuypl3JbwTkUu2mKcfbRZDUu85pehwK1Tth3/TriCr5wF2YQJ9NodG/sl70poYiW3tYivYfaD/RAtP4LVrm+0fsj9KZ+gnzHnAfYFNaZzQRKkmmn+fytyUn8bUt6LKDNDtIp+/x02QqaY4m1CdY267cgIphUAdizv0vchPrSGzUILeVUJJNxdpqoHuHgV9oXidYc58cohiM5UJTT2x00pBDYw539iGkL5oSza/WQzHfoGBYYmmyg9J5jGemYumHFIIf++cQNAhnIdPSubrxLctjdYAWZZW+lC9uL3AcANZc+i/PZLreTBy75XIswMHr3b1nEHZ4rE6+XhlVUFDX679zhuG1wg0IvO9pd2L9IAg69Rm0YzjFLT9L6PEVeMePEaseXHtMFuhHLjlg9AVcmpKJKDLo3JrXbM/ynqY/mEM0Yym2NAVx5vzkYcfiZHvczozDJVfjtcOyAZcZx5CIvsjeCIekKVFt7rjqF8W+Nnk/GwspLWtmS7ALcoUnXwaCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3174.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(86362001)(33656002)(38070700005)(6636002)(53546011)(316002)(4326008)(8936002)(6506007)(508600001)(186003)(45080400002)(83380400001)(9686003)(82960400001)(122000001)(7696005)(38100700002)(8676002)(55016002)(66946007)(5660300002)(66476007)(64756008)(52536014)(107886003)(966005)(2906002)(54906003)(110136005)(71200400001)(76116006)(66556008)(66446008)(30864003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0JyeW5ONm5NUU5mME4zeUovNEloQ25BZ3FSTlA3OFdrYnFpNHVzb04rSUc0?=
 =?utf-8?B?QldiaTlzd3lYKzJ2TlpXc2Rnd3VTVjI4dUE0KzVDaDVYSFZtcUpHcEdBSFBU?=
 =?utf-8?B?MEcyNXdYMXQxYVNEbWU2RFNETHNHSlJraVFyQ1dNc2pJdHJsVmdaQnVBUGVE?=
 =?utf-8?B?NGV5V0tjSmtDamtrSm9yZHRZSmhzbmpXbm51bmRJUkhNYWs3ZTZBbGtac1pu?=
 =?utf-8?B?dDVrVW1lbDVJMWRBNWVjRENueUx4d1dHMXo4VWYxWU9ld21EOXF3ODYyQnlV?=
 =?utf-8?B?OFhGZmlrTUtNZmFLYTJudDR3Qy9iR1FmbGhCVlNEOGJUM1F3VmhDRmV2TnZJ?=
 =?utf-8?B?amh0K3ZvQWZJeU14QlJsSnpXcTlaNXRLSFErRy8vR3hrM2NGb1BoK3ZoNHNk?=
 =?utf-8?B?MnM4R2tQd0NQczVDV2FQdzBoZ0k3VHRFQ1M3eGVDOUIyMDhaMUowNThQd1Iw?=
 =?utf-8?B?WnZENWJsRWtMZE9ZQkdGWmx4eGVvNXJFU3BFSzRwbEMvTWM2eEY3cm5xUGZH?=
 =?utf-8?B?bmJzUjdwbFROS2gxZE55a0VpdmdGcjVXNFpJM0JIWlRFa0s3TnJZOEI5MUZU?=
 =?utf-8?B?TG9sd2hmWStaWlg1OU01Mmg1cEdwOUJlZFNYTXFjYksyQ1diQlVQQnZDS0hQ?=
 =?utf-8?B?bk9XMi9WVjByZGxsQzl0aXdqV1FOTFlDVkZHWThaSUxLT1ZreXgxWHd5MDdo?=
 =?utf-8?B?dXUvVlIvdDUrZWNEZFRrS1h2SUpjRFdWUGRBRmVGdTZldHRGeTZQYWprUEVs?=
 =?utf-8?B?dzVvV0NxSms1SE5HQ1l6SzR4blhIYjlZWkxEalB4SmRFdmhING81VGdQdWZa?=
 =?utf-8?B?YmpkQWNjYXZDNWFFNHpjYXRybjFSSG1hRnNNTXZ5Mi9GWjFuemJKM0ZsdG1X?=
 =?utf-8?B?TlU1OEYzSTRZeGJrclBLelJ3Nk9ZeXRPUFV1Q2g3aURnQlBUNVFJSVp3VFFY?=
 =?utf-8?B?NDg3MVl4WWF3OXd0NWlublYrYU10Vy9oUnNuZjZJVDU0aThmT0lCTTZRZ1RF?=
 =?utf-8?B?OXNYR1kyT2x4MXpWZmhMZmdUM1QrNjhxWGZrTGNvQXlHSllrV0pUTXltK0JX?=
 =?utf-8?B?QW9kWWZvV0hTTXlieFFnZzhoSWN3cUxtZzlXRytXc1MraDhrbGpmdktNMmRh?=
 =?utf-8?B?Ry84TjRYeUZBMDMxcEFoMHBpUlpMcWlPdnlCMzhTalZCVmQyMGdJNVc4SThy?=
 =?utf-8?B?V3RWRU15eFZFYWtQWGdEeWdWc3ErczJIbGk1MFIzQ1M1YTUyZVRtYmJYekxV?=
 =?utf-8?B?Q2RxTUN0RjhpblU1WTZUMWg5YWtqRHVUMlhETnNSOENZdUlEV3gxM0J2Zndr?=
 =?utf-8?B?eUZDVmdSUzUwSFUwR09zWEhOVzcrMnVubytLNzhlSjNZMEZPR3hSclFnTCtN?=
 =?utf-8?B?Vkh4d0hzeS96YVVET012NTdxTGk0LzlNSGJLYXU1bUtwODA3eTlIMUpTNm1h?=
 =?utf-8?B?VWZiMVdyaldIaDFWS3hUSWVLMTZQQzV3cm85VTZLb1RrUnZuTzduNWlhZkRi?=
 =?utf-8?B?amNZNEVQSi9ZMUMzTXhrQTVmN3poWlQwaDZhMzgxTjlTS2RyWEVqVHY2aWFn?=
 =?utf-8?B?WGpNYnlWSnEyUXhPVGFUcDVud2dqOU1tYW13WEZhT1NEL043aGhBaXcwc3B5?=
 =?utf-8?B?UzV1dFlTYnR1Q3diU1RCSXQzT0U3SUN4Mm8wdUErS2FRUldvRjRsVTliR1pJ?=
 =?utf-8?B?MGdpU0ovcU1RcG8vQzlEMXFpS3hmRFB0RkZqRnlZZmgyRU50dmZ4UC9RMnpu?=
 =?utf-8?B?Zk05ZmtGQVRtVTlyb2JaRnVuaDNHL2VwZWtRT3k5VjJlWmQ2WkZJQ0RrTk1W?=
 =?utf-8?B?SEJEaWgrcEZyaUFzSGV1dG94T1RrYzg2N0RhZ0EwdkhCcUhOVWJLbDhQTTF2?=
 =?utf-8?B?NnZiQ0FhMndkU2IybTRQY0lDRkRBYW1RNk9DZUtPZC9CUkxoek92eG5HWHA1?=
 =?utf-8?B?TDFJQkxjeVJVWVNkcm0zcllmdDFhNEdXeUVrbVIvQ0k1Z2JrZ0ZtcVl6R2d1?=
 =?utf-8?B?S3BkR3lyRk1CYWZBekUxeU02UklLY3M5bWZ1K3FZa2l3Skk1NkM3ZXhKYmUz?=
 =?utf-8?B?N3J1TTFCMkVCVytjZEg4eWw3ZU96Zis1M1Z3M0phWWpmbGUzT1c3dEEzUmto?=
 =?utf-8?B?cGdORS9zNG5uTXhibzFSd3FjeXdGREgrOHBVaEgwZU5qMUJEUFVDTVJ4QytR?=
 =?utf-8?B?bnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3174.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 169ed412-cadf-4c75-6aa7-08d9adde5e60
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2021 17:34:42.4979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zyt0Lw/dzP4LYDLknSlyFvVrFgDr80Qe5fCXGVD/fLiu+14VIN2mqMdqKGcywkK626OlmWmmkWwQtSNo8SSX2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3414
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
Subject: Re: [Intel-gfx] RPM raw-wakeref not held in intel_pxp_fini_hw
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Winkler,
 Tomas" <tomas.winkler@intel.com>, "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q0MgVG9tYXMgYW5kIFNhc2hhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjIsIDIwMjEgMTg6NTQNCj4gVG86IEphc29u
IEEuIERvbmVuZmVsZCA8SmFzb25AengyYzQuY29tPjsgTHViYXJ0LCBWaXRhbHkNCj4gPHZpdGFs
eS5sdWJhcnRAaW50ZWwuY29tPjsgR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+Ow0KPiBTdXJlbmRyYWt1bWFyIFVwYWRoeWF5LCBUZWphc2t1bWFyWA0KPiA8dGVqYXNr
dW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlheUBpbnRlbC5jb20+DQo+IENjOiBMS01MIDxsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgZHJpLQ0KPiBkZXZlbCA8ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4NCj4gU3Vi
amVjdDogUmU6IFJQTSByYXctd2FrZXJlZiBub3QgaGVsZCBpbiBpbnRlbF9weHBfZmluaV9odw0K
PiANCj4gSGksDQo+IA0KPiBUaGUgZml4IGZvciB0aGlzIGlzIGluIGZsaWdodDoNCj4gDQo+IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvOTY2NTgvDQo+IA0KPiBJdCBq
dXN0IG5lZWRzIGEgbGFzdCByb3VuZCBvZiB0ZXN0aW5nIGJlZm9yZSB3ZSBtZXJnZSBpdC4NCj4g
DQo+IFRoYW5rcywNCj4gRGFuaWVsZQ0KPiANCj4gT24gMTEvMjIvMjAyMSA4OjQ3IEFNLCBKYXNv
biBBLiBEb25lbmZlbGQgd3JvdGU6DQo+ID4gSGV5IEludGVsIFBYUGVycywNCj4gPg0KPiA+IEkg
aGl0IHRoaXMgc3BsYXQgb24gNS4xNi1yYzEgZHVyaW5nIHN5c3RlbSBzdXNwZW5kOg0KPiA+DQo+
ID4gTm92IDIyIDEzOjU0OjA5IHRoaW5rcGFkIHN5c3RlbWQtbG9naW5kWzkzNF06IExpZCBjbG9z
ZWQuDQo+ID4gTm92IDIyIDEzOjU0OjA5IHRoaW5rcGFkIHN5c3RlbWRbMV06IFJlYWNoZWQgdGFy
Z2V0IFNsZWVwLg0KPiA+IE5vdiAyMiAxMzo1NDowOSB0aGlua3BhZCBzeXN0ZW1kWzFdOiBTdGFy
dGluZyBTeXN0ZW0gU3VzcGVuZC4uLg0KPiA+IE5vdiAyMiAxMzo1NDowOSB0aGlua3BhZCBzeXN0
ZW1kLXNsZWVwWzUxOTI1OV06IEVudGVyaW5nIHNsZWVwIHN0YXRlDQo+ID4gJ3N1c3BlbmQnLi4u
DQo+ID4gTm92IDIyIDEzOjU0OjA5IHRoaW5rcGFkIGtlcm5lbDogUE06IHN1c3BlbmQgZW50cnkg
KHMyaWRsZSkgTm92IDIyDQo+ID4gMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBGaWxlc3lzdGVt
cyBzeW5jOiAwLjEyNCBzZWNvbmRzIE5vdiAyMg0KPiA+IDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5l
bDogRnJlZXppbmcgdXNlciBzcGFjZSBwcm9jZXNzZXMgLi4uDQo+ID4gKGVsYXBzZWQgMC4wMDEg
c2Vjb25kcykgZG9uZS4NCj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBPT00g
a2lsbGVyIGRpc2FibGVkLg0KPiA+IE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6IEZy
ZWV6aW5nIHJlbWFpbmluZyBmcmVlemFibGUgdGFza3MNCj4gPiAuLi4gKGVsYXBzZWQgMC4wMDEg
c2Vjb25kcykgZG9uZS4NCj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBwcmlu
dGs6IFN1c3BlbmRpbmcgY29uc29sZShzKSAodXNlDQo+ID4gbm9fY29uc29sZV9zdXNwZW5kIHRv
IGRlYnVnKSBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOg0KPiA+IC0tLS0tLS0tLS0t
LVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLSBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVs
Og0KPiA+IFJQTSB3YWtlbG9jayByZWYgbm90IGhlbGQgZHVyaW5nIEhXIGFjY2VzcyBOb3YgMjIg
MTU6MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6IFdBUk5JTkc6IENQVTogMTAgUElEOiA1MTky
NTkgYXQNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmg6MTEyDQo+
ID4gZnd0YWJsZV93cml0ZTMyKzB4MWNiLzB4MjAwIFtpOTE1XQ0KPiA+IE5vdiAyMiAxNToyMjow
NSB0aGlua3BhZCBrZXJuZWw6IE1vZHVsZXMgbGlua2VkIGluOiBjZGNfbWJpbSBjZGNfd2RtDQo+
ID4gY2RjX25jbSBjZGNfZXRoZXIgdXNibmV0IG1paSBzbmRfc2VxX2R1bW15IHNuZF9ocnRpbWVy
IHNuZF9zZXENCj4gPiBzbmRfc2VxX2RldmljZSByZmNvbW0gY21hYyBhbGdpZl9za2NpcGhlciBi
bmVwIHV2Y3ZpZGVvDQo+ID4gdmlkZW9idWYyX3ZtYWxsb2MgdmlkZW9idWYyX21lbW9wcyB2aWRl
b2J1ZjJfdjRsMiBidHVzYg0KPiA+IHZpZGVvYnVmMl9jb21tb24gYnRpbnRlbCBibHVlPiBOb3Yg
MjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOg0KPiA+IGkyY19kZXNpZ253YXJlX3BsYXRmb3Jt
IGkyY19kZXNpZ253YXJlX2NvcmUgbWVpX3B4cCBtZWlfaGRjcCBhYzk3X2J1cw0KPiA+IGt2bV9p
bnRlbCBzbmRfaGRhX2ludGVsIHNuZF9pbnRlbF9kc3BjZmcgaW50ZWxfcmFwbF9tc3IgdGhpbmtf
bG1pDQo+ID4gc25kX2ludGVsX3Nkd19hY3BpIGk5MTUgZmlybXdhcmVfYXR0cmlidXRlc19jbGFz
cyB3bWlfYm1vZg0KPiA+IHNuZF9oZGFfY29kZWMga3ZtIGkyY19hbGdvX2JpdCBzbmRfaHdkZXAg
aW50PiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6IENQVTogMTAgUElEOiA1
MTkyNTkgQ29tbToNCj4gPiBzeXN0ZW1kLXNsZWVwIFRhaW50ZWQ6IEcgUyAgIFUgICAgICAgICAg
ICA1LjE2LjAtcmMxKyAjMTkyDQo+ID4gTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDog
SGFyZHdhcmUgbmFtZTogTEVOT1ZPDQo+ID4gMjBZNUNUTzFXVy8yMFk1Q1RPMVdXLCBCSU9TIE40
MEVUMjhXICgxLjEwICkgMDkvMDkvMjAyMSBOb3YgMjINCj4gPiAxNToyMjowNSB0aGlua3BhZCBr
ZXJuZWw6IFJJUDogMDAxMDpmd3RhYmxlX3dyaXRlMzIrMHgxY2IvMHgyMDAgW2k5MTVdDQo+ID4g
Tm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogQ29kZTogMjEgY2IgZGYgMGYgMGIgZTkg
ODUgZmUgZmYgZmYNCj4gPiA4MCAzZCAzNiA2OCAxZiAwMCAwMCAwZiA4NSA4MiBmZSBmZiBmZiA0
OCBjNyBjNyA3MCBjZiBjNCBhMSBjNiAwNSAyMg0KPiA+IDY4IDFmIDAwIDAxIGU4IDFjIDIxIGNi
IGRmIDwwZj4gMGIgZTkgNjggZmUgZmYgZmYgNDggOGIgYmIgNDAgMDEgMDAgMDANCj4gPiBlOCBh
MiBjZiBjZSBkZiBiOSAwMSAwMA0KPiA+IE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6
IFJTUDogMDAxODpmZmZmODg4MjFkMjgzYzgwIEVGTEFHUzoNCj4gPiAwMDAxMDI4MiBOb3YgMjIg
MTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBSQVg6IDAwMDAwMDAwMDAwMDAwMmEgUkJYOg0KPiA+
IGZmZmY4ODgxM2RmNzA3ZDAgUkNYOiAwMDAwMDAwMDAwMDAwMDI3IE5vdiAyMiAxNToyMjowNSB0
aGlua3BhZA0KPiA+IGtlcm5lbDogUkRYOiBmZmZmODg5MDFmNjliNDQ4IFJTSToNCj4gPiAwMDAw
MDAwMDAwMDAwMDAxIFJESTogZmZmZjg4OTAxZjY5YjQ0MCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtw
YWQNCj4gPiBrZXJuZWw6IFJCUDogMDAwMDAwMDAwMDAzMjBmMCBSMDg6DQo+ID4gMDAwMDAwMDAw
MDAwMGQxNyBSMDk6IGZmZmY4ODgyMWQyODNjMjAgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+
ID4ga2VybmVsOiBSMTA6IDNmZmZmZmZmZmZmZmZmZmYgUjExOg0KPiA+IGZmZmZmZmZmZmZmOTNh
NzggUjEyOiAwMDAwMDAwMDQwMDAwMDAwIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZA0KPiA+IGtl
cm5lbDogUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDoNCj4gPiBmZmZmODg4MTAxMzExMTUwIFIx
NTogZmZmZmZmZmY4MTQ5MWIyMCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6
IEZTOiAgMDAwMDdlZmNmYWE4NzgwMCgwMDAwKQ0KPiA+IEdTOmZmZmY4ODkwMWY2ODAwMDAoMDAw
MCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMCBOb3YgMjIgMTU6MjI6MDUNCj4gPiB0aGlua3BhZCBr
ZXJuZWw6IENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6DQo+ID4gMDAwMDAwMDA4MDA1
MDAzMw0KPiA+IE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6IENSMjogMDAwMDdlZmNm
YjQxZTZmMCBDUjM6DQo+ID4gMDAwMDAwMDVlZDkzNzAwNCBDUjQ6IDAwMDAwMDAwMDA3NzBlZTAg
Tm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+ID4ga2VybmVsOiBQS1JVOiA1NTU1NTU1NCBOb3Yg
MjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBDYWxsIFRyYWNlOg0KPiA+IE5vdiAyMiAxNToy
MjowNSB0aGlua3BhZCBrZXJuZWw6ICA8VEFTSz4gTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+
ID4ga2VybmVsOiAgaW50ZWxfcHhwX2ZpbmlfaHcrMHgyMy8weDMwIFtpOTE1XSBOb3YgMjIgMTU6
MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6ICBpbnRlbF9weHBfc3VzcGVuZCsweDJmLzB4NDAg
W2k5MTVdIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZA0KPiA+IGtlcm5lbDogIGk5MTVfZ2VtX2Jh
Y2t1cF9zdXNwZW5kKzB4NmUvMHgxNTAgW2k5MTVdIE5vdiAyMiAxNToyMjowNQ0KPiA+IHRoaW5r
cGFkIGtlcm5lbDogID8gcGNpX3RhcmdldF9zdGF0ZSsweGMvMHhjMCBOb3YgMjIgMTU6MjI6MDUg
dGhpbmtwYWQNCj4gPiBrZXJuZWw6ICBwY2lfcG1fcHJlcGFyZSsweDI4LzB4NjAgTm92IDIyIDE1
OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDoNCj4gPiBkcG1fcHJlcGFyZSsweGJkLzB4MzcwIE5vdiAy
MiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6DQo+ID4gZHBtX3N1c3BlbmRfc3RhcnQrMHgxNi8w
eDgwIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6DQo+ID4gc3VzcGVuZF9kZXZpY2Vz
X2FuZF9lbnRlcisweDEwNC8weDZkMA0KPiA+IE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJu
ZWw6ICBwbV9zdXNwZW5kLmNvbGQrMHgyZjYvMHgzM2QgTm92IDIyDQo+ID4gMTU6MjI6MDUgdGhp
bmtwYWQga2VybmVsOiAgc3RhdGVfc3RvcmUrMHg2Yi8weGUwIE5vdiAyMiAxNToyMjowNQ0KPiA+
IHRoaW5rcGFkIGtlcm5lbDogIGtlcm5mc19mb3Bfd3JpdGVfaXRlcisweDEwNy8weDE5MCBOb3Yg
MjIgMTU6MjI6MDUNCj4gPiB0aGlua3BhZCBrZXJuZWw6ICBuZXdfc3luY193cml0ZSsweDEwMC8w
eDE3MCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6ICB2ZnNfd3JpdGUrMHgx
YzUvMHgyNjAgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDoNCj4gPiBrc3lzX3dyaXRl
KzB4NGEvMHhjMCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOg0KPiA+IGRvX3N5c2Nh
bGxfNjQrMHgzNS8weDgwIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6DQo+ID4gZW50
cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDQvMHhhZQ0KPiA+IE5vdiAyMiAxNToyMjow
NSB0aGlua3BhZCBrZXJuZWw6IFJJUDogMDAzMzoweDdlZmNmYjI3Y2NiMyBOb3YgMjINCj4gPiAx
NToyMjowNSB0aGlua3BhZCBrZXJuZWw6IENvZGU6IDhiIDE1IDgxIDExIDBmIDAwIGY3IGQ4IDY0
IDg5DQo+ID4gMDIgNDggYzcgYzAgZmYgZmYgZmYgZmYgZWIgYjcgMGYgMWYgMDAgNjQgOGIgMDQg
MjUgMTggMDAgMDAgMDAgODUgYzANCj4gPiA3NSAxNCBiOCAwMSAwMCAwMCAwMCAwZiAwNSA8NDg+
IDNkIDAwIGYwIGZmIGZmIDc3IDU1IGMzIDBmIDFmIDQwIDAwIDQ4DQo+ID4gODMgZWMgMjggNDgg
ODkgNTQgMjQgMTgNCj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBSU1A6IDAw
MmI6MDAwMDdmZmYyNzlhNTMwOCBFRkxBR1M6DQo+ID4gMDAwMDAyNDYgT1JJR19SQVg6IDAwMDAw
MDAwMDAwMDAwMDENCj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBSQVg6IGZm
ZmZmZmZmZmZmZmZmZGEgUkJYOg0KPiA+IDAwMDAwMDAwMDAwMDAwMDQgUkNYOiAwMDAwN2VmY2Zi
MjdjY2IzIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZA0KPiA+IGtlcm5lbDogUkRYOiAwMDAwMDAw
MDAwMDAwMDA0IFJTSToNCj4gPiAwMDAwN2ZmZjI3OWE1NDAwIFJESTogMDAwMDAwMDAwMDAwMDAw
NCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6IFJCUDogMDAwMDU1NzE5OTdl
NzJkMCBSMDg6DQo+ID4gMDAwMDAwMDAwMDAwMDAwNyBSMDk6IDAwMDA1NTcxOTk3ZWI0YTAgTm92
IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+ID4ga2VybmVsOiBSMTA6IDExNTAwYmM1Njc2OTAxYTMg
UjExOg0KPiA+IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAwMDAwMDA0IE5vdiAyMiAx
NToyMjowNSB0aGlua3BhZA0KPiA+IGtlcm5lbDogUjEzOiAwMDAwN2ZmZjI3OWE1NDAwIFIxNDoN
Cj4gPiAwMDAwMDAwMDAwMDAwMDA0IFIxNTogMDAwMDdlZmNmYjM2YWEwMCBOb3YgMjIgMTU6MjI6
MDUgdGhpbmtwYWQNCj4gPiBrZXJuZWw6ICA8L1RBU0s+IE5vdiAyMiAxNToyMjowNSB0aGlua3Bh
ZCBrZXJuZWw6IC0tLVsgZW5kIHRyYWNlDQo+ID4gZWZjZjNjNjYyN2ZmNzE2MyBdLS0tIE5vdiAy
MiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6IC0tLS0tLS0tLS0tLVsNCj4gPiBjdXQgaGVyZSBd
LS0tLS0tLS0tLS0tIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6IFJQTQ0KPiA+IHJh
dy13YWtlcmVmIG5vdCBoZWxkIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6IFdBUk5J
Tkc6IENQVTogMA0KPiA+IFBJRDogNTE4MjMwIGF0DQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcnVudGltZV9wbS5oOjEwNA0KPiA+IGZ3dGFibGVfd3JpdGUzMisweDFhNC8weDIwMCBb
aTkxNV0NCj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBNb2R1bGVzIGxpbmtl
ZCBpbjogY2RjX21iaW0gY2RjX3dkbQ0KPiA+IGNkY19uY20gY2RjX2V0aGVyIHVzYm5ldCBtaWkg
c25kX3NlcV9kdW1teSBzbmRfaHJ0aW1lciBzbmRfc2VxDQo+ID4gc25kX3NlcV9kZXZpY2UgcmZj
b21tIGNtYWMgYWxnaWZfc2tjaXBoZXIgYm5lcCB1dmN2aWRlbw0KPiA+IHZpZGVvYnVmMl92bWFs
bG9jIHZpZGVvYnVmMl9tZW1vcHMgdmlkZW9idWYyX3Y0bDIgYnR1c2INCj4gPiB2aWRlb2J1ZjJf
Y29tbW9uIGJ0aW50ZWwgYmx1ZT4gTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDoNCj4g
PiBpMmNfZGVzaWdud2FyZV9wbGF0Zm9ybSBpMmNfZGVzaWdud2FyZV9jb3JlIG1laV9weHAgbWVp
X2hkY3AgYWM5N19idXMNCj4gPiBrdm1faW50ZWwgc25kX2hkYV9pbnRlbCBzbmRfaW50ZWxfZHNw
Y2ZnIGludGVsX3JhcGxfbXNyIHRoaW5rX2xtaQ0KPiA+IHNuZF9pbnRlbF9zZHdfYWNwaSBpOTE1
IGZpcm13YXJlX2F0dHJpYnV0ZXNfY2xhc3Mgd21pX2Jtb2YNCj4gPiBzbmRfaGRhX2NvZGVjIGt2
bSBpMmNfYWxnb19iaXQgc25kX2h3ZGVwIGludD4gTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+
ID4ga2VybmVsOiBDUFU6IDAgUElEOiA1MTgyMzAgQ29tbToNCj4gPiBrd29ya2VyL3UzMjo0IFRh
aW50ZWQ6IEcgUyAgIFUgIFcgICAgICAgICA1LjE2LjAtcmMxKyAjMTkyDQo+ID4gTm92IDIyIDE1
OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogSGFyZHdhcmUgbmFtZTogTEVOT1ZPDQo+ID4gMjBZNUNU
TzFXVy8yMFk1Q1RPMVdXLCBCSU9TIE40MEVUMjhXICgxLjEwICkgMDkvMDkvMjAyMSBOb3YgMjIN
Cj4gPiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6IFdvcmtxdWV1ZTogZXZlbnRzX3VuYm91bmQg
YXN5bmNfcnVuX2VudHJ5X2ZuDQo+ID4gTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDog
UklQOiAwMDEwOmZ3dGFibGVfd3JpdGUzMisweDFhNC8weDIwMA0KPiA+IFtpOTE1XSBOb3YgMjIg
MTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBDb2RlOiAwMCAwMCBjNiAwMCAwMCBlOSAwMiBmZg0K
PiA+IGZmIGZmDQo+ID4gODAgM2QgNWUgNjggMWYgMDAgMDAgMGYgODUgOWYgZmUgZmYgZmYgNDgg
YzcgYzcgYTAgNTEgYzcgYTEgYzYgMDUgNGENCj4gPiA2OCAxZiAwMCAwMSBlOCA0MyAyMSBjYiBk
ZiA8MGY+IDBiIGU5IDg1IGZlIGZmIGZmIDgwIDNkIDM2IDY4IDFmIDAwIDAwDQo+ID4gMGYgODUg
ODIgZmUgZmYgZmYgNDggYzcgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogUlNQOg0K
PiA+IDAwMTg6ZmZmZjg4ODJlMzQxYmM2MCBFRkxBR1M6IDAwMDEwMjg2IE5vdiAyMiAxNToyMjow
NSB0aGlua3BhZA0KPiA+IGtlcm5lbDogUkFYOiAwMDAwMDAwMDAwMDAwMDE4IFJCWDoNCj4gPiBm
ZmZmODg4MTNkZjcwN2QwIFJDWDogMDAwMDAwMDAwMDAwMDAyNyBOb3YgMjIgMTU6MjI6MDUgdGhp
bmtwYWQNCj4gPiBrZXJuZWw6IFJEWDogZmZmZjg4OTAxZjQxYjQ0OCBSU0k6DQo+ID4gMDAwMDAw
MDAwMDAwMDAwMSBSREk6IGZmZmY4ODkwMWY0MWI0NDAgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFk
DQo+ID4ga2VybmVsOiBSQlA6IDAwMDAwMDAwMDAwMzIwZjAgUjA4Og0KPiA+IDAwMDAwMDAwMDAw
MDBkYTcgUjA5OiBmZmZmODg4MmUzNDFiYzAwIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZA0KPiA+
IGtlcm5lbDogUjEwOiAzZmZmZmZmZmZmZmZmZmZmIFIxMToNCj4gPiBmZmZmZmZmZmZmZjk0ZTA4
IFIxMjogMDAwMDAwMDA0MDAwMDAwMCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQNCj4gPiBrZXJu
ZWw6IFIxMzogMDAwMDAwMDAwMDAwMDAwMCBSMTQ6DQo+ID4gZmZmZjg4ODEwMjM5NDE1MCBSMTU6
IGZmZmY4ODgxMDAwNjgwMDUgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+ID4ga2VybmVsOiBG
UzogIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkNCj4gPiBHUzpmZmZmODg5MDFmNDAwMDAwKDAwMDAp
IGtubEdTOjAwMDAwMDAwMDAwMDAwMDAgTm92IDIyIDE1OjIyOjA1DQo+ID4gdGhpbmtwYWQga2Vy
bmVsOiBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOg0KPiA+IDAwMDAwMDAwODAwNTAw
MzMNCj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiBDUjI6IDAwMDA3ZjMwMTgw
MjcwOTggQ1IzOg0KPiA+IDAwMDAwMDAwMDIwMGEwMDEgQ1I0OiAwMDAwMDAwMDAwNzcwZWYwIE5v
diAyMiAxNToyMjowNSB0aGlua3BhZA0KPiA+IGtlcm5lbDogUEtSVTogNTU1NTU1NTQgTm92IDIy
IDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogQ2FsbCBUcmFjZToNCj4gPiBOb3YgMjIgMTU6MjI6
MDUgdGhpbmtwYWQga2VybmVsOiAgPFRBU0s+IE5vdiAyMiAxNToyMjowNSB0aGlua3BhZA0KPiA+
IGtlcm5lbDogIGludGVsX3B4cF9maW5pX2h3KzB4MjMvMHgzMCBbaTkxNV0gTm92IDIyIDE1OjIy
OjA1IHRoaW5rcGFkDQo+ID4ga2VybmVsOiAgaTkxNV9weHBfdGVlX2NvbXBvbmVudF91bmJpbmQr
MHgxOS8weDQwIFtpOTE1XSBOb3YgMjINCj4gPiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6ICBj
b21wb25lbnRfdW5iaW5kKzB4MjYvMHg0MCBOb3YgMjIgMTU6MjI6MDUNCj4gPiB0aGlua3BhZCBr
ZXJuZWw6ICBjb21wb25lbnRfdW5iaW5kX2FsbCsweDg1LzB4OTAgTm92IDIyIDE1OjIyOjA1DQo+
ID4gdGhpbmtwYWQga2VybmVsOiAgY29tcG9uZW50X21hc3Rlcl9kZWwrMHg3My8weDkwIE5vdiAy
MiAxNToyMjowNQ0KPiA+IHRoaW5rcGFkIGtlcm5lbDogIG1laV9weHBfcmVtb3ZlKzB4MjMvMHg1
MCBbbWVpX3B4cF0gTm92IDIyIDE1OjIyOjA1DQo+ID4gdGhpbmtwYWQga2VybmVsOiAgbWVpX2Ns
X2RldmljZV9yZW1vdmUrMHgxYS8weDgwIFttZWldIE5vdiAyMiAxNToyMjowNQ0KPiA+IHRoaW5r
cGFkIGtlcm5lbDogIF9fZGV2aWNlX3JlbGVhc2VfZHJpdmVyKzB4MTcyLzB4MjMwDQo+ID4gTm92
IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogIGRldmljZV9yZWxlYXNlX2RyaXZlcisweDFm
LzB4MzAgTm92DQo+ID4gMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiAgbWVpX2NsX2J1c19y
ZW1vdmVfZGV2aWNlcysweDU2LzB4NzANCj4gPiBbbWVpXSBOb3YgMjIgMTU6MjI6MDUgdGhpbmtw
YWQga2VybmVsOiAgbWVpX3N0b3ArMHgzMi8weGMwIFttZWldIE5vdg0KPiA+IDIyIDE1OjIyOjA1
IHRoaW5rcGFkIGtlcm5lbDogIG1laV9tZV9wY2lfc3VzcGVuZCsweDFmLzB4NTAgW21laV9tZV0N
Cj4gPiBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiAgPyBwY2lfcG1fc3VzcGVuZF9u
b2lycSsweDI3MC8weDI3MA0KPiA+IE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6ICBw
Y2lfcG1fc3VzcGVuZCsweDZjLzB4MjAwIE5vdiAyMg0KPiA+IDE1OjIyOjA1IHRoaW5rcGFkIGtl
cm5lbDogID8gcGNpX3BtX3N1c3BlbmRfbm9pcnErMHgyNzAvMHgyNzAgTm92IDIyDQo+ID4gMTU6
MjI6MDUgdGhpbmtwYWQga2VybmVsOiAgZHBtX3J1bl9jYWxsYmFjaysweDM2LzB4MTAwIE5vdiAy
MiAxNToyMjowNQ0KPiA+IHRoaW5rcGFkIGtlcm5lbDogIF9fZGV2aWNlX3N1c3BlbmQrMHgxMjIv
MHg0YzAgTm92IDIyIDE1OjIyOjA1DQo+ID4gdGhpbmtwYWQga2VybmVsOiAgYXN5bmNfc3VzcGVu
ZCsweDE2LzB4OTAgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkDQo+ID4ga2VybmVsOiAgYXN5bmNf
cnVuX2VudHJ5X2ZuKzB4MTUvMHg5MCBOb3YgMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOg0K
PiA+IHByb2Nlc3Nfb25lX3dvcmsrMHgxY2UvMHgzNzAgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFk
IGtlcm5lbDoNCj4gPiB3b3JrZXJfdGhyZWFkKzB4NDgvMHgzYzAgTm92IDIyIDE1OjIyOjA1IHRo
aW5rcGFkIGtlcm5lbDogID8NCj4gPiByZXNjdWVyX3RocmVhZCsweDM1MC8weDM1MCBOb3YgMjIg
MTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOg0KPiA+IGt0aHJlYWQrMHgxM2MvMHgxNjAgTm92IDIy
IDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogID8NCj4gPiBzZXRfa3RocmVhZF9zdHJ1Y3QrMHg0
MC8weDQwIE5vdiAyMiAxNToyMjowNSB0aGlua3BhZCBrZXJuZWw6DQo+ID4gcmV0X2Zyb21fZm9y
aysweDFmLzB4MzAgTm92IDIyIDE1OjIyOjA1IHRoaW5rcGFkIGtlcm5lbDogIDwvVEFTSz4gTm92
DQo+ID4gMjIgMTU6MjI6MDUgdGhpbmtwYWQga2VybmVsOiAtLS1bIGVuZCB0cmFjZSBlZmNmM2M2
NjI3ZmY3MTY0IF0tLS0NCj4gPg0KPiA+IEFzIHRoaXMgaXMgbmV3IGNvZGUgaW4gNS4xNiwgSSB0
aG91Z2h0IEkgc2hvdWxkIHJlcG9ydCBpdCB0byB5b3UuIEkNCj4gPiBoYXZlbid0IHN0YXJ0ZWQg
ZGVidWdnaW5nIGl0IHlldCwgYW5kIEknbGwgbG9hZCB1cCByYzIgdGhpcyBldmVuaW5nIGFzDQo+
ID4gd2VsbC4NCj4gPg0KPiA+IEphc29uDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBJc3JhZWwgKDc0
KSBMaW1pdGVkCgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNv
bmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNp
cGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3Rs
eSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVh
c2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K

