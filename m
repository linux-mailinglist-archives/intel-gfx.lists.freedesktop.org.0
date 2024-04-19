Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9188AA7FC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 07:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E424E10E4F9;
	Fri, 19 Apr 2024 05:37:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oIlMF5n/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A19B10E7BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 05:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713505075; x=1745041075;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=heK7Vd29WjhK6+YLcRKGvQ9hHAcLETM49/dxbJVM8+k=;
 b=oIlMF5n/OVsoCfz0aPr0+NtDCRv6vQ0xH0ku02U+m0iI5f1OrMCt/52i
 CC6hCf8YaVf33aNMH1/74/F8Sm6PWebnpfjTaHsLP8YJcRtlohlr4e8p8
 rEo+DiNJkwhyGe7a4VeRT2AIZtLWpUgfHSzFzQV1TTaAYM3hKS0sWeWUG
 jriouC8p4YF1IKoX3Eg605WcoLND7BknKPQm+yxcksl0hhHoaOF14BPdl
 mx/p9sr+EhIqpRsnXf4j6NTvqUZSmsTdod2kguyWz2NlKhFpim5HNMSP0
 J9hO+7CWN54++PilVjMrycM+SY+W4paORejWmYd5cE0UnLYd4FCXOPTb1 g==;
X-CSE-ConnectionGUID: JngrJmaVRjaJ4jL2wvOw9A==
X-CSE-MsgGUID: tUqm4eskSKaRfUoWhDFCYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12879721"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="12879721"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 22:37:53 -0700
X-CSE-ConnectionGUID: BvfT5fUsR6OBwiVxAlDCIg==
X-CSE-MsgGUID: ZantAzgUTiSXGye48RXKaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="60656719"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 22:37:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 22:37:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 22:37:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 22:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bo8n6wXaCZ1PEYGYD5FbQssyy09fCzMyH3cGpOadaRBQi8poE5ptm/agxCONw35w+AG0t/Q91NRxyNcp0mHCUYsNQcZ8cpMd9zytKCcP9cOrW+bc+ofjVBeyYQbVXm2yxtS4ue98oS6q7H+bAvpS+WO2DRM8JgvM9vdv0mi5HXi5G+KY7U2WVJ/NM4iWpYFSt8RfpI1+z5XUeyCWcww+GRgDVZw16CBh7zv7FJbO6nMnQlxWr7EU5/FNQ0+hyhgXpOvkt5goLFWRf56/J/FFhd34ENvrWGSYvq20MSZqVBMG/U6S9jHUn0v648wFNu3Lu4P8EnKFDnFTVhNPYj8m4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heK7Vd29WjhK6+YLcRKGvQ9hHAcLETM49/dxbJVM8+k=;
 b=c+GIdU0CVIQ14ZKfCNHQL+zcUyDikZCoRkMj5ju3gOYi2v8dZ868Yq5Vrl/G808FW44yK3f9IfpvFj6voUQ6lh+pofWMs1rY2eBaXtpsqeAYsUVatp0eqdVSKfVjOLGlUDDB6w6CYCycijrTR6F0g7Vy7/OBIW3yNIRttYKcGkQYe9oX6XvSWN3k2IgN5orU2G0FKgA5JJ2sE9JTzk2AU9+dzGiBh2aEiarJePsTdOAwz6+Vl0aehZ4DboIoIPSpfCAOZkfcai3QCGF34TF2B6xRO04QjJk+b8oCj3HeA+R/F7rzKYd3JpsJ7sIlFOMUv1k++lRnu+QsRoDq3Pf+OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by IA0PR11MB8400.namprd11.prod.outlook.com (2603:10b6:208:482::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Fri, 19 Apr
 2024 05:37:49 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::4498:4502:b9c9:1960]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::4498:4502:b9c9:1960%3]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 05:37:49 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Patchwork
 <patchwork@emeril.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, LGCI Bug Filing <lgci.bug.filing@intel.com>, 
 "Grabski, Mateusz" <mateusz.grabski@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKckyBGaS5DSS5CQVQ6IHN1Y2Nlc3MgZm9yIGRybS9pOTE1OiBCWFQv?=
 =?utf-8?Q?GLK_per-lane_vswing_and_PHY_reg_cleanup_(rev3)?=
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJtL2k5MTU6IEJYVC9HTEsg?=
 =?utf-8?Q?per-lane_vswing_and_PHY_reg_cleanup_(rev3)?=
