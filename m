Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9976A0885
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 13:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A380C10E204;
	Thu, 23 Feb 2023 12:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A429E10E204
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677155057; x=1708691057;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=V9IkC3eVOnI8Cg6a0C29pSiyVEmYN4HUaxCRGheh6lA=;
 b=K3Rvb3D2rsKfKJD5tJEwBzOXVWJ0EdGFZWQlipKIuNwWNedj6u8q/BHu
 vvwAXnXboSXx7axktjsONug1Jl9j2/N5XtOsi/hGhEqXKSFtC/drm243B
 /A1Dl3QPuty7ipaqGFFcCu8PJhOYZecAjMFu7kNLWRr9cXlRceNLpSDua
 g9idFeePqiZw7NQQHROaw0ds7g5HeGDqF4M4mwhgbZUDPPxqhz2ASHAfQ
 DMT1FLCDYodBGM4iDSkXmUoqKo/rmkiTCWebCWf7DJAuXPdLPfPfEWfXU
 obaWl+dq1vMCCuYFzeHWGTWyXS9IcmKs0gz2Ae3tCGb4yBZtR3kOoN+Rh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="397893952"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="397893952"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:23:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="736340636"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="736340636"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 23 Feb 2023 04:23:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 04:23:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 23 Feb 2023 04:23:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 23 Feb 2023 04:23:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1PLB1FcPYc/vPtqo7fpH93SsMiUywj8XL8aNB3Uwn+jD50ao/+BPuDJVJ9w5V0OhEKoTfggvj1k8fKcuPN+RP+eIKD5/NdXvaGA7BuCxJ+eo4UrjwSHXwCRPwDitpze9C8f8lS2XhISR+q2AToenJtHe5Fc2lMOPSZhbhxrLvgs62WCvPcIDDgs1w9Ad4I5PmRgFxr769lAaSbIhEoviOfmVy8Q4rV1oDWru2fDPxWVRigTbHzZt1aMhaG+4VBh9WmpIYRq2Q+4a1aiPiIgZF1PO7UdOWvKf2E+w6YlXNTC1V2OSjLttgm7zjlf1e8iSBJGgNEhEety9AIHpdnyYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9IkC3eVOnI8Cg6a0C29pSiyVEmYN4HUaxCRGheh6lA=;
 b=SwBVO/G8xb3REl+lazlqzIz1eMtvYuIxJVKXDhUpck9kpvtvHaMFx7CgEDYLITtLb9b6FxdUAthtqsO13dQEe8t2IFCxu0qEVzn3VPmN949OQ4TB4Z2wE02oX8D4s2qfk4uJAFEoxS0D6tmTOBhcnAvS4BO7yEz7oj3+nW0wMz58pp0d0jFZXka/3rJzVTATgye2H60Mv1GRRes3nl43gA7tFlOvrYXwHjF6IytZmghSFfAe/xB/Tt/9Y1jKYsWgDIhOyhlhFc5yq0VI/3i/xcV+GrfBJLeeubYIxLdOz7aIDlSJyas6KQhsbujIgrW4iCVSV/5KBAOUd09zdUD2ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH8PR11MB6705.namprd11.prod.outlook.com (2603:10b6:510:1c4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Thu, 23 Feb
 2023 12:23:41 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6134.021; Thu, 23 Feb 2023
 12:23:41 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/5] drm/i915: Dump PGTBL_ER on gen2/3/4
 error interrupt
Thread-Index: AQHZMO5WZJw+NhWAQUejROl12FtrwK7coXSA
Date: Thu, 23 Feb 2023 12:23:41 +0000
Message-ID: <44bf482115311564aefae475b77d3786cd5b74a3.camel@intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
 <20230125185234.21599-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230125185234.21599-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH8PR11MB6705:EE_
