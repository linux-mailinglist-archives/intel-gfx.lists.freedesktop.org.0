Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60054F548
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 12:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293B811A51D;
	Fri, 17 Jun 2022 10:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9AD11A51D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 10:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655461360; x=1686997360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zJiJpFuWCcJ+7OkDKE+2HJ9ohofTtOnW5r8ZDn+WoYY=;
 b=LhWfx9yWoaivHDAJJNt4FYWmN/pKYbQZRmCIOSjwacpPQFEAgmZUWoDx
 VVRJdCqk6GXoib4lOB8R58EFbt+xgWSGIeQHoZ+0irol9mdvoDu3FpvGH
 DIRaGjh3O+WC/9JjmkJeo+7AJeVsOFSJMigoq2p3TnuZVFVdWIz4msytr
 rinw58Rh7BS198cM2RVt2gaVrlbakkxwG/YgZRJ0DsvEWFA8itHr07Qya
 V1pwLVFqaMusj34NBES4JUmJz1nt1IQhuDkJP5jkaHYRJ5e3gMfLY06MG
 u6mfIISESVI5cPW33rdjLKSSq8o8a51HFHqPFfWX7HQsRoQZwwUe969we g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279532730"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279532730"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 03:22:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="641984541"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jun 2022 03:22:40 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 03:22:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 03:22:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 03:22:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 03:22:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PwkFsN6L83brLphYXkjRPus+x49VPr871Cf5nhVjIEpmiUgbOxhUNSXADY5qzB1/SLz6Kx8M1EWSOaS+HxMpbFoM9ZG9jJTL0YQp66rIWeZij8qJlvvABffDD6gYYWbUj/xnBBwBgK/YLZcJT4IoqqIjRDsr8qtW6nH6qQjswpb5cEJXpmZ6/GmHKewVqXsARM5Xu22nKgqSDUtfyxNj9TlX3xU2b9ARb+t4d/kMXUPAZdvkRwr0qfvCc8neO4u4mmnRq142gRDeFlPBfWk1DxRaZCZZ4NzlczvAqDpHC5L08Bv1/lvm5Plfj+W4z4hs1q6/QsOBJNqisNZ2M7HHuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zJiJpFuWCcJ+7OkDKE+2HJ9ohofTtOnW5r8ZDn+WoYY=;
 b=kG5jW6H0dFzlnEV+sZvdgzQkxlODSZu0Lo8ZnKwM8mxzZZqVb/8mGZRBcz6KawATf4Es4yeQo//iuusM6aIGI7nNo1jZ/b3LHj1PLHoQifLKyZOLpNS2bsw4AFdllQbBT94ARwWEZUQoKNAhml2KIOAwzqsGj8HnXcpw97IK9UOBmutivijcsYj/6zyx+Md9+YmrKe3sEeFbvYE7erHlZpwyA2np4Q8U1VMd23rA3MUBvPAZbIPf/fSZ6iuHv6DwN8f9nBOJqPSKcfX3RTPDaW8pkznAnm2KYvrN1cQooSRKu5QGJOJ3+2ZrTpNkwbwSy/zmF6igGmAKfSO9IvUVvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (10.175.52.20) by
 PH0PR11MB5093.namprd11.prod.outlook.com (20.182.127.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.14; Fri, 17 Jun 2022 10:22:31 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::d9a1:5893:c10e:a2f8]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::d9a1:5893:c10e:a2f8%12]) with mapi id 15.20.5353.015; Fri, 17 Jun
 2022 10:22:31 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Thread-Topic: [Intel-gfx] Access to Intel-gfx
