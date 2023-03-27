Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E496CA485
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C4D10E5BD;
	Mon, 27 Mar 2023 12:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A6E10E59E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679921322; x=1711457322;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fUaafUsJ5PxscgOKzdR//KGRVg8DMX5Eo/xJpwEfM68=;
 b=iVusjSHGmTyxmsGp1eLzkZhXwC2omvrKfi0Mq3YXckYDNodVAeqKX1/g
 M4fGZL2vCV5iKOTNQK0Soi+g/8tyIUOFWrndLYQ8R0IZzaxyuKmQhlOKy
 anI2l/FzARdsjXWhXiVc2Bg0m1VCFJJj8eJB2RkWU+obp2fbj5fR43D8J
 /JjEY2Yc6JWpfwLl30ldhspUMwBf7bJ3DqMf7Oh7XZfiQZ2sw9a/G3ySx
 KuZT7j7ixlwNYyz2eOqLJ+1u5c+32JjJrisB7PTVl8odeHk5AVyhnNHK6
 C14ckR8KbuQv0JQUC8gKkl8PpYU4dtXMf+YtUWGiCVP8mPD6R/dRIrnon w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="405176081"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="405176081"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:48:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="633589141"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="633589141"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 27 Mar 2023 05:48:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 05:48:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 05:48:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 05:48:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vk9CcDkNX61M+z6WF+DxEl+cltoOvw14VWWa/QRIXURAo8HIbq/Ie1DEyG+vayHxdzQeTyfX6ZWFg5yjXCoFlmOHGpxkpB86fHkGFfVt3PfrxtKe6w86NiOJS5xpNgSDLlIBk/9MWVNlcX/hUkatF0yu1zN9IcoM90J0jNIwdo/3iPbEFxnzyGvOOmEABoDsxfadGZ4pceY+eNEtAIbTprFflRqrhBFaP6vpZJQYJht7m4OfqqoSP+IvGIGzy71uZ8g9AxptjIMZkTWCml4KXoA4O7cGvHWuZ5GKMibbMRYQ3BjmpHwyz/ujj9q3bVfaXPcan78k5wzw+qe1Wl/Lkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUaafUsJ5PxscgOKzdR//KGRVg8DMX5Eo/xJpwEfM68=;
 b=nof/ZtONTs/Iw7S5Rl9P+C17BBewipU4fSErcDsjwExr+aR5HliV38+vVP7Fsbh0os1bU8WXGqqlOpVDYQ2NB6hMg9sXg6DtGzxH9vb5PJqyH/Fdaq+3bWvyK/LlBEzKiVmgdmYW2ibdekzb+56fHqkj+ILZJ4+eAltTcF1pIdeu0FCMwWNcEPhgJnaeN8Q45jAVZiWx3jPlCa938APzrqlYCBEWmOz19KrwqkGECz9h8D841zziJbsS8E6C9RaYZ8mvZRrBV/gvl8Mm2M/nKtrvn0DNE8z7xtpsudkRGwWy+n/hA23rtb6iRaEGSrTbREsgZuX4zwpXS2QY/vvtKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6675.namprd11.prod.outlook.com (2603:10b6:510:1ad::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.29; Mon, 27 Mar
 2023 12:48:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 12:48:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 24/29] drm/i915/tc: Don't connect the PHY in
 intel_tc_port_connected()
