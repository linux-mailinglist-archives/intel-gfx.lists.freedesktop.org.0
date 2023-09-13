Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5997979F05F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 19:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37A910E4CF;
	Wed, 13 Sep 2023 17:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E261A10E4CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 17:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694625961; x=1726161961;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/rpL69/6S7/DzwRRTD4QMiMGlsq7cqzfpCk+yDKZpwM=;
 b=GhnSW9KbV8y8oDE9IY3qJlR6yKI6cA4Im3Dlg6skQpJOqvV5nruGLsfT
 fjfCCMhQegAFRe2NTOOl17HJit6246SgW3rDY94ruPBQNqOSM44y9+UEK
 pgPGxwXkhCjTQnslfPn3kyW09hNOkraFUhBxmDK/zpbekKYdlX1ITVHpg
 wWusefufqarZAcv4wm0NUHP8btD/+8At07ZhcnO5RjLmXrwpQ1D/yCM6b
 x5oAV3At1OXIk63w1vrdDgSva0WbgJIZ1if3MsuSfAq2gfQyOltGdCaQD
 C3Q1sR5gtguFJ2OB2vPVSB6BKjUu3nnUFdzIihQg5XHplGgjeDjPG9HrZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="363764178"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="363764178"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 10:26:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="867876704"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="867876704"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 10:25:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:25:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:25:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 10:25:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 10:25:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=knbk4t00cDqp07p5Ew8RaRfb5IsprcIrFWf0ek46EQNqlS7VnxN0CKw8cHrz6Hh+U4XYar+kZk9IR2+qJYCiZCRT98XrQ3SrLTNedrxpMrfziiodZGoilhgQtkP1KiG7FZgqtBNQq4DxeAqFkiGt/MTvhNx7whAiQ+MAVauWVjiXj4yGZ/bkaUDFP2JcB5y8e9O9CDpLZ9DAtTMZSUPCKXWXkNx1qGeciPt0GyZc1GWhI9iaTsn5EOz8TYKWJd0aQ97HY4Pa/F3VsvzepHSFonpCCPwKjGLQvs3p8EaAs9p9DjjexZH8nr2f0g7HvjCewUQU7ebK65u99TNgJ5nkUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/rpL69/6S7/DzwRRTD4QMiMGlsq7cqzfpCk+yDKZpwM=;
 b=ZSvl5cGYDVX0XTuA5PnbqeMePS9/JhlL3T2dHDmx/SjfgxiONoVTsWDGefpBoTqII8gmK66vs+7dayXmfrvvlfH8T6agWVMkglF0KOG8/w/S7G15alxSu8bTE0VBiFDCeeji/N29ilrSS8/CvXJ86Wn4PGUCBoPAiyFDZ9JEJKqRTTWisJLZsVyUIO9u/lYtaQHvlunDQluAQkSa1zrEeuLGmYN1HD6/jRQ6ujrhGE8PY4qm8XQalMXzu1DiLlmChMzD5zKDKGe76W5nfXTMHUlXdJQFaJeImMcd4JR4qfU8IJPadT7Swbc6hzzL3MoI4hdle0eV/Z1MgRIvErSBsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB5937.namprd11.prod.outlook.com (2603:10b6:a03:42c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Wed, 13 Sep
 2023 17:25:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 17:25:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 15/19] drm/i915: Introduce
 skl_watermark_max_latency()
