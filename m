Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A071177E1C9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 14:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8709310E367;
	Wed, 16 Aug 2023 12:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2816B10E367
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 12:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692189708; x=1723725708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vdc69xG73lrSGcfs02UYVj3kDJ8Uzo5SZzH9qhL0GN0=;
 b=PoODf/IKenrU/xO4koTn4w+lP1St8VgsX2rixcCh1yNNZmJ/AWrC/8UQ
 kBUwxxvtQ+/OzcI2rizn7If/8n3YPE+wpj4bcUD/vj5PWB0qaaOM0SeY2
 oZH2Sx/g73/iRQBcH7FkUse6njkUhOx19BPP7ye+yU1MUeZGL118j9KDg
 k6umWGLYAlPlSu/ljnKJLquUBtCqScZxTVX/nRW4Wlkoq9z4c4cQfKGLA
 EEdgzaKWHmcXsxDWhl/B4uey34sB3xy79dq/wtSx8DaN89UMfuy0Aka0l
 MnHkeRj0NJTOTopH+8yj8S+LfGuMYsZqbf+Yj3nd5ZKkBk0SKXqZCFmDi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="458873314"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="458873314"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 05:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763614577"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="763614577"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2023 05:41:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 05:41:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 05:41:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 05:41:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 05:41:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZi5YXuVrMp+2fysXKJaK6UX+6y1cyKxJU6stzE5uGr3FAI9Yp1nPNK5GDsyeXHiU9lqv38eCtJ9bvncmKN+OndlisaBz3FgjjJ3WuK2YJSx2bjJpS+2jPGX8UaKRuYIAFpaBCWaTJbbojcTVYz5CjYECCVc/2Pb7rEVhlQrqzbZlTbOed35aWUQ/iTEvMYwKW17SzznCrsdc+e1eR72F7CMVE6yDK2iMl7dDENOF73jJV9Iz5FwwFHTy04zhgrboAUnS3Rl0PnZrMjD6VYdfjIgwRpbHQHdQB/h8+5RWHYHX3pqhci2aXbnu+ISukLdgOjcjecF3E9X0MZ8v5evzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vdc69xG73lrSGcfs02UYVj3kDJ8Uzo5SZzH9qhL0GN0=;
 b=jGZBejyqrAAlRRuOqwwvsmWnZ9k7ov+xFfSb+QbWfwYhbEMdSbJZATqTU0Rmp8ppRwGxw0eQFlxJugf9NpluueozWg2tbyWLRYL7l99XbOzKbHyONEQ2Yr9HLzqWxeX1/EmjDcCj+9YN1DzdjqZiqV0RSDpWJL5shUSxUMH4wZpwiffahrAeT4hwopxjqlk/WWZgs9GacjNECKi5/NLIv2fyhkcuwEkkbOHTBKYme/aRMbxlRydjWOxQFjhriESQ0+wO+W7Zezz1k1lA8x/QxCfW3YgPxBgFtWEatRA0MZDRy1hnImSVPMCKRElZGAKhV4rYabw2TFtmak/3vX9MuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BL3PR11MB6459.namprd11.prod.outlook.com (2603:10b6:208:3be::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 12:41:11 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 12:41:11 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/4] drm/i915: Simplify intel_cx0_program_phy_lane()
 with loop
Thread-Index: AQHZzrEupjhTmxcW4UenBGml6QZWJK/s4FZA
Date: Wed, 16 Aug 2023 12:41:11 +0000
Message-ID: <MW4PR11MB7054A5FB76C1C5B324E20ED7EF15A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230814131331.69516-1-gustavo.sousa@intel.com>
 <20230814131331.69516-3-gustavo.sousa@intel.com>
