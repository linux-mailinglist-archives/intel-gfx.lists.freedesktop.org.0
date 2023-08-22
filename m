Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A62784B9F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 22:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 937EC10E03E;
	Tue, 22 Aug 2023 20:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81BC210E03E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 20:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692737430; x=1724273430;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=a4ALWtxZpZM3jRHU3Arq/UlFxH/WLroL6b7W+UPfZ+c=;
 b=ATpwEbac1x9NactVKHq6iRBy9owd9nwTvufzI2AC/n/2whg3QyKh0ZIL
 UQRTn6o6ipkzOSMWziH71Jd+uk1/i2ytssMncfRjHWFL0tg33fhOutK9B
 5wVbfjp+H3/unDIFUlHjifeZKKb586igUJO7BdH8qBaE0T6IPex9kzI7P
 4ciuVQoI2aPxnffHNnZgxflTllOnp/rbGCsUhrxyyet7koMhH9O9RdDGv
 hhLKtbpTu1196A1EfSqeuRseivoxSMCseBZmD4Kp8Bud1YOaogzhKd6MA
 bfrn9VRYGJOa8uMYddUlVj+LqOuQlDl1KjlIXrYOuOJL6GkKcBgroQ2sq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373966719"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="373966719"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:50:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771484529"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="771484529"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2023 13:50:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 13:50:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 13:50:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 13:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwEl93SDCkvdHtf9sZrvDOpnmmT+uzJPsu9KcCANJFhDkJn+3XHEZgdhJE5DRZkwbbPdSHOeHPRzRgdSgBPrieWb6LMkk+1xHVVmcSsgGsUPntCeBOHUNSj3kVADiJ1nGSjUaWlp1OLWg308nayo987eFmR2FjI0LglSGXvqzKGc02G3W1MbKIJsPsRb866NMvOVcbyIOia/ow+PtUNHP+4WwCzeD4Tj6zvkFkbK+e68vBxPjpxeB0SuQxD+rQOntZrcxxrYo158vxJgGT8ytfY8Vt628uElxYO5i2U+nyBSNFBznZMEv5WO+KOKZ7+gJd/6tF61PzfP5/fK1ms4/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4ALWtxZpZM3jRHU3Arq/UlFxH/WLroL6b7W+UPfZ+c=;
 b=kPL5HrDYgfmIgh8k3J3LiOFGLbKZISQbJ91SDm/BP6yk2m4tRd5pG3SzdZxhp2VHv1OwCb3nHQUGrZQkIms7AKxArYn8QluBFr79AA3L2MXl7IgFDap819qp32Esg8NZj027bIoI+iE6HlRoop1l7FJs812Mv2Y9smo42/sb0zlNxNh+AZArEVjUH2Z17Gk9Qvpfyw0prODiXGWUi7QaNVuKI3je6TFqhBCnlUevUf8Y2BXb45GtTnIZscqMAqxyeKENydtiQr1jrALOjE5GIMoLrQCrrUQKb/0l8bD34IkLucZnzk/FJdUcuN4eRfNGW7uFXiKNO0S0BWSl/DlkBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4968.namprd11.prod.outlook.com (2603:10b6:510:39::15)
 by SJ0PR11MB5166.namprd11.prod.outlook.com (2603:10b6:a03:2d8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 20:50:26 +0000
Received: from PH0PR11MB4968.namprd11.prod.outlook.com
 ([fe80::be64:a25d:944:892a]) by PH0PR11MB4968.namprd11.prod.outlook.com
 ([fe80::be64:a25d:944:892a%3]) with mapi id 15.20.6699.020; Tue, 22 Aug 2023
 20:50:26 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 3/4] drm/i915/display: update intel_dp_has_audio to
 support MST
Thread-Index: AQHZ1PhIo3nF3k4Okk+K/5Np8PdPvq/2ypgA
Date: Tue, 22 Aug 2023 20:50:26 +0000
Message-ID: <2c89dbf88aea4da73a12f126b31029620e2801a3.camel@intel.com>
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
 <20230818111950.128992-4-vinod.govindapillai@intel.com>
 <871qfv6xq2.fsf@intel.com>
