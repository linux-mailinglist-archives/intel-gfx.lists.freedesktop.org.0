Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6BD79AAA4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 19:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512C010E32C;
	Mon, 11 Sep 2023 17:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAC710E32C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 17:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694454836; x=1725990836;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dKyhbfGmlrZsMkCDKh1ck55uCo5B+16fKh4lHSqBNhU=;
 b=gAaYuZTkS/xw+Emn/h45ObN4ZxmlnmMD9byQNRQGSmdmuDAZxSo/upw0
 rnFWrIarZvkmrT/s2FwEF19Iqpy4XvfCYTBHws/IEvtcEbDh++smZCTYd
 7axOEzrV1LIiRviLAiV16VrEzbWt+We3DXCZiUJGm0FJcDu8kokBJ9CZz
 xqirzx3OSyyKCJcC2XXXPx+NxE61mFNXhBEQWzbjSy1Vn4SKDvhtMxJg3
 rGZPCP4AnKdUlhvWPWKbxAEPkZX6/ZVpXX8RRDpogPtS8is6U/r8SCKqz
 LXGz5uz4FY0qBhX/fJmHRJn6L//TcT1BfENpjQILvrx2w3wcI6zjNiqvo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409120411"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="409120411"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 10:53:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833596582"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="833596582"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 10:53:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 10:53:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 10:53:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 10:53:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMjqSHov94ZAQ9I515LrowsHBZa6MUjmEGO162XCC7sw4vp03tW7HRL5YuhtdN/LijgYIrjBFga9zpcGN3xYTbwUyBl1ADsbQe2yVGkm1ajguT9vkGNZym0GshQ6J+rIMHZwMUcC/wEDfBllD1Wn2NoqXxUh4oiMOM/jTxrkgN9H90bkLszSJKE1psVMtnja+6vuqj84clzSETmLTedJ7CFSFfI4RR/tRmtheUdI+4riT3LmEEtzpOfIT97Cj6xeWFa2x04SNF/efACVVjpTxwP4ayr8z8/MS6kq2Iae705wdAj+uIkfXAAWeEkJ2QLhQWVKDUYwP1qvJF+iSzeMow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKyhbfGmlrZsMkCDKh1ck55uCo5B+16fKh4lHSqBNhU=;
 b=ESKP3MyY3oUAZ9vup9YXAUrDHr462NOLCGhr5+Nhyqwh3S9c8xJsJk+ACg67Ig4Krcu/ELWZtHBNd17IPf+E+XRuOcIQXmAYDfbhTyjCEOyM4iLwI7p3DjMkZTuF+7Uep4SRRCKg/q8R62d9XFBbzTr4YTZ1yXtM8zMAtJwAbl7nozag66F52j6davZAfWdOL9CFqVPOGCKhs+SCvpLPwnUFPn7dp9G9NHmCsUnl0sk5yGdgOuXvFo6RfYi6WedeOfXMj2Z909KzMIm4mpVpYzbl1+lSjuSeelsyq3f9ZE2OiS+R7Qn+7hVOMZUmC1Pbi4QhTYjK3uWH83n5AHOZgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 17:53:51 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 17:53:51 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/12] drm/i915: Change
 intel_pipe_update_{start, end}() calling convention