In-Reply-To: <20230814131331.69516-3-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BL3PR11MB6459:EE_
x-ms-office365-filtering-correlation-id: 9409d7bd-a24f-4c7d-391a-08db9e561215
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L4eD7ytIFOqJvtk81p0dArkVltlMynyVEB1/TylnZAAHXvwQUDvd5VlDxbqWQp1EjmUPiLTosNLWE9MX2WAWVEh29UoOs1o9z3v2G/jOHJolG2hbKeO/VjXUVI7TEfek3SG6XRE/c9/4D4id3ZDNPda2wl/a8g3UVzof448ZIbti/2i3EL/qwFfFVpNZI0nnw56ELw+7B4vUpmUBTyBkfPlwnvqxBh8XzozOv7+6NhsfG7REZLZbMgMzeZarJmzk4AgXtEB8aMo9MSkYlLV+0hnAk++viGoDBWv1ulTOsZ7tJRSdYFdTlrKMhffm5t5yuu5XkaKyrVTlpS8H5xBynFfyMCqRoRF1eYlVCoA1mINLsxF0rUHA878CT0KdezgqT+8ANECczhNoJsJ4optQOuvUSd0inG9f8DtE5Ep5w45LjTIMkLY1ch0W9bRnY28efJRyphW0kOaIKJyMaFSaOrgYoA/ihSsdx/PD+ARmO1P0HpnTZxP+O6K4O4PrHWDe3dmLtdb4hYidP6vNqBfpXxBdADY9DWFA8Jq8nL0HdxRNmuIryu7VmYMRBzRtHwkvluJHwQ17l+wGgKZn9DZN7JaVdf8tDu4c0AHmJ1b04ltLhwb0S01kKWd9osVWQIL3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199024)(1800799009)(186009)(2906002)(83380400001)(86362001)(478600001)(6506007)(107886003)(7696005)(71200400001)(33656002)(9686003)(53546011)(26005)(55016003)(5660300002)(41300700001)(52536014)(122000001)(316002)(76116006)(66946007)(66556008)(66476007)(66446008)(110136005)(64756008)(8676002)(8936002)(4326008)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0tka1Zmemk1aXc5bjdMdDh1SG90MHU2S28vN29HaGJ0WG1WeEgwakVwOG9E?=
 =?utf-8?B?djdTMklLNlRZY3JMcDFmTS9kNEZiZVJmcjlEYndYbHl0cGUwdExPNHh3VUhx?=
 =?utf-8?B?N1YydVF0WGZBZHNPaUZ3NHUvZXp4QjZQdUdZb0pvcStBQkVKblBMdmkrRnp2?=
 =?utf-8?B?SXlBcUNZQnd2TnFkb0V4ZXV2UzFURlZBSm9YMEpyWVF6SW9DTWtYRE1DNGxl?=
 =?utf-8?B?YXBUbEUvSDJlL2hSSi84YnB4ZFRNTEhoYXJockNXK01ZeFUwTkdaMVFUQlYr?=
 =?utf-8?B?eEYvamQ3WXZzR0FuUTFzRTY3c3p0d3RFZ2M1WFExQldPSVdtdVdsV3h1OThV?=
 =?utf-8?B?RS9UMmdXazJrS3VVTnRNNXg5VWdJMFhFTE9uZ01Wbysza2ZySStPWmJrUkVP?=
 =?utf-8?B?Vk51KzhaZEZ1d3I3bUJxUzF1RHhEN3ExMzAyZ2EwVnlOOFBGZEtJWDlSSDh1?=
 =?utf-8?B?V3pnTWlGcEl1NjlZZWRsSk5kczRyMlhUaUcrTWRFekszMmpEdnVXR0ZHb2du?=
 =?utf-8?B?eWQzS1FSazZwb05tUzdyV1JLbjY0eHVRRzJZeExuQ0gvMXovWk1qeG1ZN2tH?=
 =?utf-8?B?VmRZVkcybDJqUklMWkNTSDZkZk1HSWhwR1NjQlBJdmhhalAveHVNTDBycDRG?=
 =?utf-8?B?b2FSWG5NUTRHM2RxZ0FWVTNNSHhPT0haUDdYQWF6T1hmd0VPQUoySzcxNTJG?=
 =?utf-8?B?ZGd6RHNzUktOQnhNTmpPU0pIdFRubEdDUk5qaVBWSUl3YlNxVXlSaXRZYVVk?=
 =?utf-8?B?SThyVU55cmRFR2pOUWNQK0pqaEY4RDVZUUZvYjlUUmxXVERGMHU0M3paVWdm?=
 =?utf-8?B?T04yVk5pNXFVWUpacndUbUkwZURaWEFHVUJHUVNBemVhYXhob3RIbmkwM2w2?=
 =?utf-8?B?Z2w1Q1BsaFc5NFN5WCtPSkM2V2lIbzlTSktUdC9zUGF2cStzbUM0QjlLMGNl?=
 =?utf-8?B?MzhDUTYxcit4V2JqOHFWSFlwcmxJc1c2ZmFtMXBIaVJSN21naFIwN1NaQzJv?=
 =?utf-8?B?U25uc0RWbldHNndKT29ZZStHekpxWlIrNWRSWm5saVZrS1NpSnh4MGordmtt?=
 =?utf-8?B?YjRIWFIyNDREYXNmY0tNaXJEMTNQK1ZNcmt3dGt5UU1STW1mMDkwRHJVSEN3?=
 =?utf-8?B?dTJTaCs2bHVzSmc5Mlp0enNiUzZFM3gxbGdHeGRFOFJ6Rk5JVDY4UUdQVHFY?=
 =?utf-8?B?bE1JRnE0VFZBZE01TFA5U1lkSlB6aDBGVGdqemNnd0J1NDZhcDd4K0U1SEVF?=
 =?utf-8?B?R1kvMzVRZG1IUUJGYkNPcXZtaTM2eGtEYzc0MktPMDJMOWdRSkxscTh3bzY4?=
 =?utf-8?B?WUlBVndtUEdNL1A1dFRiUk5wSmZtWmhzc0FCNytnUkQ2NkxEd2MzZHorVWtL?=
 =?utf-8?B?bU9zWkkrcVhUTDF0a2dRWkN2b295QmxoYzdJck5uRm50UjVIbUI4YlNNNUhO?=
 =?utf-8?B?MXl6aTlnd3RZOHliYWV3LzFBckhpUEJLc3FFdEphS3ArcXVueFUxbDBoR0NP?=
 =?utf-8?B?Yjl1cThGRmkwQTQzT2phdmd6NXJwVVQ0V2I5aDBzSStvNmJGTStQYVU5NDB2?=
 =?utf-8?B?UUtPZXkyYm10YldCcW1KRldYRjhJNkQ3Z1ZvUW84WHV0RlRtei9zeVJVVDEx?=
 =?utf-8?B?bUE2bk1Rd3c0WWhpK0ltOWlRWURkOTg0dVJiWXlHdS8vRkRYVWNjVjdCbWc3?=
 =?utf-8?B?WjEwK3lSV09DQ1FXemhFcXZQM1hwUkNJZWRJT0U1Q09HZDV0THo3NUJObG5Y?=
 =?utf-8?B?bGNiNnhYZmxJZjFybjZSTHRab1AybFlQRlY1MFBzTHdNMzk2V3k2VVA0R3RK?=
 =?utf-8?B?THI2dVFqNXlkT1NERG1WK1hjL2plcDJuSGpETExFUHdNcGVYNlFud1QxOVB0?=
 =?utf-8?B?eXFwNUUrRGlxOXdXQ21TcVBKdUxSZ0RtTEZUTWcrMkJ3V1V1SE1vVGRibUg1?=
 =?utf-8?B?TnpHZVdPV0l4V1lCSFRYMEJ6N2ovb1VMTmxCRFY4VTYwYzBEUDFPN2I2empH?=
 =?utf-8?B?NDg1R0lUZUVialhZUWZwWVFwN2loMXhTalg4bmJXT25LbTlSd01OOTVoenFJ?=
 =?utf-8?B?b0RjT2xsK3BFQStjRWpqLzAyUkRWZXRJaSttQ3E2aTYzQjRxMVUxRU1jNFVm?=
 =?utf-8?Q?F23If5oROmmdexBd6JuCUNNph?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9409d7bd-a24f-4c7d-391a-08db9e561215
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 12:41:11.0418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JhfXxEvRsSMVL//rPyO+RYBoO9E9OBeD7r/qxfILLminPyxQlBabhVgt2uubUBg84cCFrC34XD5cP1hewR1ffQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: Simplify
 intel_cx0_program_phy_lane() with loop
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgQXVndXN0IDE0LCAyMDIzIDQ6
MTMgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3Vs
YSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAyLzRdIGRybS9pOTE1OiBTaW1wbGlm
eSBpbnRlbF9jeDBfcHJvZ3JhbV9waHlfbGFuZSgpIHdpdGggbG9vcA0KPiANCj4gSXQgaXMgcG9z
c2libGUgdG8gZ2VuZXJhbGl6ZSB0aGUgImRpc2FibGUiIHZhbHVlIGZvciB0aGUgdHJhbnNtaXR0
ZXJzIHRvIGJlIGEgYml0IG1hc2sgYmFzZWQgb24gdGhlIHBvcnQgd2lkdGggYW5kIHRoZSBwb3J0
IHJldmVyc2FsDQo+IGJvb2xlYW4sIHdpdGggYSBzbWFsbCBleGNlcHRpb24gZm9yIERQLWFsdCBt
b2RlIHdpdGggIngxIiBwb3J0IHdpZHRoLg0KPiANCj4gU2ltcGxpZnkgdGhlIGNvZGUgYnkgdXNp
bmcgc3VjaCBhIG1hc2sgYW5kIGEgZm9yLWxvb3AgaW5zdGVhZCBvZiB1c2luZyBzd2l0Y2gtY2Fz
ZSBzdGF0ZW1lbnRzLg0KPiANCj4gdjI6DQo+ICAgLSBVc2UgKGkgPCAyKSBpbnN0ZWFkIG9mIChp
IC8gMiA9PSAwKSBmb3IgUEhZIGxhbmUgbWFzayBzZWxlY3Rpb24uDQo+ICAgICAoSmFuaSkNCj4g
DQo+IEJTcGVjOiA2NDUzOQ0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCg0KTG9va3Mgb2sgdG8gbWUuDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rh
dm8uc291c2FAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jIHwgNzkgKysrKystLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA1OSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IGluZGV4IGI5MDNjZWIw
YjU2YS4uMmIxMTJlZDc4OTQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYw0KPiBAQCAtMjYwNCw3ICsyNjA0LDggQEAgc3RhdGljIHZvaWQg
aW50ZWxfY3gwX3Byb2dyYW1fcGh5X2xhbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
DQo+ICAJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgbGFuZV9j
b3VudCwNCj4gIAkJCQkgICAgICAgYm9vbCBsYW5lX3JldmVyc2FsKQ0KPiAgew0KPiAtCXU4IGww
dDEsIGwwdDIsIGwxdDEsIGwxdDI7DQo+ICsJaW50IGk7DQo+ICsJdTggZGlzYWJsZXM7DQo+ICAJ
Ym9vbCBkcF9hbHRfbW9kZSA9IGludGVsX3RjX3BvcnRfaW5fZHBfYWx0X21vZGUoZW5jX3RvX2Rp
Z19wb3J0KGVuY29kZXIpKTsNCj4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7DQo+
IA0KPiBAQCAtMjYxNCw2NiArMjYxNSwyNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jeDBfcHJvZ3Jh
bV9waHlfbGFuZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAkJCSAgICAgIEMx
MF9WRFJfQ1RSTF9NU0dCVVNfQUNDRVNTLA0KPiAgCQkJICAgICAgTUJfV1JJVEVfQ09NTUlUVEVE
KTsNCj4gDQo+IC0JLyogVE9ETzogRFAtYWx0IE1GRCBjYXNlIHdoZXJlIG9ubHkgb25lIFBIWSBs
YW5lIHNob3VsZCBiZSBwcm9ncmFtbWVkLiAqLw0KPiAtCWwwdDEgPSBpbnRlbF9jeDBfcmVhZChp
OTE1LCBwb3J0LCBJTlRFTF9DWDBfTEFORTAsIFBIWV9DWDBfVFhfQ09OVFJPTCgxLCAyKSk7DQo+
IC0JbDB0MiA9IGludGVsX2N4MF9yZWFkKGk5MTUsIHBvcnQsIElOVEVMX0NYMF9MQU5FMCwgUEhZ
X0NYMF9UWF9DT05UUk9MKDIsIDIpKTsNCj4gLQlsMXQxID0gaW50ZWxfY3gwX3JlYWQoaTkxNSwg
cG9ydCwgSU5URUxfQ1gwX0xBTkUxLCBQSFlfQ1gwX1RYX0NPTlRST0woMSwgMikpOw0KPiAtCWwx
dDIgPSBpbnRlbF9jeDBfcmVhZChpOTE1LCBwb3J0LCBJTlRFTF9DWDBfTEFORTEsIFBIWV9DWDBf
VFhfQ09OVFJPTCgyLCAyKSk7DQo+IC0NCj4gLQlsMHQxIHw9IENPTlRST0wyX0RJU0FCTEVfU0lO
R0xFX1RYOw0KPiAtCWwwdDIgfD0gQ09OVFJPTDJfRElTQUJMRV9TSU5HTEVfVFg7DQo+IC0JbDF0
MSB8PSBDT05UUk9MMl9ESVNBQkxFX1NJTkdMRV9UWDsNCj4gLQlsMXQyIHw9IENPTlRST0wyX0RJ
U0FCTEVfU0lOR0xFX1RYOw0KPiAtDQo+IC0JaWYgKGxhbmVfcmV2ZXJzYWwpIHsNCj4gLQkJc3dp
dGNoIChsYW5lX2NvdW50KSB7DQo+IC0JCWNhc2UgNDoNCj4gLQkJCWwwdDEgJj0gfkNPTlRST0wy
X0RJU0FCTEVfU0lOR0xFX1RYOw0KPiAtCQkJZmFsbHRocm91Z2g7DQo+IC0JCWNhc2UgMzoNCj4g
LQkJCWwwdDIgJj0gfkNPTlRST0wyX0RJU0FCTEVfU0lOR0xFX1RYOw0KPiAtCQkJZmFsbHRocm91
Z2g7DQo+IC0JCWNhc2UgMjoNCj4gLQkJCWwxdDEgJj0gfkNPTlRST0wyX0RJU0FCTEVfU0lOR0xF
X1RYOw0KPiAtCQkJZmFsbHRocm91Z2g7DQo+IC0JCWNhc2UgMToNCj4gLQkJCWwxdDIgJj0gfkNP
TlRST0wyX0RJU0FCTEVfU0lOR0xFX1RYOw0KPiAtCQkJYnJlYWs7DQo+IC0JCWRlZmF1bHQ6DQo+
IC0JCQlNSVNTSU5HX0NBU0UobGFuZV9jb3VudCk7DQo+IC0JCX0NCj4gLQl9IGVsc2Ugew0KPiAt
CQlzd2l0Y2ggKGxhbmVfY291bnQpIHsNCj4gLQkJY2FzZSA0Og0KPiAtCQkJbDF0MiAmPSB+Q09O
VFJPTDJfRElTQUJMRV9TSU5HTEVfVFg7DQo+IC0JCQlmYWxsdGhyb3VnaDsNCj4gLQkJY2FzZSAz
Og0KPiAtCQkJbDF0MSAmPSB+Q09OVFJPTDJfRElTQUJMRV9TSU5HTEVfVFg7DQo+IC0JCQlmYWxs
dGhyb3VnaDsNCj4gLQkJY2FzZSAyOg0KPiAtCQkJbDB0MiAmPSB+Q09OVFJPTDJfRElTQUJMRV9T
SU5HTEVfVFg7DQo+IC0JCQlsMHQxICY9IH5DT05UUk9MMl9ESVNBQkxFX1NJTkdMRV9UWDsNCj4g
LQkJCWJyZWFrOw0KPiAtCQljYXNlIDE6DQo+IC0JCQlpZiAoZHBfYWx0X21vZGUpDQo+IC0JCQkJ
bDB0MiAmPSB+Q09OVFJPTDJfRElTQUJMRV9TSU5HTEVfVFg7DQo+IC0JCQllbHNlDQo+IC0JCQkJ
bDB0MSAmPSB+Q09OVFJPTDJfRElTQUJMRV9TSU5HTEVfVFg7DQo+IC0JCQlicmVhazsNCj4gLQkJ
ZGVmYXVsdDoNCj4gLQkJCU1JU1NJTkdfQ0FTRShsYW5lX2NvdW50KTsNCj4gLQkJfQ0KPiArCWlm
IChsYW5lX3JldmVyc2FsKQ0KPiArCQlkaXNhYmxlcyA9IFJFR19HRU5NQVNLOCgzLCAwKSA+PiBs
YW5lX2NvdW50Ow0KPiArCWVsc2UNCj4gKwkJZGlzYWJsZXMgPSBSRUdfR0VOTUFTSzgoMywgMCkg
PDwgbGFuZV9jb3VudDsNCj4gKw0KPiArCWlmIChkcF9hbHRfbW9kZSAmJiBsYW5lX2NvdW50ID09
IDEpIHsNCj4gKwkJZGlzYWJsZXMgJj0gflJFR19HRU5NQVNLOCgxLCAwKTsNCj4gKwkJZGlzYWJs
ZXMgfD0gUkVHX0ZJRUxEX1BSRVA4KFJFR19HRU5NQVNLOCgxLCAwKSwgMHgxKTsNCj4gIAl9DQo+
IA0KPiAtCS8qIGRpc2FibGUgTUxzICovDQo+IC0JaW50ZWxfY3gwX3dyaXRlKGk5MTUsIHBvcnQs
IElOVEVMX0NYMF9MQU5FMCwgUEhZX0NYMF9UWF9DT05UUk9MKDEsIDIpLA0KPiAtCQkJbDB0MSwg
TUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gLQlpbnRlbF9jeDBfd3JpdGUoaTkxNSwgcG9ydCwgSU5U
RUxfQ1gwX0xBTkUwLCBQSFlfQ1gwX1RYX0NPTlRST0woMiwgMiksDQo+IC0JCQlsMHQyLCBNQl9X
UklURV9DT01NSVRURUQpOw0KPiAtCWludGVsX2N4MF93cml0ZShpOTE1LCBwb3J0LCBJTlRFTF9D
WDBfTEFORTEsIFBIWV9DWDBfVFhfQ09OVFJPTCgxLCAyKSwNCj4gLQkJCWwxdDEsIE1CX1dSSVRF
X0NPTU1JVFRFRCk7DQo+IC0JaW50ZWxfY3gwX3dyaXRlKGk5MTUsIHBvcnQsIElOVEVMX0NYMF9M
QU5FMSwgUEhZX0NYMF9UWF9DT05UUk9MKDIsIDIpLA0KPiAtCQkJbDF0MiwgTUJfV1JJVEVfQ09N
TUlUVEVEKTsNCj4gKwkvKiBUT0RPOiBEUC1hbHQgTUZEIGNhc2Ugd2hlcmUgb25seSBvbmUgUEhZ
IGxhbmUgc2hvdWxkIGJlIHByb2dyYW1tZWQuICovDQo+ICsJZm9yIChpID0gMDsgaSA8IDQ7IGkr
Kykgew0KPiArCQlpbnQgdHggPSBpICUgMiArIDE7DQo+ICsJCXU4IGxhbmVfbWFzayA9IGkgPCAy
ID8gSU5URUxfQ1gwX0xBTkUwIDogSU5URUxfQ1gwX0xBTkUxOw0KPiArDQo+ICsJCWludGVsX2N4
MF9ybXcoaTkxNSwgcG9ydCwgbGFuZV9tYXNrLCBQSFlfQ1gwX1RYX0NPTlRST0wodHgsIDIpLA0K
PiArCQkJICAgICAgQ09OVFJPTDJfRElTQUJMRV9TSU5HTEVfVFgsDQo+ICsJCQkgICAgICBkaXNh
YmxlcyAmIEJJVChpKSA/IENPTlRST0wyX0RJU0FCTEVfU0lOR0xFX1RYIDogMCwNCj4gKwkJCSAg
ICAgIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ICsJfQ0KPiANCj4gIAlpZiAoaW50ZWxfaXNfYzEw
cGh5KGk5MTUsIGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIHBvcnQpKSkNCj4gIAkJaW50ZWxfY3gw
X3JtdyhpOTE1LCBwb3J0LCBJTlRFTF9DWDBfQk9USF9MQU5FUywNCj4gLS0NCj4gMi40MS4wDQoN
Cg==
