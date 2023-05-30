Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0D6715AAD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 11:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F4710E146;
	Tue, 30 May 2023 09:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61EB210E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 09:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685440322; x=1716976322;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BTBN8vQGQYXrlrHkk4e4qaHzbZXV/IdIvVowwgwVFbg=;
 b=iOZq70VJGuAQKeiwoiVwUl7N7j1aTaq1VjYDrK8mSS7TDLU9IEqnAlLJ
 zJhqYMYNFl5wRKqGsFmJfLram+zcoMFXQyxy2+FfkZaxSCoJ+oosv1KsY
 GZj+dVfJIYugqZ6JBqCxOliRBT/cuhPUzXsANgZyHsfJozYEULpa1cKw8
 QLYW3lVUq+rcJrzXssbcj5iQJFu493KVIAWAkHH0COQTkckC875vDML7n
 vcMXBTz4WBR0dpQIhwbk/7RcGpvUAHhljhT4L8+Dwm1HE/1CJ8sovitU8
 Ko8E27czuHL3VzRfiWrOXDgWe0oSAXN+I28p3vWA2FibJFYF/jSHgEju4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="344372000"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="344372000"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 02:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="818725310"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="818725310"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 30 May 2023 02:52:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 02:52:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 02:52:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 02:51:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2x/HrMBdhtYpQhKp7krQTdlkB4UrDHp05L06ME53JRqcIS4lVndAcWOoBZCvFaQM40FUk4cNJQsMWizSBoYza0OPQL+i4fpxXKm7CocIUUyBT6sy56Q4VqZzMaD2XFnO8ssl03m5F7bwn3xOkGSyNBZ2YUgOelx2oIRnqn9f6TB//5KnRWqtBsb8UbmROahSX02Vg6mO0iUKsP69M9j1Z2XI3r/r6mZS0puN/lXCjBh+h9G43q5Uhx+9lJwNDESY6dmlTwdU2GNqjDC7o+AMh5gzwS7NGNvMYkl76cjwocQCHwCaB9AF3Hhdzi0DUnAhqEH3uRshIGWc+C+GeRANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTBN8vQGQYXrlrHkk4e4qaHzbZXV/IdIvVowwgwVFbg=;
 b=FrqDYCgwX0ymLlrQA5SlxM4YnG0OwpSb5Si+dpGklAfy9cLVWRHKjzFWJrcn11XDSV8oQB6Yr7eqKEn74bgZSmUMxz38PbpnJXz2GhB+skOdeFeVDnz0roQ7TY4geRGdZr0mAEQmuCR0AKSTHnPOxap8OTaHvMSnDjwvNGDlG2stDbHYxyRgfAVER5Ci53pLFMelIV+n1pCLE/fYqcN21K8QpQbgbbAYn45gXeb0Z620M6uRBdB/sFvWYzCgbmkzYA2ziyzNdTT9M3ajh5MmOJSHXdpy96MYg2n0VP4KCDyjZcGAyimHl7DFAcvq9OCL62WZucpmkvfk3v6v5keBLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7476.namprd11.prod.outlook.com (2603:10b6:a03:4c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 09:51:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:51:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
Thread-Index: AQHZki2fF/g/ZBtYDEyvuPBE2W/Hk69yh6EAgAAMvgA=
Date: Tue, 30 May 2023 09:51:56 +0000
Message-ID: <f7efaf28f4b12622cd0dfa69e64a8dc3c7fb6ed9.camel@intel.com>
References: <20230529130028.2193945-1-jouni.hogander@intel.com>
 <DM6PR11MB31778B2F27E8CCE4FDFEA6CBBA4B9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31778B2F27E8CCE4FDFEA6CBBA4B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7476:EE_
x-ms-office365-filtering-correlation-id: c1ea4e35-442a-4723-4a71-08db60f38106
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rd5egMoyErcaSxCgY+KLUgTQyJyB5Ebu+xe+1x0M/DWnusm+FzDeCrDJByWGuxjukVISyebvVGQz/1vSM1duKEunjq1WP73TNptERXWHSfwB8VJ0hwUmfZufkyHN0/Yl89iT4t8GGkl05auPGGLEU46/YCkvrGdSqYC6v+btZbsC1ruglmgxQtkBB3vfzVawASVTeCPKYYz90uRt9Mj6ZLu4ZpOwZ1A/9I8aEnMiAhx6OjL6u+/bo2paLlQxPS0a2ETY4UQK3Xl/Fv4J59ba9kxqSkG5GnQ1DXMYHfPTbOH5eobSEoGc20iy1hK7KV1JA0d/WlTVoAkgQ1sp12IJdOwxj5h/LawwPHFjg0Dn9I7IqgAYmEs/hscfLEQe3fOSqGnJFdLv7egtfkHb4RR55wLg6aIFYs3j+ugnAnhw7oPwe2GYSI/3Z4KTDZpBSSfSy7SdQUGhEDJJr6sDIxrFt5w5PLoIuRiO9hNSyiZMiVEvjnerrKpp0WDtlHPl/cqBb4Z/1kqWGlEbbc2/FgaY19fk1MSsNTDixkryOc3ybhuJ54zwaXuWtXNLvTU4Xcty
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(346002)(136003)(366004)(451199021)(38070700005)(82960400001)(122000001)(478600001)(38100700002)(76116006)(66574015)(2616005)(66476007)(66556008)(66446008)(83380400001)(64756008)(66946007)(91956017)(110136005)(86362001)(2906002)(186003)(316002)(26005)(6486002)(6512007)(71200400001)(6506007)(53546011)(41300700001)(36756003)(5660300002)(8936002)(8676002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDhkcnJjbHpITnlkNSt6WDZUUXgwWWF6bkhkUkU1WXArdlk0SENqdWk5RDdl?=
 =?utf-8?B?ZWcyalMxVTlNUm5mZWlWLzY1RCsxSFZ0QmQrWjdHSHpqSXpvWEpKTmNRamtE?=
 =?utf-8?B?UHlZQ0trOUVuRXNEUE5DM3k5cTR1UWgrRHN0Y2V1ckhBaDFTKzlHN0NJTWl2?=
 =?utf-8?B?czQ1RlZrdnlxL0p2Q3ZsM2dZNC9ZV3ZuOVRxeGNJd3gvU3gvZE1nSktUNjR0?=
 =?utf-8?B?THZVRE1reExuRzZjY2VxSytXMk13bmtLRnIxcTIxMEdNdmR0aHpoNmNPbXNk?=
 =?utf-8?B?RHAvRURMVlFFbGl3YWs2NlUyb3lkdlZaSGdmcWRhL2VGMFR3dDNpclU5eFpP?=
 =?utf-8?B?N2xBb2VBNmZMak1jMStMSnJIZkw3OXFjWFZzNjQxdXBTck9PZVBQdExQdCt5?=
 =?utf-8?B?eXJ5Vm9XOU9hTjkraVZpZUFJTFZJOWJmalFxVnNYZzhSNHlYaHdWK2d2S3Vj?=
 =?utf-8?B?dGxudzBISjh4anFhWEZETU9DRGZNL3UrQ0xWWHJRYnBZZTlvUE1ndTkxaXU2?=
 =?utf-8?B?dFhJNXR4dkJXSnNYbWg4MWtIaVpnUklCQ0FjSjZzdW0vSVU1eThqblNiSmhl?=
 =?utf-8?B?MzRSWUZhL2p1L0kxMjBlUmxOT0tvVURYZXJkOXJXWDR6bm5jeGNPOVRQU0NB?=
 =?utf-8?B?R3Z0cGhaeG9rYitFdldvZUZOMC92bEFxMVdhbHovZ3FpM3hNekFndUszeW85?=
 =?utf-8?B?NTltRnRIeVBnT1ZlRENxblNKY0ZZK2kzNmxRalVMSkEzZVpoYU5NZ0pLM1BS?=
 =?utf-8?B?c3p4L2pMMVowMmFJakVpVmtGdW11UHhqV2FGSFpBKzVFb2JCK3JoWmxHUHRC?=
 =?utf-8?B?L296NnRVR2hCUnAvekRzbWlEVkczRmJrN0dYVlJnRlBtMzNsMU1sMXptVlRI?=
 =?utf-8?B?Rm9OWDBuUnVzVkI2VGsxblRjaUVpQ2lMd2RZV09OQVFLL2VVWjlaN3ZKV0Iw?=
 =?utf-8?B?NkZVOERKa1hPT0tOM3dScWxieE5sT2pCR3FVTVBHT2MxU2d1RnY0YTU1SVI2?=
 =?utf-8?B?eUlBc2krT2pROCsvUGJqdHQ5ZUpKUEU1OFE5cFd5ZG9kRGJ4MFpMV1MydFY0?=
 =?utf-8?B?QlVPRnRGRVNnay85Z1lNOUZBOXBRZ0lxS0t2K3d3U0pzVFRFL0FrOEtpNGNs?=
 =?utf-8?B?Qk1yUVRlZE1ncnNQdDhyNkZMSURaOXFNREdvem1xWGtCMDlVNGVSbC9FMk1W?=
 =?utf-8?B?SWM2aGVFRFR4Y2JFampJZmFTSWtFZGYxcnR6elBNanFuS1FGdm9kOWl3RzdX?=
 =?utf-8?B?bFBZeVNXbkFURU1KMUNVTUZkT0NvTUhha21TYTN1UFdmMnVIZW81dWNHeDdh?=
 =?utf-8?B?UWQ4TnVQSmdYelpyMy9GeXJnVVNMUEFnTWp6c3FESFJUYkMrOHAvNGJBQWts?=
 =?utf-8?B?TjdIRlFFVGRGQmN2S1JYS0dmRjJYTHhGMUx1QWYwenc1aEp2QUF4UjdQR0wz?=
 =?utf-8?B?dDRZQ0RuRDBRU3c1TEVTbGFMRDdOeGJSVCtnMEJCYVpJYXZJSnI1VmlZdG1Z?=
 =?utf-8?B?bXJWMFFuUUxRbk1aYWFndDA2UjFUaFNnWUs4bmxhZ0VTV3NDeXlZV1ZxUWRs?=
 =?utf-8?B?bXNxT1FjS0U4ZTVURjhDUjhJUythdWkwNXprWm1YZkhzbVBhamFleGtvL0lx?=
 =?utf-8?B?aXdWenQ1N3Nab0IvV3pCQWhOSmlYZEpPSTZaOHZQRk8zMEpneEFKMXdIL2RU?=
 =?utf-8?B?S05aUzlreU5udElPL1F1eWpycWdOWlZpcGRMK1dXMWJQaElkRVVIQUxRZlQz?=
 =?utf-8?B?MFZLeFdFdG1ZS2t2MjFBRy9EZThhaVl3RUt3WXpCMkp5RUk5NDRkSGxJYkRn?=
 =?utf-8?B?d1dmVHM2U1hqL1Bibll2Y24xbzhuWjVSTkZKdEgzMUdhdkREeWZGVWFWbGFs?=
 =?utf-8?B?cmI0RnIxNEpveVN1Y2tyVituZXhuWWtFa3U5eFNsSXdpSVVCMmtHekZpdVY3?=
 =?utf-8?B?SmZOYm1ubVZPRCt2alk0Zlg1cmVLKzBDRnFHNFlIa0RlUEwwYnVvVHFGZWti?=
 =?utf-8?B?VEVYS3RwYStMQkxhMS9zcTlTSTVnTTZ1R2FjUy9pM2VxUTFtcytwWGpaS3Jn?=
 =?utf-8?B?aFlhd2pVQjVIV2s3RGYwMVd3R3I2a1pWeUR6U2wxT0NnOXBCZDFTV1pPZ1FM?=
 =?utf-8?B?MGZlYUxrTWE0dGFqRHM3YmxtNXdITVZqWnlRNWdaRi9UZ2ovOW9neGY2eW14?=
 =?utf-8?B?cXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F13702E046E69E4B94CBDE292E5F6478@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ea4e35-442a-4723-4a71-08db60f38106
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 09:51:56.0443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1XcpY8aPYLQvM3LQHSIbsJQkpNL2DE2zD63udQ6I3spDV+MW1Z2vMZLkwYCxqCqQ3ZKLxHiB3sGzyRzeknjgmlsa51zN5mv1wLW/yU/hDvg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
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

T24gVHVlLCAyMDIzLTA1LTMwIGF0IDA5OjA2ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4gPiBPZiBK
b3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IE1vbmRheSwgTWF5IDI5LCAyMDIzIDY6MzAg
UE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IFN1YmplY3Q6
IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTU6IFVzZSAxOCBmYXN0IHdha2UgZmFzdCB3YWtl
DQo+ID4gQVVYIHN5bmMNCj4gPiBsZW4NCj4gPiANCj4gPiBIVyBkZWZhdWx0IGZvciB3YWtlIHN5
bmMgcHVsc2VzIGlzIDE4LiAxMCBwcmVjYXJnZSBhbmQgOCBwcmVhbWJsZS4NCj4gPiBUaGVyZSBp
cw0KPiA+IG5vIHJlYXNvbiB0byBjaGFuZ2UgdGhpcyBlc3BlY2lhbGx5IGFzIGl0IGlzIGNhdXNp
bmcgcHJvYmxlbXMgd2l0aA0KPiA+IGNlcnRhaW4gZURQDQo+ID4gcGFuZWxzLg0KPiA+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiA+IEZpeGVzOiA2MDVmN2M3MzEzMzMgKCJkcm0vaTkxNTogRml4IGZhc3Qgd2FrZSBBVVgg
c3luYyBsZW4iKQ0KPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC8tL2lzc3Vlcy84NDc1DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jIHwgMiArLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBpbmRleCAwYzI3ZGI4YWU0ZjEu
LjE5N2M2ZTgxZGIxNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9hdXguYw0KPiA+IEBAIC0xMjksNyArMTI5LDcgQEAgc3RhdGljIGludCBpbnRl
bF9kcF9hdXhfc3luY19sZW4odm9pZCkNCj4gPiANCj4gPiDCoHN0YXRpYyBpbnQgaW50ZWxfZHBf
YXV4X2Z3X3N5bmNfbGVuKHZvaWQpwqAgew0KPiA+IC3CoMKgwqDCoMKgwqDCoGludCBwcmVjaGFy
Z2UgPSAxNjsgLyogMTAtMTYgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgcHJlY2hhcmdlID0g
MTA7IC8qIDEwLTE2ICovDQo+IA0KPiBJcyB0aGlzIGNoYW5nZSByZXF1aXJlZCBpbiBpbnRlbF9k
cF9hdXhfc3luY19sZW4oKSBhcyB3ZWxsPw0KDQpUaGF0IGlzIGEgZ29vZCBxdWVzdGlvbi4gVGhl
IGlzc3VlIGlzIHRyaWdnZXJlZCB3aXRoIGNlcnRhaW4gUFNSIHBhbmVscw0KYW5kIG9ubHkgZmFz
dCB3YWtlIHN5bmMgbGVuIGltcGFjdHMgUFNSIHNlcXVlbmNlIC0+IGRlZmluZXRlbHkgaXQncyBu
b3QNCmluIHNjb3BlIG9mIHRoaXMgcGF0Y2guDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiANCj4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiBBcnVuIFIgTXVydGh5DQo+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcHJlYW1ibGUgPSA4Ow0KPiA+
IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcHJlY2hhcmdlICsgcHJlYW1ibGU7DQo+ID4g
LS0NCj4gPiAyLjM0LjENCj4gDQoNCg==