Thread-Index: AQHZmKtdg9GO4Ec/1E22/4iY+90YaLAZnS0Q
Date: Wed, 13 Sep 2023 17:25:54 +0000
Message-ID: <DM4PR11MB6360058AF8B1C5450B0C703BF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB5937:EE_
x-ms-office365-filtering-correlation-id: a18c6b7f-54c0-4acc-e277-08dbb47e7c58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SQkM0w/o/jDSVjrzMtIXioh5/uqEOTLiIYev1u0xnynjzDO7GPirY5qVALVLNsq8HGawnqnadQk4tSaFpX8UODhs4nVfT3i5DRGHN//mSwTlDXPfrZtAGj8vFttXOh0KM6VgVkHcVV6XuoIcpMFBckC3IrpegjXJ00EWGRGyGoaaVBotD1ZCmCKhuif9QBbGUTV7dV6mLvuXN97B1lNn8siYVLbY3AekdMOIPpU/tsm4cU8QQgPFAFtDNnV99F0uoxa4N7Smv6BNEc2WqHztSGG8t/ezLPdKEUStSaaWcGmGUU4CwTD+7kRyCsHKrW66Z4d/etaVGCh4NWI1xoLz8GljEffUt1oEwJiwYs1x2KWGOzdNWcfac3VOLj156p58XJcF5J01hrbp5riBahOIVU+4/IWxEo6DagUOXD3VfqHEGFppWsTacjzoaLgmBZTRQpHWgVejPvN75RgfwT5VMnjWeR6qN7/SVjznppXDWI/UjJj5T4KGS43kHtnED2C3hZaRENDySMpghXWQeHz6/Q82TPy2GXst8mpBjZ1t6jawFwFKmPLACDIONF2jIMG3y0dwAa4S/bTN6dtZ2h6zkpoaCKYqgrP2AZpDCKOgxBJupxRFhAV97BxAdR9FtcKE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(136003)(346002)(366004)(1800799009)(186009)(451199024)(52536014)(53546011)(71200400001)(6506007)(7696005)(9686003)(478600001)(41300700001)(66946007)(2906002)(8676002)(66574015)(66556008)(76116006)(66446008)(26005)(64756008)(110136005)(8936002)(66476007)(38100700002)(122000001)(86362001)(55016003)(82960400001)(38070700005)(33656002)(83380400001)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnBMUGpMNHpxbEpiVlMvYkZ4TERFVUhsbXNCNWVwSnNQOE85UHBLQkNmNncv?=
 =?utf-8?B?K1kwWlpqeUUvR0VuOTdvRmRWNWpEVzdvZ1FhZzl4WEpvQjlEcnNkQ1lQVkdT?=
 =?utf-8?B?Vm5reUFOWFh0bHdjTGpzL3lETC9JMmZ0WmFlb3RSZ1JuZUxobkljTXFLblFq?=
 =?utf-8?B?dEkvZ0F4MUcvWVA2YVZUSGd4SWQrMVJRUm9IRUhhbGxjMUtzaitWNnBjS2tS?=
 =?utf-8?B?UHFBSURaSEgxeUhvZy90ZDB3ZXV3SWlSdDRxQUtObWl5b2xWSmRSYkV0WE9n?=
 =?utf-8?B?T0lxaTZCeHN6TC8vZS94Z0ZCNEg4eWZoZFZ5ajU2ZHpoR1ZnaWxiNjErYm9z?=
 =?utf-8?B?bGcvN05XWGw0bWNIbnRUY3NOK2o0YVlwck44MWlFUmtlTmNRL2g4aHlmSWRS?=
 =?utf-8?B?aXNvbS9hdXI4ejgvWC9EUFF2NWNzN3owVE1XNHp4cllIYkZlMVZYeE5DNUZG?=
 =?utf-8?B?Vk1iQmdoQzdGTmtZZFVoRlJkYitGM1loVVpJSlNQRWJNUTB3YTBCbEVYc1hC?=
 =?utf-8?B?OXZ4Ui9aN0xVWWxTYVBHMU12SkRpdEFxYmNXUXhCdmk3UTBoclhOKzFsYjdB?=
 =?utf-8?B?Z0gvVWg5cnZ0ZjhkTUlKZVJWZ3crNHVQbGtFRmRnV1JCSU1CRTlLUUZuZU43?=
 =?utf-8?B?a2NXSDFUN213UU5PWHIzMGcvVHBwdWVveVg1L1BaNmNzdXVYUVZqbXNqb1Bn?=
 =?utf-8?B?OWtaYlFHbkl0WXd3SldFUklzTHlzRTBtTXY0NHVlSWFid3VSdEpia1haMno2?=
 =?utf-8?B?ZWFFSC9XR25KZEZCb1RJOUpVVWlYUVBkaEp5NkNBV1AxVmVRNGwzTVUycUcx?=
 =?utf-8?B?cnFIWlZaWVpWUWttVGRMeDFnNG16Ym5zZU9ybUVwa0FFM1Y5bVY5Yzg4RFBo?=
 =?utf-8?B?NXpJRGllS2ZiRUJ1VVVwVWVuUkFsOU9DM2VNWmJjdCtjQkFXQzh3TVIvVC8z?=
 =?utf-8?B?ZDRVWlNLdWIyTG8xOXNEaDA4VSs1MzRJSFFpRW1LNkFSZUwyV0s1MldJekFv?=
 =?utf-8?B?MGZPSHJFaUVQU1pKOXc2eitFb3Y0MjJsajhRNXJZK1V3K3Z1NmNkUVoydXgz?=
 =?utf-8?B?ajJta2FoMjBDbUxTdWxjeWVxRnUwUUpuNjFWcmRTbFowTnNUUW1tRk9GZVRT?=
 =?utf-8?B?UnZFaytwNUxrTy9kYS9WQ3V3SnB4bVlZOGN4R3p4bzljNmh0VUVON01OMGZC?=
 =?utf-8?B?UHhCMTFBc2JjQWZERllzcUxpK0xGNW8vb3o1ZS9qWHRUL3U3N3piVEF1WFcr?=
 =?utf-8?B?OTQ3eUozbEZxNjN0UlA2ZFVEU3ByRWEwOXg2TXBKR1Fvb244OGM0M0dYRjlK?=
 =?utf-8?B?dVlFdUFZZWs1aUx1STErOE03dnJyblg4d01ZMkFvR1VERlBXL01CSnptNXZS?=
 =?utf-8?B?NmhPL3J1Ym9pZnZjTDQ3NDZDaGJadWFOZ0pFVHhyUFFmT1hKeDVJK1JiN2pM?=
 =?utf-8?B?WUcxQWJiRTBnekxaTmMzMlgwQ09SR0VTYzl0M3F3dk1WREE3TGo2TGw5U1h3?=
 =?utf-8?B?TFZ0UWtZbXVqcllneU9LbnJuN3p6enVFNG1ibCs3d2toekNCMWlJS0RwR3Ni?=
 =?utf-8?B?ekdKajVsdis3UkROKzRoWFhNbUh4ek9INkVLdmMza0Yrc2xwUXZJVW9UK296?=
 =?utf-8?B?S254YjNWQ0pBU2p2SEIrWHVzL0J0dmR6Q0RSeWhIc3pUTVQ2V29TOWJTbi9Q?=
 =?utf-8?B?SlBLRmE2K2F3ZGgyd2pPUE54cGdOZ29EdWtEU3pFSXNnSkFzVE9vS0hrYU1w?=
 =?utf-8?B?aVM5RTNvMEE0Uk1JRFM4SlBtZ3hCUVJEbE41a3Q2K0czRjlBem9jZnV6WjVq?=
 =?utf-8?B?MjJkbDhMWUtadWhnUVdrQnJGVm5WT2FrbDl2RTBvK1Y2bU1GTHFQRGNnUXJV?=
 =?utf-8?B?SE1JSnZkcjRrb3pSY0ZCT01zWjNUWUZxbnlublllYmY4SExCZzJQYnNnWVI1?=
 =?utf-8?B?bG14WmhsZHhLQSt0NjdRall0NlZyS240NHlhdlRFZUF4dUllM1B2RGhERkd2?=
 =?utf-8?B?N2lJNkhMOC9LbGFta2lwOGNybXVlZGhRbENLdVpidlYxMlBPU0NSWTZkUnpC?=
 =?utf-8?B?T2NKVnBRb1RFWXM2MXZQR2pwSFAxRnQvWjA0S0NvUURLR3lxM3hqSU5zK1py?=
 =?utf-8?Q?Exx181vCTRldjx9E+GOnHCH45?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a18c6b7f-54c0-4acc-e277-08dbb47e7c58
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 17:25:54.7567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lWWpoMBvN3YZePTaYOn+NtuoXwQAqSz12l+hJ7dBhEH7+76Bc9ZQJgkFO/QsYz1jKnZGUx/D+qWk77FXy0jOcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5937
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 15/19] drm/i915: Introduce
 skl_watermark_max_latency()
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxNS8xOV0gZHJtL2k5MTU6IEludHJvZHVjZQ0KPiBza2xfd2F0ZXJtYXJrX21h
eF9sYXRlbmN5KCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgRFNCIGNvZGUgd2lsbCB3YW50IHRvIGtub3cgdGhl
IG1heGltdW0gUGtnQyBsYXRlbmN5IGl0IGhhcyB0byBjb250ZW5kDQo+IHdpdGguIEFkZCBhIGhl
bHBlciB0byBleHBvc2UgdGhhdCBpbmZvcm1hdGlvbi4NCg0KTG9va3MgR29vZCB0byBtZS4NClJl
dmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMg
fCAxNCArKysrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93
YXRlcm1hcmsuaCB8ICAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRl
cm1hcmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5j
DQo+IGluZGV4IGQxMjQ1Yzg0N2YxYy4uYTMxYWRiY2E5ZGJjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMzcxOSwzICszNzE5
LDE3IEBAIHZvaWQgc2tsX3dhdGVybWFya19kZWJ1Z2ZzX3JlZ2lzdGVyKHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiAgCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3NhZ3Zf
c3RhdHVzIiwgMDQ0NCwgbWlub3ItDQo+ID5kZWJ1Z2ZzX3Jvb3QsIGk5MTUsDQo+ICAJCQkJICAg
ICZpbnRlbF9zYWd2X3N0YXR1c19mb3BzKTsNCj4gIH0NCj4gKw0KPiArdW5zaWduZWQgaW50IHNr
bF93YXRlcm1hcmtfbWF4X2xhdGVuY3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsN
Cj4gKwlpbnQgbGV2ZWw7DQo+ICsNCj4gKwlmb3IgKGxldmVsID0gaTkxNS0+ZGlzcGxheS53bS5u
dW1fbGV2ZWxzIC0gMTsgbGV2ZWwgPj0gMDsgbGV2ZWwtLSkgew0KPiArCQl1bnNpZ25lZCBpbnQg
bGF0ZW5jeSA9IHNrbF93bV9sYXRlbmN5KGk5MTUsIGxldmVsLCBOVUxMKTsNCj4gKw0KPiArCQlp
ZiAobGF0ZW5jeSkNCj4gKwkJCXJldHVybiBsYXRlbmN5Ow0KPiArCX0NCj4gKw0KPiArCXJldHVy
biAwOw0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9z
a2xfd2F0ZXJtYXJrLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRl
cm1hcmsuaA0KPiBpbmRleCBmOTFhM2Q0ZGRjMDcuLmVkYjYxZTMzZGY4MyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gQEAgLTQ2LDYg
KzQ2LDggQEAgdm9pZCBza2xfd2F0ZXJtYXJrX2lwY191cGRhdGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gKmk5MTUpOyAgYm9vbCBza2xfd2F0ZXJtYXJrX2lwY19lbmFibGVkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KTsgIHZvaWQNCj4gc2tsX3dhdGVybWFya19kZWJ1Z2ZzX3Jl
Z2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gDQo+ICt1bnNpZ25lZCBp
bnQgc2tsX3dhdGVybWFya19tYXhfbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSk7DQo+ICsNCj4gIHZvaWQgc2tsX3dtX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpOw0KPiANCj4gIHN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlIHsNCj4gLS0NCj4gMi4zOS4zDQoN
Cg==