Thread-Index: AdiCMnMSCqBrNffdQoy7j5x+I7nvvwAAWu0AAAAMpnA=
Date: Fri, 17 Jun 2022 10:22:31 +0000
Message-ID: <MWHPR11MB19350E04C99E642B710FDFDAB2AF9@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <MWHPR11MB1935F8DC92C9174F17EE27ADB2AF9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <CAM0jSHOysaa4NBX09cVKgijt3UB2xb50xKjV68+KJ_aqQn6Pyw@mail.gmail.com>
In-Reply-To: <CAM0jSHOysaa4NBX09cVKgijt3UB2xb50xKjV68+KJ_aqQn6Pyw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 127a4db4-0384-47d7-d991-08da504b49a4
x-ms-traffictypediagnostic: PH0PR11MB5093:EE_
x-microsoft-antispam-prvs: <PH0PR11MB509368B4194003A4E51CDEE1B2AF9@PH0PR11MB5093.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4tGYvJ/AP5CGX6T5iSlP752tuiJPjblb4h0wV65NbGL+LpbG2TTRLip0BcZCzehIG8RhogYlJUmjLvW/uEoynWJ/K4BXAjMGkHhTYjPyvc1kgGteMJp/GsQbwzUFZxH4RDmDRJ5payhJLhT7we7FIyhQEddgvPyE8jc3oKtMFJ/64dytK4McudVmBVtZcLkWoBN0KS47zQFh1rK/HxXWs+mz+H0vZGoGBoaE7cLsMD9hR6fYczPmHUHG8hoWGPnm42aExbI3AfngTZhXTavMIPnwh3LIuS4MjFQrMjGBDvfQVgjAyDMWNi52oNAGFylqrjwCCVl3TVCQyUSMW+3c4duvvV1iITEtU90jlrAIeuOFidL+Ddif/csVSBd1vbKiKG9ZNP9tMuy/tApY80ZKByRgL0NKTdsAVz8c7PhN6Csq/TtjbtaV9uuYnQu/nbMqFmXVeqX9EN2MF1AksYTbg0v4UWeyIJD0NjuOKt/K9vi1kRtOrfeoIDLj/27W/3bx1jmQ7VqFQfaqKBMHN+sj5I8rvUpuZkKJzHNU+Xn+bbenXQFUX9uQHndyOVNuIuRyrdSZDxG9ClB8Y0ltcGjaCuW88cHizhCVSMC/v+AOs0rZ+EskjnnnSLzKjY0WtSPnWfOmYEZqnQVnZG/WIPmF2aFQNA4Mya6RIlI8FJmnRCP8Ugq5IjTzfXz53ilEOaTdzcWFHmGjvh30lpBodjhMng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(6916009)(71200400001)(4326008)(33656002)(5660300002)(186003)(86362001)(4744005)(55016003)(316002)(83380400001)(9686003)(38070700005)(66946007)(6506007)(122000001)(66556008)(38100700002)(66476007)(66446008)(64756008)(76116006)(7696005)(52536014)(53546011)(82960400001)(498600001)(8676002)(966005)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkFVTWE2RldPZzhvMWd1Sm0rK3orSm1talZ3Z3JwdGl4OHNIQWdZR1ZQdmtG?=
 =?utf-8?B?U05hNkxQQXdydFg2a2d0bWhwVUNoeWk4cjczZ09RODc0THFESmt6NzR1clpu?=
 =?utf-8?B?anBGWVoyYlMrTGlrZEljdzI0Q2kzWFliWDA3NHo0SUJSeVVNdnBmUnBnTFZ5?=
 =?utf-8?B?eGU0QkwwSzdiK2l5WU84NzNhamE0SEtDWXZpM1JrOUdicURxVFlSdUJWNVQ4?=
 =?utf-8?B?TUl1ZDVTeFprbkVRUmNqSXFhQVo4R3pidlM3QVlKUjVWZ2lBNitFa0FKQko0?=
 =?utf-8?B?dVhCZUdCdXkrSkJVbmtPV1EzNVlnOGttRFM2ZDViVzlXK0c5dGhHa1VrWUZs?=
 =?utf-8?B?UjJVQjQzRjQ5VFBsWjF2MGhsYi9nNC9IeDRSYmlFUkdIaWZkR3IwVFQ2c0w1?=
 =?utf-8?B?NERHeHlweGZxT2poajhQWEVrbzg5bUdhUmxVcTIvcHc3MTJMYU5GSG9SRmI5?=
 =?utf-8?B?bXZDNUNPT2lSM2wzWEZmellGMDlxVDBKbHJka01IQkJZbVkwYUFYQjhFVVB3?=
 =?utf-8?B?TDhuaVMrbFBvblNsU3BFV0tNZ3BvUVpFRW1rZlcvR2h4cDZTRWl0Z1lCT2Jw?=
 =?utf-8?B?T3FKT05oeEJyVm5WRVQ3d2xWQlIwQXVrNEpHTGNqOERQc3NZVzBqL2doNjFQ?=
 =?utf-8?B?cjkwNGYxS0VwOXVrTDl5bmUycEppcWdkWHQ3VVRNVUIwTGVmaUN2U2tTNWty?=
 =?utf-8?B?UE5Rei9LWWFEN01jeG45UEh2Zis2Tm05WHp5U0h0NitJYURvMElWZzRDOGI5?=
 =?utf-8?B?N01CS2JvSGpEUzBNbkJsWnJiUEthQ3F6eGgyOVVaajN4aUxBa3VKbzhIWkZ2?=
 =?utf-8?B?MzVVcFdTdGNtZEpWdG03bTM0eVFjS2xsMUhscmlERE51Uk1XOVZMNWlRVDNG?=
 =?utf-8?B?S1FqQzRDSTF6UzRhcEVBSmtpMWpxMEc3Z3B0ZXNtcXNkSDJmd3RkUXU5eFlO?=
 =?utf-8?B?S0VVQUJSOGxVOGFzcXp2QW9XcDE0VGprMGtSZmozR3BxNWFYU2xTTW1WL2lu?=
 =?utf-8?B?aVpzd2VmUEJ6cHlRZVYySGRSZXhTOWtCVTB0RVFObHdxZFMzVHFYSFlJc2lj?=
 =?utf-8?B?M1hNS3V5aVV0NE9neDhXWTVYU0FoK29aQ0lvN2RCbU1Rb2xKbGJZVEJsMTE1?=
 =?utf-8?B?VDEzTksyRmhITHdDNE0vdGdwSnRSMG8zWVpQbGh5MmtJWlhQd0NqbldHbVg1?=
 =?utf-8?B?ZEhGeEJQWWJib3JiZmNWaHhLOE9LTitRbWo2bHp1S252RDlNQzNBeGdTcjZE?=
 =?utf-8?B?WWxFWkJhT3VBVzdPamRWcWQrL1BWaUIrUFZoczJsM3ZuSTBQM05WZU9TKzJW?=
 =?utf-8?B?Y0x5cEJoNDZrZmFKWXpDSWF4dFFCVU10WXpqdmZWUlEyMGtaRkxnbHY1TDBB?=
 =?utf-8?B?ZXJKSkZKb3k2cWFkY2JCM21YVVdveDBoTjQ5ZVNuNGxwZ3ZzTjg4SmwyWWVV?=
 =?utf-8?B?TWpNaE8vZ0lsTHN4dGpvanlmcTNHZVNSTC81bklyMHUyWWRWWTk0Z3g3VVVD?=
 =?utf-8?B?WU1DN3RmTFVEdVB1NmdtRFJiTnhJVHpQZldUOXNKaG1nNjRvUjF1TUEvY3M0?=
 =?utf-8?B?THFPRkE1VDB2ZEs3dkVSYk44UXZZdVIxN0hReDNxMDZ2TzhnelJBZ1U1OE5l?=
 =?utf-8?B?bWp4NXNiV1g3Y2lPOFNpQ3ZRUzVHdmpZZHhIZHk3TjltaHQzclMvYzBxUTF6?=
 =?utf-8?B?WWtRYjMzQ1R2d1VjOEgxMnVCZGlDaGs2TklmbU14L3BHanNkYTIybWtUWlBw?=
 =?utf-8?B?TmNZTDVSbmx6QXlrcmR3SWdwdjAvZ1J5cUlOMWNrbG02alZ2WFhveGZoQWZL?=
 =?utf-8?B?bjB1ejVPaEo5VTVRdTFnN1VodVljeDVlVU5kb04yRENWaFoyK3BTWjdyZG9Z?=
 =?utf-8?B?K0hqZzNtNS92UCtlQ0JLNmdDUkRwclU1WHc4MlhXRFJxRFZ1clpXL0V5SEVm?=
 =?utf-8?B?SVFKY0p2N251WmlXdmlUSDVHend5VVFuSEp0Y2pqaGQ0SEF3bVcxa2Z5cmJB?=
 =?utf-8?B?NFcyd29KUEtJdkVJSXZtTU9kL3VXczViMzg4TXQ1NG84TzhCT2RVRm5wcmVj?=
 =?utf-8?B?eTM1VHQzWDVWR2JxclFMMThmTzhHUDh6Z0d1SDRuMGFGNVRKM2lKeVBid2dV?=
 =?utf-8?B?ckRVTnBBYXBKMHRrcE4vN3hxWTlCR2VXTkNUWEVTTDF6dWJYRy9VQ0dUS1da?=
 =?utf-8?B?VUpTc0tBRnpDbENDOXhsRWJvTjdIL2dFYk5BcDJ0bGlEOHRYZ0hRZ0ZRUWFT?=
 =?utf-8?B?Vk5MeTc0UUM0NWY2eitXZ1VmLzA3dGE5UkZCUWtLU2JsUkxKWWp3WUdXU0s2?=
 =?utf-8?B?ejkrYVJqU0xDTTBrazcrYjlLQlJPMzhxQnV1TFhLWXZ0UVByZHladDJBOWZx?=
 =?utf-8?Q?5UxeAN9SYoIOq3K9NWlh6lz3OZBlZ+s5uNtff6wCB3MVR?=
