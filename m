Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 383117DC93B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 10:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA50210E427;
	Tue, 31 Oct 2023 09:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D1410E427
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 09:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698743735; x=1730279735;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Ij1lOjCCVxqzLBQ+OJBc760QDCmXdFixA1/ZhZWtDk=;
 b=mAT5ZPfJNLvNvZpI1k9I0IcD/KZAWUMwM4g7iPxhc/ckb367Gga+4KGd
 8sivXCT9C3GC17Hvin2itTPBWrp5lxdcbbk+VO1oqXA1MVP69XiSEMiZw
 6A7T1Pw+FKF/lesEpwXXaQycnm9x9ksOzflCMvnWNjY3s0xUDurrpYKG2
 k9yGuKFib32Yyxe398ty+7xdf2TIQPhKbpk7Wk9n4mT36a3BCSg3yoHLq
 mkG/v2XIr4r/rz3buzuUwAFaNrIOx8wmKTNK9JZJZl2AnfZA4Kw2x3IzK
 YDPjsv8HUM2Tgs+lD3jBJ1h4sflqJI7j2Ay0/ok9W0WF2JlwEKqgPtf6+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="378631012"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="378631012"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 02:15:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; 
   d="scan'208";a="8260377"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 02:15:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 02:15:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 02:15:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 02:15:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 02:15:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QyY8SU3+Mv0n/IDBvEX97SqdO2CbW65rE6eeCvfp1r+DvaTUHMEf447c/bwUwfANP+VkWRVBLaBf6fkhfpWxFHPJOWtNimCtfuVXl8G1OYiMD4Ks1wiR8haHYYaSIivfVJ2+Vbyt2jUjpPY71qTptMh8Nauoo1zf8wq6mtwLpb9lfxj4kYDPvAAVvXvxT7QqIjrehM/shUeB5KUNF5vJyqko9XrwJZmbjUV1D1zaviArJCrcIpO0R7cdrCkQBhrLnGEgCcF4j8RW2izC37azfu62fze9UZI3Z2kPpQMpasfegB9b9mV4a5c06rC0Qp62mdgjI62v9fyL3TbBL5tAww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Ij1lOjCCVxqzLBQ+OJBc760QDCmXdFixA1/ZhZWtDk=;
 b=kVgrNS+ZSuMKLeKb5DRv73KqAW5/FQFMrqZJS4hl0FiJW8dxNUVLFeZbQhK9MrqMbBEyTxR1CTeUkXPlvlxJVLTOL8TI2acgLqdvkCtcIcjSyKNgr+GTpr2rYM7rdefQy6eZuESr/pyQ5uAmf23ALJOTnv7aG8x11rcoJ+72SJuOJwlXm/c0lWPtcHKQ79pJTnBCK/7hoGUEhcLWI6jRH1aeoT3HOgc3To8UpY9Cx47gvYIA/ZAu2u4MMwCzIHjjZAqA4pGiQavupd3UZgSiE+lNDPUNe8LJdGHige7ydheyjv/lst/eIKNluPlJK+uqMHoLMz8F5OS0sp5QW4yCRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 BL1PR11MB5493.namprd11.prod.outlook.com (2603:10b6:208:31f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.29; Tue, 31 Oct 2023 09:15:31 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::2fa9:11fe:d9ea:23d7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::2fa9:11fe:d9ea:23d7%6]) with mapi id 15.20.6933.025; Tue, 31 Oct 2023
 09:15:31 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHaCM51q+aHofUAW0+doMykXeneyLBjin4AgAAOBbA=
Date: Tue, 31 Oct 2023 09:15:30 +0000
Message-ID: <DS7PR11MB5990F52A4CC52DB9758FE8EEF9A0A@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20231027115711.2713226-1-animesh.manna@intel.com>
 <c47bd13869e6664367d1684ebcf4305517909df1.camel@coelho.fi>
