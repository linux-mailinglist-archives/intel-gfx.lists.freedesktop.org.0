Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3893768BD9
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 08:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E5110E1A7;
	Mon, 31 Jul 2023 06:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B23FC10E1A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 06:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690784388; x=1722320388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=amzziRkl+HR1LvPsy/S4X5wfUj87iRdGv8LR7mUO2qo=;
 b=STHc/ePnDITTxO0ZiNHJy3SBRvzkqo7L+zQumKRoSMALAmi/fyBU46dy
 72XBndk5JPX4OBkLcS39lvAHuI4rTM4/5BIseltZceRDpLQowgshFegbC
 CUUsO9VV7YOzN2x7CfXSEBqdbrFBfhO2/Ge3TEhxwXmbyyg1NvlDzp/qj
 sP177wRZTrwVgmsNCHBvy9qYelx21vgwdasGzS98eqyuQzo6x3JkY+fVy
 ynhmO+5ysddoKRHp9CweqibPamz4D1O7d7vcPeKZUONI24XZnc45Js/+z
 OB+TV95piukfXBBespxmB1trx4bNO/i068qIzuX/vlMkqtfvHXqIt/DjP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="455304940"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455304940"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 23:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="705268932"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="705268932"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2023 23:19:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 23:19:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 30 Jul 2023 23:19:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 30 Jul 2023 23:19:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kEmEvqjTk9vF7LawVnqxdmiDP7ez5RiGoYV4wfyyrL1ABpvPcPxz9ZE9b+8Nyej72OYMqxWdlfUnSvEpybwWy24+K9KywklOdIf65ChabxcKw4S2diohc1ejphh1f2oOvTut+DQ8IuazyPUHJL6vlIHq0YxqB7Kr08OixGfDYQXt3I4C2JuhI+akVcKwgaXU8mVKyRGPJZCk5TydftopQNkptWcBxCdRBr8WCl18M2hDqgew9j9OuIJwX2yTZ15zdnv7ZkAYmH6ra7SLnCD0zW3FCcYU9zOUY+HjFMryaLA1Ee1VPXJbLWUEOH5mtPAeewoL6dbApNSuJrWxFqxLRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amzziRkl+HR1LvPsy/S4X5wfUj87iRdGv8LR7mUO2qo=;
 b=XJXNvnyvzJFhVG7YYKXOoPSKYiDoPRX3zi05zHkRrouk2D/Usd28xICZcqf3sTOn3HJS64ZB/MT5SCEnBP8EwXjDGZlVIy6ArUqgUpuJWOwXXW3awuCMSBAd++k1o+Ig0B+dLssowFzJ9Wsm9UXiP3Dzbu9x0NqqsqtUh8yVXxRlWRT0tIWPMGUkUlzJBivjER1ePTcje8BFFGs9h/y0LS8ooDJBVeoAdbVkGO0F4ZMaMMMSO6bkz14SEZ1wbFnwdaLMCebJqTTfK3naQDte913pnJG6vGxnYeEnxBHK28f666kOB35rMw42v0Tnd2bpOlnR2OS08FcamqYChBPloQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.43; Mon, 31 Jul 2023 06:19:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6631.043; Mon, 31 Jul 2023
 06:19:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 1/6] drm/panelreplay: dpcd register definition for
 panelreplay
