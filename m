Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE4F6E8890
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 05:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C3A10EB5C;
	Thu, 20 Apr 2023 03:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1776A10EB5C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 03:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681960848; x=1713496848;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rB+U1LvJoN4r8xRxSE5M1y10TTX8FKGlJrr5vQsTxp0=;
 b=J9TW1d+OEQ1mvYIv5LNjr7NoHTUTkDV/yh8Wz0tahHKrwbW5rP8AD8eQ
 Yu0CVIe3t6hLafQFyyeIeMIPcRh/MslDmlozu4Ju1XM6fv6iH6wUzzc63
 m8eLDDLvScvA9bJPwzqAvuT+s+/XJorA+aaSc9Z4R51yONISwfdsK5a6+
 YRO/YUmSMeOoiIPrN0HXTVhL22UY6p1e7d/NEoUUGkJmdc82aVpLYBkYD
 R2dsoWckd8h+9l5qAX2Fa9ZDfjnWqUnVOvpBGB/M8rEZJEJKa/6FxJuAK
 JFpMRvNkeXFVExO8ZLO302+R3dlSFDNDR+K3tk4A7qMynkg3HPDqvrK9D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329798825"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="329798825"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 20:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="691738414"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="691738414"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 19 Apr 2023 20:20:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 20:20:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 20:20:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 20:20:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 20:20:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+4rXiAFdbEeKATJxz3b9T1j7ZsQ45LuyOD+QQ0Frmq0Y9pIoHLdb57iQr/myByB9WPu2bbQpqgrNL1WZ86cfwGd+pprvpTcpEW6njxHh+mCzufjd/zvJ4vfqb2+CjSFEmzminVxmXdSlj9vyvqQFsN1Ws8m2gDrpuDeplNCvya5+TERDmntOpGXbsiA9a5i3MeQahDPVNLt1l3JU6rLii+H28ll6Vv4EudjSt9nhp3Wqu5flVzAGfghbp3oVJOmXMAQ33bbUNOqAN44C3zo2xDmUNSXLjFQTBwncsn2E50JBF3+KlFNLgrQ/085BhfEaNExE+xVyXNEWI8/3sG9kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rB+U1LvJoN4r8xRxSE5M1y10TTX8FKGlJrr5vQsTxp0=;
 b=dNdFOaAWVf0x/ZJ23RftCze8SwagQZEpTDxUBbpJtIVUxT4Fd98XDcfscvTPhBF9GVJK7SCM0Wwg9hPDvlNc/sX0mVytX0mG3Vq4uc2mba9l7JyMbHn9VasOFRys84iVR50OtRtjWl3yFqU6u7b/bdpwjuUs3fiTXv/OqIdILSwHw3c93oGbs3WqRgpHvZzC3+k/CbVATJ3gesa7Scs92pwkSOSklIp1m8b7m40XAYKTEiU92g1ES8dNGHiOCFjako0FemilUWuQJ9Uc7W8/vtUr18Ix0kYgW+ReAqARMAG89MRYD8eWgXpz7jfbR+StFQBDCanxJcNJRHyyu8QBWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Thu, 20 Apr 2023 03:20:40 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6298.045; Thu, 20 Apr 2023
 03:20:40 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: WA to clear RDOP clock
 gating
Thread-Index: AQHZckILVQyHsuWJkEiCx7WkxeolLq8zLQcAgABcVJA=
Date: Thu, 20 Apr 2023 03:20:40 +0000
Message-ID: <DM4PR11MB5971148F187E9A22AB42232787639@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
 <20230418220446.2205509-5-radhakrishna.sripada@intel.com>
 <ZEBh1h75onL5DPKQ@msatwood-mobl>