In-Reply-To: <871qfv6xq2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4968:EE_|SJ0PR11MB5166:EE_
x-ms-office365-filtering-correlation-id: 049e612d-d005-4cc0-2f4e-08dba35169d4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +NGNeBNCjLI8GszAlD1Vyri7O/nprkJttz6tEXDJhkPqmS3djbQfZniX4AJExH1Xil+OeFYMHVEbvDhNrGJHvoQ0ITBI3DByBglf5pPkTPAd0Yh8Nt4rtDvjNw783LfzEbQ2Cbh6MydBFjsDLqtHJsz/t6ZDuF0VzyanlBXMEXE/DKcR6XBgsGx3mM03hkyYvM9E1G3r2wBnBJr7b0FAAc3V58CTbt7HK0JaRbIqQArCoi4Jq8bnovgU7X8j5iYJZCZOpwivKT+kHfCk24LYzi8TRlH2whO3SnopjQXrjQlJ9CY/8uSr58eU8S8SH3wr7GMLC0j8HeepkhMHoq7tfx6xgAS8CXMSdbObXCqQtZdorO9wZuZRPZKfX8TOUS8Ts8SaBY6L7dd/888GQZzn7bOBrKbBsX/7LHDZxEL7yUgeMKwiNRk1ip+stM9JYuJtv9YTIslulJL8JhcMet0RYB/mOW2mGOX1PTntnRMQimj+xVBs1CtRNS6HQZuWKMB592a0ipSXAaVcLmrKp55QnG3zvJyZ8VhZx1zRptyv5B3iGe1sPnWo++DidUE+NsHoEHiHr34BqiyYxeNy51+10KcDboHH4oedG5LIIebEo92BuEZ6uEhnLDJItXo6/aAd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4968.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(396003)(376002)(1800799009)(451199024)(186009)(122000001)(41300700001)(64756008)(66946007)(66446008)(6506007)(91956017)(110136005)(66476007)(76116006)(316002)(66556008)(6486002)(82960400001)(38100700002)(2906002)(26005)(8936002)(8676002)(2616005)(38070700005)(6512007)(5660300002)(15650500001)(83380400001)(86362001)(71200400001)(36756003)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R25BNzc1UlN5UUxJbWx6OFc0QXcyNFUvckExWnJnaUJrZVk0U21Vc3owOUNy?=
 =?utf-8?B?c0FQUzlWdmNCaEkramFKMmJKOFVBdVFJWHZYaGd3dEM2S0U0RktjRUhmY0pQ?=
 =?utf-8?B?WnRUc3JOcHd5Qk5aeUNQRFUrMkJBU3V0UERaUk9UTlA5Z0hFcldwa2dMQXox?=
 =?utf-8?B?Zndxd1NpQ1BGNWNBdk5TRUREcUFpakJ3TThDSEZMVTlGRmxmVHE1eTBtMzNI?=
 =?utf-8?B?NERUYUJOc3dYZzRxZU5uNGdhaDc2WUw1U1FTQVVTNDluN1VPbkhReFdwWDVq?=
 =?utf-8?B?R21BQ2FmWTROcmk3SGY0d1E3SjJLR0tjYjNxWkcwMy9GaTZ5cElZOXlxYUNv?=
 =?utf-8?B?S1JHQzA1TldpSG5uOXlaWUIwVXFQZ085c0Q1Yndpc2ViUUJyaU5mbHNBVVlW?=
 =?utf-8?B?NDA4Z1JENDJyS0hYdzRiSnR6dmpVVjBTdmNMR2dpRm5EZUdvVWRDZnE2Z1dm?=
 =?utf-8?B?TEpmRC9LTFdTaEk1THB3bmVqM2Z5d2Z5Y3kwd1UxUnZIMGJybmd6UjZRV3hQ?=
 =?utf-8?B?ZnNsNkpvclg5NE9SY1BuK21yRUN5SjV1MFN1cWVuakZ5SmtzVTB5UVFmKy9B?=
 =?utf-8?B?VDRXZ0VHVlhMWWYvNWRFbWM0RTl1YytvYnZMVi9ldjNraXNYQVRkYVhIbXBy?=
 =?utf-8?B?UjdMVGV0SXVheGNXSzAzLzN5QjQzeHdhV1VFUnh2RjVmaTQ0aTd2TktoODR4?=
 =?utf-8?B?ZktmNjdlcjR1d05nT3ZTK25SOHZyTCtXbWxMRVBJS2dybkZJK3VYK3pTbFEw?=
 =?utf-8?B?ZExqOC9NaEhRL2hubzVVM3ZWRE1GL0Z4R0VxOCtpTjJrVjZoaHpWTFZUSGhy?=
 =?utf-8?B?WmhydUJyUDRGaWR3Rk5QOHhIOUt1NmtDTnptOU0wWkcvenhoWTgxUFhTOURv?=
 =?utf-8?B?SDc4TTlLTnFjdXFJRU1GTWwrTnZuMjdXOUxqRzQvRG1GUENPcWdURkhXQzli?=
 =?utf-8?B?c0I0aDh0Q2JCQmFiemw3aVlyRzZQU1ZONDNHZnB4K01pV2wxZU42MmFkQ1pr?=
 =?utf-8?B?cXVWd1N1QS9STEQ3VTVaNHlhRDY2VUtKSENGUWFYdFlVV0dzTkZHWWRDNTJh?=
 =?utf-8?B?UjNoQitjc3hadTBLbGxPMkErMGtWdWZKYk9lcXJidDJWaDc5TEEybFRVSHRn?=
 =?utf-8?B?K0VMSEdBZVFxMUtNaTB2YmZreXR1Z2tUVG5tZ2UwdmtvQkxjdXpCTGF3Tlh3?=
 =?utf-8?B?bmpnT2d0Z1ZZOUNiYjNJdnJVLys1UEk3eGVBUjhSL0I4UGpURVA2NSswTnd0?=
 =?utf-8?B?cEZEVkRPTnYwZnhUY3NFUVhVeWhjbnovMjE3QytFYlVHcGQ2VmdiNnVQaVRQ?=
 =?utf-8?B?WFphdjNVNEZaZm5Hc0gvOExCM2E2V2ZTaE1pemdEci9xeHhGZmNEZXFVNnVT?=
 =?utf-8?B?R2FkMUcxYWZra05PWkM3ditzRlV2eXhuQnZ2ZHBsQ2M3VEpLMFZxYmlueW80?=
 =?utf-8?B?MThoUzFvZGtCS0JpNGxvOFQweVErRjRXZklTVndUR1FGK1dCbGRqcittb21o?=
 =?utf-8?B?WktsSzFpQXZsR21VZDVmNnBiU21waGgyeHpmdjJuYm1EUGVCQzNuWFc0K3Uv?=
 =?utf-8?B?ZU9Nc2RsL0cwTmlKQTZXYVhXVVE2NDhQYlJPZ0EvcWVYVWRzelNMUzV4L1B5?=
 =?utf-8?B?V2ovcG1JNHhjMy81Y2RydlVhZ1dOaDRVVmVyWUsrbm80eFFxYXA2WDdlMzJF?=
 =?utf-8?B?RHpBeCtWR1RYU285b28zbXdYNjJmTFU5Mm9JOWljaWtIQlFvaGdIZm9GVHFx?=
 =?utf-8?B?NU92UEl6NXk3OElJbDNUSEZRNUxpWS9rT3c2RHZlZEJvbkNRdFBCaXorU05l?=
 =?utf-8?B?MTRTR2EyMnNZUU5yUjFiQXoxOEZ3dm1JaDJuaFp3NjhOc3MrUHFyaTY0QmxB?=
 =?utf-8?B?d2pKTWpwNUgzWXZDVTFEdDgxRzBPZnVNZktBNE51eWxVRXJSblgwcnJHaWxa?=
 =?utf-8?B?QXNvMnZjOTlXSWg5WWpPMXZITldkOWdJWlM5MkcyblhLWi83UExMMUovZUJv?=
 =?utf-8?B?Z0FqSkcxbUhtQUJtNGRhVjdUYjRXeGs5M1VacGtSYm9rZjhHdWxqSHVwVjZG?=
 =?utf-8?B?a1N2OHRBK29IWDNOUU84VGNEQ3dGQ2RHYldQdkxnczFFd21jRU1wS0ZqTnU2?=
 =?utf-8?B?Sk5WZ0tRWFA2c09QKyt4TlNXVmxQZ3RqdXZMbjQ4bCtqZUo3NEcrbXlQb1NY?=
 =?utf-8?Q?LNnD04JkwS8zF3TxkQIulyk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1CA8F605D55A9B42BB37E67FDB0CB6C7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4968.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 049e612d-d005-4cc0-2f4e-08dba35169d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 20:50:26.5801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AVgmdX9hcPAfdro7jYCmPHUce5Vt7cGLGj3O7M98flKMPWs0zjeYycVLhXRl90i4EU+03r6nohW3Pl7FMii6wyHbCP/uMwk1GcBcKKe3JqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5166
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/display: update
 intel_dp_has_audio to support MST
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

