Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 431A05B951D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 09:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9118410E145;
	Thu, 15 Sep 2022 07:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA6310EAA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 07:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663226374; x=1694762374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z8uF809BXVZxGEAKcEEpJ2LsEOE1/i47gJzf9M9HWaQ=;
 b=NT33JEDqFRtuVTanA/Q58IF5xkLpQHlao1adh7JlJyzRIb7O5yXEuvo8
 NO/csfie4wC8qDqQmkjb8MJnqoDIWk1OkXttFR3m7PoYNVeLzgPQUlMqJ
 kBIIZs+wLnwyr9q5SSj7WBnt1qxmAqKCDyV3+eMf3nbSjYN1sA18KL+Nm
 mPxUo7VWDTwsCMkbKoHEsfv2eM5K7llz2eHDR1CUHippUp/vBRdvKwNzp
 KAiY8OCI3L0ZleADIK4ASl3CAJo0xlG79XeeCDhW40NfXsHD/tpEwRx96
 uSa6VcGw2QJKbC+C5LeJTeawFHA0bL60VPTylRKEux/yQQQwoO3tN1dNr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278365588"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="278365588"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="619587623"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 15 Sep 2022 00:19:32 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 00:19:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 00:19:31 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 00:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aiz2V54x1Lo94Zg4BGRDRv2u11kTar879u9a6qHJOppLkoTGzL+WAlxXcjD7ixzY0fV3DgZzIrQwkedRgO4Qcnjb2C75xZA1cNPBqSfh3qDPzmxIk7GpVd6a931lYFWN73WQyT3OpWc66FZhSLWjFlxLNYDU/+9SrwITpN8Hyt8ad8Vc2przDYeIl9Jg90af8E5xEUQSU8YTWVtnF/bsv9zrqGaJwbBjEQzlU2xSFKE8blnk3kYE7FB3o70kN79EWdRDZyg8nwUzh5Hijxn2KEe7o2R8+VtRq186+2twghsyALEOgvlZD6uMk4jhcQiFB0Nc1LtYK3ZdzQgpJeio0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8uF809BXVZxGEAKcEEpJ2LsEOE1/i47gJzf9M9HWaQ=;
 b=nCmfIwXxC+er3IF2G20bpI+qeXLsoyIuxqg7AAM+m43016lut4mkFTdcbFVQkw3zKD5d0jc0HgzIZ3Jhcoz3loYbsz5vUTXd2BOzwOlj0WRK051XIKHGDESDdLjZ5FkTduSh4lUjb7c87J109hc4gWijRKQ5bpeRjjHBrVqhtxeBCTUBgMzuzzDuXVlG9wtY6eKHjhQQ+oZyGhuIcppXUwG7OMvp27kypKp+dPtve8MJ4itFQk1xyQPbKkxKgLAuCYnTlVSdgKTIrsECKPE0JS3vGrUcL3XckycaiXQCEslnfBOysQix+1Z/D8cvybiFKxLQcp+nwANgo3amkDtNtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB7025.namprd11.prod.outlook.com (2603:10b6:510:208::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 07:19:29 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 07:19:29 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/DG{1,2}: FIXME Temporary hammer to disable
 rpm
Thread-Index: AQHYyFT4ujIaplItf02Uua5UT4Joz63gDVcAgAAIa4A=
Date: Thu, 15 Sep 2022 07:19:29 +0000
Message-ID: <CY5PR11MB6211A81AB8DBECB13CEED9CF95499@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
 <20220914161329.2604-1-anshuman.gupta@intel.com>
 <166322444054.4263.583762501856107655@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <166322444054.4263.583762501856107655@jlahtine-mobl.ger.corp.intel.com>
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
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH7PR11MB7025:EE_
x-ms-office365-filtering-correlation-id: 41ca65f7-2140-4849-bdda-08da96eaa12f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4qPEEX0dM3zV51+CGQYCQfz06oUoin1pfpiXsGrKcd3yuSrlczHsBGbbBzwB5b28GbI8Iv1PcAqrki4S/h2T+e6SsxOclNc7DUVHX+H+jr42fwhG7I2v0TnY8kvy2Yv7lDizVclNiDS8trbvYl2VzeWFoBGua2KIGv7Pc2bLIJ9NEwuGrEyRfwxfs4m6Wj7Ee33tSHo3EYFdwDz9sxW4/fdV6p0mWT55NuCbky3f05gw+L1uDNojD+eBALMdhlR6bpEu8QQumvo7JEHqPnZmkAAV5/ER55Pu6QzhBrPp/L5/NlDj/IbOYaLMoTfOENLFFO7qtj4L7J8cX7fOt7qtxcZQsNFEQxcyUgAJ9NehJkeNe/6XoIjSzyunya54gc7tAYt9LvqYmkqjOTUIBvszFHTNo1RKL4x5b+PG2Dn2XJhCGoJJCvaOeJq2VP5bd8Xt8B3CCVO8bbJAjwAN2uinjcKLfUceDmQez+AMxSByiHTOXjhtsn6QcPeysFuUa1heVTCp6acIGl2SyBcb+Og4fT44OcB6x15hYQvzrYLitZn+tiB3A/wAtQ5NXg+rFE8ORYOVp6wgmjSKLLYe+l5CFxvmSvtY0YciclDq0dTUjm+RbObZ9wDLbD7gg954eHTIkJLu8SUzZ38Zopjzmdk2c2VHu+wEuDaZcHIuh7vo4BaTYSYH0FMnZnD0VBc6Xx3vXQLF3dt03eCW2DEUonmbN+E/qFEAn+KmowtuzAt0pvyQvglfFBBk6WA4fj1j//rhR0fNspZzm46N8QoDQ+/r1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199015)(66946007)(316002)(66446008)(41300700001)(71200400001)(66556008)(26005)(2906002)(38100700002)(4326008)(186003)(76116006)(64756008)(5660300002)(8676002)(8936002)(478600001)(33656002)(54906003)(55016003)(66476007)(52536014)(38070700005)(86362001)(82960400001)(6506007)(83380400001)(122000001)(7696005)(110136005)(55236004)(9686003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0k3WXVuNGhPL0F6WmhOeTJpSkdQTmMrQnEveU9jS0tCc0t6SzNYVGFFR2dJ?=
 =?utf-8?B?RWZiUFordloxc3FCMnBSUnhqRW5HeC9aN3podlViY1RvdXVRTy8rTC9FUlVN?=
 =?utf-8?B?OTZYQlU5ZmI3alBvcmtNZDZheVFKdyttbjBCbXFuNXlnU1RYWXYzdEJFNTl5?=
 =?utf-8?B?NHYxeEt1VEt5ZnB6d2pybDk0SFV2T1g4bURCYlQ4b3d2bmRzTXJ0L25pV3N1?=
 =?utf-8?B?QkxmYVFwZEoyd2Yvak5oVHlkWDYwblFpVi9QOUhRdHdKUisxQ09SN2dwRVlJ?=
 =?utf-8?B?UDNjcnBFdkhoSUJKVTRYeFJHS3Y0eDRLUmowQlo2cEFOQWtJendGcTA4UWta?=
 =?utf-8?B?cjhuWGtGZTNCKy9CTUhmSWVNQ2lYSVhJNEE3R1hoRlpHRzRxMURDRnYxN3BE?=
 =?utf-8?B?c0o3NDJ1K24vTnk3clJzNldsRnB4SGhYQUJIdWV5dE5JQWhFWmRpS3dlWnZt?=
 =?utf-8?B?Z3dicktXWE93SmxXazJiWFdIbTIvQTR5ZHRUYnZ3WWlkUms2T1hxekJQWUZK?=
 =?utf-8?B?a2FPdkIvQVhZVm54Z2tHTUQzZ21ObmRMaXNHblRqMDUwZjhCNGxBMXlzcTMy?=
 =?utf-8?B?dENCZmk3V1BQQjRXT091L0hCSzloUzc0aURoTGhGdzh5VFFaS2hjc2VkMStV?=
 =?utf-8?B?NmRtRlh4TlZuSzdnMC94Yy8zRmlMNUVqYVFMaEtnSVh6QThCT1VhU1JUY2J1?=
 =?utf-8?B?eTBLTTAveGFUVXlhYzBMNmxpenFkZFJCZ1plMXI4WDJWYWdVbHZ5c1htTGxq?=
 =?utf-8?B?QndUOTd4c3hWT3Z6L0tpKzl1bkEvcjdZZllVOUo2NXhTU0IveWpIZGpHdDh4?=
 =?utf-8?B?bEJaaCtJVVdsWnJ4ZW1ublN2Y25RSTF1Wm9ZWE85UUFKQjc3ZktYTGVGeEZ5?=
 =?utf-8?B?RmZuYWQvZ0NwMHZTRzdXSFpEV1hEVXE2ZjBVOWlpQUpLUWRERHo3bnI4Q3NT?=
 =?utf-8?B?dUFDZG9lUzNiT2FnSUpELzRROWhOUzluUVA2QThYdGFqSzFZTUFNd1VMcks4?=
 =?utf-8?B?SE9mOXRqTTJrTmFHeUowYnhPeElJd3Q0ZE9QY251N251R3hrRVR2MDZrUUx1?=
 =?utf-8?B?UGorOC9uMGF1SU9VSUNxY2hyMHNlK0RsN1dYWUFIRE5acXhGd0pZNTZZTWQz?=
 =?utf-8?B?VStDclpycnJPeExRcXE5ZFJJYzcvb29WQStaVms1c1J6RjNTTGxmRjdWLzAr?=
 =?utf-8?B?T2lNU0c2SDMzNXE2aHkzWVVTY0V0WkxtdnpFbjI0bllpWWVMdVlRcHNuK1RC?=
 =?utf-8?B?YitkRm9qd3ZkWU5tSWRIVkkvRnRkTzViSGVzNlVjbmlNQmdRcXdVRG9KN2tq?=
 =?utf-8?B?aElFanF3TnM1WmZWcjU0cG1JYndta0F5RHo2aWR1OUpkRks1emh4YllyWUVO?=
 =?utf-8?B?d3dVNlBEcFdsVVk2ZkhIWllPY3dxTVBSTDB3aVNmamNmZmRSUFA0MUJkVFZC?=
 =?utf-8?B?azN3L0pvRGZNa3V6SnBudVJ4anB3dFZhVmlRSHpES0M4UXQ0NmU4VjFPOE1m?=
 =?utf-8?B?dzM5V1UvUXBQSlZPM0JqRElJQmlGdkNkK1BBL29JT0V4NGk1V1d5WDZZMFdH?=
 =?utf-8?B?eVkrWFdZNGQ2TkMzajI5VnhGUmM1Qi9oRlY0c21pQWxyMGZ3Tk1ENEVsWVUw?=
 =?utf-8?B?ZXNIdnJ5K1R3cEF3aE5MNmVaanFtMmwycjJ1Tmo3ZFprZ2xhMmVMR0JiVERj?=
 =?utf-8?B?azhjS0tFaXZOcGwwL2E2d0xwTTdDeWxjejhtYkFHN0ZCbytRNnlIcmFScitu?=
 =?utf-8?B?NkNteStMZmRJWXVxNTIySGxVaTN6Y2VyR25vaEpBYWR3eEx3T0hVVGpQeUs5?=
 =?utf-8?B?bGhpancyMmVmY3FSN0lyR0xubm1pRHBQczZ1RGh0QzZvT1FabHk5NHhrenB0?=
 =?utf-8?B?Qy9ackVhY21OVW16SjdrcUdseWs4enhEVkhUY3F5WU5OS0F5dFBFNFpnQmdv?=
 =?utf-8?B?T2V3bkR3S3FXZTBuNkRSUFo0d3pLS3dJWVJUOWNuREJxVFRRelFVRmhWMCtV?=
 =?utf-8?B?aHJWZVZBdkZaMENLVVhUa1pGRno3aVhxVk1qNUhpZUZLWi9LY0QrT2lVWFFv?=
 =?utf-8?B?QzMyVmtsZW1JYTN6TWxHbW1Yc3QzS0Q3Mlk1YVIxby9ubW93czgvbENyZjMr?=
 =?utf-8?Q?bGm1+j4WH1sWSUHzh7egaNA0q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41ca65f7-2140-4849-bdda-08da96eaa12f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 07:19:29.6807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jDeQ/pse4YhaEbNaNC31WT2WeqxIFrCMIGxlb6LZnIyeX3uP4U0pZT/uZHEMotwi4E3tP3hzZh49jFY+ao0+dpzzEYDPYPvlnKP2zJbUcF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7025
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgU2Vw
dGVtYmVyIDE1LCAyMDIyIDEyOjE3IFBNDQo+IFRvOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPjsgTmlsYXdhciwgQmFk
YWwNCj4gPGJhZGFsLm5pbGF3YXJAaW50ZWwuY29tPjsgRXdpbnMsIEpvbiA8am9uLmV3aW5zQGlu
dGVsLmNvbT47DQo+IGFuZGkuc2h5dGlAbGludXguaW50ZWwuY29tOyBHdXB0YSwgQW5zaHVtYW4g
PGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT47DQo+IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjJdIGRybS9pOTE1L0RHezEsMn06
IEZJWE1FIFRlbXBvcmFyeSBoYW1tZXIgdG8gZGlzYWJsZQ0KPiBycG0NCj4gDQo+IE9uIHRoZSBw
YXRjaCBzdWJqZWN0LCBjb3VsZCB3ZSBhaW0gdG8gYmUgYSBiaXQgbW9yZSByZWFkYWJsZSBhbmQg
Y29uY2lzZS4NCj4gU29tZXRoaW5nIGxpa2U6DQo+IA0KPiAiZHJtL2k5MTU6IFRlbXBvcmFyaWx5
IGRpc2FibGUgUlBNIG9uIERHMS9ERzIiDQo+IA0KPiBUaGUgcGF0Y2ggdGl0bGUgZGVmaW5pdGVs
eSBzaG91bGQgbm90IGhhdmUgYSBGSVhNRSBpbiBpdCBpZiB3ZSdyZSBnb2luZyB0byBtZXJnZSBp
dA0KPiBpbiB0aGF0IGZvcm0uDQo+IA0KPiBUaGVyZSdzIG5vdGhpbmcgdG8gYmUgZml4ZWQgYWJv
dXQgdGhlIHBhdGNoIGl0c2VsZiwgd2UgYXJlIGFwcGx5aW5nIGEgd29ya2Fyb3VuZA0KPiB1bnRp
bCB3ZSd2ZSBmaXhlZCB0aGUgcm9vdGNhdXNlLCB3aGljaCBpcyBidXNpbmVzcyBhcyB1c3VhbC4N
ClRoYW5rcyBKb29uYXMgZm9yIGZlZWRiYWNrLCB3aWxsIHJlbW92ZSB0aGUgRklYTUUgZnJvbSB0
aGUgc3ViamVjdCBiZWZvcmUgcHVzaGluZy4NCkJyLA0KQW5zaHVtYW4uDQo+IA0KPiBSZWdhcmRz
LCBKb29uYXMNCj4gDQo+IFF1b3RpbmcgQW5zaHVtYW4gR3VwdGEgKDIwMjItMDktMTQgMTk6MTM6
MjkpDQo+ID4gREcxIGFuZCBERzIgaGFzIGxtZW0sIGFuZCBjcHUgY2FuIGFjY2VzcyB0aGUgbG1l
bSBvYmplY3RzIHZpYSBtbWFwIGFuZA0KPiA+IGk5MTUgaW50ZXJuYWwgaTkxNV9nZW1fb2JqZWN0
X3Bpbl9tYXAoKSBmb3INCj4gPiBpOTE1IG93biB1c2FnZXMuIEJvdGggb2YgdGhlc2UgbWV0aG9k
cyBoYXMgcHJlLXJlcXVpc2l0ZSByZXF1aXJlbWVudA0KPiA+IHRvIGtlZXAgR0ZYIFBDSSBlbmRw
b2ludCBpbiBEMCBmb3IgYSBzdXBwb3J0ZWQgaW9tZW0gdHJhbnNhY3Rpb24gb3Zlcg0KPiA+IFBD
SSBsaW5rLiAoUmVmZXIgUENJZSBzcGVjcyA1LjMuMS40LjEpDQo+ID4NCj4gPiBCb3RoIERHMS9E
RzIgaGF2ZSBhIGhhcmR3YXJlIGJ1ZyB0aGF0IHZpb2xhdGVzIHRoZSBQQ0llIHNwZWNzIGFuZA0K
PiA+IHN1cHBvcnQgdGhlIGlvbWVtIHJlYWQgd3JpdGUgdHJhbnNhY3Rpb24gb3ZlciBQQ0llIGJ1
cyBkZXNwaXRlDQo+ID4gZW5kcG9pbnQgaXMgRDMgc3RhdGUuDQo+ID4gRHVlIHRvIGFib3ZlIEgv
VyBidWcsIHdlIGhhZCBuZXZlciBvYnNlcnZlZCBhbnkgaXNzdWUgd2l0aCBpOTE1DQo+ID4gcnVu
dGltZSBQTSB2ZXJzdXMgbG1lbSBhY2Nlc3MuDQo+ID4gQnV0IHRoaXMgaXNzdWUgYmVjb21lcyB2
aXNpYmxlIHdoZW4gUENJZSBnZnggZW5kcG9pbnQncyB1cHN0cmVhbQ0KPiA+IGJyaWRnZSBlbnRl
cnMgdG8gRDMsIGF0IHRoaXMgcG9pbnQgYW55IGxtZW0gcmVhZC93cml0ZSBhY2Nlc3Mgd2lsbCBi
ZQ0KPiA+IHJldHVybmVkIGFzIHVuc3VwcG9ydGVkIHJlcXVlc3QuIEJ1dCBhZ2FpbiB0aGlzIGlz
c3VlIGlzIG5vdCBvYnNlcnZlZA0KPiA+IG9uIGV2ZXJ5IHBsYXRmb3JtIGJlY2F1c2UgaXQgaGFz
IGJlZW4gb2JzZXJ2ZWQgb24gZmV3IGhvc3QgbWFjaGluZXMNCj4gPiBERzEvREcyIGVuZHBvaW50
J3MgdXBzdHJlYW0gYnJpZGdlIGRvZXMgbm90IGJpbmQgd2l0aCBwY2llcG9ydCBkcml2ZXIuDQo+
ID4gd2hpY2ggcmVhbGx5IGRpc2FibGVzIHRoZSBQQ0llIHBvZXIgcG93ZXIgc2F2aW5ncyBhbmQg
bGVhdmVzIHRoZQ0KPiA+IGJyaWRnZSBhdCBEMCBzdGF0ZS4NCj4gPg0KPiA+IFRPRE86DQo+ID4g
V2l0aCByZXNwZWN0IHRvIGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKCksIGV2ZXJ5IGNhbGxlciBo
YXMgdG8gZ3JhYiBhDQo+ID4gd2FrZXJlZiBpZiBnZW0gb2JqZWN0IGxpZXMgaW4gbG1lbS4NCj4g
Pg0KPiA+IFRpbGwgd2UgZml4IGFsbCBpc3N1ZXMgcmVsYXRlZCB0byBydW50aW1lIFBNLCB3ZSBu
ZWVkIHRvIGtlZXAgcnVudGltZQ0KPiA+IFBNIGRpc2FibGUgb24gYm90aCBERzEgYW5kIERHMi4N
Cj4gPg0KPiA+IFYyOg0KPiA+IC0gS2VlcCBhIHNtYWxsZXIgRklYTUUgY29kZSBjb21tZW50IGZv
ciBib3RoIERHMS9ERzIuDQo+ID4NCj4gPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPg0KPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
DQo+ID4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4N
Cj4gPiBSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBsaW51eC5pbnRlbC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDE1
ICsrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgaW5kZXggNzdlN2RmMjFmNTM5Li40
YTdkMjI2YjA3NGYNCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiA+
IEBAIC05MzEsNiArOTMxLDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2lu
Zm8gZGcxX2luZm8gPSB7DQo+ID4gICAgICAgICAgICAgICAgIEJJVChWQ1MwKSB8IEJJVChWQ1My
KSwNCj4gPiAgICAgICAgIC8qIFdhXzE2MDExMjI3OTIyICovDQo+ID4gICAgICAgICAuX19ydW50
aW1lLnBwZ3R0X3NpemUgPSA0NywNCj4gPiArDQo+ID4gKyAgICAgICAvKg0KPiA+ICsgICAgICAg
ICogIEZJWE1FOiBUZW1wb3JhcnkgaGFtbWVyIHRvIGRpc2FibGUgcnBtLg0KPiA+ICsgICAgICAg
ICogIEFzIHBlciBQQ0llIHNwZWNzIDUuMy4xLjQuMSwgYWxsIGlvbWVtIHJlYWQgd3JpdGUgcmVx
dWVzdCBvdmVyIGEgUENJZQ0KPiA+ICsgICAgICAgICogIGZ1bmN0aW9uIHdpbGwgYmUgdW5zdXBw
b3J0ZWQgaW4gY2FzZSBQQ0llIGVuZHBvaW50IGZ1bmN0aW9uIGlzIGluIEQzLg0KPiA+ICsgICAg
ICAgICogIExldCdzIGRpc2FibGUgaTkxNSBycG0gdGlsbCB3ZSBmaXggYWxsIGtub3duIGlzc3Vl
IHdpdGggbG1lbSBhY2Nlc3MgaW4NCj4gRDMuDQo+ID4gKyAgICAgICAgKi8NCj4gPiArICAgICAg
IC5oYXNfcnVudGltZV9wbSA9IDAsDQo+ID4gIH07DQo+ID4NCj4gPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBhZGxfc19pbmZvID0geyBAQCAtMTA3Niw2DQo+ID4gKzEw
ODQsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBkZzJfaW5mbyA9
IHsNCj4gPiAgICAgICAgIFhFX0xQRF9GRUFUVVJFUywNCj4gPiAgICAgICAgIC5fX3J1bnRpbWUu
Y3B1X3RyYW5zY29kZXJfbWFzayA9IEJJVChUUkFOU0NPREVSX0EpIHwNCj4gQklUKFRSQU5TQ09E
RVJfQikgfA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCSVQoVFJBTlNDT0RF
Ul9DKSB8IEJJVChUUkFOU0NPREVSX0QpLA0KPiA+ICsgICAgICAgLyoNCj4gPiArICAgICAgICAq
ICBGSVhNRTogVGVtcG9yYXJ5IGhhbW1lciB0byBkaXNhYmxlIHJwbS4NCj4gPiArICAgICAgICAq
ICBBcyBwZXIgUENJZSBzcGVjcyA1LjMuMS40LjEsIGFsbCBpb21lbSByZWFkIHdyaXRlIHJlcXVl
c3Qgb3ZlciBhIFBDSWUNCj4gPiArICAgICAgICAqICBmdW5jdGlvbiB3aWxsIGJlIHVuc3VwcG9y
dGVkIGluIGNhc2UgUENJZSBlbmRwb2ludCBmdW5jdGlvbiBpcyBpbiBEMy4NCj4gPiArICAgICAg
ICAqICBMZXQncyBkaXNhYmxlIGk5MTUgcnBtIHRpbGwgd2UgZml4IGFsbCBrbm93biBpc3N1ZSB3
aXRoIGxtZW0gYWNjZXNzIGluDQo+IEQzLg0KPiA+ICsgICAgICAgICovDQo+ID4gKyAgICAgICAu
aGFzX3J1bnRpbWVfcG0gPSAwLA0KPiA+ICAgICAgICAgLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAx
LA0KPiA+ICB9Ow0KPiA+DQo+ID4gLS0NCj4gPiAyLjI2LjINCj4gPg0K
