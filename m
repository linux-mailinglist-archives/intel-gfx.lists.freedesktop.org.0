Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F04750CC1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 17:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3C4210E03E;
	Wed, 12 Jul 2023 15:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A4F10E578
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 15:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689176403; x=1720712403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LJJIpZ9+Iy0iGj6IS6Zh3xmg2ElUezMwAB2BddOUXKs=;
 b=HCptuj3LQYFtGuLseE/Z0HR1+VkOWTsTnAz6/2hNT+xr7UlWpDLu66w6
 N9o9U/gVz+IniRb0EmGvsluV0LlYKHa+zBEcPZeG7KWU9WsHZG5y+4L7e
 ofNU5DNaMMDTtRafv6cEQU9aPazYWLsdnErgvTbyomBSYZLys7sSw1KDt
 6S6IlHVMidE+2/bZLejMxIfD8+PrV3HhT2rxDE/YtsbZuj6q2XesDZals
 Z3VoToF06p5F8CMiabyEk1NfwydEZ227exNJapS12vRLoJk0SGxkHszDI
 ad05oxmfHBZBvXDlupGXMdhFMbJaAJoj81kLbHH1LcYUnLUHvY+2Gu62H A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="354835933"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="354835933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 08:40:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="791668014"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="791668014"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jul 2023 08:40:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 08:40:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 08:40:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 08:40:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wut5lxQEdmNIhBzz4JIqPDbZ4SpSHqm4hMAxZqmw6XRA5wwD3prIt7Su/q+MoBDJC3bVmOwvcX7HUPFHHX8W3C5GetjYkeLM4QXZIxzl37W3nRfLzBl+oqSPbZ/IB4y9DkueJin5qYt9WvaG6NIbKeV5l5fwWHQeV0K/xQG6yrJS5NLrPJRYHqfFr7Kl5GCNef3xfkf3RNJBysElG2ZLubP477BBAaG5cQ+BzEah+YSpvBUGqkGM3CAOPP/H5qa63TX9WF2bNwSi+hpX1t684rmOszijslkBM43SOupA0mIJMSgu8a/3PvifU1yrsruqP0VmfyedgUvy76hFSSEc0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LJJIpZ9+Iy0iGj6IS6Zh3xmg2ElUezMwAB2BddOUXKs=;
 b=dMfjEiM6oIwn+gaJGggoMb/y8dASqQEI2Mp/mDrL9/nrPGKiVfunOFvN5Bs4tYDRROdsf/pTRtCHHZSa4JKoTR5HgCxRreU5tf18F8O6xuRFxA8APs2DpPPZjZ3vM7YNyTogNYLTO4d7MXzalxiIpcjaIVZKXEffyWqnlyuJusgd3jbaaYkFsDptpRfrHWegw6BVtDlkHvAGKn0ZNgIVKYX0bCobauwET+Kf4lK90evKkYNhlmX77GVCu4uCshakdcuNUxOWTRKVhmJYTJwRJsHTrDt4xPSR61LNwdgBQu6Ij4VeY/gB/TAfj+NCD/oWQyVwo1WW8pifYYlVT3bWXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CH3PR11MB8413.namprd11.prod.outlook.com (2603:10b6:610:170::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.32; Wed, 12 Jul
 2023 15:39:58 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::27f5:62c8:7208:aa50]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::27f5:62c8:7208:aa50%5]) with mapi id 15.20.6588.017; Wed, 12 Jul 2023
 15:39:58 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
Thread-Index: AQHZqNvrngbvjvrqXEiKN9QPWCsMK6+2RYmAgAANDYA=
Date: Wed, 12 Jul 2023 15:39:58 +0000
Message-ID: <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
 <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
