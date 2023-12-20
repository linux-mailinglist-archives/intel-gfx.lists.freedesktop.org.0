Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F99819DF0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4162410E567;
	Wed, 20 Dec 2023 11:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A4DA10E567
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703071374; x=1734607374;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ql5IhJXwIwftRCw+eo7kbyTpH4zKwJdSvXdbrIa8sYk=;
 b=d/M+GacwVw4WrNhbhZvyBazuAqP8y9+xrYB6ryM4UB7/tLQjaNI6cO49
 ozdd9zFvGWYf0Si38SaUP5UA+a4kxbhSYLpSdDpEOntuFNTlQb5ZVlX11
 uvwTI6aBzn0YFTh+CCP0w+EJ1969n5IKkNbejgMwaH+tSfVLV8PYn5Cer
 YM+jiURQBUduGXa28A+S6JyimEbirfoPy1D4gg/NBr/Utl5ZwmphD7Nn8
 B67Yoqch6iksOtQ7B+wpx05F7vnF6N1dnnh9CR3dk5yc2k89HpC39cMmz
 zHMgzDXEiLhFU7nmUORyUYy6O2dXgNFEq1dlYSseRcicZgxtflYyuEYnU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2637624"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2637624"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:22:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="866941843"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="866941843"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:22:53 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:22:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:22:53 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:22:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ePNrYS9LGX8ZEXNj3SzZyNkBEdyMxm+Rq7NLJ4fAcg91MDK9I5N2hvrdatRT6cJaA2bmb/zxWuoPTDLnx4dQonNhIC+jIhCxpDX/B2bH2qWTsxpatj21tL3MtnFALFK4ehYcnle2OeLxfpDQFW7jVQ95FSHcfaG3BsJIQDI3puEenttaHi9AAB80z0rerO9dYKoCrxKU5U7y+NzsPmFVfCgDuwkEFk8aWw7sgvLF2M4BVtLcIbEYqJaWdgyqz3NB2GH38PJsqIlvBpX8A0WHeQl2HFp8+6KQQav9NxXBwsUMO3SBpEfUJy/zoOwpH80kZpkUwgenEwF4j8QPeDAPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ql5IhJXwIwftRCw+eo7kbyTpH4zKwJdSvXdbrIa8sYk=;
 b=VlRN/CRHc1ZJVVjl/4fzI6e8Rqch7koaII7VjvIljuVhGLLalrqUPKUYk/d4gK/0sFnhP1q5uFq+1Kry4PsygUJdlNwSAeWwm0O4fPFhaF215bzOIhOilvHUxuoU11pzHVsHd+xRs+9gG6h0h8ymc1bJ+TcgQsB/ptkUhyzcUuy7/30pzizqyS8KzYwwDe5VvknAvZ0Pw4iBWYRt6vP5nfERkglJJUP4u+7SJPwVsZxFGOiFjbbZGwonh43znBI6k0CO5nGqDDprJ1lNS8SiPAWkpY9LO/pW+rcPRVYoGN52ZMXnF+bfPMgtlwvLeSphVDf29QgW6tq9BSlN4uiY/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SA0PR11MB7160.namprd11.prod.outlook.com (2603:10b6:806:24b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 11:22:51 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:22:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/9] drm/i915: Include need_vlv_dsi_wa in
 intel_vblank_evade_ctx
Thread-Topic: [PATCH 4/9] drm/i915: Include need_vlv_dsi_wa in
 intel_vblank_evade_ctx
