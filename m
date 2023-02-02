Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08364688544
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 18:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E19510E57A;
	Thu,  2 Feb 2023 17:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5845410E57A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 17:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675358396; x=1706894396;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NIzsAKl30xSu4i7gWEm2jsrYt5v5fWcY21CDTINSBuA=;
 b=Mc2AaJR462AHmew0NNzN4QyWG5bVtWBN7dHWZVJuWIfpBG/zo76DMod3
 xZeIlmRcpy4CWPuM1iXlrFhPOFKqeRsqF6WDNQILHpk1LT6jyOY9TFKPG
 9pbFDm0fTV3iqP/o6nVg+e4DPNbI9Cv99BXcMBumNUpcwGKBy9XUoFWrV
 YMxddxZbAliK6u+pjznL95ws6yoZNUet5VXPa8KH91eITut+4L7LAlhk7
 SwfBynPpbWqDrLLJDpXJaQmiLHgqc1Bm8gXHIe0iD2sHleEU1uQhE3RRe
 XiV0WH+wZqVYOmAfKU9ZycgaOPZ/s6/9VSZGj0crYaW0J7WotBLFXzQTE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="329792993"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="329792993"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:19:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="728937118"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="728937118"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2023 09:19:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:19:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:19:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 09:19:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 09:19:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+CbWijnrA3aGfzejn8jVTt60s+ege07tIctPCl080FQFrF60n6CHeI/POt78Q3+eEg8O282vWdYhCu2N2MQ86lPA10W4jZ6q0kgYEYRISe0cJkVdUPhV4by7VHH7FmfFJqZcN+im+EMbqGDewZIN8o5GzkG0cQyJNrQnQJChJtpUgB/GkztlRJfKuOMPPphpP/uZpFfwVRrBTDvc2sawhaeQOI1Mn6Jkw/79r6YauyWFovl/t3lv20KlOThIszSJmD/u3EqftuAoo0sM6Ef7BekiD0bO172A7Ajy3Jq8klRTyCbZ56jdrNP4i6HxtWvdQ+Icw8FpjMja/taE+Ggcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NIzsAKl30xSu4i7gWEm2jsrYt5v5fWcY21CDTINSBuA=;
 b=YXUJH6/pdymL3+YWPIIp1ahaSSsup3f/fq83WsJDgCq5i34f9NVV2HZ1mC6eN5qe2/u7CLXRcs/i3/gczHAdySLsjK5PHxwQZITTJVlv6wpNQqdlZ/bId2i9x0Fyu6zQCUS7ANnoO4iACPDshpPbxpHRa0xYkzr9xXj6TZKBlrbUV7rcAQAREF+86Kjy3IG5A2njisa1gfzfJUcm0mfYHG+Al7Tt5euhyn6GoVoyEfTsgtbsk6iR5kkz6XPhDSTLSTNyhwdHmq0xyJCzjGGb4nNe4qGMq9oAv9MeRlZo+C8nzbGxBORoHsg3NIiPzgGS2BCIL+q8AIw0N6O35uzScw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7339.namprd11.prod.outlook.com (2603:10b6:930:9f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Thu, 2 Feb
 2023 17:19:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Thu, 2 Feb 2023
 17:19:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 07/13] drm/i915/dsb: Nuke the DSB debug
