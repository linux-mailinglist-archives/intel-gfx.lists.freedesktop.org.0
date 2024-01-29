Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDBC83FC04
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 03:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3401F10F528;
	Mon, 29 Jan 2024 02:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D9110F528
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 02:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706494111; x=1738030111;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dN7pmT41H64NSrnN1HSCbh30w0zaIwRzRTx3dumNf7I=;
 b=R6i41Vs8ZrGYnxcgrVzMtYNsKqIzwZ0DNA02PN+KFiUdiQgkCllTzfBY
 b1HERw315zD0+CSmJlipWctWNuDreO9frlsl5dAacwC0q0B6V0/o7X9WZ
 iPoCw1tOyXrPWfxonaUHNuyfuxIyZY4npoObBFj8b2IzhU+u+BBwW2kn3
 dH/ZwKnyhiIMH/ivIgNEb1BilP2co2bqo9KHhP+hMmRDcNavjVyjCR516
 66LTC+V5b0/FUDVbZDs/EKz+gMIUW98wsWzrRtjGXVTIvcojrimG4AdTU
 82uEKOJjabqPAkm4ptymNgf9mUWNtGeqLH63dXoH0irg2yXGzANgvkbdx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="401694673"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; d="scan'208";a="401694673"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2024 18:08:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="1118788599"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; d="scan'208";a="1118788599"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jan 2024 18:08:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 18:08:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 28 Jan 2024 18:08:24 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 28 Jan 2024 18:08:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iHjdYKBsZkI6Fr790yxdUiamr7Zf0By9JEw5BRvqXRJ6VoJQj89PsdYV1+ELiUIHgc1jIDDxtYSgwNFCfqJrZ61U6tUK4JyBLCPxQwaQS1hWPjc2Ow/DHXpUUhWclL274qxpP+w3JMHJ9Wt5tRrYuoC1UqxJYoMRvxOlaFRg3rtiKfpYOw8pUb+kLQmNEHWFcilKJsn/AfkigFscunYBzHYB4rYOJBNi1aiMuS5v9PByNfjl/yaZoGMncuHVwXFr8g14mVvUBKHxGH0HSt8uP3QZwZYqizjQ1Oa9+wl2AXLyu0O59EpVcGjevLI2wJMSD/GQiwXHlXGeYPwAjW21vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dN7pmT41H64NSrnN1HSCbh30w0zaIwRzRTx3dumNf7I=;
 b=AZlnPruASR5p3IuYjgo9XcQ946KA0D3yXKvLUma4BF8n47fgkOuPnsxNMWHmGvcagBoJXLUgNBpcit8J0bWx7btdlmzPQq/jPJpIEB5TrkuE8KOBfvRuTrngwkEZDRdqsVgVWl9DswFzvRZv310pNLi+cCS7DP4SIhj9iYMCVTh+/NPltTSvAeLNdiNsqEqm/3SMc4Ygf5Kj+wRBAU9q6zADiqj+oOsnDnq4/l2YCmQMgbdQCh6JQCYJzcyoHdycHZ6JPX+EaQz/YD3c2809VoFO2h8EI67+FL9CMObClqylTiX7Wn9V9nDe5hrpA3eb3Z02htgBnAtsI7h4+uJ5NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7921.namprd11.prod.outlook.com (2603:10b6:930:7d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.31; Mon, 29 Jan
 2024 02:08:21 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 02:08:21 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 3/4] drm/i915/alpm: Calculate ALPM Entry check
Thread-Topic: [PATCH v2 3/4] drm/i915/alpm: Calculate ALPM Entry check
Thread-Index: AQHaP+GpVZ2c+1HVJkqa/W07rB4vcbDoy37Q
Date: Mon, 29 Jan 2024 02:08:21 +0000
Message-ID: <IA0PR11MB73077C177C1DDBB553CE8D9CBA7E2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
 <20240105141504.2808991-4-jouni.hogander@intel.com>
