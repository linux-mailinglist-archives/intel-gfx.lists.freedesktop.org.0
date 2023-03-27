Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAF06CA2E2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD29010E396;
	Mon, 27 Mar 2023 11:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5280A10E396
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679918029; x=1711454029;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vN3+LpPXa3ZPsPj/uqC395ElKds2a95RnWpoVNa9FYY=;
 b=YC8DzEUI4ZIqU+KVIOYxFt/lnfrRmCWHPzy2Xr7663EXSuldn7nwmyXH
 DPK4vUdULSP+Lt9MsWc7q8vuTKCKtVkiyiR5WxmkoKbq85yUEikUj5Wqp
 YuQcTJyIs6SAqiFX37r47a/GIe16VDKtAdQkDT0JUlXXk7RxFSUeMW3yD
 bsrZcsOq40ZOHxncuFZVEbEyR09QBVpg9yun1tCAd7oROG6DEUxjUFEBJ
 D/20PvBwd1RlOov7CTi9aiO3al0yZeQbEr4R57YGjmANsPWCUdz+LEIRl
 XVdQomg3iXevJBcMm2c1xMy5hWusmyMSlBqt7KrPjkPs08YTlXs+/GG4A g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="367991270"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="367991270"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="660817678"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="660817678"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2023 04:53:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:53:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:53:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:53:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:53:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHW9Nb/FEomi/HwpZWFOMcvu+7eHiqAr/o+P+SUeDECGLKnEXw6eHE0gX3rxIcYOaMoySPaAPOQLBxmoME0IMcJ16wuLe5oYqptg6AKDZWCkSevEUjpmtF+VF7TUO3Vp598rHNxdghi6tKcO4ZjouNoV0TvPOArpytQytO2XDJJnlDrzPHImqlNbEDyCi3spiTpv1J8DkDJ5ka5HD8cZ4nnb/O+WgrwbvLfWD+6TpfKWDMocglWInMOlPdTljd+LH3cLMUzzJymuStzYmhegtKokAY/c1/k3+8CRdfArUTm0EcRNcRIH00PrBiN9WmCIvHBI7RfhTTzg1Yw8bAhKhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vN3+LpPXa3ZPsPj/uqC395ElKds2a95RnWpoVNa9FYY=;
 b=YsgyMTqrVqU37mWnw7jRLnLEj6AdCTtD7moFiTFuQaBC2ujedTfwDU1uZHQg9CDTEkbZb7VwojG8fn5hF/9nj9PqmpQd505Tbxmckvi5/23Dnyy/tPqWa0rmP/NLiCBg/ZhT0iy6IDSuUgFgqv5gPcKMsTqveOQxik7pcHxDpsd5H5qWxD3uZY1tukZog504CKI1YW+kyjTWPGSDdVLDZCUTr9T0DGGiwrQwrHXP2k9HwgrIYEDJflZoAICznjy5hJe0x5Z94rOGNHaNlSqMeYAStYIhxZ+C/b5UhS1dcK76mnGame1f9yT3dgBrifrFoCXJJP3Hu/3W/WH9WuIm3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB7392.namprd11.prod.outlook.com (2603:10b6:610:145::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 27 Mar
 2023 11:53:45 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:53:45 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 17/29] drm/i915/tc: Remove redundant
 wakeref=0 check from unblock_tc_cold()