Thread-Index: AQHakPQ38tMPcdsPFUGQKu9hZvVQa7FuPFsAgADZAoA=
Date: Fri, 19 Apr 2024 05:37:49 +0000
Message-ID: <PH7PR11MB70736EC611E2EC85B0133FB8930D2@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <171337812744.1482849.14997719345480382947@8e613ede5ea5>
 <87r0f2wrnh.fsf@intel.com>
In-Reply-To: <87r0f2wrnh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: mateusz.grabski@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|IA0PR11MB8400:EE_
x-ms-office365-filtering-correlation-id: 90b4ef6a-642c-4d0e-72a1-08dc6032d9d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UJsK7fe1hBYkujt68xp6Rg0hrwifXIbpQFpl5102PGJMMqt+Ptn71Rc9anM0z51jBHFSxwgtjxzciKp4GSPE34Y1eBjwjgl6F6Y38WnNzs5SVEa3CGa9PIyqvHp56dfwpL4gKnvDdzTigS7OdZXNJK4zu4HyesOfXamlc2+AHHeAbO+MZ7TDZ7IVXCRvDrVrONhmoX9hlrp6I+GJQM4n6RcGI9gNuttScybLBusLmoggIjZYOK4+BTRPqUPdoFWE1iURb8ZyKvcUwa92Wisc6QrJSDsvhzjAhPOQkS9OZqjXPKxiEXp9pg4c0tF/EYGxwp20bmN0F+ak4Aj62smYONjBMoWrcvkmoji85Tiw72jKN0njZx4T+rIeBFPEpk0WP4HbKaDVH2kWvsgnOJFTda2TgASM7DEx5Z2KXepJUfxyAi0i7U+3FChm1qp/QI8LtcxhlMJf9awrRklhZT4S7VSGJ2FlF7fog2kGIs1U6EmkoqPXTmN+Gc/ZRr8HMFTQa7WbtF6Ze5ef0QEZ/vGBypfMDjXkYlgzjZVBdRqARA9F0xId7Vcc74Oetx9vIS165088woT+ParYAMPNah8ZL343QJwCrlb/PoKhKbNfbL1TFPGfRstCjv0W0u2qaZyUul29vu4SoMrpsVg41rXkbuzzukuNcBvRYalc4gigKHTML6QItQS3pUGpJtUkkMLL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDRqMjN6TWVTQ0MxNjk1d21JWXk5aGNJRWh6MDlIZGo3Ti9nN3p4VUZsR1I5?=
 =?utf-8?B?YXUxOUtoRVdrZTgxV1BraVhaNWhvMDFBZGdEdXNsVE1pbmwwOFlGc2t1RUZO?=
 =?utf-8?B?TXFQMDB5WmpXTEcwMW44N0orYXVQa0F6NWsvTjRmeXhrUGxXeU5wNE1HSzAr?=
 =?utf-8?B?Qk53bjFTcTFIdDF5N1BMQllKUlRSSkZZQjYwTDQ5eERINGdHMHZUL01walFu?=
 =?utf-8?B?aWcrU1ZlMTNCU2ZSaE1ZbXpwTGo4SjdqMHVra2IwWWtjUC9XWlhtcXpLNUhE?=
 =?utf-8?B?SS8rUHhLRHNTWXlzTS9STFR4MHhFdWJaYlI4NjFkWUJPdWRnWURjVlErQjdh?=
 =?utf-8?B?SWMxYzZSbk5ZK1phUWV5VkZKRythcVV6eXIzOHYyeHU5SFAyR3AzcmJ4aUt2?=
 =?utf-8?B?K0dFSWViTzkrVnZkRlZHUlptY0l3eE5pRmpQbjFEdHNHeHQ1RWkyNGJIS3Zy?=
 =?utf-8?B?dS83cE96SGxnMG1oUzJTQVB3MXBjTVd4N3A5WEVQV3NaY2oyMVBNclhDMDB2?=
 =?utf-8?B?S1dFU3ZkQnZ5RFRQdWQvd2h1Z2dST1I1b3ZqUmNvUXg4QjFNZWphcWRvZnFR?=
 =?utf-8?B?cWE1T3NBR0dzT0RGQkEzMTRrTU1UR2VMRHhiWWZhMTBEVnR6S1hqVW83MUFo?=
 =?utf-8?B?RUh4c2Qxdy9rTVZNaGhvckJOUDZpcldHNlZFS3oxRHl1aW4zUU5XK094Zmcw?=
 =?utf-8?B?blFvMzl1RkdOK2t3ZkhxMFF1UEExY0YzTk5CcnpyeVoyUXRuYlN5OWlxeHl5?=
 =?utf-8?B?am9DcEtxeFFTM3R3ODYwTGRrWm0yWllCL2p0NHljMEtOajFtS25ST0dOVURT?=
 =?utf-8?B?cFZncHQ5Ym1LdUhTRjRIN21lcFdMbktJZ1dsbEhMNVlDZkVBR01KMThBZTVL?=
 =?utf-8?B?QjljQVpnZ3hiZjdkVS9BRDdET1R3Sm1wcU4wMGpCL2ZMT25zS05obTcvYUFk?=
 =?utf-8?B?T1c4K3A3SHozM0Z4Skw5U3MxVExtRUNpOHdZSytoVEw2Z2pMRWJhN3JlWHNM?=
 =?utf-8?B?aGllTTJ3YUN6M0VLSkxKNkw2cnVub25sRWZ0UXladWNTL01OeUJESFN2TVhO?=
 =?utf-8?B?TmNURzRSOVlCS3pDZFdDbnp4SVNVWHpuUzhYdHBuam5OSmtNQzdnYy91S3Ex?=
 =?utf-8?B?RzRmUWNYaHNzRVZSNXVqQXhKdUlscTU4K1lMQXpUdkJVcFNHckkrRDFFYXZh?=
 =?utf-8?B?VFkyWEo1UVRTNStmMnpUbGMxTXNLcGlJa094R0xPck04a1R1L2c2WS9aaW1u?=
 =?utf-8?B?VDk1NWhUNGxiQnZidWd4YXdFK1R3Z2pEL3JmeW45aGV2QXhBSXY2Vk9oN3NL?=
 =?utf-8?B?bytLcHg1SXNCZGY0cmkwQ2NsOC9KVFkxdCtrWmt3cW4rSzUzVk5QYWJJM3p5?=
 =?utf-8?B?ZzZ5aWpuSzZKa2Q4bHcwa25lQ3hkcmVpeFpiT1VpRzJtdXB0SDI5VnNtdGlX?=
 =?utf-8?B?ZUxyUjJEdzlOM2RJWXdoa1lzRjRMdEc4aSszaFdDWGhxVUg3eEVIR0duSllx?=
 =?utf-8?B?bGZyaGZpWk9hVDlrdlUzYysxTC9lckVtUzJYZFBMK2N2dEdDOTZ6dVl4bWRG?=
 =?utf-8?B?by8yNVBPb2hObk9vbTZmMXl3eWhDc1RGMzBsZ1NneFFvSjNJazJHRUdDaGRP?=
 =?utf-8?B?YU1JWG5FdHU4LzV6NCtxMnpxM2gvc1ZuMDdxWUlNSkx1ZGJCcXgvM0JDVEtK?=
 =?utf-8?B?YXpBZGRkdHNKRlVud1FBY0ZERWY4VkZWUjVLbjBDeVd0dnVEdDI5MWdTNjRM?=
 =?utf-8?B?d3RsV3NvalRUSFlJTWRoTlo2YUt5SGVEWk9rN2ErODRqU005Z1d0Nm9lYmw5?=
 =?utf-8?B?M3hReHl0ZXRSSjh4Y2JjMkc2UHNUd0dseHRNdEVhL3dIeGRwTWxwRXpWQVh1?=
 =?utf-8?B?bFZ4U1hxVTU1WFNOd1JRdDhjVDczSUlvRHlSWDc4WUNBWlNsdjA0OXJqa1Qw?=
 =?utf-8?B?MDFVRDJPdEhJRzdOY0RudjVpTmtHSWJUSHI1TEp3YjR3SmpjMFFHYnFmL2wx?=
 =?utf-8?B?TGF2OElrSFQ4UURDU05Ed1A4Y3QrclhoZEFJQ0RtemRpTlVQTGJwM0JIam03?=
 =?utf-8?B?YTkrSTJ6Z0tUUDdrNktFbXg0ZlZnTHptSStwSVpTaDV5cGgvTUZ6dm5wTmFr?=
 =?utf-8?Q?wGqk7AhJGcM0xKXYdkSRemsyN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b4ef6a-642c-4d0e-72a1-08dc6032d9d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 05:37:49.8958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5xiqkTlFvIPIf1f4/eWZHqL332E477sGqaBLb+/NEOqcu0Eg5df0zt6u8QWZye7ERJDP2yZdsCO1CTz1UfPG8EsZF5W0xLfH0i4iBG0yy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8400
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