In-Reply-To: <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CH3PR11MB8413:EE_
x-ms-office365-filtering-correlation-id: 0814635a-7b24-4cdb-f0ab-08db82ee3fc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TR6oZd2yGYKutpJcPono5h3n6o+WkF64enEOFj2vHjUrytFk6ux5QMgVfQ75QVXP19/YzHwXZZ9y7z2lxFMNkXGuaW8MIhjj1wslE56SKNjWZQx1Glt9BVCi2KpMvPIFHRblSVGDXo201M6JOZQBo53XSyV7NePVojw/f9PzOYwhc/hc3ZdNVRcgz3SNb8Ke6ZJBC1Cbx8UlhEzjUfBkujwxS3S+hsS/c8kqCTh5wtEuCxVEfAO41XKWuFF24byqHQqY3NEDONZiUEsvrM5kHIWaNEuB1x6nZKfG6DdPDH8wKHwXFeDgS1gtvALsZCpieMvsFwxNE1M+vJ5vctA/8xp//WcysPq0pApARXe1ZefOO7FZJ+ePFeSkvbjP2H5zDrXY7FMk/abszmsAzu9cnCQHROmrvSXw1SVn4EWvpAI0CJyl7VIVgxeIe7eNhduWGCjY70cWhWBXzrjo4DyhBy2nGj8T2jLz4uweQeDRNYkBlUxgMzGAHwoTlFHdsExCLIZlQttgz64zEyLiVihBcw40JpCK3infgvSmeu9xUltvX2Nc8TUxnJaGTl2uiEoIE4BA6toaLfT7hNjwTHCD4p0/HYBQqd7TzfFJy9zHrdk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199021)(5660300002)(52536014)(966005)(38070700005)(8936002)(478600001)(8676002)(55016003)(86362001)(7696005)(2906002)(83380400001)(71200400001)(76116006)(66446008)(66476007)(66556008)(66946007)(64756008)(33656002)(41300700001)(186003)(316002)(4326008)(9686003)(6506007)(53546011)(38100700002)(26005)(54906003)(110136005)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmRkZjZRbDNkVWlxV3BvZktBMnErdm51ZU5LYWF2MjUyanBtcUgzUHcrZUNp?=
 =?utf-8?B?QVdYSmxxYlQ2NDltZ1dTU1pwcFBsODkvQ1AxallUVVo0SDV0MkJoWE5nQ1E3?=
 =?utf-8?B?U3BKQW1mRzZYVml6a0U1NkI2bWdCNFpnZXc2U25qV0hObW9HUzhvNnk1MHVQ?=
 =?utf-8?B?b1QweTN0RGpUSjlmTzdYd0FDQmMvRFlFUzNhT08zQ0JhbXh2Zzc3ZUVkZ1dl?=
 =?utf-8?B?OUp1U3hvdHdqS3ZCcTgrTFhKRlNZM2Y4cHRQZUFKTytKNGZsWElrc2h5ei9I?=
 =?utf-8?B?M0hXZkZPVldNRDE3M0lFUFhFbnZjUGpGUnNwbTR5dzFXd05WbkdPcGIwd0sy?=
 =?utf-8?B?L1pJQ0ZKYi8vZnZmMHptV1lMRDlxaElCdHd4Y0JuMUJhY29kTnVFR05hUTlm?=
 =?utf-8?B?RVNDUEpUSUNyN0FacWlOTzRRbHhRQ2dzYkRtdHp2MTlPd1hHNEpLY1FTSHRG?=
 =?utf-8?B?UTRib2FQcjlldldKWXdKRUd4U2ZDOVRaaVNGbTFYZzFGb3lXSW9ZVnA4Yjlj?=
 =?utf-8?B?VFdtNzlEQXVMNEo0R2NEL2pxOFFWWGhxZERFSThQMTR0UlBKVzUxeDVVOVQ1?=
 =?utf-8?B?RmthZGNqY255Q0g5NWdndGhYYmtuL3VqYnR5QmErdFhJWW5LSHhLN2UzUCsw?=
 =?utf-8?B?ZWFrUTZUblVqekFuYk56UHJsS3BleUtuUHhJa1NhRHl1M04vUmdZSmVuUTN4?=
 =?utf-8?B?SDZUL3JUMWVoS0xUQWQvbUcrcnY3NEVkdXF3UWg0aEVVaitnM1g2RXRoSUNh?=
 =?utf-8?B?eHVtZ3NnTlBod2hrVExtN1c1Mk92QTcrZVUyaXg3OFYwOGc2dzczaHN4WlhJ?=
 =?utf-8?B?UEJKbWRYZml3Ump5N2dpc01MKzNYNTZSWXdzSkFXQnUvTXJoekxjczd2VWNo?=
 =?utf-8?B?Z1NYdldtcXU3T3htd3prQVN4NEFyTDQwSXY0M0w1bm5IRTFva29SaXBvNGpR?=
 =?utf-8?B?SCtIZ3I3TFZHelYwSlFYbUVkNXh0RHVvQkp6T2g3YlVRalY1KzlYNHRxbjhs?=
 =?utf-8?B?akU3M2Nnem42R05BeEczcmh4c1FEWUFFRUx3aEFpSStuZVY5RGdJQmpKV2Mr?=
 =?utf-8?B?UmRGMm1XMCtFanZsTC92UE1EN0hOdWhpZUlySXJoVno4Y3laUWd1a3kzT3Fh?=
 =?utf-8?B?cEpvckwrenlXNFk4ZXgzSnlTNFprTW1qbmIwdDUxSnJ6SFZSb0VaRmNoSG1U?=
 =?utf-8?B?Q1J4anNtNUYyQis3REtrTGtMNXhLRnVXYVJBWGdRNEJYbjQzbE1PRnNZV212?=
 =?utf-8?B?NlZZRDlZNlhqV3lDbEhpcnFTOTJwZDdZdTVCUHhPNC9FME5qdlJNakg2aTZ5?=
 =?utf-8?B?WGI3TWRCZmdZbjJ4ZnVwOUpzdENrOXhJVVRQQ3AzZUoreDQzNzdnQlZXRTFJ?=
 =?utf-8?B?VTN4K0FGcjM4SERhb280ZTF1ekxZcHdtVlNaN1c0bTkrWk1PeHUrMGZIVGQw?=
 =?utf-8?B?U3ArVHhBRWVGeGxHM2NpU3UxUThWbHdMQUNpVzZFbStld0hJQlgwTTlBOGFl?=
 =?utf-8?B?RlBIR29VVitnNy9jY3I0TXZpOTVHZEZkUTNHUStWNVhIcFlSdjA5cFEwOGty?=
 =?utf-8?B?ekxLWU1LY1ZDNUVWN201L1I0bVREL3J5ampCekdud1Q0RFIzOTNaRmFWdkw5?=
 =?utf-8?B?aXJuZ0RzWDhzRmhKQWdoU3Y0NlZHdnpaMC9qdnFidmpqN3FGVU94MWM4R252?=
 =?utf-8?B?OEQ5ZWJoQW4rdFMzY012bG52NmxOdS9pbS95emdkNDhVQ3RRY2xRN0hlN2RZ?=
 =?utf-8?B?aXY3MDF1QlpNL0czQ21HUnhJekpvMXVReU5EdWVWMGYwRTU0bnMxTlI0WG5s?=
 =?utf-8?B?UzlYRlZlRkpjemFlUGlPMWtoc1B3Z1VEeVh4RjJuUlhrSWtLRmRyYlFiNk4r?=
 =?utf-8?B?SWJ0YVIvUU43M3g5UjhMSy9heFNsQzVUR1RXb3p3WkJtUkpxWVpFZ1pmUDZp?=
 =?utf-8?B?Z2Z4QW5jMUkzV0N3OHNWMy9ONU9VRUY2M1pDUldlNW14UHN3d3NmWlhmVjNh?=
 =?utf-8?B?SDYxZ3FSclNjSlBDZ1BZOElhd1BrNUtUMkNVVVhBYmEvQUlkN0ZWVkhLeHFV?=
 =?utf-8?B?c0JRSUVCMlVxSEhweWZ4ZjNvREluMlo1S0JmSlRhUkFzQWk5QXJkYWZQajRZ?=
 =?utf-8?Q?whZYxEG/yNhAFlVbDDyX89lbu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0814635a-7b24-4cdb-f0ab-08db82ee3fc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2023 15:39:58.5966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jZaNkDvv261ikpnYQumfFxRA5W1A42J3yKRnBba21rme2UOtvD+KjtZrpa/O7CqhcPNnhOIfHSLPoBJrQN80EgjwnqyTvly1E9RD6DF3oAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8413
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE5pcm1veSBEYXMgPG5pcm1veS5kYXNA
bGludXguaW50ZWwuY29tPiANClNlbnQ6IFdlZG5lc2RheSwgSnVseSAxMiwgMjAyMyA3OjE4IEFN
DQpUbzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBsaW51eC5pbnRlbC5jb20+OyBDYXZpdHQsIEpv
bmF0aGFuIDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KQ2M6IEludGVsIEdGWCA8aW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47IFJvcGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+OyBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az47
IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPg0KU3ViamVjdDog
UmU6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MiAyLzRdIGRybS9pOTE1L2d0OiBFbnN1cmUgbWVtb3J5
IHF1aWVzY2VkIGJlZm9yZSBpbnZhbGlkYXRpb24NCj4NCj5IaSBBbmRpIGFuZCBKb25hdGhhbiwN
Cj4NCj5PbiA2LzI3LzIwMjMgMTE6NDMgQU0sIEFuZGkgU2h5dGkgd3JvdGU6DQo+PiBGcm9tOiBK
b25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQo+Pg0KPj4gQWxsIG1l
bW9yeSB0cmFmZmljIG11c3QgYmUgcXVpZXNjZWQgYmVmb3JlIHJlcXVlc3RpbmcNCj4+IGFuIGF1
eCBpbnZhbGlkYXRpb24gb24gcGxhdGZvcm1zIHRoYXQgdXNlIEF1eCBDQ1MuDQo+Pg0KPj4gRml4
ZXM6IDk3MjI4MmM0Y2YyNCAoImRybS9pOTE1L2dlbjEyOiBBZGQgYXV4IHRhYmxlIGludmFsaWRh
dGUgZm9yIGFsbCBlbmdpbmVzIikNCj4+IFNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIENhdml0dCA8
am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkg
PGFuZGkuc2h5dGlAbGludXguaW50ZWwuY29tPg0KPj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwu
b3JnPiAjIHY1LjgrDQo+PiAtLS0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9l
bmdpbmVfY3MuYyB8IDcgKysrKysrKw0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfZW5n
aW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW44X2VuZ2luZV9jcy5jDQo+PiBp
bmRleCA1NjNlZmVlMDU1NjAyLi5lMTBlMWFkMGU4NDFmIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvZ2VuOF9lbmdpbmVfY3MuYw0KPj4gQEAgLTIwMiw2ICsyMDIsMTMgQEAgaW50
IGdlbjEyX2VtaXRfZmx1c2hfcmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgbW9kZSkN
Cj4+ICAgew0KPj4gICAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gcnEtPmVuZ2lu
ZTsNCj4+ICAgDQo+PiArCS8qDQo+PiArCSAqIEF1eCBpbnZhbGlkYXRpb25zIG9uIEF1eCBDQ1Mg
cGxhdGZvcm1zIHJlcXVpcmUNCj4+ICsJICogbWVtb3J5IHRyYWZmaWMgaXMgcXVpZXNjZWQgcHJp
b3IuDQo+DQo+SSBzZWUgdGhhdCB3ZSBhcmUgZG9pbmcgYXV4IGludmFsIG9uIEVNSVRfSU5WQUxJ
REFURSBzbyBpdCBtYWtlIHNlbnNlIHRvDQo+DQo+IMKgZG8gaWYgKChtb2RlICYgRU1JVF9JTlZB
TElEQVRFKSAmJiAhSEFTX0ZMQVRfQ0NTKGVuZ2luZS0+aTkxNSkgKQ0KPg0KDQpUaGlzIGlzIGFn
cmVlYWJsZSwgdGhvdWdoIEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhbnkgaW5zdGFuY2VzIG9mIHVz
IGNhbGxpbmcgZ2VuMTJfZW1pdF9mbHVzaF9yY3Mgd2l0aCBhIGJsYW5rIG1vZGUsDQpzaW5jZSB0
aGF0IHdvdWxkbid0IGFjY29tcGxpc2ggYW55dGhpbmcuICBTbyBJIGRvbid0IHRoaW5rIHRoZSBh
ZGRpdGlvbmFsIGNoZWNrL3NhZmV0eSBuZXQgaXMgbmVjZXNzYXJ5LCBidXQgaXQgZG9lc24ndA0K
aHVydCB0byBoYXZlLg0KDQo+PiArCSAqLw0KPj4gKwlpZiAoIUhBU19GTEFUX0NDUyhlbmdpbmUt
Pmk5MTUpKQ0KPj4gKwkJbW9kZSB8PSBFTUlUX0ZMVVNIOw0KPg0KPkkgdGhpbmsgdGhpcyBnZW5l
cmljIEVNSVRfRkxVU0ggaXMgbm90IGVub3VnaC4gSSBzZWVpbmcgc29tZSBtaXNzaW5nIA0KPmZs
YWdzIGZvciBQSVBFX0NPTlRST0wNCj4NCj5BcyBwZXIgaHR0cHM6Ly9nZnhzcGVjcy5pbnRlbC5j
b20vUHJlZGF0b3IvSG9tZS9JbmRleC80MzkwNC4gSXQgbWFrZXMgDQo+c2Vuc2UgdG8gbW92ZSB0
aGlzIHRvIGENCj4NCj5uZXcgZnVuY3Rpb24gZ2l2ZW4gdGhlIGNvbXBsZXhpdHkgb2YgUElQRV9D
T05UUk9MIGZsYWdzIHJlcXVpcmVzIGZvciB0aGlzLg0KPg0KDQpJJ20gYXNzdW1pbmcgd2hlbiB5
b3UncmUgdGFsa2luZyBhYm91dCB0aGUgbWlzc2luZyBmbGFncyBmb3IgUElQRV9DT05UUk9MLCB5
b3UncmUNCnJlZmVycmluZyB0byBDQ1MgRmx1c2gsIGNvcnJlY3Q/ICBCZWNhdXNlIGV2ZXJ5IG90
aGVyIGZsYWcgaXMgYWxyZWFkeSBjb3ZlcmVkIGluIHRoZQ0KRU1JVF9GTFVTSCBwYXRoLg0KDQpJ
IGZlZWwgbGlrZSBJIGhhZCB0aGlzIGNvbnZlcnNhdGlvbiB3aXRoIE1hdHQgd2hpbGUgdGhlIGlu
dGVybmFsIHZlcnNpb24gd2FzDQpkZXZlbG9wZWQgYmFjayBpbiBGZWJydWFyeSwgYW5kIHRoZSBj
b25zZW5zdXMgd2FzIHRoYXQgdGhlIENDUyBGbHVzaA0KcmVxdWlyZW1lbnQgd2FzIGFscmVhZHkg
Y292ZXJlZC4gIE9uIHRoZSBvdGhlciBoYW5kLCBpdCBsb29rcyBsaWtlIHRoZSBDQ1MgRmx1c2gN
CnJlcXVpcmVtZW50IHdhcyBvbmx5IHJlY2VudGx5IGFkZGVkIGJhY2sgaW4gTWF5LCBzbyBpdCBt
aWdodCBiZSB3b3J0aA0KZG91YmxlLWNoZWNraW5nIGF0IHRoZSB2ZXJ5IGxlYXN0Lg0KDQpBbHRo
b3VnaC4uLiBpZiBDQ1MgRmx1c2ggaXMgYSBtaXNzaW5nIGZsYWcsIEkgd29uZGVyIGhvdyB3ZSdy
ZSBzdXBwb3NlZCB0byBzZXQgaXQsDQphcyB0aGVyZSBkb2VzbuKAmXQgYXBwZWFyIHRvIGJlIGEg
ZGVmaW5pdGlvbiBmb3Igc3VjaCBhIGZsYWcgaW4gaW50ZWxfZ3B1X2NvbW1hbmRzLmguLi4NCg0K
LUpvbmF0aGFuIENhdml0dA0KDQo+DQo+UmVnYXJkcywNCj4NCj5OaXJtb3kNCj4NCj4NCj4+ICsN
Cj4+ICAgCWlmIChtb2RlICYgRU1JVF9GTFVTSCkgew0KPj4gICAJCXUzMiBmbGFncyA9IDA7DQo+
PiAgIAkJaW50IGVycjsNCj4NCg==