Thread-Index: AQHaLa69XN3bNxBXlEK6Y9b7cL8Uk7CyEkmQ
Date: Wed, 20 Dec 2023 11:22:51 +0000
Message-ID: <CY5PR11MB63449BC5BD9E50B6D9CCD611F496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SA0PR11MB7160:EE_
x-ms-office365-filtering-correlation-id: 6ae4b270-16b1-4499-2ced-08dc014e00d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cAUO/oqBUGG/Z/kflnYEzPgQTnYBSB4K5OD1hk7qZCMXMjhYT+pchNqEhb0Oeo4/4inkuWSQ55+9hsP+xGZSZohVuaQjHS9r9Otz6yCbU/q1OJrnMa+9uXbgzzmlesuna9rP+vrcnx0/T4mW9XSE/cnB2waeFomfn0yzrPoRnhbZYyQgG4cUmuJPpIThQJuaerv4CA+RIf2Ps9JTve0hhbGcU9mFhY+5Ct9H4ym2S5uD6p4gePnVJ6hdYKHXssAMhjc9m5Gn389POTEf27vhDvyJ5+0YK5JzuNWGyBzxs5UyuLSJCICjBWYKaaI0aYpxMoLhWc+f5pX8yMjOKWh33gzf7TFHi07m55HQai9SVYtPGGcw4CMLPdm+dOJVbqr8oz9IQhsDWVngjn8joD1/AagkTIc4vbuax1Tnu1pgCfqfEFu1JQpxFgHekEsuWACldIyp1aYEckKggIbz6aKxT52lqoZp46Y3t9emXz+/peP45SIROtGXjSa/UVISSg5zg/vf1yfrQ6gaGuWzSrhQ79u1XDTGa9Y5inv8bPKHUyRhsZei7NkdMiKZtod4sq0JYR0V2yHaL6QweY5Gmfp9Iqyk1qXwUWXlcmoFmXCy7k7uOa56Kq60HI8PRPpy0b5o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(41300700001)(86362001)(33656002)(38100700002)(122000001)(82960400001)(71200400001)(110136005)(66476007)(6506007)(8676002)(8936002)(64756008)(66446008)(76116006)(66946007)(66556008)(66574015)(9686003)(7696005)(5660300002)(53546011)(26005)(52536014)(83380400001)(316002)(478600001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDY1bUFqMjd0TFUxc05HVWtTT25EVWJMSkdwNUR5RjhEU2k2Y2g2c0dlckYw?=
 =?utf-8?B?V1hweUMxYkk5Z04zMWdRYWc4aE56RXpaN04vTk8zK2ZpcVorVjVOTHE5L0I2?=
 =?utf-8?B?Zm1aYU9ITmFOdE9pYytQNVpoeEJnaTMyNm55c3FlNG9jcG9lZ2NpNUdPa002?=
 =?utf-8?B?LzdxcXNLZUxkTWJlb3lLQUpNV3lSVWkxa0hJUC9BWmw5ZHBKbnoraE9uZTIv?=
 =?utf-8?B?NXZDL0FYY3Rvd1NTcm9UQ09JaUM1MDAvNDBOaG5OVkU0bE8rY0xsQXRINFBh?=
 =?utf-8?B?U1NmR3QxTEUzOGh5M1IzNGxyc1VSY2QzaG1qUzkyd0MvT0M0RXdIOU1RMVBP?=
 =?utf-8?B?akRTeVZjSWVSTCtwQ09Pd2FsUmNXd0JBSzFWYW05WUVhdkluM2xVNUh0bzJk?=
 =?utf-8?B?ZDNGTml1bFFBU2xGUklYSTcxdFNPVXdyU2JWZmNWTFFQbjdickRxMEt1Z3lx?=
 =?utf-8?B?eG5WS1oydnYvUjdlT1JuMWhzSStQMU1ycENPbnlhb05XSDB0UWpRRldjUjY0?=
 =?utf-8?B?Zm50RnA5RlhkQmVWcFRvQkNxcExZT3k4YzRJcWlPbVRqUjZWRlp0NGVDRk9k?=
 =?utf-8?B?ekJOQXBCTVBtNWlxek9yU1JGZ2UrcmV5anBKRlgzQndsbzlzQmFlVXV5bmh3?=
 =?utf-8?B?L2VCUVRBOHQ5NzB1RVZTcWpnbFlhS3BLeGxUUGlhSjk4aGp3WFVzL0JMTURo?=
 =?utf-8?B?QkV1MG1HZXQva2xWc3AxUG5hM1p4ZFlTSUtFZXRlSXBBR01xaFQ2Q0czYlp3?=
 =?utf-8?B?Z0wvOU9nRUdBRXhBckU2Y3lzeTVmanQrVU0zcndDYUl6N2FPSkU3U3NjVFdz?=
 =?utf-8?B?VmdMRWtBOTBCb29ZaEp3b0hVRkgrUWorQ0JLWlBIUmIzbkFRc2ljcTR1ZzVm?=
 =?utf-8?B?bnU0ZnJ2ZElrOHk2Rk4rbGUwMWJ4WDNmMEhRSjlKbkVXQkxiTnhaQWpyOVd2?=
 =?utf-8?B?QlFkWU5jNW9xcmJVVzZPZU5xM3pSZ3RTNTRBWTRwSzZmZ3RpM0JKVTgrV2Zu?=
 =?utf-8?B?QkI2cldHaVluTHJxWit0bFM0NWVyRlRHTDFIaFA1RDdhRFZBQVBlWlBxZkxM?=
 =?utf-8?B?NitYaHh6akFJSmgwL2hhSXJodTB6V3NqeFVHQ0hZU3lZcHpCMkVFOUgrNHpV?=
 =?utf-8?B?OUdzU1NYSUorWVdJVDhVMHpaZk9yYTNEdXlPOVEwVUZWTUhQQWIvUkxoUjk3?=
 =?utf-8?B?NUN6TVplY1Y5YnVaZnNDUEUxRGdDYTV6NEM4cHY2bkF4Tm5CR2o3c3JHeUZo?=
 =?utf-8?B?bjB4V2xGZ1Y1RDBESzBiL3k5dFc2MHE3OUdiRFp4VGJ3MW1HaEdEU3k0MzY1?=
 =?utf-8?B?cU55N3FwS2hTNENVemgxeW1KeHhsa3hzR2dQVzhTL2hwbW9kMUZOWmYweURm?=
 =?utf-8?B?ZnZhNU5hOG1yby9BMlJJT0tPZXYrQ3NCN2o5SlpkMmNVM01sZ29qaXV4S2Qw?=
 =?utf-8?B?NGpNeVRWNy9aS3h4bUh2aWJrakVLNFMyMldlOGJBaWxYNUVScyt6VlVFOVJX?=
 =?utf-8?B?MFc5WDl0T3Z5UWtZalNPVWRIZmFxWVNJWUZGTlpvZ0ZrcjFFRzRFbGVKcmJT?=
 =?utf-8?B?dVVJTWlKT3RSa21SRzc2V2hQZmtNWlN3UDFFaTlVU0dvd2Y1VmpsU0doZFVP?=
 =?utf-8?B?MWkxN0xFR2I1ZlozL0RJWFoybXpLTnFCWnorLzNsZjRkRlJnckRtazZiUTBZ?=
 =?utf-8?B?cm9YeWdsZXphOEY1T0E0aUxGcEJPL2pSczBTYm8wRVowQ2hYUVZ1ZU9TNk11?=
 =?utf-8?B?Z2NDdzlseUhIUmFodlVUUG1mQUM4dTd5NU9zQlRPU1pPQURZSFM4M1hrLzJw?=
 =?utf-8?B?akgxK0VPMlVXMlhEOHJIVkdhTW9hNDRabTRWcUVuNVRFaDJ2bmhsVGsyZDZp?=
 =?utf-8?B?VUVmY1lNZWM0MjdmZ1RLU1Npay9GMEJhR2lRQ2lnTTkydGFFR0c5azRUTVdo?=
 =?utf-8?B?ZHd3bmVuemptbVlSRFIydCtjUy9XMm9NWmZyYjIxaTMzNnZmLzZ6TStRbVh5?=
 =?utf-8?B?WTdWUjhVdTVLTmpTN0N5dkJFcTZSMmxhUUxOOUNhOEtHeVBVdGhQVjN3b1ZP?=
 =?utf-8?B?cjBQaFlzaTBFd3gxS015QVl0UTM5WHdRWjc5M25TYiswUVRkbndzR1Y5eUUx?=
 =?utf-8?Q?5nHsRRpJhgGOeIsckRM3fiB/G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae4b270-16b1-4499-2ced-08dc014e00d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:22:51.2496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E2xnDN5ZLTWuQLbu+blWDGJ3cuOCYEOsp5PxZmgLbEu1owT8aXgB9LZ442pmIzs3lu1QaR+t+otZNNKXJs+RQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7160
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
NC85XSBkcm0vaTkxNTogSW5jbHVkZSBuZWVkX3Zsdl9kc2lfd2EgaW4NCj4gaW50ZWxfdmJsYW5r
X2V2YWRlX2N0eA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gDQo+IFB1bGwgdGhlIG5lZWRfdmx2X2RzaV93YSBkZXRhaWxzIGlu
dG8gaW50ZWxfdmJsYW5rX2V2YWRlX2luaXQoKSBzbyB0aGF0IGNhbGxlcg0KPiBkb2Vzbid0IGhh
dmUgdG8gY2FyZSBhYm91dCBpdC4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCA5ICsrKysrKy0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4IDkz
NDc0ZmM5ZTUwMi4uOTJjZmI3YzhlYWRiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NydGMuYw0KPiBAQCAtNDczLDYgKzQ3Myw3IEBAIHN0YXRpYyBpbnQgaW50
ZWxfbW9kZV92Ymxhbmtfc3RhcnQoY29uc3Qgc3RydWN0DQo+IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUpDQo+IA0KPiAgc3RydWN0IGludGVsX3ZibGFua19ldmFkZV9jdHggew0KPiAgCWludCBtaW4s
IG1heCwgdmJsYW5rX3N0YXJ0Ow0KPiArCWJvb2wgbmVlZF92bHZfZHNpX3dhOw0KPiAgfTsNCj4g
DQo+ICBzdGF0aWMgdm9pZCBpbnRlbF92YmxhbmtfZXZhZGVfaW5pdChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+IEBAIC00ODAsOSArNDgxLDEzIEBAIHN0
YXRpYyB2b2lkIGludGVsX3ZibGFua19ldmFkZV9pbml0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0DQo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF92Ymxhbmtf
ZXZhZGVfY3R4ICpldmFkZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2lu
dGVsX2NydGMobmV3X2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZTsNCj4gDQo+ICsJZXZhZGUtPm5lZWRfdmx2X2RzaV93
YSA9IChJU19WQUxMRVlWSUVXKGk5MTUpIHx8DQo+IElTX0NIRVJSWVZJRVcoaTkxNSkpICYmDQo+
ICsJCWludGVsX2NydGNfaGFzX3R5cGUobmV3X2NydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EU0kp
Ow0KPiArDQo+ICAJLyoNCj4gIAkgKiBEdXJpbmcgZmFzdHNldHMvZXRjLiB0aGUgdHJhbnNjb2Rl
ciBpcyBzdGlsbA0KPiAgCSAqIHJ1bm5pbmcgd2l0aCB0aGUgb2xkIHRpbWluZ3MgYXQgdGhpcyBw
b2ludC4NCj4gQEAgLTU1MCw4ICs1NTUsNiBAQCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLA0KPiAgCWxvbmcgdGltZW91dCA9
IG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCgxKTsNCj4gIAlpbnQgc2NhbmxpbmU7DQo+ICAJd2Fp
dF9xdWV1ZV9oZWFkX3QgKndxID0gZHJtX2NydGNfdmJsYW5rX3dhaXRxdWV1ZSgmY3J0Yy0+YmFz
ZSk7DQo+IC0JYm9vbCBuZWVkX3Zsdl9kc2lfd2EgPSAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikg
fHwNCj4gSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpICYmDQo+IC0JCWludGVsX2NydGNfaGFzX3R5
cGUobmV3X2NydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EU0kpOw0KPiAgCXN0cnVjdCBpbnRlbF92
YmxhbmtfZXZhZGVfY3R4IGV2YWRlOw0KPiAgCURFRklORV9XQUlUKHdhaXQpOw0KPiANCj4gQEAg
LTYzMyw3ICs2MzYsNyBAQCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLA0KPiAgCSAqDQo+ICAJICogRklYTUUgZmlndXJlIG91
dCBpZiBCWFQrIERTSSBzdWZmZXJzIGZyb20gdGhpcyBhcyB3ZWxsDQo+ICAJICovDQo+IC0Jd2hp
bGUgKG5lZWRfdmx2X2RzaV93YSAmJiBzY2FubGluZSA9PSBldmFkZS52Ymxhbmtfc3RhcnQpDQo+
ICsJd2hpbGUgKGV2YWRlLm5lZWRfdmx2X2RzaV93YSAmJiBzY2FubGluZSA9PSBldmFkZS52Ymxh
bmtfc3RhcnQpDQo+ICAJCXNjYW5saW5lID0gaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoY3J0Yyk7
DQo+IA0KPiAgCWRybV9jcnRjX3ZibGFua19wdXQoJmNydGMtPmJhc2UpOw0KPiAtLQ0KPiAyLjQx
LjANCg0K