In-Reply-To: <c47bd13869e6664367d1684ebcf4305517909df1.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|BL1PR11MB5493:EE_
x-ms-office365-filtering-correlation-id: 74f85da6-b510-4ee8-362b-08dbd9f1ee3d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9sse49KzobSaGgO+uTlRoyjfNFE9XbkjdAGwT7+ZOCejMDZPfDXqN61f1u5h8OP8Uj8cN3TZQ7FlQpniJdEG8I+TLiQgxpU5gxKDH5Gj17SzSHBjQ8b/K9vzRj5b6leIA2XGcNQ+MzG0lgMS196neFKqV+u3HkTX0pyP1F2p+onBaRsc1Qz9dl6QtGvR/dXvZrOyxvVPi9m0sPMqVA8pQfOlLpCtvmldJpwMrRvUZgZyKKE9Mtn0YqE8aHpbOgR+aFjC0sXSNCESkMpQnOQYatNprYsRXNUqCqggPmTgsgxi1SwwyS2p6rHVaCUa3p94R4vxFQmetEj/jLOBG44+L8sfAvg4m3Y65BGdsR9aHX1poRgCCZ5LgC8mOwBzslN3h4qMoPTni9yapwZ6eQ4Gkpt2NJlFqB8GxNqIAspqOFCENS3gyrTEnYnYfb2/fKQHYIlC1UqiHMkyV3VYOsA4MRpwtufOQWbp97MrqV76EJ9+DgjJnwYW68kQy8n7XRftMqRavvTKyP0L5UAvyhce5w+zm5P4zykHtw4v4OujaC55AUFSuWuYgleJ9Qe4pzhq4GEuEu4nkDpbicYAFrxCfbTUVGrBSaq555c8mDKUlYMt5te7ZiKRXdjTKy+btzEehXzqXZxXCKjjDMNkQQHffM/PtJLxx++41la77tuD+Ao=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(396003)(366004)(346002)(230173577357003)(230922051799003)(230273577357003)(1800799009)(64100799003)(186009)(451199024)(41300700001)(316002)(110136005)(66446008)(66476007)(64756008)(66556008)(8936002)(52536014)(8676002)(66946007)(76116006)(5660300002)(4326008)(55016003)(122000001)(82960400001)(83380400001)(478600001)(2906002)(26005)(33656002)(53546011)(9686003)(6506007)(7696005)(107886003)(86362001)(38100700002)(38070700009)(4001150100001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDByMFdkVUttSmNRZmdNUmdlMXVhZENkS0JZNDE0bkZpSXhBaERQU0lmRy9o?=
 =?utf-8?B?bEdTZUV4RThBai8yWEsxdWpNdEFhenlNRG5ZaUFpVW1uOGFSQStzZGpkbXg0?=
 =?utf-8?B?UlZtWHJqY1RkajNXYS8vN2N2cGlKcHZuTGdScWVlVnpWRFhwQ2ZpY1VHVFhV?=
 =?utf-8?B?SXJYQkZaZjBpS3dnOUUvSldlR01BREtDVUFQb0J3c3pJdTU4akNkMGxVQVdh?=
 =?utf-8?B?NFU4MVhhVzlmc2ZXSUdRc24rcFZnWVhoRUJ1Z28zeitWOVNRUmNrRzRYcUlY?=
 =?utf-8?B?Q1pQMDFnZkYyZTh0b3BxUDRSdUJCbTl4RUZHMklHMHA1Q0lJeVh3amRxMk95?=
 =?utf-8?B?V1ZwOXJvaHJEaENuVEp6a2F6NVY5Q0ljbmg2Skk5UnpoMWZPcG5kbDE2Zkp5?=
 =?utf-8?B?ZTdjTzd2dFd3alB3Vk41VmtYNWZhbC85Q0MwZ0VSbnVpaDhHdDJFa1dFVVdl?=
 =?utf-8?B?QXZzVjZvbnZwdElhbnA3UnVkTXVLZ2NPdWhGUm8rZG9UWk9FTlBDczhSd1VH?=
 =?utf-8?B?aThDbVJEMHdqVnI5UGZVQjVnRkROeVl0ZWV4STlpemZvRHY5UVI2ZXY3bjlq?=
 =?utf-8?B?OVJQMThUQUhRNUhiZTVxVUZwOEhOV2xaZ21teVJKenN5T2lnUkJWTzNRcHpj?=
 =?utf-8?B?RDdNL3JYR1ArVzRCd2ZZbkNCdUxCcEhkRkVNcWZNTTVlemp1ZW1ncURmMGlE?=
 =?utf-8?B?cTExVHppWENXMFlwU2ZEUzNkaUJYVWQ5YTlMMmdJb1UrM2xLTXBVZmlXY2Mw?=
 =?utf-8?B?ck9UdmhFc2VMdjVQc3JqRGltOXYwWDhSSkx0M3dkQUNGdFB2amxCTmFBajRG?=
 =?utf-8?B?L1VSeDk1VkdPL0V5UkdQLzQyVkF0V0VKVUxmVWFlcFpFbVF3OTB0cG5VR3d1?=
 =?utf-8?B?Z1dkV3VYKzJ3cWppL1o3ekoyUTVvbi9jeWNIUXlmb2kwQ0ZicDdMYlZMU0Fj?=
 =?utf-8?B?L2dCbUN0SjRWUGlOSmJCeFJReVFkM0RwenEvUSs0TVpxNHlFd3ZjWEp1NWNq?=
 =?utf-8?B?NzR4cis4bnlJVlZyMW02cWJlY05Ta0IwMzFiTUNSaW55ZkpRVFVSQnNBQTdR?=
 =?utf-8?B?Rlp1ZFliQ25tLzFTeFVOWjhmalVUU250aHZsTlNsRm5TeUI0L3JMeDdBRlpY?=
 =?utf-8?B?VnJoZG93cEZHc3FKSTdBbDYwZzBQWXdzeXd4WHNZTlVXczBzRUVFczNDclBF?=
 =?utf-8?B?UHA2c2R1QVNyOEIxR1NNYkpIVmFYZ3MxL010eDA4OUpDK3BzNDU1MUdvVXdu?=
 =?utf-8?B?UG43Q3U4QlhLUmgzS2QvNmtLSVo5Zi9sQjhvYnp4ZVJiWFc2SFRVWjdlbTlU?=
 =?utf-8?B?TEVTd0dMZEFNL2ZCbHNKTnVlbEFZUGdaZ0dtRHR6aDZpMEQ1YmhqL3JQNXRZ?=
 =?utf-8?B?S2dHdGJrVTA2bmdPbVJ4WUd0eVkwMDBuVGVENDF5a1gwdld3UkVPY1JTZXow?=
 =?utf-8?B?WVVZcllNRU4xL2FBTlpYa0hXekVmL2Zwc2VTZjU5eFUrSDlkQ3RHL3M1UFNj?=
 =?utf-8?B?My9vc0hFNVhGakthMzNURktHUUtDY0VJUGg1QTZwNnE3KytIR1FRZ0doVW9u?=
 =?utf-8?B?OGhmMkRhUUpTS0tmSEVEUmhINms3cUNTQVdWODBGOHNLdjBGT25GM25tejNM?=
 =?utf-8?B?czQyNFV2MnhUalZjaEZmdzF6Q04yZVNhbHVxRmJ0U3pnRFV6RWIxSjJveERy?=
 =?utf-8?B?Y2EyL0N1dmNMaHNqeG15WlJwekFjYTBWZHQzclBBTnBha21zS2RVTHVhV0p5?=
 =?utf-8?B?NFpPajY2TlRDZjZrUGtjSWR2bmZMYkdMODUrTElQQnpjOFFwTFptK25kaDBj?=
 =?utf-8?B?M1JUU0tLNy9xYVNEZkFOVXh3VmFJSXY2L1A5S3M0bTljVndpT1JaczF0U1Bh?=
 =?utf-8?B?Q3dTTXNUNmtzWUlaZkx2NnEyMEUzaHhSaVl2M2ZvQ0hJNEoyamh6NjBTWlRI?=
 =?utf-8?B?cEdUQ3A2RnVib0J3QUJMaUs0T1A2WVF5R0NzNCs5dTlDSkI5WDE4a2haNElq?=
 =?utf-8?B?VTdwYWJtU3dLVldKbDRPQmlmdFhvVnZ5a3JCOS9iN0RDaFZCcjJ0b216dlpo?=
 =?utf-8?B?K01FeTZLbEFRTlp1OGdOczVuaXpwcWx6a2Z1YmRNUjdvMktPVitTVGhVTW5u?=
 =?utf-8?Q?GklpsFYzA2yAkx0rQ+ng5ivm6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74f85da6-b510-4ee8-362b-08dbd9f1ee3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 09:15:30.9678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qotLrJ/c2nnRRutwbqgoQn9ut2Cj3YPc1sKj7JDJE50T25ofSS50kuUxNMbugX/52dws8q0JB8/Ri9vz/Ms1dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5493
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1
Y2FAY29lbGhvLmZpPg0KPiBTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDMxLCAyMDIzIDE6MTQgUE0N
Cj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0K
PiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCB2NF0gZHJt
L2k5MTUvZHNiOiBEU0IgY29kZSByZWZhY3RvcmluZw0KPiANCj4gT24gRnJpLCAyMDIzLTEwLTI3
IGF0IDE3OjI3ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IFJlZmFjdG9yIERTQiBp
bXBsZW1lbnRhdGlvbiB0byBiZSBjb21wYXRpYmxlIHdpdGggWGUgZHJpdmVyLg0KPiA+DQo+ID4g
djE6IFJGQyB2ZXJzaW9uLg0KPiA+IHYyOiBNYWtlIGludGVsX2RzYiBzdHJ1Y3R1cmUgb3BhcXVl
IGZyb20gZXh0ZXJuYWwgdXNhZ2UuIFtKYW5pXQ0KPiA+IHYzOiBSZWJhc2VkIG9uIGxhdGVzdC4N
Cj4gPiB2NDoNCj4gPiAtIEFkZCBib3VuZGFyeSBjaGVjayBpbiBkc2JfYnVmZmVyX21lbXNldCgp
LiBbTHVjYV0NCj4gPiAtIFVzZSBzaXplX3QgaW5zdGVhZCBvZiB1MzIuIFtMdWNhXQ0KPiA+DQo+
ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
IA0KPiBbLi4uXQ0KPiA+ICt2b2lkIGludGVsX2RzYl9idWZmZXJfbWVtc2V0KHN0cnVjdCBpbnRl
bF9kc2JfYnVmZmVyICpkc2JfYnVmLCB1MzINCj4gPiAraWR4LCB1MzIgdmFsLCBzaXplX3Qgc2l6
ZSkgew0KPiA+ICsJaWYgKChpZHggPiBkc2JfYnVmLT5idWZfc2l6ZSAvIDQpIHx8IChzaXplID4g
ZHNiX2J1Zi0+YnVmX3NpemUgLSBpZHgNCj4gPiArKiA0KSkNCj4gDQo+IFlvdSBhY3R1YWxseSBk
b24ndCBuZWVkIHRoZSBmaXJzdCBleHByZXNzaW9uLiAgVGhpcyBleHByZXNzaW9uIHNob3VsZA0K
PiBlbm91Z2g6DQo+IA0KPiAJZHNiX2J1Zi0+YnVmX3NpemUgPD0gKGlkeCArIHNpemUpICogc2l6
ZW9mKCpkc2JfYnVmLT5jbWRfYnVmKQ0KDQpIZXJlIHNpemUgaXMgaW4gYnl0ZXMsIGJ1dCBpZHgg
aXMgaW5kZXggb2YgMzIgYnl0ZXMgYXJyYXkuIFNvLCB0aGUgYWJvdmUgZXhwcmVzc2lvbiB3b3Vs
ZCBiZSwNCg0KZHNiX2J1Zi0+YnVmX3NpemUgPD0gKGlkeCAqIHNpemVvZigqZHNiX2J1Zi0+Y21k
X2J1ZikgKyBzaXplKQ0KDQpUaGUgc2FtZSBpcyBkb25lIHdpdGggMm5kIGV4cHJlc3Npb24gYnV0
IGFncmVlIHRvIHVzZSBzaXplb2YoKSBpbnN0ZWFkIG9mIG1hZ2ljIG51bWJlciA0Lg0KDQpUaGUg
Zmlyc3QgZXhwcmVzc2lvbiBpcyBhZGRlZCBpZiBpZHggaXMgYmlnIG51bWJlciBhbmQgZHVlIHRv
IG92ZXJmbG93IHRoZSBhYm92ZSBjaGVjayBjYW4gcGFzcyB3aGljaCBpcyBub3QgY29ycmVjdC4g
UGxlYXNlIGxldCBtZSBrbm93IHlvdXIgdGhvdWdodHMsIGlmIHlvdSBhcmUgbm90IG9rIHdpbGwg
ZHJvcCBtYXliZS4NCg0KPiANCj4gPiArCQlyZXR1cm47DQo+IA0KPiBCbGluZGx5IHJldHVybmlu
ZyBoZXJlIGRvZXNuJ3Qgc29sdmUgdGhlIHByb2JsZW0sIGl0IGp1c3QgaGlkZXMgaXQuICBJIHRo
aW5rIHRoZQ0KPiBiZXN0IHdvdWxkIGJlIHRvIHVzZSBXQVJOX09OKCkgaW5zdGVhZCBvZiBpZi4N
Cj4gDQo+IFNvOg0KPiAJV0FSTl9PTihkc2JfYnVmLT5idWZfc2l6ZSA8PSAoaWR4ICsgc2l6ZSkg
KiBzaXplb2YoKmRzYl9idWYtDQo+ID5jbWRfYnVmKSk7DQoNCkkgd2lsbCBhZGQgdGhlIFdBUk5f
T04oKS4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gPiArDQo+ID4gKwltZW1zZXQoJmRz
Yl9idWYtPmNtZF9idWZbaWR4XSwgdmFsLCBzaXplKTsgfQ0KPiBbLi4uXQ0KPiANCj4gLS0NCj4g
Q2hlZXJzLA0KPiBMdWNhLg0K