In-Reply-To: <ZEBh1h75onL5DPKQ@msatwood-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ0PR11MB5069:EE_
x-ms-office365-filtering-correlation-id: 84384e57-b5c6-4a33-a47b-08db414e3816
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XhqUJTw2ITz4j2SQR6mLyl7GT9EEFQ9BFbSgMG5a+CLmLvwSeCAZTgY/t8LCXpArR95dZ6llFfKJTZE0aTJXZpHR2yZg0eUS9rlhs9neQqUOHeriLM7eTBWkrnLWGJO2l7gFdkDOqN0IksDjv3undZMNdcljdpf8ZrZYFw+SAwFW12X6siETRnsswFYxZL9oIo3hD6tII5Mz5bRYHSW+33Ph9uccddKfHIFoIMO+XlE4gnK31HCQKHj7o/oE9sv4J8QUuOVmYStpRPZKElpqg1AlTwbM6fnjYx+ayRKXwGbTVsqFPr91NT3ToSR231VyqD14uaEyZpZZ0pXkF3by0Sj5h01imjSdrpjI3ZSkRJkYI7B9jzg+Qj3aJQtQpoKHYEEe/gpZM3YXKchxKoANnqyH5ap2MhYghwaJZBcL3shkHy2gGakD+tm7yJVIKvBpx5xoFNVH2PSmFdEq3nzrnmspBb8mJOZsD0WdyvTRL0boiNzkk02+QyU8YylYt7uO9N5JeY6WjeBRsL13o4OpQTHodFzDx8E0PA0TPsQCEV3QUz6k616xbL8/U9uCVdj1sV04Y0IU1ynjszM17zzho9kZ7Um7N8nNwwQEEMBpYW00q8EVQVA0SFb268qlZCni
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199021)(316002)(110136005)(9686003)(53546011)(26005)(6506007)(478600001)(66946007)(66446008)(64756008)(66556008)(66476007)(76116006)(83380400001)(82960400001)(7696005)(71200400001)(186003)(4326008)(8676002)(41300700001)(8936002)(5660300002)(122000001)(2906002)(52536014)(38070700005)(33656002)(38100700002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anZvWjFEbldTRUcyQlQvTDRzeElzRGtLMytNaStjcm1wWHZDVkxSRnErelFv?=
 =?utf-8?B?ZHNRZGltditTcHlaVlpoRUxUaFFiNWNJdThhY3FWdytaMjBscG1LeW1SRFRP?=
 =?utf-8?B?WXZOS1R1aWFvd282d2FpRmlYYTZYK0xPakIyQzdQNjFwTno2R2I1bDJjc3A4?=
 =?utf-8?B?amd3ajJ4eGVSRS9mdkNVT2w1NjZNcVVLTjZPcE12Mi95WEE0LzA0OXhwNlZy?=
 =?utf-8?B?M293RUo1ZXBSUUsvdElkR2FGZjJ5RW0wMjJmNUpORTF0cTg3U1R4VTRsRlR5?=
 =?utf-8?B?dU1JMDJvNzY2NlZCcnJZZndEcUF0cDRXRExubDNQV2RFaGd6eE43eUFUYmJK?=
 =?utf-8?B?ZnVUUU04Zno5Sm90YW1PSno5VFdJMzEybWxQdE4xK29YaEZNZkpTcVVNWmxr?=
 =?utf-8?B?WDNoSUllVDhORVpCd0F1R2N1MGhPU2EvU2Z1K0wxR2RMdHN1YUM1N2UveU53?=
 =?utf-8?B?RjhCWFMwRkhpMGFQWUw0K0s2U3RYRXhhZ0c1TEE0b1VEZlAxbFdmVlpFYUhW?=
 =?utf-8?B?MmlCV2QrK3ZQcWcrYU1EWlppbytNRHk3Rk5aMk9EZ2M0enJ3cGU5RWlkaW5J?=
 =?utf-8?B?VXFwUW96SDYwaG9WU2k0eUxWaHBMakg1cHpleU1HRlRQTkwzRGk5SHN1TGow?=
 =?utf-8?B?b2YvaHUwbXZVakk2ckUrNGVxRzFMZmlURm9jeGJDc3NhT0o3NkQ2TktpZlhp?=
 =?utf-8?B?czBFZzFsT1U1d1QwL2pSWWxRai91U3RDZG12OXpGL1JUU2tKRFpZUVN2S25F?=
 =?utf-8?B?eDBhMVV1N1J1RHY2a3dpZkxHWkZ0anBGdExzcGw1Y1dzNWlGdWNGRnl2MUxu?=
 =?utf-8?B?aTFsN2hLdG03YUR1UHh0UXFuQjYyUS9oR1l1WElnVzdpMGNjSmFIY1JqUWlQ?=
 =?utf-8?B?Mi9tdDRmeEFad0dhQlJDUG1telNRR21UVlRLRFZ1YzNJeGc0NzRqZ05MQlQ1?=
 =?utf-8?B?VERsRTRoQ05qTEZRbTBVckI1ZU95NHN1NnVOL256bG5GcTcwSjJVWnBLS0NI?=
 =?utf-8?B?azExRUtNZkI5OXZpbThDSVB0R0pySlBZSzBuRXQvYVRTeFZZK0gxdjliZys3?=
 =?utf-8?B?U0lSbjdJWmZCd3ZOOEIyYkxFZWFLS29wRnBPM0xYM1FhWVhNZ3UrZktMbVBY?=
 =?utf-8?B?VnhvdE90dm5ialUyUEZGbXIyVm1zSUNEaEZZNXhIQ1pBNVlUVjQxeXJoT0pF?=
 =?utf-8?B?Vy84YU03c1B5Tmo5c3RYWVVHb1NCTklNcmhkQkNaQTZWRmErSFl6TG02SXZn?=
 =?utf-8?B?OG9NWm9iZWR6MEZobmNtb1VnREFSLy95b3liTUx5WlZFK0JPNS9HcmRCZTZO?=
 =?utf-8?B?bkdRb1E4eXQvSDlSVWdBWnpGUHpiT2RTWEhUYjk1UFloVXY1VkNnUkUxNytK?=
 =?utf-8?B?ODVOUm9DSEQzcnhLMVlWRUhxV0FMaERnSVYzVXFjb200bDY4MU5HSUsxbnFZ?=
 =?utf-8?B?VjFTUFlKYXBOWWd2NCtsNWRaMjFKcDU2eFVKbHRRT2dpUUdaQWhwVElzVlk4?=
 =?utf-8?B?cWpEUE1aWTRWZjcyb3c0Y3VlSVhoWjMwaUZHWFV4bHkwR21VYkNMRzZ5aXd6?=
 =?utf-8?B?RlI1bmpxMHhEVjhPRnF1TDRjenZvb1BLejNPVmNFUllMWlZWc2RTV1dWOGhZ?=
 =?utf-8?B?U0IvTVZ3Uk5wQ05uZ3Q3TXI1dVZUNjZkL0dxSzhwcFBuaVUwRllHOFVidnhy?=
 =?utf-8?B?ajJxbi90U0JzYWlKTzJOM0JqMDhaMWlDcDVYZkhVVTJ4WEpKSy9ZSjErb0I4?=
 =?utf-8?B?ckF1Z0FxYXA0dkhVWE1LME1MWWZXVXRYT2RNV2JnUmdUdG1LNlBKcWdrdFhD?=
 =?utf-8?B?RS9OaHpvUlo0U2hHRHpQeFpzZytPdlRjUy83aFdLTGZBRWhEQUxtR3ozclhr?=
 =?utf-8?B?cFp6N3RyNUg1TUsrWVVSS1o3bnZNNVIzWHlLUXE0NnFFQ3IvcTlCQldjVEt4?=
 =?utf-8?B?NU9rL1hNVjIxSml0ZXk1NXE2OFhySXdtYTR6NWZkbXpUdGxqTzMvZkViakd1?=
 =?utf-8?B?UEdMOUo1ekdvQjZBTGR0MUtmemh6MWxDNWZBUHkybGhjQzBuY215S1dOcnAr?=
 =?utf-8?B?TDBCUDlmOEgwM2JsNzEvUWtKSUZNYTV5YjZSaVlFTHkyU3R2QlV1Q2RYYnpr?=
 =?utf-8?B?VWZpZWp4ZTJXSDZYYVBGQUVibE1lLytWR2pzeUlrR0JmUk9DL01FVDNEZ3V4?=
 =?utf-8?B?Y2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84384e57-b5c6-4a33-a47b-08db414e3816
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 03:20:40.7302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: giU+R2sHo3MuDOZ24dYYL85FyuyCLs22zwiacAyWRm2e7OqNkSc9rhYPOTsta3FkDY/aTzDIBVWmH5PVWpr+SdQK9It2n9LXzPqUIsgNZn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: WA to clear RDOP clock
 gating
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

VGhhbmsgeW91IGZvciB0aGUgcmV2aWV3LiBNZXJnZWQgYm90aCB0aGUgd29ya2Fyb3VuZHMgd2l0
aCB1cGRhdGVkIEJzcGVjIHBhZ2UuDQoNCi0gUmFkaGFrcmlzaG5hKFJLKSBTcmlwYWRhDQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXR3b29kLCBNYXR0aGV3IFMgPG1h
dHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDE5LCAy
MDIzIDI6NDkgUE0NCj4gVG86IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNy
aXBhZGFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRl
bC1nZnhdIFtQQVRDSCB2MiA0LzRdIGRybS9pOTE1L210bDogV0EgdG8gY2xlYXIgUkRPUCBjbG9j
aw0KPiBnYXRpbmcNCj4gDQo+IE9uIFR1ZSwgQXByIDE4LCAyMDIzIGF0IDAzOjA0OjQ2UE0gLTA3
MDAsIFJhZGhha3Jpc2huYSBTcmlwYWRhIHdyb3RlOg0KPiA+IEZyb206IEhhcmlkaGFyIEthbHZh
bGEgPGhhcmlkaGFyLmthbHZhbGFAaW50ZWwuY29tPg0KPiA+DQo+ID4gV29ya2Fyb3VuZCBpbXBs
ZW1lbnRhdGlvbiB0byBjbGVhciBSRE9QIGNsb2NrIGdhdGluZy4NCj4gPg0KPiA+IEJzcGVjOiAz
MzQ1Mw0KPiBBIGJldHRlciBic3BlYyB2YWx1ZSBoZXJlIGlzIDUzNTA5LCB5b3UncmUgcmVmZXJl
bmNpbmcgYSBub24tdXBkYXRpbmcNCj4gcGFnZQ0KPiA+DQo+IFdpdGggdGhhdC4NCj4gUmV2aWV3
ZWQtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBIYXJpZGhhciBLYWx2YWxhIDxoYXJpZGhhci5rYWx2YWxhQGludGVsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNy
aXBhZGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jIHwgMyArKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jDQo+ID4gaW5kZXggYjkyNWVmNDczMDRiLi4zMTJlYjhiNWY5NDkgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiBA
QCAtMTcwMyw2ICsxNzAzLDkgQEAgeGVscGdfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LA0KPiBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+ID4gIAkJLyogV2FfMTgw
MTg3ODEzMjkgKi8NCj4gPiAgCQl3YV9tY3Jfd3JpdGVfb3Iod2FsLCBSRU5ERVJfTU9EX0NUUkws
DQo+IEZPUkNFX01JU1NfRlRMQik7DQo+ID4gIAkJd2FfbWNyX3dyaXRlX29yKHdhbCwgQ09NUF9N
T0RfQ1RSTCwgRk9SQ0VfTUlTU19GVExCKTsNCj4gPiArDQo+ID4gKwkJLyogV2FfMTQwMTU3OTUw
ODMgKi8NCj4gPiArCQl3YV93cml0ZV9jbHIod2FsLCBHRU43X01JU0NDUENUTCwNCj4gR0VOMTJf
RE9QX0NMT0NLX0dBVEVfUkVOREVSX0VOQUJMRSk7DQo+ID4gIAl9DQo+ID4NCj4gPiAgCS8qDQo+
ID4gLS0NCj4gPiAyLjM0LjENCj4gPg0K