Thread-Index: AQHZwVLsqOnaXjk6cUGfyXq/6KNInq/Ta1MA
Date: Mon, 31 Jul 2023 06:19:41 +0000
Message-ID: <e0ee5afd867a784b6e3351064da374e6ced87320.camel@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <20230728124609.2911830-2-animesh.manna@intel.com>
In-Reply-To: <20230728124609.2911830-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7255:EE_
x-ms-office365-filtering-correlation-id: 4f2f74c8-99e0-4b05-e1e2-08db918e205c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PTA/oxNBwtQhTiKtkZhSojqUryCs5CCXVZHE3qRhHrqtGP2bNUCOcee7IzPMeNE52dZmNjf6LJRre/8bxOUF20qAwIlgmCZnNuqeSG7U3tkSrN7Ei5FU9FiKJ1c9StxT7jqWKMfS10KfPCP3o9OxrAU9pg5vXoAlQDXmwzZdkw5btrg9hVmS887PHRohqofK+otSawOKNY1jUx6/svBMFZYAT3+gdozrJYyQZNBAgYhebwoE/YqScq+xYjtfBZ+qYF51eyavH5IXV+x6XYCKxTt1OibSDZg1/BldYyhju4kYSHkhm5t5j5/KO3w/ktsLXwKAVM5u3HQau1aFgme9kUbS795ix4/kCSnFkiidxWPuxyPNYbNXXzicO36d0T0f88zcAguWYswe6m3KDyY9VCyYGrHz0dq/+Ynyuj8NC90EngHEPK1jmhWEFN7DTgW3a//oIjYzd1YQIOXCza646Vw1jxWDbb4aoVmA5POZSWNJ79y8EGf4zr4gZUNygnixWYTKhVaQYImPzNvOLh0DoIzQwOOa63dZnpypLudGekLah+nuHt6bD5h73TAJducpnm/yJpTOr8/CNa+qhtdv76cWP/iLc25RB62DmrTipxy5Q82uGPG0enkO1MRrhxt4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(39860400002)(346002)(376002)(451199021)(2616005)(5660300002)(66574015)(6506007)(8936002)(8676002)(186003)(26005)(83380400001)(478600001)(316002)(76116006)(66946007)(110136005)(4326008)(66446008)(66476007)(66556008)(91956017)(64756008)(107886003)(6486002)(71200400001)(41300700001)(6512007)(86362001)(38070700005)(36756003)(2906002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2lPM0VkSjN4cysrdENiNGp3L2Y3WHl2SlU3TzFGNFg1cUw2cFc3b0lFa2Z4?=
 =?utf-8?B?MC9NRlpYTTNkWUFCME4xQzFzZ3RLNmp4U1hQQ2FEUmFtWnp2K1doQnk2QU9p?=
 =?utf-8?B?RGhNTmUrUlRTVVlPVm4yUjk4QUFJLy9HdmNNTnNvZExUWTRlMzB2NkFGbnRk?=
 =?utf-8?B?VWlGNzRsOHBFL3VncUdwNWtjMHIxRlkxaDdkdldZcndZTVp5ZEsyTVFZVWcw?=
 =?utf-8?B?T3hzbng3YkU1eVN1R01BOE1VMW92WGdLMTNZWkQ5V3lBbVcyaUN6cXdlekFr?=
 =?utf-8?B?bU1TNnV1WmxYU25oSnUzOXVXcytCd1FMb05UTzg0bzdXd0Y4NlJKRG9EQWgv?=
 =?utf-8?B?d2pHdHYzSTVVU0xzeDlaRkRWZ3N4eHFYQzZHZzNFeWZiZEozOUFEVFBQYU1j?=
 =?utf-8?B?OUUvMU8rbTJHbnhLY0krNEIzS0VYOWcvTnNuMXF2enJsUU9xTU9aOXNtVUxS?=
 =?utf-8?B?QkxxTERoaWRuQUtvMzRaSGNad3JlWk9qNkt6ek9wVER1c3ZQT2xtMVhPYmlo?=
 =?utf-8?B?c2VLT0VTL2I3NWJHMmJFUUZNYitVWFlYenh1dml1WVBKeTZhRVJqa2M4TFIy?=
 =?utf-8?B?bzlPOVZDVmlvZWozMlZlVnpHUlRlaUF4Z1VpMVhjbVFqcUllMGVEa2d3bE5a?=
 =?utf-8?B?S3VtYUg0di9sMldQMUlKdU5ZMmxXR3c4QWtpSHltUkRSRXpna0V0bWJQRDlr?=
 =?utf-8?B?RHhpcGxDaXhzT2RGT0Z0cVNON0RVY25ycHdGRlVaeWIxT2d4NHVXTFA2bExj?=
 =?utf-8?B?SHcvSzFUQXNNMEJTYWoyVWVjTHN6QTVUT2puWFNBbTVXbzdhM2JNK3JWM0Nv?=
 =?utf-8?B?K09leUFUblhaNGgrNGNqSE84TUdZYUh4a2hjZlN1QXhoRUZjWTNyQWxuZVRZ?=
 =?utf-8?B?QVZTeEtzV1ZRdFRJSDdiNVJJeWEwQ3hnUXh3NWpDTlNFUVMveFRkMVNYY0lC?=
 =?utf-8?B?MzRZcmd1YUVocmR1SmdhazNPdkJZU2hJNithb3J3NVh5TS9TVU81Q015Vlpo?=
 =?utf-8?B?SW1mVzBVUmpxaDdkZG5aa21ZdHNDcE5Wdlk0ZTgweTF6ZGlXZmlDVmFkeVAw?=
 =?utf-8?B?QWZZZUZramVIREdITnZvN0FIU2pRNlU3bzRUdE1xaEZEUWU2YiswM05JRUwx?=
 =?utf-8?B?RGFCSktmQThtVE1uZVVwd0dnU3A4amoyZm9LdWhmb2JUWnNiRzRvSUdKZ3pS?=
 =?utf-8?B?c1BGbUNldlpEOHRoc3VnT2pmanVLZFUwNDhvVk1IYmpDbmc5OXk3cmZUT21B?=
 =?utf-8?B?VGgrWis0WWtrOXhiSnk4Ly9nREM0WG8wd3NjNy85MGh5cFo3dmVVTjdCV3pj?=
 =?utf-8?B?czJSdTNmQ1o5bnpOa2JoZE9OdjJic3dURFlnVVZKOCtaZkpiSEZyK3FoNVMz?=
 =?utf-8?B?Y2srYWZhRjVabGx1SEh0L0xMVWM4N2JrTW1ScE4raXVSRTZJcHB1cm1QMmMx?=
 =?utf-8?B?TndNbTVtWm9vSlVoeDZkU2dQb2Z1TWpoWmFzSmphRG8zZk5VK2JXakw1V1Ar?=
 =?utf-8?B?TXNKbUFHYUFUR0NhdTFMNEd4dnYvcU14ZEFleFBzRjl6bjZJRloxY1lMVSt2?=
 =?utf-8?B?aUtNa3B0b0tZUkdXeGdscFBiUVVxZlVEc3pWL3dmbktZNnhTS0lzc2Z2Q09q?=
 =?utf-8?B?dnNPV0JYY09kZkZNQ08rQ1NRdE1aUG1PRUpFeW9UMHMrVFVQT0NvdXdNMmRB?=
 =?utf-8?B?ZXZZVDk5LzlxK0Q0UExCNW5ramwwUTJpZlA5YnpCVGxVSWlkbnpKOW56TGxI?=
 =?utf-8?B?RUlZU1JObGJyck9iZlNrOURRZS9mejNqZ05aT3ZBOEZvdkcwcWNiT2dPV2pH?=
 =?utf-8?B?NTMxOUk3TWhIcDlwUFRVQXJReDNXbGxjZHdNVnBGWWFWQW44T29Cdm1PMmtO?=
 =?utf-8?B?YzFLSmdDbm1uNjJ1b3NjK0FseWhacGt3TDdQN1l3bHFwVDlXLzUrcUphdVJT?=
 =?utf-8?B?RUN0QlA1dzdCa3NHZzliRlNRWDFodnh1NjcwRzBrVmg5VGdnSDYxblhPczBB?=
 =?utf-8?B?TktxSXZ5RUlBZ3RaQzVZS1NaNmw4bXdVR1NkMEl2YkRDV29mSVBQSVFoNjE5?=
 =?utf-8?B?aU5DL0FKUHc5ZU0xcURLZXRraS9lcUZqclN4blVNNTcrakRFY0NwSXpPaVVh?=
 =?utf-8?B?K0VQdjBCcmtyYzZSV2V4Zm0rMnhOS29OTVZzVHRnOGFhK1ZxakNmbUttUHpZ?=
 =?utf-8?B?UEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0B6B9D00B3739F48B18E84FA6615C630@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f2f74c8-99e0-4b05-e1e2-08db918e205c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 06:19:41.6951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 54NKVo20095DzqEquBnnXPNCacoNJdoaYvM1DI4w6PLhY6D5fMcX2ZI44wC7pklZyRC5GLlYaJb5E0Kr5OY5OwbyL6s1CTT/rTYNS7kyC8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/panelreplay: dpcd register
 definition for panelreplay
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