Thread-Index: AQHZ3NT5fqLTNrXhtUWYei+dwfcYw7AV9tWA
Date: Mon, 11 Sep 2023 17:53:51 +0000
Message-ID: <IA1PR11MB634859D980F6121199CF3560B2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: aaca1dae-87dd-4a6b-00b2-08dbb2f00ee0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8p9NI7ZL2jvvmrgj8lFnBLuLUNPSOqbIOmITmFI+NxbJ9zWHCZBAKESVnGIsG9geFFxL17z6CKalWFoLuP58fIhMas+UKtZut/EaajYMtHQSTP9HTAUW352ZMFim4GoOy7FTGKpOYTtmEF0ChpvNulLPkw6c9oSudSfO1zQLtvjRMTozPkahm/pLvJkNdDA6owH05S7QDrF3qEFBUi0F/Px14bjrXTfR+meQRbj2t5g7ZL3Rsz0SjrcKSH7OaWuDSGYavhQTRepESzwBVqsFxt4FwD/6JgqpFsDENfC5RQRMrLMo4hCgrC1HJwwGG/W2Wc/KpHeTVgalSGQOQCcL8s37d8Ynb04vLewqSLmL5gutd12MTDeO72mGMaKMyeFpc+hwhMm4TvSQdWDyBfmVRACyHTOFB0sdKtzicpvStgVhElFXXzE57sgHQssODoIYMPOwaPeARCb6UovV0+6zRFZ0pAK6M6LiFLdznY/a47h8dB7abN8P1RAeaRaw9IhTxK5fKIGeJhNOceLJC9D2bFTQuTn+kubMuivtHaGVMRR8K+Sl/lwjl0k0DIAKpaWmizgr+oLyXaw1pGmRxYUNKcFMmjXHF9frkWK/S6E2/aPkzIqrUmt7BD9O6/sbWGnf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199024)(186009)(1800799009)(2906002)(52536014)(8936002)(41300700001)(5660300002)(66446008)(64756008)(66476007)(110136005)(76116006)(66556008)(66946007)(8676002)(316002)(478600001)(55016003)(122000001)(9686003)(6506007)(7696005)(55236004)(53546011)(71200400001)(66574015)(26005)(83380400001)(33656002)(86362001)(38070700005)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MW4xNFArMHhjSG1xenhFT1JycjJVdmtsYXA3ME9qS1R0clMwNi9jR0xtSEZF?=
 =?utf-8?B?RHNra29nQXo2Uk83UjhGNk9Jby9SMnBoc3lEWjl6aVpvb25jakJlQkc3YUNF?=
 =?utf-8?B?ZjBya2hPL0RPMS9wUDExRUlOaUFCK1BaOFd4ZHliRWdQYnd2M3lmbXV4MFpS?=
 =?utf-8?B?ajNHc1QzUS8rUkt6am9HOWZUc3V2YVh4ZHp2ZEgxVHZHbjJVTUNKcno2UmIz?=
 =?utf-8?B?N2xMOVVrYXlaVjU5cVNiZTBWT0VraCt5RmVqaWNxRVdESmZGRXE5Q3ZkSnNZ?=
 =?utf-8?B?T2Vhd08rZlNkSS9SUFh4SUdhNE5kL3FYTDhBcDRkbTRla0RqT1FCeVFTc05n?=
 =?utf-8?B?eG1PdE90YmRtQm5NbVRzVUtQZDZwZXZvdHNLVnRFVTczN0RrNXNsam9hS1BU?=
 =?utf-8?B?K1JwQkFXaVRGWnNVZ1NoUDRTYVdxSVpUNlpyT2dZcnlIVHFZUkU0WkVFbTJl?=
 =?utf-8?B?Q1I3WSsrK1BrZmlUZWgwak9Ld1UxcmZybnQ5MDdRVUYwQlJwQ3BuR2lCR0I1?=
 =?utf-8?B?QzZkeHgxZnJ6UU85cFp3ZDJ3NWUrYS96R0lPbTlSL3BtWEFqQXQxbDV3dklG?=
 =?utf-8?B?RUNFRlZKWTJzanJIbUFnT0F1SGZ4OThkMzhFUlRSSHhVT0tzTUQxdVlJYTdy?=
 =?utf-8?B?cEJaZnJPaVgvRVQ4L3VUejA2aFExU0VuMzVJZi83SndhdlNQZzdVcTRjUnNh?=
 =?utf-8?B?bTI3cVlCTkNnbTlnWWJuQTd0dllOY0lUZXpNcGg0UFZuVWswNXpKTFhXY2lr?=
 =?utf-8?B?L0o1WENOOW9aTUgxemozaXU5bmtHV3FJTXJLY3NEQVhXdm4zcnBvL2RmM3Br?=
 =?utf-8?B?cllKd0k1MzQrMDRQY3FDWi9IWXc5RTVWSGp5dXlFQ2V2dVNnNWdMVkk1WlNV?=
 =?utf-8?B?TTY3ZmlOejZDd3FCYTRjKzJzS1hPSS9DL3BGdVk0T0VIVC9rMjNQRmVZanhs?=
 =?utf-8?B?dU53ZjE5L2hma3BhNzFJdGM1WkFlVU9oM0dETGZxZlVZN0JhYUxoQ3gxY2p3?=
 =?utf-8?B?ZCsxQUM0WTk1NC9oWnlyeHpvZXZTUGtCa0taZjlQSUV0anNsTENmUGd5Wmh3?=
 =?utf-8?B?RzI4N2xjSEU2Z3RQVjNPZVhuS1hCVGVoSzhtei9tNXhPOGsxL1ZEeWRtZHdI?=
 =?utf-8?B?RHFDaWo3VnY0NGZWWi9sVWh4ZE1kK0xEcHd4UjBiN3VsdGIzUXhDdTg1ZHY1?=
 =?utf-8?B?NXRMYXZ2QUVNWjZoTGlUditMT3o1UmZsTHlhL2ZSeEtLaEZoUCtTMXlBaVBH?=
 =?utf-8?B?c01FM2Q4OVU5RDFwN3A4L3N5OExweW1SMmt2bHlrYWEvM2NvY2pjQWNxbmZU?=
 =?utf-8?B?Qy9xVkRtREJQWnJJSmhUajRCRjNlUmxBNjhhWDF5SDdKdFNJK3hnaGgrQnNX?=
 =?utf-8?B?VUdhNWU5bHc0ODJ3bGZQaTNPLzBmOG96WFV4azJlbDR0czZvQWx1K0U3eTJN?=
 =?utf-8?B?WXh2THk2TGswV1doT2w4Tkc1eC9ScmVtY05tTzJ2b2I3dlVKTTc3dVc0TXBy?=
 =?utf-8?B?QVVnYzAyS25ZVjQxZHhwTXlZd2R1NGt6SkxlRlI4R2src3M0VllyWUhPeFpt?=
 =?utf-8?B?dmh0djRCbmxuU3FrcFRiWWlLL3ZXOU1GcE1jNHkzV0F4S2lyTGNHK3R2dUlD?=
 =?utf-8?B?aFE5d3YrTVZXNHJSNjRXamRzbFgrRkxZbUc5ell3WXNBenRNSTJ1WHBVWHR6?=
 =?utf-8?B?UUhEMmxTbmhqdGIzYnpMbENadlU5OVArUUtJSkxiUXhpcklINDZlQ05HaVpj?=
 =?utf-8?B?dTdaS0dyNysxREhwT0pZOEF6cFByeDdLRy82VFNXRlR4bXF2MHVqa24zcGVU?=
 =?utf-8?B?WE9qelNnVnhaQ1FKbVBJVTAyaWVOdkhlWFJqYVYvZm1MZFNpbjAwd2Q4R2ov?=
 =?utf-8?B?TTlTUDJ0RVkzL1Y0a250TTFoZGNkNzlMWkI5R0xob0xjRHpQSlRMQTlHRkJz?=
 =?utf-8?B?NVlOL05wc2Q5b3JtK0dTY1RORzVVdFJrM0xSZlN0WmpWRzNIaWMyNzBpcm9r?=
 =?utf-8?B?cUdwTU1ERVo1UzhRcHA3aHRiTi9xUi93Zm9VQkdDNFRCN2g4OUdaNTA5ZXFl?=
 =?utf-8?B?SEh0WnNJSEgwTG1lNW5DOS9kVytobzNuTElJb0FuclZDb2FMOFJ2QlBGc3Nh?=
 =?utf-8?B?bDRFNlM3UXdvNlY3eVNwNzZKaGZYeWMxbi9XajV0b2t1WnVndjM2aHR6QWtK?=
 =?utf-8?Q?/gJZrxayaydOCu499G9IlPA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaca1dae-87dd-4a6b-00b2-08dbb2f00ee0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 17:53:51.4494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ssBEzVTkgZm+yAy2jUlmqsRDUnO2KX+g5Dug0XJzjoalHoSuAzC/+nw+TfBHDjMTmLIIJleYgkqOmX+ZWecSRULmlrDq52ekEJ+Wg1HHzEW6cZOyv1PvyplOW+sYYK1z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Change
 intel_pipe_update_{start, end}() calling convention
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
Mi8xMl0gZHJtL2k5MTU6IENoYW5nZQ0KPiBpbnRlbF9waXBlX3VwZGF0ZV97c3RhcnQsIGVuZH0o
KSBjYWxsaW5nIGNvbnZlbnRpb24NCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBXZSdsbCBuZWVkIHRvIGFsc28gbG9vayBh
dCB0aGUgb2xkIGNydGMgc3RhdGUgaW4NCj4gaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoKSBzbyBj
aGFuZ2UgdGhlIGNhbGxpbmcgY29udmVudGlvbiB0byBqdXN0IHBsdW1iIGluDQo+IHRoZSBmdWxs
IGF0b21pYyBzdGF0ZSBpbnN0ZWFkLg0KPiANCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG5hdmFyZW1h
bmFzaUBjaHJvbWl1bS5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgICAgfCAxOCArKysrKysrKysrKystLS0tLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5oICAgIHwgIDYgKysrKy0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICA0ICsrLS0N
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRj
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBpbmRl
eCA1Y2FhOTI4ZTVjZTkuLjQ2MTk0OWI0ODQxMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gQEAgLTQ3MCw3ICs0NzAsOCBAQCBzdGF0aWMgaW50
IGludGVsX21vZGVfdmJsYW5rX3N0YXJ0KGNvbnN0IHN0cnVjdA0KPiBkcm1fZGlzcGxheV9tb2Rl
ICptb2RlKQ0KPiANCj4gIC8qKg0KPiAgICogaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoKSAtIHN0
YXJ0IHVwZGF0ZSBvZiBhIHNldCBvZiBkaXNwbGF5IHJlZ2lzdGVycw0KPiAtICogQG5ld19jcnRj
X3N0YXRlOiB0aGUgbmV3IGNydGMgc3RhdGUNCj4gKyAqIEBzdGF0ZTogdGhlIGF0b21pYyBzdGF0
ZQ0KPiArICogQGNydGM6IHRoZSBjcnRjDQo+ICAgKg0KPiAgICogTWFyayB0aGUgc3RhcnQgb2Yg
YW4gdXBkYXRlIHRvIHBpcGUgcmVnaXN0ZXJzIHRoYXQgc2hvdWxkIGJlIHVwZGF0ZWQNCj4gICAq
IGF0b21pY2FsbHkgcmVnYXJkaW5nIHZibGFuay4gSWYgdGhlIG5leHQgdmJsYW5rIHdpbGwgaGFw
cGVucyB3aXRoaW4gQEAgLQ0KPiA0ODAsMTAgKzQ4MSwxMiBAQCBzdGF0aWMgaW50IGludGVsX21v
ZGVfdmJsYW5rX3N0YXJ0KGNvbnN0IHN0cnVjdA0KPiBkcm1fZGlzcGxheV9tb2RlICptb2RlKQ0K
PiAgICogdW50aWwgYSBzdWJzZXF1ZW50IGNhbGwgdG8gaW50ZWxfcGlwZV91cGRhdGVfZW5kKCku
IFRoYXQgaXMgZG9uZSB0bw0KPiAgICogYXZvaWQgcmFuZG9tIGRlbGF5cy4NCj4gICAqLw0KPiAt
dm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3
X2NydGNfc3RhdGUpDQo+ICt2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykNCj4gIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3
X2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ICsJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm5ld19jcnRjX3N0YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFk
anVzdGVkX21vZGUgPSAmbmV3X2NydGNfc3RhdGUtDQo+ID5ody5hZGp1c3RlZF9tb2RlOw0KPiAg
CWxvbmcgdGltZW91dCA9IG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCgxKTsNCj4gIAlpbnQgc2Nh
bmxpbmUsIG1pbiwgbWF4LCB2Ymxhbmtfc3RhcnQ7DQo+IEBAIC02MzEsMTUgKzYzNCwxOCBAQCBz
dGF0aWMgdm9pZCBkYmdfdmJsYW5rX2V2YWRlKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjLCBr
dGltZV90IGVuZCkge30NCj4gDQo+ICAvKioNCj4gICAqIGludGVsX3BpcGVfdXBkYXRlX2VuZCgp
IC0gZW5kIHVwZGF0ZSBvZiBhIHNldCBvZiBkaXNwbGF5IHJlZ2lzdGVycw0KPiAtICogQG5ld19j
cnRjX3N0YXRlOiB0aGUgbmV3IGNydGMgc3RhdGUNCj4gKyAqIEBzdGF0ZTogdGhlIGF0b21pYyBz
dGF0ZQ0KPiArICogQGNydGM6IHRoZSBjcnRjDQo+ICAgKg0KPiAgICogTWFyayB0aGUgZW5kIG9m
IGFuIHVwZGF0ZSBzdGFydGVkIHdpdGggaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoKS4gVGhpcw0K
PiAgICogcmUtZW5hYmxlcyBpbnRlcnJ1cHRzIGFuZCB2ZXJpZmllcyB0aGUgdXBkYXRlIHdhcyBh
Y3R1YWxseSBjb21wbGV0ZWQNCj4gICAqIGJlZm9yZSBhIHZibGFuay4NCj4gICAqLw0KPiAtdm9p
ZCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRj
X3N0YXRlKQ0KPiArdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIHsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3Rh
dGUtPnVhcGkuY3J0Yyk7DQo+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7
DQo+ICAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiAgCWludCBzY2FubGluZV9lbmQg
PSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsNCj4gIAl1MzIgZW5kX3ZibF9jb3VudCA9
IGludGVsX2NydGNfZ2V0X3ZibGFua19jb3VudGVyKGNydGMpOw0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmgNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuaA0KPiBpbmRleCA1MWE0YzhkZjllNjUuLjIyZDc5
OTNkMWYwYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jcnRjLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRj
LmgNCj4gQEAgLTM2LDggKzM2LDEwIEBAIHZvaWQgaW50ZWxfY3J0Y19zdGF0ZV9yZXNldChzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gIHUzMiBpbnRlbF9jcnRjX2dl
dF92YmxhbmtfY291bnRlcihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7ICB2b2lkDQo+IGludGVs
X2NydGNfdmJsYW5rX29uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsgIHZvaWQNCj4gaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsgLXZvaWQNCj4gaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKTsgLXZvaWQNCj4gaW50ZWxfcGlw
ZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSk7DQo+
ICt2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiArCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICt2b2lkIGlu
dGVsX3BpcGVfdXBkYXRlX2VuZChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
KwkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gIHZvaWQgaW50ZWxfd2FpdF9mb3Jf
dmJsYW5rX3dvcmtlcnMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOyAgc3RydWN0
DQo+IGludGVsX2NydGMgKmludGVsX2ZpcnN0X2NydGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpOyAgc3RydWN0IGludGVsX2NydGMNCj4gKmludGVsX2NydGNfZm9yX3BpcGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGY2Mzk3NDYyZTRjMi4uY2ZhZDk2N2I1Njg0
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtNjU1OSw3ICs2NTU5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX2NydGMo
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaW50ZWxfY3J0Y19wbGFu
ZXNfdXBkYXRlX25vYXJtKHN0YXRlLCBjcnRjKTsNCj4gDQo+ICAJLyogUGVyZm9ybSB2Ymxhbmsg
ZXZhc2lvbiBhcm91bmQgY29tbWl0IG9wZXJhdGlvbiAqLw0KPiAtCWludGVsX3BpcGVfdXBkYXRl
X3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsNCj4gKwlpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChzdGF0
ZSwgY3J0Yyk7DQo+IA0KPiAgCWNvbW1pdF9waXBlX3ByZV9wbGFuZXMoc3RhdGUsIGNydGMpOw0K
PiANCj4gQEAgLTY1NjcsNyArNjU2Nyw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9jcnRj
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4gIAljb21taXRfcGlw
ZV9wb3N0X3BsYW5lcyhzdGF0ZSwgY3J0Yyk7DQo+IA0KPiAtCWludGVsX3BpcGVfdXBkYXRlX2Vu
ZChuZXdfY3J0Y19zdGF0ZSk7DQo+ICsJaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0YXRlLCBjcnRj
KTsNCg0KQ2hhbmdlIExHVE0uDQoNClJldmlld2VkLWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3Vt
YXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQoNCj4gDQo+ICAJLyoNCj4gIAkgKiBXZSB1
c3VhbGx5IGVuYWJsZSBGSUZPIHVuZGVycnVuIGludGVycnVwdHMgYXMgcGFydCBvZiB0aGUNCj4g
LS0NCj4gMi40MS4wDQoNCg==