Thread-Index: AQHZXZLR4u1v+T0eHU6WH+LhFK+Zmq8OilTA
Date: Mon, 27 Mar 2023 11:53:45 +0000
Message-ID: <MW4PR11MB705412F7158212767BE2FA1EEF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-18-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-18-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB7392:EE_
x-ms-office365-filtering-correlation-id: 2b25d8fb-9126-4d18-79bb-08db2eb9eb21
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BfYWNW6Kyb3m/rpDGSjJgCKJQDsVO8Muumujza0ovV3klBkTlwliB/s6WPGKIxKWETdDYJkKKmDUMaigq6HAZUkMhGe8xanPxFu13HWnFRU+iAfxRpmy25Litmp6+mKytt24pJMLODtlFt1qUXU8yiXztUi282hMNKBQVKwjabHRzLFOaCMcWJ2J1ZQyQhCFx6kKWhNJqsTWkt2lj3EsWeMFxoLQFKnnTO4bDD1J+ehuJc7FsiPo0ZjErW2WyR2Cyw9AroWtF2E1fNzDC5CRGNWgxDoI626DKAryHg9Dm5kYxPzt/1Jrj+qhE+qJSMfYxdFehXpgrncWKdkhU3rHbgNrQ5pkrp7Ds3J/pKfEzCfen+4DT44WGbpwfBE+JKJa+EjM10ANfUB0UbYDjJ/Pv278kBuX0+6Kd2DS1Nyr4tUgEKWGEWyQBOONLz4SW8KI4hqW39c/YyfUEQFY3ewuWCdnYgCz7biJ4SYwyuMSXbo/6mlPDfUUR0CmoFDT+JMscE8hcnkYKWBWrpLy/2DE4kJx5sI6XuFVR1JU4EEAdrBH5DHszznrtghj8US/9jqTWJLO9f/FfFpPr9B8JJ04rzMzKY26Eg08tDDIxaxcEZnDZM6qT0fVGa3EDOwNjXEz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(136003)(346002)(366004)(451199021)(33656002)(82960400001)(55016003)(2906002)(66556008)(64756008)(52536014)(66446008)(41300700001)(8676002)(316002)(9686003)(53546011)(5660300002)(8936002)(110136005)(186003)(66476007)(76116006)(66946007)(6506007)(478600001)(83380400001)(26005)(71200400001)(38070700005)(122000001)(7696005)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHJJbHZWejY1YW5wYjdSYmVOWnZ3WENvRUxheklUOG9HaGpzdUZ6d3B0UGJw?=
 =?utf-8?B?UzRDbVp5c0ttWUpQOUJkbXF0bjl2WG9CTzZmRmVSbWdIQm9pekgyRDJWb2JN?=
 =?utf-8?B?WDJSMjNFREFiNW5VaXA4SWtMaTBjTDloZXRVK0pMQ3VYMyticU9jVFFnTmlY?=
 =?utf-8?B?dmVWS3JmUTZzdStuNndrS1ptZFBST3p6ODRNRkJnNHBVb2JJcEN0LzFkNEV5?=
 =?utf-8?B?QWhxV09kWXYwbXNHU015WHNvK2NqU3RTZE5hVDh4ZmhMZHpKSHVEamNmRDc1?=
 =?utf-8?B?YmptbUVWZnVBMEZRd3ZJVldKaDRYU3pBdXV0VzRPY3JQYjFKeHVxV1lFaERY?=
 =?utf-8?B?UnZta2RVVkwxZXlibnpPM1hsRS9CR2ZOL29HYTBGdEczRnRZNmo4RGdVdDMx?=
 =?utf-8?B?L2MxeXF5b3ZTcXg4RGxhLzh0ZEJIV2VydDQxVnMzR3VQRjVmUHE5dVdpWVd1?=
 =?utf-8?B?dnZlZDJqOS91Ui9xRjFraXBvWEptcDh0aXo5ejU3c0ppM0hMb1k4dmtoVjJt?=
 =?utf-8?B?eXVmdDl4WjAvY0p2Y0p2U29GUWcxZmhiSEtXVEw0S3JjZUtCdnZRcDBzOHly?=
 =?utf-8?B?NlhUbE5OMHdPVEhsYVRVNnBEcG5qTWZ3MjJBdU5NUG4wa0lUdTVYMmdDRVN3?=
 =?utf-8?B?VnlqUDh0SnVDVjdKbkxTSzZpbFJmVTRLNWw0ZUJvTWNCNXl4a0lJTVpSUlZ3?=
 =?utf-8?B?WU1yUmNZSkdtTkJaU04wTjQ1bjFBNGtMaXJHNXE0eThaL09aakR6YnVDNEtt?=
 =?utf-8?B?azVnSERiSkZzeHRZMDNqNEY5MnMvVktjZkUzNHptU2tjN0tOWGViWlVHWFdn?=
 =?utf-8?B?THJrNUZEbFh3NG9udUJNYjdDS2IvZENxdEEzREhGTjR2YXJFL0g4MWVEaEtP?=
 =?utf-8?B?bVJKUzJMMStjdmdNaWMvMWZuVVkrVzh0WDdUemhQZmM0emU4VUNHV1M4QU1O?=
 =?utf-8?B?d1BmTXRiSHljMnJva1hmb0VWb09XcVNpRDV6T2N2aWNRaHFYd2ZmdDhLNm8z?=
 =?utf-8?B?OCs2K3laMFFEQkZ0VUNMdzhZUVM4cDg1SThqWHZFZTRGOWp6TmMvem9TZ1M3?=
 =?utf-8?B?S0JNL2tGbEdSeFZQd1FKVTUyd2RNSlV2czRHSGd0Mkp3cTBYV1VRelN3ODVs?=
 =?utf-8?B?bHUvaXNLOHF2ZmIvSHUrVHF4WTNRcndWTW1nd0VSTlJXV2RnVjFsRlJLa1Uy?=
 =?utf-8?B?YVEzNkJ2TW0xUmFmYlN6bzdLNjdpLzFNbDZJUHFpdmk1cnRxdEloVHdDa2xY?=
 =?utf-8?B?WUR4YlIzL1J3cmp5blEvWDJnYzhJekxDMWNPM0JtWFF5d2dKUEdOL2pqd0N1?=
 =?utf-8?B?V09tc25SMnFhZnJNckxoY1FPTmVScC9zSGZuRGJobDV1TFJBOFVOZDRYaGdx?=
 =?utf-8?B?SUFEaWY3UFRVRDlrQ3JnMG5LSG5UL0JPTmN2Y0plbGIrMzNLVUhxTXRjcVRC?=
 =?utf-8?B?TkNpK21jdmVlZGRUU1g4a3Z2TkltRUF5ejBEL2NROWVLTVdvVjRwSTBDUzVZ?=
 =?utf-8?B?VzM4S2YwN2FxcEpTL0xGcWxDOXZteHhQa0FZK1l4a1RsWTBIN0oyMSsxZXlV?=
 =?utf-8?B?cWNRNnlmcVBmNi9IeDBNdUlBR2tIZ3VUL3M2bG1pci9QRWRSL1JpbjJQSkN0?=
 =?utf-8?B?dUdTOFhJaWNjQnM0YTVLT1EwZDhzL2tyZERlN2ZZTVFNRWtWcTNrQVhFTmtt?=
 =?utf-8?B?cWNpRjNUdW0xNE5odGVwOEdHVTVWMDk2T1MxN2NkYy9XUzlVTVVtZmxtOS9C?=
 =?utf-8?B?TzFOK2NxbEhIOE9ISjY5SUxoUDNYQ253MFpKdHMwM085Z3ppRnFkUDlBZGRG?=
 =?utf-8?B?U2dPa1Rydk5Xc09aQUhUSG5pTk5WM3pHK3lVTW8ydGRnSlRQem1mZ1ZKa1NK?=
 =?utf-8?B?dnFLN0cvdWppMU02R2xTYW8rblp1YnhjeVNTbGFLcGlLZXlkc1ZIU1h5MUIv?=
 =?utf-8?B?MG5Hd3k4WHBrSklDSEFCaUx0eFJLK05lZC91M0pZOTlkbWwrTER5SXRLQUtu?=
 =?utf-8?B?d0J5Q1JZdHVOZVpoWXZqMGhPLzhsQXBzcVZEM3lIMlZEbjNnNGo2Z011R2l0?=
 =?utf-8?B?L2s5M1hwTVFvcVZuN2dKanpJRmh3ZTNWWWEwa0NoV2taSVNyc1JtZDNTUHor?=
 =?utf-8?Q?Z+BDYCtlA2Q9gRg0r+DfWo1AZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b25d8fb-9126-4d18-79bb-08db2eb9eb21
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:53:45.1255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Arllmvx8Ow8fV/IWneSD7sreX3/SP2zoRJVwtclzmtiqnCWOq/pDWCdqud+8vcpwHDmmtmxsS9+W19mZKDxinA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7392
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 17/29] drm/i915/tc: Remove redundant
 wakeref=0 check from unblock_tc_cold()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTcvMjldIGRybS9pOTE1L3RjOiBSZW1vdmUgcmVkdW5kYW50IHdha2VyZWY9MA0KPiBjaGVjayBm