T24gRnJpLCAyMDIzLTA3LTI4IGF0IDE4OjE2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IERQQ0QgcmVnaXN0ZXIgZGVmaW5pdGlvbiBhZGRlZCB0byBjaGVjayBhbmQgZW5hYmxlIHBhbmVs
IHJlcGxheQo+IGNhcGFiaWxpdHkgb2YgdGhlIHNpbmsuCgpJIHRoaW5rIHRoaXMgcGF0Y2ggc2hv
dWQgZ28gdG8gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZyBhcyB3ZWxsLgoKQlIsCgpK
b3VuaSBIw7ZnYW5kZXIKCj4gCj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFA
aW50ZWwuY29tPgo+IC0tLQo+IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaCB8IDExICsr
KysrKysrKysrCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oCj4gYi9pbmNsdWRlL2RybS9kaXNw
bGF5L2RybV9kcC5oCj4gaW5kZXggMDJmMmFjNGRkMmRmLi5jNDg2OTYyNjZkMjMgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2Rp
c3BsYXkvZHJtX2RwLmgKPiBAQCAtNTQzLDYgKzU0MywxMCBAQAo+IMKgLyogREZQIENhcGFiaWxp
dHkgRXh0ZW5zaW9uICovCj4gwqAjZGVmaW5lIERQX0RGUF9DQVBBQklMSVRZX0VYVEVOU0lPTl9T
VVBQT1JUwqDCoMKgwqAweDBhM8KgwqDCoC8qIDIuMCAqLwo+IMKgCj4gKyNkZWZpbmUgRFBfUEFO
RUxfUkVQTEFZX0NBUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MGIwCj4gKyMg
ZGVmaW5lIERQX1BBTkVMX1JFUExBWV9TVVBQT1JUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoMSA8
PCAwKQo+ICsjIGRlZmluZSBEUF9QUl9TRUxFQ1RJVkVfVVBEQVRFX1NVUFBPUlTCoMKgwqDCoCAo
MSA8PCAxKQo+ICsKPiDCoC8qIExpbmsgQ29uZmlndXJhdGlvbiAqLwo+IMKgI2RlZmluZcKgwqDC
oMKgwqDCoMKgwqBEUF9MSU5LX0JXX1NFVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAweDEwMAo+IMKgIyBkZWZpbmUgRFBfTElOS19SQVRFX1RBQkxFwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MDDCoMKgwqAgLyogZURQIDEuNCAqLwo+IEBAIC03MTYs
NiArNzIwLDEzIEBACj4gwqAjZGVmaW5lIERQX0JSQU5DSF9ERVZJQ0VfQ1RSTMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDB4MWExCj4gwqAjIGRlZmluZSBEUF9CUkFOQ0hfREVWSUNFX0lSUV9I
UETCoMKgwqDCoMKgwqDCoMKgwqAgKDEgPDwgMCkKPiDCoAo+ICsjZGVmaW5lIFBBTkVMX1JFUExB
WV9DT05GSUfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDFiMAo+ICsjIGRlZmlu
ZSBEUF9QQU5FTF9SRVBMQVlfRU5BQkxFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgxIDw8IDAp
Cj4gKyMgZGVmaW5lIERQX1BSX1VOUkVDT1ZFUkFCTEVfRVJST1LCoMKgwqDCoMKgwqDCoMKgwqAg
KDEgPDwgMykKPiArIyBkZWZpbmUgRFBfUFJfUkZCX1NUT1JBR0VfRVJST1LCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICgxIDw8IDQpCj4gKyMgZGVmaW5lIERQX1BSX0FDVElWRV9GUkFNRV9DUkNfRVJS
T1LCoMKgwqDCoMKgwqAgKDEgPDwgNSkKPiArIyBkZWZpbmUgRFBfUFJfU0VMRUNUSVZFX1VQREFU
RV9FTkFCTEXCoMKgwqDCoMKgICgxIDw8IDYpCj4gKwo+IMKgI2RlZmluZSBEUF9QQVlMT0FEX0FM
TE9DQVRFX1NFVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MWMwCj4g
wqAjZGVmaW5lIERQX1BBWUxPQURfQUxMT0NBVEVfU1RBUlRfVElNRV9TTE9UIDB4MWMxCj4gwqAj
ZGVmaW5lIERQX1BBWUxPQURfQUxMT0NBVEVfVElNRV9TTE9UX0NPVU5UIDB4MWMyCgo=
