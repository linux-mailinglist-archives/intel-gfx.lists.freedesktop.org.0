Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB2846989
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 08:34:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F8E10E4DE;
	Fri,  2 Feb 2024 07:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMWMbF1j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D110F10EB60
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 07:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706859255; x=1738395255;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8JnnVvNtDKaF0Uwf1QwvE1Qcj7i/naI1/JoXvnaTMsM=;
 b=cMWMbF1jKUkUvqsSMM1JpiYY3Y6Tm257leAEwku7LuZHVip4H7MoWUFR
 Gvm2JDco6P+hnl2F8+ybpoQYTUSEp+sK9fSlxRHBej7TRoR9QuvVnjKSv
 TFkqwG5+a4Krb5miwpPHEaK0PQvMhbGcHALaYWURUZrDtGr1Eq6p6NSp5
 5Z48nDnUqzUFz1S2K9ojHgL6h6p8F3svpuJzQ1jId01LDQXwRNl5PMc2j
 WgNZGDOC2ba6fO4GQC9BMmCGjMAzJBt5ryKimHj5aqUP1A2o8MVe2swXI
 7sFe8MWa+ZJlAOXJIxZVxb3Vep7+O5358ZEjZMH7XmVU/9nDoVb4Jjl65 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="11201837"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="11201837"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 23:34:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4615458"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 23:34:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:34:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:34:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 23:34:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 23:34:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IpInqHvsZKYuECcvNHX4jHNuYw10pJ2zMejW4B5m5juRxjoc+gebl/BP6VxeZGmpNYrQFSoDXbjbfr34Z+OMRVJfRELvQjg+qyp2H6S5U4R0R9ESgL9LPozmICeOhgK3XERadhAqE8/Q8LdOTUQwWK/xD4ewbgQZcGq3plgX1SaD2QjhDdQn+GwUCjdIyGnVQK/eXyn7tptx55by2oyKe0wnQH3M2YivTrwc0lmzJ5t7z8Pw6OC9ueYOIv2eT2blmJ1cQ5JI/CTzXSC+y5UFeu63A1FfY6OvITzcq9l6UHp+bq0jMD42nFCloZePoAVGqonT8keOdx1fKrtDKbWJiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JnnVvNtDKaF0Uwf1QwvE1Qcj7i/naI1/JoXvnaTMsM=;
 b=KHGUWFK/vWvC1aqtULswbU+4kyjObMq29VPho8ObKsPIiyQEb1a1HcBXYOUJBWZRy8g9WTmli0zfJuZvFfASqdmZlukj/WRdqzHDdh5EcaL07QB/gcrCYrAyED58Z7pcHZRS0MYggmypaXL6g0b89+w013s3aVpZjCn5yViZ+JEYhKdvaGgmCJqSHqYKpf0XNZMIq4sfh4aHP6DAb+2+2ZDFONoUHuyJhr9UJ/gXAfkrNOAy9E/p81dH/fSXo/UM2t7cOrM5cSyD6qwbzrjObTboShlvKBNXZ7lObzMKnzHpqXDASG4g6R8QJ99WXDTGPvIAjELHe6nmGKeU7w72Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.29; Fri, 2 Feb
 2024 07:34:05 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 07:34:04 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Topic: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Index: AQHaSr/Oh4rAcED2CU6qlh1MjYdx1rD2vXgw