In-Reply-To: <20240105141504.2808991-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY8PR11MB7921:EE_
x-ms-office365-filtering-correlation-id: 01b7f928-780c-48e9-d1be-08dc206f2adb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kee2us+0/iUe+dn4lTJVDtT2k49ZRrPCyjUrW2StEeqocIjY/kzLXo3MQ1MmpAsKqtAGQnO7r6YKoLqftLTkH3G4mE6DyTlUlmxw+7xGr6ZLnQ5fV15qbNyTL6RumksvJ3y7P/wjPu3K21/lXJsBdYb64X/AfZSCas9EhgQjX669iFU6o6zLGPaPQhwETchVivIx97GtGMzKHA/YPNHxOrBt4kT6QhB84FnyRWfw6iQvhWCB5ATAg5/Qay6VjZ03O/il/gpXUQL20lcNVk7/fD0vI/bc1wwbk/96ffXDOhJ7k/+WzvgNJLDZkosN6DehfZoo5YiqdDls5sgkJ8WgUh+UAYFZOMuxcOn6ex6lIzoJOkHgNDXJzPdN6amaWz0s5FNXAf0Bto61URY+JbR7PTnT9tZi1fdvRyOjN9MkTiifQguI3ZDVY0mCQmWlG2tfmkYRK+K0W8Q0wEpZSGGDj64IfISok7SN6WykW0tuuXEC+PrG3oQkJPk3rgXS4+hFuVE0ScpUSTDNwFMK+H7RXEwn6orBR2X2Y7sZNEBIAJzH/GgE27o5tbh9xhxS+Frins3q0YuEKi0KTE93ZIz5di/Inb4SgEdaaoBmCU2uWJM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(366004)(136003)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(55016003)(41300700001)(66446008)(38070700009)(316002)(64756008)(9686003)(478600001)(53546011)(6506007)(7696005)(83380400001)(71200400001)(38100700002)(82960400001)(122000001)(66476007)(66556008)(5660300002)(33656002)(2906002)(66946007)(76116006)(86362001)(110136005)(8676002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWJzTDhoMUgwcGQvbVZBTlpqeHdaMndPT2JVZmNEL1FUUjV2TkVyRDJ1cUlF?=
 =?utf-8?B?Vy9lSEVQK2hVbCtYTm9TM3RSWGl1WTNhVy8zVDVkUnJvbzhwNXhtTnZaMjJR?=
 =?utf-8?B?b0pyR0JxSWp3OGdpVHFodU9rYjNaTXlJZ1JOanRhenBWc2M4RkZEQW5GMmg4?=
 =?utf-8?B?TUFTaUI5Y3F3OWYwNHhXMUVQeU9rLzFhWXpBa2V0SFNkWkdQd1BkbnRKWUV1?=
 =?utf-8?B?dnZxTzJ0aHYwTkMzS3d5WERZM1VybFc4SE1MdGZTa3BlcldNc05WQnhMTWpX?=
 =?utf-8?B?WFcwQ2Q3bWhJREYzMVFJUm9ZVml6UVM2OWEzZDFSQlp5VWtyQ2d4NVcxdlpt?=
 =?utf-8?B?UEd5ak9IK09sdHBIV2hTRDZuU1FHNGFBRGZ1cEF2S1U5KzZ1UEJvdkxxc3ZU?=
 =?utf-8?B?ZVVMb3lNZzRIbjMyNDQwcHFpSktIK2pqaDhEL0ZvQzNudXUvaStBVTJvWWt4?=
 =?utf-8?B?Ly9aWUhMR0ZsTVJLN0x5TlFyZnhiaWMxSlY2dXRHTkd5aU5MdmJpblhPamFJ?=
 =?utf-8?B?SnhLdTQrTlBSdmhsMkIvZWk5c3o2SVBuVDlzaVB1M1BuTTZIMHUrN3FjdFFn?=
 =?utf-8?B?bzRhWmc3RUplWjlER3F1dHFBek5tVjNGTnlvUXUzekpZakk5YW5McXBvSUMz?=
 =?utf-8?B?V3dkWElhRitSZkM4dlBIZld1clk2Tzk3bWFFbHRZREtzbG1sNWt3ZjN5OVBU?=
 =?utf-8?B?dXk1b2xLTlVyY0pqMkdBMUY5TWplU3pJOUloMnpibEtRZjZzK3MzWTgrRGMr?=
 =?utf-8?B?QmI0NjQydXkxVXlRaTFIdnpoTDNJaUd3K3lRZFBkS3hsYTNtTlQvaUIyNnFV?=
 =?utf-8?B?YkF6aGpsYml4NnQwS0RiUEZwa2lkbitoNFRaNmJEalo2bUlxYWdGb2JiQklM?=
 =?utf-8?B?VGxlR0JEYU1sSHNmOHBZeUM3N0hUUjR5aENZdmg2RzJQRERvZ3ZpVXVCQTRX?=
 =?utf-8?B?RVVVRWRDNDRoWlVFZzNrbjR6SENWRVdIUlJXc2tadEErbXJwdlpkWk5oUDhk?=
 =?utf-8?B?MHJaZW9VcWNKaTVucFkySWlHQ0RqVTl5aWpUV2RmWGdWSkRoWWJLK3J1cm85?=
 =?utf-8?B?d0RIRU5PT2h5YzZyMnU1cFYvUlkvSndKQmxEYm80bjA2b1VYckhmYmdpYWlM?=
 =?utf-8?B?cGttSEh3K0N4Z0g3UkcvUFByNVhxVGlzUmdmZE1MMUJDenJvM2lhc3IrMHFT?=
 =?utf-8?B?ck5XbnExVkFvaFhmN0s4bmxXdTEzdDRlSHZsQW1uMVNZZ2hicHNVM2tIT2d4?=
 =?utf-8?B?Mmg1WTgzOEs4K1ZZVzh4L01TSkFFcm9ycmd5U1BvVVc4SUt2dXdmZTVqM2du?=
 =?utf-8?B?eHlrd2x2U1AzaUN2MTF4NzA2VDhrVXNwNWVQK2xhL1R0SWFxYlpSb3c5UFRj?=
 =?utf-8?B?a3llTWNIcGJJRDVHeTdVWEM2S2xRRkVPZEliSHo0Mk1sRzFtaVhTdVF2Y2tF?=
 =?utf-8?B?L0VIaW0zc1V0NUduZy9kSUQzd2hzNGlRQzAzWGtMMjVhb2Q4OFMwa0NaWTFP?=
 =?utf-8?B?KzVZTnpabUdsNDNkL01jNkdHbEV6WHA5NlpXZCtkeUhzQUlZaFFVemM2SkJQ?=
 =?utf-8?B?TjQraXpYMCtYU3dUekZnZGVSQXRRMElxQmFjaE9iYmQ0alhOWVRrQ2tZbWJH?=
 =?utf-8?B?MVlIU214bDFVdnpvUjFOdStzaGlVRm5jUndHWEhLU1FiU0NYZTlBd25wUWhz?=
 =?utf-8?B?cnFIV1B0Vkh6Q2dycVoxc0JXQ0xCVTJabEN3cTRoOVNndDZwdHBvMmdrVVRz?=
 =?utf-8?B?V3RsOGRIMHVWVVFZYU42TGEwdUU4Z2FnZ3pRMUhxRFlVdUxmZTF6NmRnVnhD?=
 =?utf-8?B?amVaNXJsdU5GUE1vbGVqTFUrOEVpWjk0QXpMamc0UkU0S01EU1htb0c5L093?=
 =?utf-8?B?Ty80NC82bG5xR3ZjL3hkSFIvc3JPaEQwQUx0Z040bjJ4YXhlUzJ6WDdodmpy?=
 =?utf-8?B?OWg3UzFZNEFnbEJ0OFlMdW9CR1l0a2o4ZEFsTVNyZityMzFVT213Z2VnaVNV?=
 =?utf-8?B?eUZ5UFFNOVc3cmJFcmtPOTFoNGRYenZ3T3VPY2YvUlU5Wnc5VlJEVjdPRitM?=
 =?utf-8?B?MStaYW1MNWJSeXp4L25LbUJIT0s3QndSZUhFOStLSUFQVHZXYzRXd0I2ZDBp?=
 =?utf-8?B?Sjh4UUxERStTSzFrNTlpYmlOdVBVZU8wSTdsZjJvM0RmQ092VG1ITUMzK0hC?=
 =?utf-8?Q?Rkg+0NWfVOL0Lf2m/5mf/a3knX+2xSNvnwHPOK7w3AeN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b7f928-780c-48e9-d1be-08dc206f2adb
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 02:08:21.1903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KtWPeSXFkbiJ5ABCMBg2r2+KdiOF0KPy56mkX+W/7SPRt/y1fzBnVwwMu8lK5DbJ8VdW2LrPmG+UexQFERJx7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7921
X-OriginatorOrg: intel.com
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDUsIDIwMjQgNzo0NSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
My80XSBkcm0vaTkxNS9hbHBtOiBDYWxjdWxhdGUgQUxQTSBFbnRyeSBjaGVjaw0KPiANCj4gQUxQ
TSBFbnRyeSBDaGVjayByZXByZXNlbnRzIHRoZSBudW1iZXIgb2YgbGluZXMgbmVlZGVkIHRvIHB1
dCB0aGUgbWFpbiBsaW5rDQo+IHRvIHNsZWVwIGFuZCBrZWVwIGl0IGluIHRoZSBzbGVlcCBzdGF0
ZSBiZWZvcmUgaXQgY2FuIGJlIHRha2VuIG91dCBvZiB0aGUgU0xFRVANCj4gc3RhdGUgKGVEUCBy
ZXF1aXJlcyB0aGUgbWFpbiBsaW5rIHRvIGJlIGluIHRoZSBTTEVFUCBzdGF0ZSBmb3IgYSBtaW5p
bXVtIG9mDQo+IDV1cykuDQo+IA0KPiBCc3BlYzogNzE0NzcNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAzICsrDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAyOCArKysrKysr
KysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IGluZGV4IDg4OWE4YjM0YjdhYy4uN2VkZGVmODU5ZmY0IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiBAQCAtMTY4MCw2ICsxNjgwLDkgQEAgc3RydWN0IGludGVsX3BwcyB7ICBzdHJ1Y3QgYWxwbV9w
YXJhbWV0ZXJzIHsNCj4gIAl1OCBpb193YWtlX2xpbmVzOw0KPiAgCXU4IGZhc3Rfd2FrZV9saW5l
czsNCj4gKw0KPiArCS8qIExOTCBhbmQgYmV5b25kICovDQo+ICsJdTggY2hlY2tfZW50cnlfbGlu
ZXM7DQo+ICB9Ow0KPiANCj4gIHN0cnVjdCBpbnRlbF9wc3Igew0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMTcwOWViYjMxMjE1Li43ZmJkMThm
MjFjM2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMTA5OSw2ICsxMDk5LDI4IEBAIHN0YXRpYyBib29sDQo+IF9jb21wdXRlX3BzcjJfc2Rw
X3ByaW9yX3NjYW5saW5lX2luZGljYXRpb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kDQo+ICAJ
cmV0dXJuIHRydWU7DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgX2xubF9jb21wdXRlX2FscG1f
cGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICsJCQkJICAgICBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICsJc3RydWN0IGFscG1fcGFyYW1ldGVy
cyAqYWxwbV9wYXJhbXMgPSAmaW50ZWxfZHAtPnBzci5hbHBtX3BhcmFtczsNCj4gKwlpbnQgY2hl
Y2tfZW50cnlfbGluZXM7DQo+ICsNCj4gKwkvKiBBTFBNIEVudHJ5IENoZWNrID0gMiArIENFSUxJ
TkcoIDV1cyAvdGxpbmUgKSAqLw0KPiArCWNoZWNrX2VudHJ5X2xpbmVzID0gMiArDQo+ICsJCWlu
dGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwgNSk7
DQo+ICsNCj4gKwlpZiAoY2hlY2tfZW50cnlfbGluZXMgPiAxNSkNCj4gKwkJcmV0dXJuIGZhbHNl
Ow0KPiArDQo+ICsJaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLnBzcl9zYWZlc3RfcGFyYW1zKQ0K
PiArCQljaGVja19lbnRyeV9saW5lcyA9IDE1Ow0KPiArDQo+ICsJYWxwbV9wYXJhbXMtPmNoZWNr
X2VudHJ5X2xpbmVzID0gY2hlY2tfZW50cnlfbGluZXM7DQo+ICsNCj4gKwlyZXR1cm4gdHJ1ZTsN
Cj4gK30NCj4gKw0KPiAgc3RhdGljIGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpICB7IEBAIC0NCj4gMTExNCw2ICsxMTM2LDggQEAgc3RhdGljIGJvb2wgX2NvbXB1dGVf
YWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJICogaXQgaXMg
bm90IGVub3VnaCAtPiB1c2UgNDUgdXMuDQo+ICAJCSAqLw0KPiAgCQlmYXN0X3dha2VfdGltZSA9
IDQ1Ow0KPiArDQo+ICsJCS8qIFRPRE86IENoZWNrIGhvdyB3ZSBjYW4gdXNlIEFMUE1fQ1RMIGZh
c3Qgd2FrZSBleHRlbmRlZA0KPiBmaWVsZCAqLw0KPiAgCQltYXhfd2FrZV9saW5lcyA9IDEyOw0K
PiAgCX0gZWxzZSB7DQo+ICAJCWlvX3dha2VfdGltZSA9IDUwOw0KPiBAQCAtMTEzMCw2ICsxMTU0
LDEwIEBAIHN0YXRpYyBib29sIF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0K
PiAqaW50ZWxfZHAsDQo+ICAJICAgIGZhc3Rfd2FrZV9saW5lcyA+IG1heF93YWtlX2xpbmVzKQ0K
PiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCAm
JiAhX2xubF9jb21wdXRlX2FscG1fcGFyYW1zKGludGVsX2RwLA0KPiArCQkJCQkJCQkgY3J0Y19z
dGF0ZSkpDQpUaGUgZnVuY3Rpb24gbmFtZSBfbG5sXyoqKiBpbmRpY2F0ZXMgaXQgc2hvdWxkIGJl
IGRpc3BsYXkgdmVyIDIwLiBTbyBjYW4gdGhpcyBkaXNwbGF5IHZlciBjaGVjayBiZSBtb3ZlZCB0
byBfbG5sXyoqKiA/DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICAJaWYgKGk5MTUtPmRp
c3BsYXkucGFyYW1zLnBzcl9zYWZlc3RfcGFyYW1zKQ0KPiAgCQlpb193YWtlX2xpbmVzID0gZmFz
dF93YWtlX2xpbmVzID0gbWF4X3dha2VfbGluZXM7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