x-ms-office365-filtering-correlation-id: 916ef200-88c5-49af-6c0d-08db1598cc72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D96PiVHH4QcFhiCOaK3Rw/Ijde40UWSNoJZHyudresuU5+Y0avGIxRnXdPmu0TwacdMygJ46JPgmqkZrH1aIsXiRpXs56XcIPLdNWamHo96luMg8wim1dd8wCY/7Q1/aOvZKZNIKFq0nRj1w67AXUf8PhIrltJ4evlMhvLjeFKt0EjdXj7FxjveKLokZVEb2ERL1d31Kgby/dqA5mma9fp7m+8FkCC/WTLcTTuG2L8s/fqn3FhWqzOHXLQ1m7qeJd7gAm8j/97DgZrqT2cBNdHO/NUG2SNk57RHQL5mA0MyxEa3xZMdIT6tmAmmY5+e6CDJ+yAsibGCBG7W54FKaAWv/96LAchCdhRxk20YxYhZqcaBsxZPS2OEtOwA+KdWmTW9dTOkDElKLbBQVXmBlbMXAQ3nUXTUOP+UUSkQ6sN0hMMMWXhTwYtufwPopOVFUMpLF4DneQDsyO8uzHOrlUa01UXFtVwRpRY8/EXUNkhq326evbk7aRLN2KRlIGyvNaKpL4igXdogFso7dCUA3Gekge03J2K2OP7OSYvxZkuI88xZDYgwSRt2UKjDsY91fQ6hX9KHP2ft4x0hvd7gV1FtBgxottK+HNjRj7k+sV9JUZZK+ymgekoiXxhqIYVBAU/SbStGRoPX3WTVMI41eMTFGrVW5YDwIKfc0RipzPecENrwM4tpVRKVEpRfIxm3bo4fcYm/HvcVTLCwD2VwqzQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199018)(64756008)(41300700001)(5660300002)(91956017)(8676002)(66556008)(66946007)(66446008)(66476007)(76116006)(2616005)(2906002)(8936002)(316002)(6486002)(110136005)(36756003)(478600001)(86362001)(82960400001)(38100700002)(38070700005)(6512007)(186003)(6506007)(26005)(122000001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1FFTzJmcmtHaDNpU0dUZHkvcjV1L1VDejRUOUl2bzhFUHRaRUNVdW9OK1hV?=
 =?utf-8?B?VmkwbTAxQ25BWmg1SEhQcFM2WTNGM0RlVlMrRzJsNDd1dTdhY05TVU9tUFda?=
 =?utf-8?B?VllmM2xaTGxLL0NrTUdzMm10RW4rU0xKazhmc0ZqSkljNkVyRVhxSjhSNTRp?=
 =?utf-8?B?a2E0UEVNM2I1c3o3bTVvbTczZTdFSnVnTUZsa2p4aDRqL1dOanQvVzNObits?=
 =?utf-8?B?a3RIQ29uaTM4L3ZrS09NZG5nSHg4VDlXNUdWSDNQZTlTZ2NnVFo1ZnBMYk1Q?=
 =?utf-8?B?ajBKZ1EyWGxHb0V0ZVJxVkJlQzE1aG4rbG9SMW9NMmNGUHNaMDkvdHMrMGQr?=
 =?utf-8?B?QWo1Y0dHaFVBQkx1bWx2K0FaaWx1VXMyUkJmWE5zZmF3R25nS3cyTjdUNHBH?=
 =?utf-8?B?eVRFYktWOHJEZUdOSGdaMlpwWE1nZm5SdWJTQ3d6ejZwZTFsU2FLMFdoWk9F?=
 =?utf-8?B?VXNPeXpRa1RzQmJNRVA0Z24wVERqc3pseTlDZG1rU211TWRLRHE2V05FekFa?=
 =?utf-8?B?QXRvendHcDFOUzUzblF3MTlaQVhMYW4zdnBSU3VNdGwzOVlHRHpSWmF1blhB?=
 =?utf-8?B?QkJLdXVPbWVaSGg2S3QzK21lZWJMZjdLL3FPNVVtNWhHWEtXbDhQT0YrYXRh?=
 =?utf-8?B?UmF4cHVDcUFJNkFCMmtKeG1xSmo0b2c0RXN2bENGYzBjZnJvY2ozdmN1S0x0?=
 =?utf-8?B?aUFjNkhBUnNocUtYV3JJbHRmQjk0b2xpcmRFUlFJamk0R0l5VTQ0NTV0T2lu?=
 =?utf-8?B?eGNpTEJ0a2kyMjkxVnNpVXM0amJkNHJBVmhCOGFxZWdPbVFoV3Irb2RtNnNk?=
 =?utf-8?B?cHRJTEhXbFRFQUFTcFgzdFRVeDdSWERhT25ib1YrK2pVRzZVdTlkQVNuTDZO?=
 =?utf-8?B?clZhbUxkRk5Ld2dDZkp0ejVETU9VdEdlc3YzSkh3MUpwSmJxVy9rM0NtNDlD?=
 =?utf-8?B?bGFieGZwbHpGTENoNDVNRVVVMXJKNS9xVEJLb0Y1Q0dDd3E5c2hIZWxWWWJP?=
 =?utf-8?B?VkQzV2hDUHR0OG12M1lRWnJvMkxzVGpwbi93R0NSZVArcDlJcko5WStGNkFm?=
 =?utf-8?B?K0IvQVY3S3FhVDF5UzhoWlQ1dmJYc2RncUFqaXlocHd1YmRoN0R2aDlpL2Fj?=
 =?utf-8?B?OUtpa2Q2bHVoT1VyWWxCSmR3ZE9DcnkyUzRMd2diMzkySGtxRXRxNCt5UUxR?=
 =?utf-8?B?eDV2cDQxMmkzYzhSWU9CWXdQTzgzY1h4RHpVUUIyeUk1RUplcmxoaStyTlhk?=
 =?utf-8?B?Z0wzeU5yS3VmdXY2K3pnVmJkRGxyY2R6MEN3dm02aFluSG4yZHJNVlBHQ0JI?=
 =?utf-8?B?V09sbjJaUTJuZGVOUFZMeTZ2aFU2RFdlTG9xa2RReEVSYlpSdHBmQmdHN1d1?=
 =?utf-8?B?QmJBVlcvUFlKOGRydjhqTkNSMVRRa2NuWmI3WjVlVzJJbndRZURjejBtclgx?=
 =?utf-8?B?YTdZMG83U2VLejk4dXZUOFhqNW1yTzgvYXJVODdvS3Z1cElhUStGaXVOMVJ3?=
 =?utf-8?B?dmpMY0RVKzJJemh6b2RkK2lIOTJEZnJxUzV6a0xocGd2UnIrQW93aEE4Yncr?=
 =?utf-8?B?WHVsT2lXK0ZlS0RHNFV6cGZ1THZIV2xaNEZORUprd0owOCtIR2xDUWJvUHNL?=
 =?utf-8?B?TlJUWXpabzR6Ri9qVHYrNWVRWnB4bXhlMDBKL011QWR2N2dwcGpZaEV1ZThF?=
 =?utf-8?B?RDBRWTQ2VGVXUSs0OUxydkd4NkQ0ZXd1TGJPSWxIWFdYQWJSQXA4SS9QMFE3?=
 =?utf-8?B?ZlVCaERBajNCc21LM3krMENmWjE1ZTgrclVjRFBwQTcxd01CRzd6TGJ4UDYx?=
 =?utf-8?B?UnJNQmJTTWxHa2c0ZGpudFdLVE50bDhXV1JwMkQ4MC9QZVY0Ui9BTHh3NTNG?=
 =?utf-8?B?VnFpaWY3ZnVwOG1WVEEvZE40NyttUzJkM09YVzJiMk9JZzA0a1RnZmc0U09v?=
 =?utf-8?B?WGd6U05tcHNFcnVLYlp5K2tnL2tBelIrNlJkRHVEUlpXKzNVck16bUJDYVJC?=
 =?utf-8?B?VFVUclhycXBqT1lNMVRiTFgxMktRL2JpajZINXpkYkZ5Zmd6NUZ1YUlhMDdE?=
 =?utf-8?B?eXd0OUdxNEtWRzh2TkpkNnMraGtCK1RzbVZFV292NXI3UHk2Q2pNaFl3cFlL?=
 =?utf-8?B?U0FLU3craGlIeTZ3ZXA4azE3aUJqZWxwZlMzWGRZUncySjhWVmxzQUgrSHRL?=
 =?utf-8?Q?eHAhCOW4kNDYGkstiv3It50=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <235567A1C660DA4CB7D6A89D24DDBB5E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 916ef200-88c5-49af-6c0d-08db1598cc72
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 12:23:41.2164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fWhLtUM9COTshL7gsDaWTB7PtkuU5Cj6vbUUK+v17iqa+1+yCUUCtN/rr8YCzsWKNXSpKS2JZMRcMKqop9ESanQ4eeYFxbGp2ibW/Ektk0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6705
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Dump PGTBL_ER on gen2/3/4
 error interrupt
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

SGkKClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbT4KCkJSClZpbm9kCgpPbiBXZWQsIDIwMjMtMDEtMjUgYXQgMjA6NTIgKzAyMDAs
IFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBQR1RCTF9FUiBjb250YWlucyB0aGUgaW5kaXZpZHVh
bCByZWFzb25zIGZvciB0aGUgcGFnZSB0YWJsZQo+IGVycm9yIGludGVycnVwdC4gRHVtcCBpdCBv
dXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
fCA2ICsrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IGI0NWQ0MjZhNWJkNS4uMGU5MGMzNDgxNzVlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTM1MzksNiArMzUzOSw5IEBAIHN0YXRpYyB2
b2lkIGk4eHhfZXJyb3JfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZWlyX3N0dWNrKQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZHJtX2RiZygmZGV2X3ByaXYtPmRybSwgIkVJUiBzdHVjazogMHglMDR4
LCBtYXNrZWRcbiIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZWlyX3N0dWNrKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgZHJtX2RiZygmZGV2X3ByaXYt
PmRybSwgIlBHVEJMX0VSOiAweCUwOHhcbiIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGludGVsX3VuY29yZV9yZWFkKCZkZXZfcHJpdi0+dW5jb3JlLCBQR1RCTF9FUikpOwo+IMKg
fQo+IMKgCj4gwqBzdGF0aWMgdm9pZCBpOXh4X2Vycm9yX2lycV9hY2soc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAo+IEBAIC0zNTc2LDYgKzM1NzksOSBAQCBzdGF0aWMgdm9pZCBp
OXh4X2Vycm9yX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
PiDCoMKgwqDCoMKgwqDCoMKgaWYgKGVpcl9zdHVjaykKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGRybV9kYmcoJmRldl9wcml2LT5kcm0sICJFSVIgc3R1Y2s6IDB4JTA4eCwgbWFz
a2VkXG4iLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGVpcl9zdHVjayk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGRybV9kYmcoJmRldl9wcml2LT5kcm0s
ICJQR1RCTF9FUjogMHglMDh4XG4iLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF91bmNvcmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgUEdUQkxfRVIpKTsKPiDCoH0KPiDC
oAo+IMKgc3RhdGljIGlycXJldHVybl90IGk4eHhfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAq
YXJnKQoK