Date: Fri, 2 Feb 2024 07:34:04 +0000
Message-ID: <PH7PR11MB598157598A12DF5A023F23A3F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-5-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB6889:EE_
x-ms-office365-filtering-correlation-id: e43b5f3b-8a24-4e60-6001-08dc23c15573
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B+nZdlm4xfgepSPv7HXdeO64gR00Zxit96cGOg5YNalltMnrGPstZfAy0qE2EOH3sgf2rfNj0BL8VkxrD4KGpoz7lKNLAVce7RWNdFg8OcMSbMVx3rCx3YAahJD8VyNRonLErkud6Hcc9BrKSoC+aDehLIjjhO+nne94N9e8pCPytghUlxo10+VHBWiiU7Gf0VaWjCkj6uzOAriLW651CqnmLN2csNGFMpVzvtcHsVC0x/0cg7A+2J+jYYN7mds4sEAKCyzNX2a+PhZE1bWLgk8VJUkaCnhBAzhfkc22a38Adp7UIDAxsRynWvobwmvlRLRglO52iJ0JzqwcU4jBw0slnHWceM5q1BVRiTRlB+2LosOLJQxY1Oc6lohFzmaPx/jLuqbjVC6Qf4aGts5VtyDuakFERoQpPH8HQjzoMhQrAbpLZrItTALQ+9sztAfxLbtidJL7rYTs6DPg0PZRgASR0O47gUxjQrfGCGacRlJZK5sWsBgdOv7C820mmAhxhGhFqGhgeKlEdyi3H17U/ABqBqgHIeDcPdBVJQKja2TVZXE0oE06yd31DjB6s9Ww2D3wPkUfESNKzXxTA6vASrNRIOVaB4kPYRwN948TEaogGH8fhaXQsh2rJf1GN+jV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(396003)(376002)(39860400002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(76116006)(64756008)(66556008)(66446008)(110136005)(66476007)(66946007)(316002)(478600001)(9686003)(8676002)(6506007)(8936002)(53546011)(7696005)(52536014)(2906002)(83380400001)(122000001)(38070700009)(55016003)(5660300002)(26005)(38100700002)(71200400001)(86362001)(41300700001)(33656002)(82960400001)(66574015);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2dyelR1SVBNQURnOGpPdU9DbHZuc3ZtVXYrRmVuZmZVNTg2Tnh1aEU5aTIy?=
 =?utf-8?B?QklsU3RyQ0drVlROT0ZKU0I0VVNtcEMwMzZrWEV6WU5UY2hTc3hDZjgwbDB3?=
 =?utf-8?B?NUIzNkFSTC9aVWw0eUMybHNOeGVOalZkcEowaHRpS0FCOG1BNjh1Q3QvcnE1?=
 =?utf-8?B?NGg2Sm0xRW1BNzAvL3B1cDgzSXU0ZFZxSkRpQWo3bXh0OG53eGRjZnJFNkJH?=
 =?utf-8?B?TjQvTHdkUHF1L29yV3lhaW5RcXE2bGUvTEtvUUhmY0N0MVQ0d0h5c3NOeHFD?=
 =?utf-8?B?YlM0WVhHeWFGNzJKYnZrUzJZalBHanpVQ3IvK09nWHJEUHg1WE1melY2Wk56?=
 =?utf-8?B?bmNQRTBlZkpiemMxRzk5bVlvWEp0NmlJRXI2NnQ2Q1hkL2FrNThxd3dINGxp?=
 =?utf-8?B?RmM0VmxSSG9RbUVnakY5c1JlYldBV20xUEdsa3NkS0dkb2I0bXlRUERUWTZw?=
 =?utf-8?B?K0lXNE1wdjllVFY0RUFLL3I2MjE4OUpNdTZWaHhTRTAxL2tpa0dESnM4MndC?=
 =?utf-8?B?S3RYQTE5QnBTOHhISCtjeG56TW9wNWFEL2E2Y3VCZkZ6b1ROOUVzOXZJeE9M?=
 =?utf-8?B?ajJRMURtOWcwMmROeEpFYU9ISVZTb1E2UVJhSkxzaDdrL3cwaGd5R0NneE92?=
 =?utf-8?B?UXpnVVVxNCswZXBmRmF6QWxMbHRUV1RPNHRFZXZQeDJRYlhlSFZOYU1RZjUv?=
 =?utf-8?B?WnpRNFQ2U0JBSkFqb28zQzAvcW50UlkrdEE1MU5yWXdjRGZjVDZTSTFUVFNy?=
 =?utf-8?B?Tm1vWUt4OFVsVnlCSys5Z2FMSkVNYU93YWN1YVFidGZJdnZBc1UrRnhmOWln?=
 =?utf-8?B?V0w0c1RaVzNiRHpSdEU3TGN4UU9oYmlrelc4OEwwSEQ3em83ZVArcysyZWNM?=
 =?utf-8?B?YVdWYUFqclh5M0ZDcUlqT2UwTEdsb3JJSGVwVGFZRmV1bmtGSksvMmxoN212?=
 =?utf-8?B?cm1lT2s5dmsrNzBoU0tYeGxWVklEVE04ZTFXblFDb3E0Y2NwTG45WE1vVkNh?=
 =?utf-8?B?VkIreWpBUng3cjVqY00rWmxxeEgxaU1sVUhmWm9KQndoSUQzZldrTUZTM0NQ?=
 =?utf-8?B?cDJkNCt3Y3dONGI2SVh4SVhWZzVnOEI5WUxDOWdGQld6a0YwSjZyQlQ0Z1ln?=
 =?utf-8?B?MHdoQi9MSGRXckhRcFY2SEQzQTFjeXdYaWNzOWE5T0dWWHNENmo5WXE3WTRZ?=
 =?utf-8?B?bW8xS2RaVUNZelhwQStlcGJneTd2TFBqK29YZnJBd3R2aWUvT1M4aFNiZXZn?=
 =?utf-8?B?TnRqSFpyWTE3dVV4R0Nxc3hZN2plUGprR29wREVob3lSQndIZmlTcFl2QnV6?=
 =?utf-8?B?QjlBejRCY0t5K3RuN2JXU0Uzc0xYZjR4U25TK256NmVBQ0RTRENZaVZEeHBY?=
 =?utf-8?B?VE9IUGtZby9jMGdwVTJQRHI0c0k5ME1jMm5oOWZxZzlXY1hRWVAxNWhKbUlG?=
 =?utf-8?B?YWxTRHJzRHd2V3d6QWtRMW1SSWJ4NHRqNHZtMXdMK0NWclp2S0s1cnZkNy9C?=
 =?utf-8?B?M05sT0htV1M2K2lXaWZpTVg5RVV5aElmTUN3Y0xsSjNCbXhLRy9BaG4wNFJJ?=
 =?utf-8?B?UUh6b3YxNGw5YnIrTExQdXlDZVZyK2FhY0o4NGdiZGFtUUpUeFNBZjVmV2Jk?=
 =?utf-8?B?b2sySDR6VDNmcEJ3cm9aMGgxRUc0S0VnQU5JQkkzZDdES1NYa0pCZmR1enlv?=
 =?utf-8?B?S3k2RGYyVlMxUGcwaHh5TUlhYTRrZ3orVzByWGd2UTJYeTBxdjVzdzVOMU4x?=
 =?utf-8?B?YlN6WjNObW1sUVIydzlGeE1CbmNPU2RzZnN5V05UZ2c0Mlp2SnFxQ3c2ZWow?=
 =?utf-8?B?MTFXUzkyQ1B5THFkc1ZKWWMyMzBlRUp1dmNYWXF0RGZzWHJWaWlMT1BHRW8r?=
 =?utf-8?B?czJoNGR4YWlCMmdxOXdTV2dmMVpHUnlyckpmeEM4ank1WVFKWFhpL2lTbGRx?=
 =?utf-8?B?ck4rbUJ0SUJRZnFIRWRNZ2ptcU5FVVZMQ0lSeEdOT2ZvVlpUZytTSzFseTFU?=
 =?utf-8?B?Y2xHL01uUWdEZmhacTNHRXcrVENpNmc1cWhmdUMxTUUzREFncjRJaG5WcEdO?=
 =?utf-8?B?R0x3SUJYd0Q0OE9KT2RMRnFVUm9ZSmJpbUtkOTk1QzB1Wm5USW1DQllxTm9Q?=
 =?utf-8?Q?TAkaF5Tsn5S4sB6EVHVr/2LKg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e43b5f3b-8a24-4e60-6001-08dc23c15573
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 07:34:04.8530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Fv9xB0xYk8rrbao8elBEL6NrsBcEXs8OPnIiU8EmmJBOCfGD/fNJsAsIFpo7wxchSSU0XUgRehZDctGDtngjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA0
LzIxXSBkcm0vaTkxNS9wc3I6IFJlbmFtZSBpbnRlbF9wc3JfZW5hYmxlZA0KPiANCj4gSW50ZWxf
cHNyX2VuYWJsZWQgaXMgbm93IG1pc2xlYWRpbmcgbmFtZSBhcyB3ZSBhcmUgdXNpbmcgbWFpbiBs
aW5rIG9uIHdpdGgNCj4gcGFuZWwgcmVwbGF5LiBJLmUuIGxpbmsgcmV0cmFpbmluZyBpcyBub3Qg
Y29udHJvbGxlZCBieSBoYXJkd2FyZS4gUmVuYW1lDQo+IGludGVsX3Bzcl9lbmFibGVkIGFzIGlu
dGVsX3Bzcl9od19jb250cm9sc19saW5rX3JldHJhaW4uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwgMiArLQ0KPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMiArLQ0KPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHwgMiArLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGFiNDE1ZjQxOTI0ZC4uZTdjZGEzMTYyZWEyIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC00OTUx
LDcgKzQ5NTEsNyBAQCBpbnRlbF9kcF9uZWVkc19saW5rX3JldHJhaW4oc3RydWN0IGludGVsX2Rw
DQo+ICppbnRlbF9kcCkNCj4gIAkgKiBBbHNvIHdoZW4gZXhpdGluZyBQU1IsIEhXIHdpbGwgcmV0
cmFpbiB0aGUgbGluayBhbnl3YXlzIGZpeGluZw0KPiAgCSAqIGFueSBsaW5rIHN0YXR1cyBlcnJv
ci4NCj4gIAkgKi8NCj4gLQlpZiAoaW50ZWxfcHNyX2VuYWJsZWQoaW50ZWxfZHApKQ0KPiArCWlm
IChpbnRlbF9wc3JfaHdfY29udHJvbHNfbGlua19yZXRyYWluKGludGVsX2RwKSkNCj4gIAkJcmV0
dXJuIGZhbHNlOw0KPiANCj4gIAlpZiAoZHJtX2RwX2RwY2RfcmVhZF9waHlfbGlua19zdGF0dXMo
JmludGVsX2RwLT5hdXgsDQo+IERQX1BIWV9EUFJYLCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggZDExZjhlYTZlMGE5Li43YjMyOTBmNGUwYjQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzAx
MSw3ICszMDExLDcgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2Rw
DQo+ICppbnRlbF9kcCkNCj4gIAltdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ICB9DQo+IA0K
PiAtYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAr
Ym9vbCBpbnRlbF9wc3JfaHdfY29udHJvbHNfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQoNCkJhc2VkIG9uIENBTl9QU1IoKSBjaGVjayB0aGUgZnVuY3Rpb24gd2lsbCBy
ZXR1cm4gZWFybHkgYW5kIG9ubHkgZ2V0IGV4ZWN1dGVkIGZvciBwc3IuIE5vIHN1cmUgc3RpbGwg
ZG8gd2UgbmVlZCB0byByZW5hbWUgaXQ/DQoNClJlZ2FyZHMsDQpBbmltZXNoIA0KPiAgew0KPiAg
CWJvb2wgcmV0Ow0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5oDQo+IGluZGV4IGNkZTc4MWRmODRkNS4uZjdjNWNjMDc4NjRmIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gQEAgLTQ1LDcgKzQ1LDcgQEAgdm9p
ZCBpbnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2Rlciwg
IHZvaWQgaW50ZWxfcHNyX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHUz
MiBwc3JfaWlyKTsNCj4gdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCk7ICB2b2lkDQo+IGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpOyAtYm9vbCBpbnRl
bF9wc3JfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK2Jvb2wgaW50ZWxf
cHNyX2h3X2NvbnRyb2xzX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsN
Cj4gIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiAgdm9pZCBp
bnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiAtLQ0KPiAyLjM0LjENCg0K