KyBAR3JhYnNraSwgTWF0ZXVzeiBwbGVhc2UgY2hlY2sgaXQgDQoNClRoYW5rcywNCkV3ZWxpbmEN
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBsaW51eC5pbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIEFwcmlsIDE4LCAyMDI0IDY6
NDEgUE0NClRvOiBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPjsg
VmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBMR0NJIEJ1ZyBG
aWxpbmcgPGxnY2kuYnVnLmZpbGluZ0BpbnRlbC5jb20+DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IOKckyBGaS5DSS5CQVQ6IHN1Y2Nlc3MgZm9yIGRy
bS9pOTE1OiBCWFQvR0xLIHBlci1sYW5lIHZzd2luZyBhbmQgUEhZIHJlZyBjbGVhbnVwIChyZXYz
KQ0KDQpPbiBXZWQsIDE3IEFwciAyMDI0LCBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJl
ZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4NCj4gU2VyaWVz
OiBkcm0vaTkxNTogQlhUL0dMSyBwZXItbGFuZSB2c3dpbmcgYW5kIFBIWSByZWcgY2xlYW51cCAo
cmV2MykNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzEzMjM5MC8NCj4gU3RhdGUgOiBzdWNjZXNzDQo+DQo+ID09IFN1bW1hcnkgPT0NCj4NCj4gQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTQ1OTcgLT4gUGF0Y2h3b3JrXzEzMjM5MHYz
IA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
DQo+DQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPg0KPiAgICoqU1VDQ0VTUyoqDQo+DQo+ICAgTm8g
cmVncmVzc2lvbnMgZm91bmQuDQo+DQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyMzkwdjMvaW5kZXguaHRt
bA0KDQpXaGF0IGhhcHBlbmVkIGhlcmU/IEJBVCBwYXNzZWQsIGJ1dCB0aGVyZSBhcmUgbm8gSUdU
IHJlc3VsdHMsIGFuZCB0aGUgc2hhcmRzIHF1ZXVlIGlzIGVtcHR5Pw0KDQpCUiwNCkphbmkuDQoN
Cg0KPg0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICgzOCAtPiAzMikNCj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQo+DQo+ICAgTWlzc2luZyAgICAoNik6IGJhdC1kZzEtNyBmaS1zbmIt
MjUyMG0gZmktZ2xrLWo0MDA1IGZpLWtibC04ODA5ZyBiYXQtZGcyLTExIGJhdC1hcmxzLTMgDQo+
DQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4NCj4gICBIZXJlIGFyZSB0aGUgY2hh
bmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTMyMzkwdjMgdGhhdCBjb21lIGZyb20ga25vd24gaXNz
dWVzOg0KPg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+DQo+ICMjIyMgSXNzdWVzIGhpdCAjIyMj
DQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGdlbToNCj4gICAgIC0gYmF0LWRnMi05
OiAgICAgICAgICBbUEFTU11bMV0gLT4gW0FCT1JUXVsyXSAoW2k5MTUjMTAzNjZdKQ0KPiAgICBb
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE0NTk3
L2JhdC1kZzItOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGdlbS5odG1sDQo+ICAgIFsyXTogDQo+
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjM5
MHYzL2JhdC1kZzItOS8NCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBnZW0uaHRtbA0KPg0KPiAg
IA0KPiAgIFtpOTE1IzEwMzY2XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC9pc3N1ZXMvMTAzNjYNCj4NCj4NCj4gQnVpbGQgY2hhbmdlcw0KPiAtLS0tLS0tLS0tLS0t
DQo+DQo+ICAgKiBMaW51eDogQ0lfRFJNXzE0NTk3IC0+IFBhdGNod29ya18xMzIzOTB2Mw0KPg0K
PiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJX0RSTV8xNDU5NzogNjRhMjBhYWNiNjFl
NGNlNmQ4YTBiM2RjNmU0YmZmNzJlMzE2ZmZhMyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2dmeC1jaS9saW51eA0KPiAgIElHVF83ODEwOiAxODk0ODM3NDRlOWZmNTZlYTU3M2UwN2Ew
NDljNTM2NTQwNGM3ZWNiIEAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3Qt
Z3B1LXRvb2xzLmdpdA0KPiAgIFBhdGNod29ya18xMzIzOTB2MzogNjRhMjBhYWNiNjFlNGNlNmQ4
YTBiM2RjNmU0YmZmNzJlMzE2ZmZhMyBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgNCj4NCj4gPT0gTG9ncyA9PQ0KPg0KPiBGb3IgbW9yZSBkZXRhaWxzIHNl
ZTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMjM5MHYzL2luZGV4Lmh0bWwNCg0KLS0NCkphbmkgTmlrdWxhLCBJbnRlbA0K