Thread-Index: AQHZK1pTp39mgZC5j0O9CEEnWUVi0K67/hLg
Date: Thu, 2 Feb 2023 17:19:43 +0000
Message-ID: <PH7PR11MB5981B8CB405EAFDAB634C31CF9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7339:EE_
x-ms-office365-filtering-correlation-id: 42874c0b-5acd-4c74-8e8b-08db0541ad27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5zT/mOA+Nm9mPaHHNsxEZGkznFWtMHMrfMHY2yhpJ9gvmkLbLcnI720BhXx9ghNN4/BUBAQmzUlGQGD9Z0SDyOcbJ7C4h5bIVi/xzuGTRf7Lyw/0EUJShX4td7TiDRVAMRxUVqSAEfvX8R0xsp9GBAefu9XeMV6rASG3vYirnGFvyBPFdWvX73A0rdmNvWCbin0PyssFBb8p0RefGVVQmYcWYJIbeH6p98UXI9dOH8AMwXePD2dnho7w3FyrrI1iBjiHiznVdLvuGgTMxZ6xW7+c2LW0plvAzlh9amRNKtYVi6yh5BX7w2U6Qpq4miPTqNTngPvx0RgRSUmWPcjNW8LnkMsSYcGxj56LPRBqVs9wkiJ0Z3CFcqpZwVoAw6pONG7of+2RekWNkuXSkhzY+xTADsFVrCwi+GDW6DK3yPekxWKft0WASuLif9ZTEhPOPtXiX6RxQQPbiPnsOnMQJKrqKQqXoKENk6g//xIcCIlwr4mUWqtoo9kiLpFyTOTZ0hGB0fWhpsuhtOUPfHvukeANa7LJ1/JBZlRxi+GovbVGILFjIQvaFgEBPdAZU2WV+FZABzA/fdeotDqg1mG6SJwjQq0uR36MUwISyBNbXbSQGjYZJxPyrVlr+95lRY0kKVR515ZXDOcAIqX0EUpkyUAid+OTRqMl75ZDfLI6YeyPqT9xrJEWjcX8amk2YYgTsnWyJtUBhigKVqf6lNp2tQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199018)(110136005)(83380400001)(316002)(2906002)(52536014)(86362001)(41300700001)(38100700002)(478600001)(82960400001)(55016003)(9686003)(53546011)(8936002)(26005)(5660300002)(55236004)(186003)(76116006)(38070700005)(71200400001)(66476007)(64756008)(66946007)(66556008)(8676002)(6506007)(66446008)(122000001)(33656002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjYzdGl0UEtrMHJqWTMzRkw4aG9GelNaSm9iTlFPdmMzd3FtTmdQTGpWMFgz?=
 =?utf-8?B?SFdlMFRVZVBSejF6dnk5VWFQWmhrdUF3b2FNemwzN1NzaVRDOE85NVRtbXNl?=
 =?utf-8?B?cXh1Snl1dWs0QWswK01hc1BtUUdwck1mR2lXRERVSmxnOGhRUDhKSmgxWnFR?=
 =?utf-8?B?UkxpTXQrb1pLYWIrQURWdFc5bHFLRkJleHc4KytLeWxCdGVpT3dKVkN2TjFz?=
 =?utf-8?B?cTAvK1AyWjZaZlRxRndtOEkvV1FBK29BODVxZmRzT2lqZGxXOEVCZ2NNYUs1?=
 =?utf-8?B?VFh3cUg3cjU1d1ZzcTRZc1gveWlxeHBsZXp5MWNua1cxQ3VtaXJYVGplcjEy?=
 =?utf-8?B?ZncwUDVZd1BIS0ZDNkltcjFLdC9Gb0F6OE5CN2tjMU5uZnFKZkdjdnRNRmoy?=
 =?utf-8?B?bTgrODJrUVJJQ2hCeXdqRmx2cWUvZXhvaU5OcjJXck8zeXYxbWZ2WUZrOFhn?=
 =?utf-8?B?YlRKRUx4cW1rS0tnREszYVFkVzZ0SFNiYWozT0k1TnFJWHdncDI5RVFOM1ov?=
 =?utf-8?B?c0lya0JSMFlVZzZ1WldNUnlVcU04S2dUMkJQTmRaY3UvaEZaTTNUWDRNZEkx?=
 =?utf-8?B?alpOSUNTVmlGNm5BMEpsaEQvRjZ1QStOWTFKbktVaVhJbVhZaG02ZllDNW5E?=
 =?utf-8?B?MzBLaS9xUUdRRUswazRUOXpPcU8wUzFlbDFhWDUyZ2hvUHRMYWsrbzh6eVlW?=
 =?utf-8?B?SW1aYk0vT2lOSmd5SzNzTktzRlV1bDRCeWJLOExkaENXbThhUTNXQmlmVFRU?=
 =?utf-8?B?SmU4Nk5ZR2lCQ1NsWUJZUzRDN1Q4ZU1QSmlkT2N3ejlzSzdiOFMxQnN0VzNu?=
 =?utf-8?B?RGw2cy9XU2ZVd05iNHpZdTdDNjhaeEwwUjhtc2VCdktYcEJUTWFCT1FTQ1Vw?=
 =?utf-8?B?K0pkUW1EeDVKS2RiKy9aR0hycEp1MmpwZnBVdWlZT20xQ0U0SEpuVUk1NWh3?=
 =?utf-8?B?UnZBWGV3OHlEazR5MFJmZ3lFalZIMHVzZktjYzY2elJlVzdWbUpEYmpFUGNK?=
 =?utf-8?B?bFlsWDcvUTRUTER5YTlwbC9zdmMzdnZMVjkrYUxhYm82VXA4cmlaMmFFVzY0?=
 =?utf-8?B?emxZMFJ3NGoxc0Zob3hvYm12bW5BQ2VQVjVaekVNMVFpNENyT0pVR29CV1VG?=
 =?utf-8?B?eGlzQkNuMFdtT0l4WnU0bFlFRDZCV1Y1N2dNUmIyQUxuTWVrTElJQ2NUczI0?=
 =?utf-8?B?elprZlE0VHl5N0xSS3d1SUFCbkZOb0tkTHVZeG1meC9IbUx0cHdYdjk2Umpv?=
 =?utf-8?B?RGVlSjBSKy9CSHVMblU2MTMwRDcrR2NRRmVUKzdpZnFMTGNranhQZEQrV3Mr?=
 =?utf-8?B?ejBRNlVlZjUrRVVyUDlWeGNpektUcFpRdHVnNEthWWpLemRwQWN3dzQ5ZmQw?=
 =?utf-8?B?TEd0cUk1OHJjUDhHaUhIenlmdENFaWpGeWRXczhHSHkxTVBIK3NQZGtkSmd4?=
 =?utf-8?B?b09XSVpIOVZ0cXBycDlWZjJERUo5M09CVmFFSkEzQlJiSHpZeWtJSDlYWkMz?=
 =?utf-8?B?VzlTRmV1MHFXTmY0Y1lpTWd4VzZPSkttWmsxQVFNdHpRTm10TUdTcklEOVJ0?=
 =?utf-8?B?NTNKOXoxZGMvZGltbThnZVlDVUZ0NUgzbnh3STZCMFJiV1FTRDZBWnlYRkJB?=
 =?utf-8?B?V3NTcEpIQmNYZzlPL3pMVXR2cXByczFZT1dXVVJLeWpEcDdmVW8vcFIyYmJD?=
 =?utf-8?B?TnU1ZDR5QmhwV2lwU2hrTkp3QjZZR09yS3QyenFFRGhhMWhVOEFJTUw0TVMw?=
 =?utf-8?B?Q0hLbzJtQU1zRy8zWnBHTm1NYVY5c1RQL3NJbkVDeHZXUU5LQ3FlcnVOL2sy?=
 =?utf-8?B?bXc2Nmg2YU1ZckpyZW9Uc0RsTE5mWXZFWjNaSjhPa2RSUmxnLzRRWlJxQ05p?=
 =?utf-8?B?Q2pJRGVKYXFCK0k2R0xYckM2bmJDeEFZMlllOHBrVC9NVGROalBVZjJlSFBu?=
 =?utf-8?B?Y0s0VWpwRGU3Mms5ZzFOeDcxcDk1VU1wOStPT2RjRG9EM1FHUjI5dkFrZG5X?=
 =?utf-8?B?SmFFWW1LM0djdG11WWVWeDJZRW5kZjF0MnFJRkt2UUZEVnFuZjM5eUcyUEcw?=
 =?utf-8?B?Z3pFQUoyenFob3YxRjBCQjBOYW9sZnNveUZSbW12aVZGb0lPL2tIMnNXalhF?=
 =?utf-8?Q?rVgjmwmUi7Ll63+AYziq7bUEi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42874c0b-5acd-4c74-8e8b-08db0541ad27
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 17:19:43.8808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3brpK8vZRqOKZwIfpboEJzLUBhlORLLlPyBjjjmg0ftPUPsz6YD8Jz7I2BqJnmOfth8xc5MO7tfX0rjRkhexZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7339
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/dsb: Nuke the DSB debug
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDcvMTNdIGRybS9pOTE1L2RzYjogTnVrZSB0aGUgRFNCIGRlYnVnDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UnbGwgYmUgd2FudGluZyB0byBzdGFydCB0aGUgRFNCIGZyb20gdGhlIHZibGFuayBl
dmFzaW9uIGNyaXRpY2FsIHNlY3Rpb24gc28NCj4gcHJpbnRrKClzIGFyZSBhIGJpZyBub25vLiBH
ZXQgcmlkIGlmIHRoZSBkZWJ1ZyBwcmludC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdl
ZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgNSAtLS0tLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggNDM2NzkwOTBlY2ViLi45NjE1OWQ2OWJi
ZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBA
QCAtMjY1LDExICsyNjUsNiBAQCB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2Rz
YiAqZHNiLCBib29sDQo+IHdhaXRfZm9yX3ZibGFuaykNCj4gIAkJICAgICAgIGk5MTVfZ2d0dF9v
ZmZzZXQoZHNiLT52bWEpKTsNCj4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFNCX1RBSUwo
cGlwZSwgZHNiLT5pZCksDQo+ICAJCSAgICAgICBpOTE1X2dndHRfb2Zmc2V0KGRzYi0+dm1hKSAr
IHRhaWwpOw0KPiAtDQo+IC0JZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IC0JCSAgICAi
RFNCIGV4ZWN1dGlvbiBzdGFydGVkIC0gaGVhZCAweCV4LCB0YWlsIDB4JXhcbiIsDQo+IC0JCSAg
ICBpOTE1X2dndHRfb2Zmc2V0KGRzYi0+dm1hKSwNCj4gLQkJICAgIGk5MTVfZ2d0dF9vZmZzZXQo
ZHNiLT52bWEpICsgdGFpbCk7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF9kc2Jfd2FpdChzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IpDQo+IC0tDQo+IDIuMzguMg0KDQo=