Thread-Index: AQHZXZLGzPdKLC17qE2ZMTsS9Oxk6a8OmaVw
Date: Mon, 27 Mar 2023 12:48:39 +0000
Message-ID: <MW4PR11MB7054960A5D755401C8995A87EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-25-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-25-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6675:EE_
x-ms-office365-filtering-correlation-id: 84d64787-4878-42cd-0f5d-08db2ec196a8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YV5XuK0TMDPJK3WK+WONle5MzJKGv74nI+/NXPyh9mGrF16mD9Ff1n2jWwzdsGHNhCbjRAJNKn+xw5xM/0oj3NNA+2C9KiXS/CvVSBPB4E1m6Af4BJk1SCo23aRqPoZChdBNJu1DNn9jCgtL70QPrXPddWMiljEjvUSCvpiNkL/RjbchS+VEbRSx4vHNobfp9/gk9VdmrJG1vCUpEnPj7npiVLJoAMYdbHPgWtviFIVwaMbELjz72NuPQ+oQlZCj8N9f2i8EAmICC6wu07J1LCTCpDLasc3qmFv1WedfYL1f2MBJ6a50c8zCgQmUJen98WjzcCFV+GRNEmdHUH8LZn0sG2Guagm414iBZmoz4yKM3XNHOKthuF6I6ei8GkHlntRlaoU6vgHclZU7bEJXzLmDv4rN5wo1jUfMgFWOgtx8VpvVWyU6ZC6CQtCV2r99Qj0M6JWv03TtFnLtDjH9seK7qTI0kgehnXiC8Kk/FORsgua6k/SNrpG0P+RFhwu7h1Ai5YOSY86GCeTygLmPH15/4p1M6aRkhPfV6YR/dxGlG3FnQfOcD91aT8BPcEGd49DvB4UDuQy9YjOkAMcheN2QJlbohtHiaBD7I4roM+HAydTE0tjle58DevSzM3u5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(83380400001)(52536014)(41300700001)(33656002)(86362001)(5660300002)(38100700002)(8936002)(82960400001)(122000001)(478600001)(7696005)(71200400001)(66446008)(76116006)(64756008)(8676002)(66946007)(66556008)(66476007)(2906002)(38070700005)(53546011)(55016003)(186003)(6506007)(26005)(9686003)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWhYMUJWVlZwYldxakpUTEpoRktmdk4ydGJ5SXZvY0FRRElaRUVqcTZDb0ds?=
 =?utf-8?B?TFl5WC9RNTdSNE92WWJQZndkbTJCM2hxbC9xVFl2TUlQVG1EanpBV1BrTU9K?=
 =?utf-8?B?WHp3VlpNVSs0RUZFY1Vqb2swblZza0NXTzB3NXFzTW94TFJzcmUrL3haQUI5?=
 =?utf-8?B?WEJnQjlNQ1dXRTVUWEZXeUlLNHpCSWIwalhQK2ZieGJWLzIrL2Q0Yzh2a0lJ?=
 =?utf-8?B?VEhvSEVKQlZ1Skk4aksrRjRtdm1MckZ1eUVKVHI4cEgzUithUzJRU2ZCMEZo?=
 =?utf-8?B?ZDBSSUc4UGoyOW1sT3N3Q2lZVFZTc2ZBWmhaTndkSWdZL014L2MzYy8yQlBz?=
 =?utf-8?B?Rzk3K1hpQlVwQkFyTC9NWFg5bmlsRkl4cTBRa2JYdVdxKzFNaWxIY0pzKzZv?=
 =?utf-8?B?eW1OWXJnWW9HQWlKa2VKNEE2a3o1eVBTZ3NzaXZtM1kzQWtaUUpYTEthS2FL?=
 =?utf-8?B?Zlh3Tk5memVwc0o0NmhrdXU5djNrRXhiQTB1S0hVNjBqWVJqcGhiYWlHQ0ZF?=
 =?utf-8?B?T0JGc1lTSTZxWGEwaXdXT29wQ0JQQ2FkVjFTdDdDY0VLYkF5NDRDdFNDR1pD?=
 =?utf-8?B?SU9XSFVMTUdxblJ2YTlyWVNaU1Eyd05EQlppTWNCekpwbWhhT1dnb3ZxNEVi?=
 =?utf-8?B?NjdVZ1c2ZGNGYzhheCs0WjVGMlUzSXJZdTFoWERMclhuV3dIT2VXWUFHUVFK?=
 =?utf-8?B?SkxlNThLbDUvUXVraVlSTDlLaWgwZ1dZbFdVUVVPM2ozMFNkQnkyUzNqRDNl?=
 =?utf-8?B?aVBTajUweUt4aHA0VWJlV2xkSm9BM2IrcU92UEY0RWEyZUpNWGZRclZNU0Rx?=
 =?utf-8?B?QmxLNzhkSnIxVnd3TDYybVpCOGhSUDJDcVY0ckVXaG41UEV0VmxaTjlqbmV4?=
 =?utf-8?B?ZE1YU1VwRGNJME1RdGFOVzZZd0YxNTh0cU1qOEZDcUFYbHhCUDA1N0pqV1VO?=
 =?utf-8?B?amlzWUxjMTh0dHVBVnVyOHlHV1RBNlNaRTNJaTJkMkM3QnlwVU91ay9HNUlB?=
 =?utf-8?B?ZjVBTmRFZmNKMlFBVnJsRlJkMnBoQzQrbWdhMmszcHRJSGs1UVVCRXlJRWRn?=
 =?utf-8?B?NzJXL3BTTjNySS9qL1Zaa3pQMHA0ZHBUNGY0Q3Y1L2xLTXN5MFFLVDkxR0ht?=
 =?utf-8?B?Tm4xUlFUNWUya1Yzdjkzb0o1bXNvSG10TzhoRzdnSTQyT3lXRjNqWFNJZ0hW?=
 =?utf-8?B?N05zbDV3VmF4emRBa0tWRkxRTjhWbFg4NC9pZ1hhdWJ0TzJoeEFHMWUrUnk4?=
 =?utf-8?B?OTRrQndxYVVZZ05tWDhRTm0wOEFaRlUwS1dwUUV3RHB0c1ljbFdUQlJJOVZU?=
 =?utf-8?B?eFlZUWt4RVM0LyswV0RmQVJWdFg3dmo5OVNQRDUrcG96WERLbnl2Y3E1L0pX?=
 =?utf-8?B?d0tLSDh1OWFvMmNQYTFMU1JIVk9udksxQ3NlM2llUVg1TGRkZFZzVXpTcGFN?=
 =?utf-8?B?WjgyOXJJR1pOZkdFMGhWQktCN1JXZDI4Vmdub090NVBhcTRPSmIyUU1HYjd1?=
 =?utf-8?B?NXJjMTVGWnh3V1R5TVc1SkVITjdydnYvY0RiQWF0MCt3aFNaMk9HdjZlR21l?=
 =?utf-8?B?RnlCbFdGeXNXZCtuclFpNFBoUTlMWC9xa2ZlVUw2TFBZb2pUZWtsdC9ockZL?=
 =?utf-8?B?dFA0NjlzaExTeGVwSFFEMzBjZXFNMkNJRllxMzZFUEJnczdxME5KWDB0dkZ6?=
 =?utf-8?B?VDl0WXZvaldydjhwUG1zYzluYS9zTkFDcmE4VVFjeTQ4YTU5VnVGaFdCa1Fh?=
 =?utf-8?B?MFNOZEJvWCs0aXY3TG50SDBpZVZMeTMvclNUbGxpV1JvdzF2OUhJTWFMK2c0?=
 =?utf-8?B?OU9SdUc1NlRDWUZKYkE4Tkw2Vk00dTJGVGNJOEtZR3UzaU8vaU52VmlPK0Z4?=
 =?utf-8?B?ekdaTEcvYkViQ2VVOVBkK21KUG9qUlBOOTRKMzBpOEtSNDZPVzQxS20xVDls?=
 =?utf-8?B?blM3WUpFUzNnNHRNY1N3ZEM4MkgrdVlBRm5DYXJpWnBjKzM3NU1aMGEzTEZz?=
 =?utf-8?B?SkpFODl0UTdwZjA0ZTQ4S1JnK2pnazByWW1KSjYzK0NTMWo4QlpvdEpldkMy?=
 =?utf-8?B?M2hnQldSMGpPTHp3ZEhrU1JtL1pDZFJ5OSttaUswcXNlMHd5cUVGdWNYTXQ0?=
 =?utf-8?Q?nkdDRhRKu3/YwzfnWtW31iPEJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84d64787-4878-42cd-0f5d-08db2ec196a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 12:48:39.3907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mtWeETFSdxZEHwrBtcgWGV2g14Cxcs6IhZFtdj4Myix3dr5Ct/teVxh7DJHDi2dcc8Srp9u2HPHyQsEC7z2aXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6675
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 24/29] drm/i915/tc: Don't connect the PHY in
 intel_tc_port_connected()
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
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMSBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjQvMjldIGRybS9pOTE1L3RjOiBEb24ndCBjb25uZWN0IHRoZSBQSFkgaW4NCj4gaW50ZWxfdGNf
cG9ydF9jb25uZWN0ZWQoKQ0KPiANCj4gQ29ubmVjdGluZyB0aGUgUEhZIGZvciBjb25uZWN0b3Ig
cHJvYmluZyAtIGFsc28gYmxvY2tpbmcgVEMtY29sZCAtIGlzbid0IHJlcXVpcmVkDQo+IGFuZCBo
YXMgc29tZSBvdmVyaGVhZC4gVGFraW5nIG9ubHkgdGhlIG11dGV4IGlzIHN1ZmZpY2llbnQsIHNv
IGRvIHRoYXQuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwg
MTEgKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
DQo+IGluZGV4IDA4YTIzYWIwODFkNzQuLmYyMDJiYTMyNGZkMGEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTEyMzUsMjAgKzEyMzUsMjUgQEAg
Ym9vbCBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZF9sb2NrZWQoc3RydWN0DQo+IGludGVsX2VuY29k
ZXIgKmVuY29kZXIpDQo+ICAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBl
bmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gKwl1MzIgbWFzayA9IH4wOw0K
PiANCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhaW50ZWxfdGNfcG9ydF9yZWZfaGVsZChk
aWdfcG9ydCkpOw0KPiANCj4gLQlyZXR1cm4gdGNfcGh5X2hwZF9saXZlX3N0YXR1cyh0YykgJiBC
SVQodGMtPm1vZGUpOw0KPiArCWlmICh0Yy0+bW9kZSAhPSBUQ19QT1JUX0RJU0NPTk5FQ1RFRCkN
Cj4gKwkJbWFzayA9IEJJVCh0Yy0+bW9kZSk7DQo+ICsNCj4gKwlyZXR1cm4gdGNfcGh5X2hwZF9s
aXZlX3N0YXR1cyh0YykgJiBtYXNrOw0KPiAgfQ0KPiANCj4gIGJvb2wgaW50ZWxfdGNfcG9ydF9j
b25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpICB7DQo+ICAJc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7DQo+
ICsJc3RydWN0IGludGVsX3RjX3BvcnQgKnRjID0gdG9fdGNfcG9ydChkaWdfcG9ydCk7DQo+ICAJ
Ym9vbCBpc19jb25uZWN0ZWQ7DQo+IA0KPiAtCWludGVsX3RjX3BvcnRfbG9jayhkaWdfcG9ydCk7
DQo+ICsJbXV0ZXhfbG9jaygmdGMtPmxvY2spOw0KPiAgCWlzX2Nvbm5lY3RlZCA9IGludGVsX3Rj
X3BvcnRfY29ubmVjdGVkX2xvY2tlZChlbmNvZGVyKTsNCj4gLQlpbnRlbF90Y19wb3J0X3VubG9j
ayhkaWdfcG9ydCk7DQo+ICsJbXV0ZXhfdW5sb2NrKCZ0Yy0+bG9jayk7DQo+IA0KPiAgCXJldHVy
biBpc19jb25uZWN0ZWQ7DQo+ICB9DQo+IC0tDQo+IDIuMzcuMQ0KDQo=
