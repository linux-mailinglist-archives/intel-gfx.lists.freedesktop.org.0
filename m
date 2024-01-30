Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1332F841DC0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 09:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAC310F840;
	Tue, 30 Jan 2024 08:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713F910F83E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 08:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706603291; x=1738139291;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CvSsxeSiyubYIoGMMGPnIykaqBpf29KIgc4D7L9hHz4=;
 b=UXRul1jhG1Nu44DQU+bc2mv1NBE2Z900sAy0sXdlktAyDSQ8BjbzXfJY
 3nCQmC0b4rV2L3NZfPWiNQjwTZKklAEDOXnhZWRmimCDuQySp8+s3Nbd4
 Sagtmf9PR0U0JpyxzrIHCtNhOBgZA5xaGk6BVYdu1bpjMsl+CJSmKcnCn
 XvSgm3J9D9Qk3vMcDBM2RQTE/IG8plJgoMJDys7WS70F7wWmbGDJB52uA
 JwwiKPKjIFKVXypuaOTRraJ5fHQsShP3SOH1cwmNqBqjfcFnr7kPIS2Ns
 dFiDTFtpaGGztys4tibRuiKy7QZJIxTxW+e/J08F6yaGtvs7sAt0G9vdQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="467463672"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="467463672"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 00:28:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3593188"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 00:28:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:28:10 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:28:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 00:28:09 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 00:28:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VuATbI1WRLQtPi0g2hVH1XU1cYJUpc3276mXkuUzeOcEUIlCQoX7iGTdMCE8r7WU/njACF7lVWfk9sw0mzrP6eBIsdTbAXTzHei7P8zB5jEQI1K0L7NOVDudGBK2ErrZKRLA7xGLeoeI5CJOqYSfRcV97OIaoaH9/HZPRTh7XE0jtpAO/RwvWOViTeEHsrRRd5A9OvELMGv4XMXob16YJfYV8YdVpnAPd/7s0JN3ElkT+2YsABAv0uvoySEZXRkaLRkVjKk4lNTW7J8kveGV3eBAcPBORXd8OD37eNwnbotjK3sm56d4TZ+cRxGaMYZ2WRWjAckIu/CTx+Q0FM2M6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CvSsxeSiyubYIoGMMGPnIykaqBpf29KIgc4D7L9hHz4=;
 b=L1gmK1q+rfxyFuMq6qMxRvnzBG+zd19Tthdm/I3IaSpGpHCPwuejmGlvJ0oq2TlLAARKu+95rXtEfQSVr6GSK659EGlIYV3qMJQmPGI8KKOYD9DhQaR0DJuJ2lcZ2grArf6yx209AdQsgjvrb2qA9peV8uKWAS9K/CAG+8eOd7pDqLlssXIaEmx+7Sd7lijKlYyXlX8TbARoK/zpG9H3RYqis7N+lhsJLBKKuS+5XvI/ujdhNLSf1a9XjJ2KhW+vMGNEOm7mZ6iLjqBJl3Yv3Ce3Z2y1ny/lRadYyZL9b8NY/m+HOH0nl1ErOm7QEmC4dwgG1RX4W79xIQgJHNbqUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS7PR11MB6102.namprd11.prod.outlook.com (2603:10b6:8:85::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Tue, 30 Jan
 2024 08:28:02 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 08:28:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Thread-Topic: [PATCH v2 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Thread-Index: AQHaP+GnSMXts2tU9UOANpQ5n6aZI7DyLB4Q
Date: Tue, 30 Jan 2024 08:28:02 +0000
Message-ID: <IA0PR11MB7307E6C8932D0FDA618DA825BA7D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
 <20240105141504.2808991-5-jouni.hogander@intel.com>
In-Reply-To: <20240105141504.2808991-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS7PR11MB6102:EE_
x-ms-office365-filtering-correlation-id: f341d046-9158-47fa-c518-08dc216d6027
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kQAcbn4G+q2Yd9JnTx4x6NFn3mg/fbEm0ZN6PsQTj0JLbhVKOL+aOnixXcXVGVmEV+WRnPGQoyksXpXUAoMUe56kkK97OJKHLsLGKKBytoFvtnBfcHcAvu9axDIUVtc9xna5GjXpEq5oe0i+0iNQy5FlvYznXjHQvUDF0xUgnz/4tqzedzeAc3l8hdF+IAWMsGo+yzjvtq8wuKegy1wLlXwBni0KkgpDzWds79ttVuZlhSDdTkSgVYUWw+RcUQRiPHmZChjMgE6fCOoi4xXyDswqvdVxlJ1iUWfEU8x/2NEo74at5wqKY0LIJTye76hY+Fmpx8XfvLfnzGWa0uZHK6uZCZDA8mGLBc92ND8r80tF3wUk6uUYEoAUDUKX8cu/cMct2aMVSJOYsvOCCfwUaNllgL5Q0RlLX1M73lrsT1rcdprPk4BDE1zmVvYrKMKqcLn6kXVS1lF/0Dmyb4TXWrhBzzMkSM95AYiHjUFWHRCZDEm89mdryYpkRU4++RZog+58QFd3R6zHPVOWo7zgSAm9mZsG2aIeirIfOl1+qi+W5D+dWP5QNKY3fKIufWI63qLUyYiZuLXBoXj58Dem8ljTfaC00wErgKGhzvsfVMK0xu13GspX/G7DcPVqJF9c
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(376002)(396003)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(38070700009)(55016003)(7696005)(53546011)(5660300002)(71200400001)(6506007)(9686003)(2906002)(26005)(8936002)(66556008)(316002)(64756008)(8676002)(66446008)(52536014)(66946007)(66476007)(76116006)(122000001)(110136005)(41300700001)(38100700002)(83380400001)(478600001)(86362001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWxQUnJpYVpQblBiTXBZMk9waXFGSEZnRkdUbDhIeFQ0L21LbDVkK1dScjh1?=
 =?utf-8?B?UE9EZDlkNGdOSGEyUVFybkV6d2V2WTFMQ1dRTHdVbTVEQ1ZKTGJQTkxxNDhm?=
 =?utf-8?B?Z1F3ZnEvODJ5RHlHblVwVFpNOVNnejdEU3p6S3BuUG9SQWRxR01vbUx6Mzh2?=
 =?utf-8?B?azU0OFpGQkNOZFpnSVJXMHRxL284V3E4U0NCeDIzd0U1enlCRlFqblc2T3pm?=
 =?utf-8?B?alY3UHRxTE1zMWl3MDI2MWVpUjRvS0FaaGpianY2VThhcUJwaXVjOHY4YWV4?=
 =?utf-8?B?WHhHRCtaZElUeDIyVVMrYmt0d1pZc0JXcFRyZjJIb21WZzJlM0lwRGJDUGl2?=
 =?utf-8?B?azlYNkdNYnZzQ3UwaDFydGR4Q3V6UFRjMHdyRzE1bXMxNTJ0WGdsL2Rlb2tk?=
 =?utf-8?B?ZzZEc0Y2RWs2K1dNUE05ZXFyNi9qMDJkdUpFZ3NCNjZ1czZVQ0oxRlBidjQy?=
 =?utf-8?B?RkVUbHFxWURveDFhU0RsRWNCWWdnNHRNV09MTmttcWo1cEpmeE9BbDY3ZFZn?=
 =?utf-8?B?cTQ2aE5MditDMlpNUk9PTG1lVHhBc2U1UXVhTVlYWmZJMnVQY3YyUjFnQ0ZL?=
 =?utf-8?B?Wm0raE5IbHIxSWY4NDVKMVpoYXFqeXFkK1pmWVpjampFRkZGZUR1RW1BVndK?=
 =?utf-8?B?QU5ieEdhbjVWdUhZbXlhZ2wzU2piOGl4Y1pteUJ1aGVXb3dsRGlpZjd2TWdn?=
 =?utf-8?B?cmdpd3JQdXJwMTJtWFpMYnR1T2htU0dqbW5BNHJvdlhnZ05zMUdSVFpXbGty?=
 =?utf-8?B?elFOZGJZNjA4U2diSlhCMjBNZEdxQW5nTkJINnhYVnFIVVJCMzdZWTRmOWJy?=
 =?utf-8?B?RnpKcG1FandkaVp6eDVYdHNFS3hXaFExbWkxSGVPQUdwenlGejh6R25obkZy?=
 =?utf-8?B?V1R2QWtUUnBBTzRvb2hiVzQ0T1J6RUVTR3l6MlJSMVJVZXVkVVNxT2Q3aWxS?=
 =?utf-8?B?c1hZbzNsUVV3SHRtb28rWVI4V2RrLzZ2NWtsNlFKZk1ZYTZBQ0UzZWhXUXdn?=
 =?utf-8?B?UHR3VEJ6bDBaVGdXN1RKM0JQWE5uM283ZDNWMVN4c2RIOXFaTGxRVHZHNXFZ?=
 =?utf-8?B?NjI3amZsQmVONW5wSUdNNGZsdzJZYTJhWXVYa3AvMGVWOTltVWVPRkE1MFJD?=
 =?utf-8?B?dEJxRURuV2U4a3pQRlpnaTZJTTV4LzB6WnM4RUh1dGM5VERONERyMW5QaDFK?=
 =?utf-8?B?OTNvbVVMdlJWajVmeE9OdFhoY29hZG9HWmdSRXJCRExZVk5DemppdkNUTUFJ?=
 =?utf-8?B?QnU4ckhRTjJmN1FGM3BJU0o3emdYTEZDWWx3ZVJncUNtcjF2UEdUazVUNjVa?=
 =?utf-8?B?V1MzeWZubmZrelN6YWZ6V1dtc00xemZyLy80OHh4MlNxQmxGV3hBWU92QlBk?=
 =?utf-8?B?T29YNHFZMUV6dE5sVlFWdnhIK00yQ2tkUkhUd3pKaTJLS1ExbkpGWlM4YWRH?=
 =?utf-8?B?NHA4Y1lVdkFJN3ZaeUxHeFR2V0wvNmxNWU9KWG5mTkxJUE5iUVozek04QXY1?=
 =?utf-8?B?NDhSOVJ5RC9CaWFvUTU1TGVaRmVRVFRvbHJ4ai9EQVhURFZkVS9DekV6S2Fj?=
 =?utf-8?B?TVQzMngxZXlNTE9CcjNpVEZpSTJFWVBjbklkdmNocnlCSUVSa0d2dmNDdmRM?=
 =?utf-8?B?TU9vUFJOMEpMNFFPOUdkUUc0TU1qN04yVGE1dk1mb1hLOWZVbzQzTnBoZjZp?=
 =?utf-8?B?MmJTNXQ2d0ZZaG5hZFFRWTRsa1hMMmRMZFpQMGRVZ0ZpOEptSzE3TXlXY2N5?=
 =?utf-8?B?a3BqSHNjd1NyZzdFaVFYQnBlL1J6dFVLbWcrVklmangxckE5VEN1Sm10allP?=
 =?utf-8?B?RHNpTXM1bVhvZGFha3hXV0lNbTZCVmJSaEhLd3J1THpacHB1c3BiMDhFbHVp?=
 =?utf-8?B?L055ZmVHUXQwMVJPYU5MRGl3QURlSmdqcWVzODBXVlJ4K2t3K2QvWllwUWI4?=
 =?utf-8?B?Y0NMTGhQSld1aHhJYWd5ZFM3UjZpOG1xdklhQ2kwdEJSbHZ1cmVVakRobDhy?=
 =?utf-8?B?ajluVitRQU9BU1M0MmJQQ1pmTDF5MWtWTFlub3puQ1E4a1cwQ0VCMmljOE8r?=
 =?utf-8?B?KzBqTXVXekVDaENLL1ZqellpTkQxN3ZQUFlBQXpkRXMwdU9MTitHM1RuNkZM?=
 =?utf-8?Q?Rt4mTcJ2ZyfIyMkAfGXzBsa+I?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f341d046-9158-47fa-c518-08dc216d6027
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 08:28:02.8119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ZTlCz7DOnGYqBAPpDoslV11iHTKZDXbOzlZW75GEKn34oIzDuwI8LuJD3SXzHSeeFpQAWkbErFl/HbTQI5yXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6102
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
NC80XSBkcm0vaTkxNS9hbHBtOiBBbHBtIGF1eCB3YWtlIGNvbmZpZ3VyYXRpb24gZm9yIGxubA0K
PiANCj4gTHVuYXJsYWtlIGhhcyBzb21lIGNvbmZpZ3VyYXRpb25zIGluIEFMUE1fQ1RMIHJlZ2lz
dGVyIGZvciBsZWdhY3kgQUxQTSBhcw0KPiB3ZWxsLiBXcml0ZSB0aGVzZS4NCj4gDQo+IEJzcGVj
OiA3MTQ3Nw0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDE1ICsrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBpbmRleCA3ZmJkMThmMjFjM2IuLjA5ZDQ5NmQ3ZGNlZSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNTI3LDYgKzE1MjcsMTgg
QEAgc3RhdGljIHZvaWQgd21fb3B0aW1pemF0aW9uX3dhKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHAsDQo+ICAJCQkgICAgIHdhXzE2MDEzODM1NDY4X2JpdF9nZXQoaW50ZWxfZHApLCAwKTsg
IH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRw
X3RvX2k5MTUoaW50ZWxfZHApOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9
IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gKwlzdHJ1Y3QgYWxwbV9wYXJhbWV0ZXJzICph
bHBtX3BhcmFtcyA9ICZpbnRlbF9kcC0+cHNyLmFscG1fcGFyYW1zOw0KPiArDQo+ICsJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIEFMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCg0KRG8gd2UgbmVl
ZCBpbnRlbF9kZV9ybXcoKQ0KDQo+ICsJCSAgICAgICBBTFBNX0NUTF9FWFRFTkRFRF9GQVNUX1dB
S0VfRU5BQkxFIHwNCj4gKwkJICAgICAgIEFMUE1fQ1RMX0FMUE1fRU5UUllfQ0hFQ0soYWxwbV9w
YXJhbXMtDQo+ID5jaGVja19lbnRyeV9saW5lcykgfA0KPiArDQo+ICtBTFBNX0NUTF9FWFRFTkRF
RF9GQVNUX1dBS0VfVElNRShhbHBtX3BhcmFtcy0+ZmFzdF93YWtlX2xpbmVzKSk7DQo+ICt9DQo+
ICsNCj4gIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ICAJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKSAgew0KPiBAQCAtMTU4Miw2ICsxNTk0LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxf
cHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJCSAg
ICAgaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID8NCj4gIAkJCSAgICAgSUdO
T1JFX1BTUjJfSFdfVFJBQ0tJTkcgOiAwKTsNCj4gDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA+PSAyMCkNCj4gKwkJbG5sX2FscG1fY29uZmlndXJlKGludGVsX2RwKTsNCj4gKw0KPiAg
CS8qDQo+ICAJICogV2FfMTYwMTM4MzU0NjgNCj4gIAkgKiBXYV8xNDAxNTY0ODAwNg0KPiAtLQ0K
PiAyLjM0LjENCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCg0K