cm9tIHVuYmxvY2tfdGNfY29sZCgpDQo+IA0KPiBBZnRlciB0aGUgcHJldmlvdXMgcGF0Y2ggdW5i
bG9ja190Y19jb2xkKCkgd2lsbCBub3QgYmUgY2FsbGVkIGluIGEgZGlzY29ubmVjdGVkDQo+IG1v
ZGUsIHNvIHRoZSB3YWtlcmVmIHBhc3NlZCB0byBpdCB3aWxsIGJlIGFsd2F5cyBub24temVyby4N
Cj4gUmVtb3ZlIHRoZSByZWR1bmRhbnQgY2hlY2suDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jIHwgOCAtLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
DQo+IGluZGV4IDI1M2FiMzBjMzRmN2EuLjIxYzZlZjgwNjQ4ODMgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTE1MCwxNCArMTUwLDYgQEAgdGNf
Y29sZF91bmJsb2NrKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywgZW51bQ0KPiBpbnRlbF9kaXNw
bGF5X3Bvd2VyX2RvbWFpbiBkb21haW4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiANCj4gLQkvKg0KPiAtCSAqIHdha2VyZWYgPT0gLTEs
IG1lYW5zIHNvbWUgZXJyb3IgaGFwcGVuZWQgc2F2aW5nIHNhdmVfZGVwb3Rfc3RhY2sNCj4gYnV0
DQo+IC0JICogcG93ZXIgc2hvdWxkIHN0aWxsIGJlIHB1dCBkb3duIGFuZCAwIGlzIGEgaW52YWxp
ZCBzYXZlX2RlcG90X3N0YWNrDQo+IC0JICogaWQgc28gY2FuIGJlIHVzZWQgdG8gc2tpcCBpdCBm
b3Igbm9uIFRDIGxlZ2FjeSBwb3J0cy4NCj4gLQkgKi8NCj4gLQlpZiAod2FrZXJlZiA9PSAwKQ0K
PiAtCQlyZXR1cm47DQo+IC0NCj4gIAlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChpOTE1LCBkb21h
aW4sIHdha2VyZWYpOyAgfQ0KPiANCj4gLS0NCj4gMi4zNy4xDQoNCg==