x-ms-exchange-antispam-messagedata-1: cOTu16ZZKJt9ETKv8zlRKT//CZ0qYXMRiad+CMixdwC5eGxX89AcocM0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 127a4db4-0384-47d7-d991-08da504b49a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 10:22:31.4343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dShsSZUcSoLxerUvicUpPU96YecdeVVHEFefMlPNiIbsNWgD2IK+7Y2V4OjSVcsNl0nvPnf8JfTMrRFFPTWvJJn2CLG/OhpwuV3wlS4Ek2i6eTRZ9xQJi/l1lRLbj1j2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Access to Intel-gfx
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VyZS4gRG9uZS4NCg0KUmVnYXJkcywNCk1pdHVsIEdvbGFuaQ0KDQotLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KRnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFp
bC5jb20+IA0KU2VudDogMTcgSnVuZSAyMDIyIDE1OjUxDQpUbzogR29sYW5pLCBNaXR1bGt1bWFy
IEFqaXRrdW1hciA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCkNjOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g
QWNjZXNzIHRvIEludGVsLWdmeA0KDQpPbiBGcmksIDE3IEp1biAyMDIyIGF0IDExOjE1LCBHb2xh
bmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50
ZWwuY29tPiB3cm90ZToNCj4NCj4gSGkgVGVhbSwNCj4NCj4gVGhpcyBpcyBNaXR1bCBHb2xhbmkg
ZnJvbSBPU0dDIGJhbmdhbG9yZSB0ZWFtLiBQbGVhc2UgYWRkIG1lIHRvIGludGVsLWdmeCBtYWls
aW5nIGxpc3QgdG8gc2VlL3Bvc3QgbWVzc2FnZSB0byBhbGwgdGhlIGxpc3QgbWVtYmVycy4NCg0K
WW91IHNob3VsZCBiZSBhYmxlIHRvIHN1YnNjcmliZSBoZXJlOg0KaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCg0KPg0KPiBSZWdhcmRzLA0K
PiBNaXR1bCBHb2xhbmkNCg==