T24gVHVlLCAyMDIzLTA4LTIyIGF0IDE1OjU3ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBGcmksIDE4IEF1ZyAyMDIzLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4gd3JvdGU6Cj4gPiBNb2RpZnkgaW50ZWxfZHBfaGFzX2F1ZGlvIHRvIGhh
bmRsZSBEUC1NU1QgYXMgd2VsbC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTAgKysrKysrLS0tLQo+ID4g
wqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiBpbmRleCA2N2MwNmJi
YzE3NjAuLjBlZTliOWUwNWMyNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCj4gPiBAQCAtMjE3MSwxNSArMjE3MSwxNyBAQCBpbnRlbF9kcF9kcnJzX2Nv
bXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiA+IMKgfQo+
ID4gwqAKPiA+IMKgc3RhdGljIGJvb2wgaW50ZWxfZHBfaGFzX2F1ZGlvKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUp
Cj4gPiDCoHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKPiA+IC3CoMKg
wqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGludGVsX2RwLT5h
dHRhY2hlZF9jb25uZWN0b3I7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGludGVs
X2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlICppbnRlbF9jb25uX3N0YXRlID0KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUo
Y29ubl9zdGF0ZSk7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpj
b25uZWN0b3IgPQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRvX2ludGVsX2Nv
bm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpOwo+ID4gwqAKPiA+IC3CoMKgwqDCoMKgwqDC
oGlmICghaW50ZWxfZHBfcG9ydF9oYXNfYXVkaW8oaTkxNSwgZW5jb2Rlci0+cG9ydCkpCj4gPiAr
wqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9P
VVRQVVRfRFApICYmCj4gCj4gVGhhdCdzIGluYWNjdXJhdGUgZHVlIHRvIElOVEVMX09VVFBVVF9F
RFAuCj4gCj4gIWludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RQ
X01TVCkKClRoYW5rcyBKYW5pIGZvciBwb2ludGluZyB0aGlzIG91dCEKVXBkYXRlZC4KCkJSClZp
bm9kCj4gCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWludGVsX2RwX3BvcnRfaGFzX2F1ZGlv
KGk5MTUsIGVuY29kZXItPnBvcnQpKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gZmFsc2U7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9jb25u
X3N0YXRlLT5mb3JjZV9hdWRpbyA9PSBIRE1JX0FVRElPX0FVVE8pCj4gPiBAQCAtMjI0MSw3ICsy
MjQzLDcgQEAgaW50ZWxfZHBfYXVkaW9fY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciA9IGNvbm5fc3RhdGUtPmNvbm5lY3RvcjsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDC
oMKgcGlwZV9jb25maWctPmhhc19hdWRpbyA9Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfZHBfaGFzX2F1ZGlvKGVuY29kZXIsIGNvbm5fc3RhdGUpICYmCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfaGFzX2F1ZGlvKGVuY29kZXIsIHBp
cGVfY29uZmlnLCBjb25uX3N0YXRlKSAmJgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9hdWRpb19jb21wdXRlX2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZywgY29u
bl9zdGF0ZSk7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoHBpcGVfY29uZmlnLT5zZHBfc3Bs
aXRfZW5hYmxlID0gcGlwZV9jb25maWctPmhhc19hdWRpbyAmJgo+IAoK
