Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B34E6B3D40
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 12:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6203410E9C9;
	Fri, 10 Mar 2023 11:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA1310E9C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 11:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678446521; x=1709982521;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DHThRTMCWZfFbpeGD+OXrIqwQR29cDZAXZMvCBARNM8=;
 b=dlvb982KuPNlG+gnGkYMVfRUbEvdX3YMfs7Q6coRvlmeEcv4CaAFITUk
 J1HIFgpI9qKC0c3eoS34dHYvVxSHoM8VUgjTnt/WB3FbT8Cx4FMVzPQZo
 4a3j6Asx5NtsjcmqVnYiTLTMhr60d2SFku+aJcepLPLNJTNonCHpuHiCq
 alUEEvuQqL9DO+tX0WWANSl2taEUcp2lsDAul+hsX7owhw91zrK9a8/EO
 1BB9C2sL3eAEPJvN76y/gCEhroCdRG5ZNRjM2SRNnKXkDBrYZNXrMKvn+
 779F2nr06XE2w2vL4xkGy3SjzcNDbzmKKDSmhf346G6BLMJ9jZmb+PGnq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="334181131"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="334181131"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 03:08:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="851878211"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="851878211"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 10 Mar 2023 03:08:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 03:08:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 03:08:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 03:08:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPX4CHwXS8bIjPw9jUf7Jv2zLIM4aYIkGsTUccxVTf/1fmq5Dyps2qn3zkUhBy4T84pLpUGHqhaTVIqG0LI0Uha51TeojIDl/7iq2sjH1vfS90F3qfcU9vVwvRcn1YwCN6LzHUex5i0OrCF3q5rnIKyaWFS+o60+0KyMQ0a1/miuFV92ps3NEhCnp1dc0/CxEoxiz5w63B5MXoka8ODY/48jQV5dvZnakDXbFD4wAVfAv0A06WjnBhySit5xcoeULlADaTdpFIabAoqX0CRMPHx6gZi/M8YiIG2ZlewWEAtiPRgDA88lw5dPIEwUK6WVTF63G+06PIZHLLo5mgryCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DHThRTMCWZfFbpeGD+OXrIqwQR29cDZAXZMvCBARNM8=;
 b=mpcSF8yl7rroGpu15JMTtKHhn3pRrb8TQNlRg0V9JE90aIpZVUXwU3hjIgzebKuKhMEOf2THWsZYiv43QqynfX7vrSM6LVh/KpESecdMi3QyDPskZ8NGytu8OsZDql3iI4R6pLuKz9ikEJUumOnmsTDEgcN2pIkTgnWzI4UTA/LvR0waIoMcwR2ymeg9l+zCPGjKPnk/DeUf+5ifbe7MXI1gD0kGFMKpYt1d6maK6mDGVjxOashVxjnP7Ui4mloTnQ4i+fbp61FCR5V7vJwsfXPu97PsOhadehJvqlq0w/kzNntRVT7dg/aK0G0A0qxluyGpP5ppbPOkzibx9XgIHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7831.namprd11.prod.outlook.com (2603:10b6:8:de::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.20; Fri, 10 Mar 2023 11:08:38 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%6]) with mapi id 15.20.6178.020; Fri, 10 Mar 2023
 11:08:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Preserve crtc_state->inherited
 during state clearing
Thread-Index: AQHZR5uNUjhDFGxiBUaNH5Z/U9hiV67z8QWA
Date: Fri, 10 Mar 2023 11:08:37 +0000
Message-ID: <DM4PR11MB636037D4A1B8922CCB2AA07AF4BA9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230223152048.20878-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230223152048.20878-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7831:EE_
x-ms-office365-filtering-correlation-id: 88f8d0d3-b102-4065-267a-08db2157cc84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ET/Vy7I0MnL+XCD74LtlOwCjcmAZE0r1GthFQBUM5boHY426K53vYxSCZQloNxlij2Xpd8pGJLMhh6ZpzNElbyKHOC6OwEet6wcDUDY5yhE2Gomh4VBajA0p1teBB69jzEADVHLIsxVLp2mzIyQ63Wd209DNm2iIZNGtKbhuG0jQ/Lf6EJOrVI+dgtio6Fq/wgRnFq80vGYyKDkc3NANi5j5+NbaRk15QPqn3W6jLkKkQv3pU9I3W5JZqdLZuI9i2jhii+f6DbxtVgLgrLAH4jdIC80vMSNtq7O/bqv87guKPI1VwKlvl4sK0YXCV9Z2VGjALt7fSYoBlkDE61X608/e4x+SXSIv+60hl72i+5RVPbZDt/nJn8ImqXYaXI1TT3nIUuPYzIn17NlvG3rcqE3TuRt9tQshfJ+kwHNaTnMKLsHXIlxc7GQfcx7YS06o3N6b8VBQGlisT77mPTy+GBGLwyQ7JkO5yskshLSs6C4cpM4TwI/i+FZNzbZYwo2pW890ZA/3u6wowPBEuNaZrWHD2cv450OnlINkhBB3LLPIDadkyRSFjo5pwyIzEa7PfR1ArNGlILp5XdWjlYzAAOMW3+tCXZXpojIsxilFSpWcXecpeILaxEd8LSAYiSMz72xLzDDhArIYa149MKxb85ymqCGJN0wCl42u4LYQWs9p8pT/DkESw6scjn2KWvqGhe/NBQ4Hf8kRRfqz1e4QYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199018)(5660300002)(52536014)(8936002)(8676002)(64756008)(66446008)(66476007)(66556008)(4326008)(55016003)(66946007)(76116006)(83380400001)(110136005)(7696005)(478600001)(71200400001)(316002)(33656002)(41300700001)(86362001)(82960400001)(2906002)(38070700005)(9686003)(26005)(186003)(38100700002)(122000001)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnZyREYycEY2UUxtNUVocytDZlEzNXJSRW0wMjJsRXdNWFdFcVpuclg5WDN1?=
 =?utf-8?B?RFZrb1FTaUJtVklEODRoRzFud3Q4RHBHaDkzMnorN0tJNVpaV3VuRU44YnRJ?=
 =?utf-8?B?ZkdTcitYSzkxTmErazVWWnJ6Mi9ITGk3cCs2dmxVTHlmV1ZiczNMRnJYWDV4?=
 =?utf-8?B?WDV3ME5hNmNEMjIxaTBtNDBVdkY5UDRkbm8xditoYUtJR1ZVcGVxd2pKOWl2?=
 =?utf-8?B?aUV5RDM0cTNMbkpFbm1HRWJjZDIzQ2xjOUhMWFRHUmRrcGlGOStSN05CSGw0?=
 =?utf-8?B?eFRmUmxpV0lqYkNDV3dZS3JpR2dDK3h5Q3FDNmZ6K3hYbjJTV3pwSk1vaUN3?=
 =?utf-8?B?SzFMWHJKUFplMTVrZXFtbXFLa2F6cWNNZ2lEZG1PdlNiOGxaS0owQ0RDa25I?=
 =?utf-8?B?MGlNQjlqOXhkZ1BUU3ArQ2hpT3ZSM2hjYUNlZFk2NWNsZnFMZFBGNWkydUJP?=
 =?utf-8?B?VXVGZllmYzZ5RWU0Vk1tZC9GYnk5dkVScWV2V29ZTVlUWjV0Y3UxSnBKQjQ5?=
 =?utf-8?B?NjJPRE41ZFJoSWp2WGJsS0dneHJFWFIrMHQ5TjFRRnA5UDdnSE9ORG1rbERv?=
 =?utf-8?B?Ujl2bFRjYmxlZlcvTGZTZ1FJNXg0VDlPSThteHI0YVZxSm5WMTFPTDVvckFi?=
 =?utf-8?B?V2lVb0xWdHN6Uk5NODlMUHF2N3J6TmgzM2ZkUktFZ2FpZ25kZ2l6em9tN1lJ?=
 =?utf-8?B?WWxsU0UrWHZVZGw3Q01BK28rZm8xZCtDODgyWUc0NFhVN1lNd1JPbVNBWUZq?=
 =?utf-8?B?VkUrZlRvc3ZSQkcxRlJOTXdYcXVVaGI0VFdwZ0J4MEZoSVFCZk5MSEZWcG54?=
 =?utf-8?B?aFR1c2ZMUTVtNmZaWHR1Y2h2VjAvYjd6VUZ6dUZ6MkdUSXpwc2ZFV0xQWWg3?=
 =?utf-8?B?b21WM3RzUVVWM1VuK2xsbERvL0JrcXV3WXdiczdHOE5yeUlNK1VwTmoyc0I0?=
 =?utf-8?B?RE5kNlA4Y1BvQU4xRW1vU09TRGdvRXBvbWZzaDA5a0ZVaTF2dUZVVkVPOFFU?=
 =?utf-8?B?NGRxNDlVRXFPNWRIRFAvTUlUZWZHcmpNUG1CemNiUkpzcDNUZUdOUUU0U0M4?=
 =?utf-8?B?N3FZYlU4amRiNUhHTk81bG11TDVUMWlGTDdHRXgwTGVrNkl4MG1uY3lna3NM?=
 =?utf-8?B?T0g0NVJJOFB1L2hjREZrVHQxS2pZdDZFc1U1MThDb0NmS0pIbnpFUGVYeHRJ?=
 =?utf-8?B?ai92NE5DZ2YwNHVlYU8xY3pycW5qamtUZ0xGWkRJVndtckxISFFDM2Frc2Ji?=
 =?utf-8?B?Z3k2TWIyaUhPUVpjeWpCL2U3VjZkaFlxcnR6VlFWd0dFMlpkbm84dGdnQi9S?=
 =?utf-8?B?RFNmdDdxRjlwdWllOTVJN2ZqWlJBcjBRcVA0YUppbGJQNm9rVFBjaDd1dkhM?=
 =?utf-8?B?TW5XT0JkYWVyMTNZYkZJU2JKVFhFdjRmVVg2dGt0dFZzemJsbnRNSkVoNEpt?=
 =?utf-8?B?NzFucVMyYkRYNmtmcUFhWGZjbzZDejJtSFkzS2NvdzNCakVycXJjZU1zR3hj?=
 =?utf-8?B?R1RSSUxOUzZUdmo5VTRhcHBYSVVWaUR3Yk04WjlQb0Y4bm9yNEI3WmJ6ZjJ1?=
 =?utf-8?B?SUMxTWpQNmlZcW1STWpacHZZSWFiSEJVRlFsc21xNWQ5S1F1dVFjOXdPK1NK?=
 =?utf-8?B?cm5INW91NXcrNnE2VW1iNDEzZ1J1L3paczZ4eFg5b2tsaWc4cUtJOHBIU2dL?=
 =?utf-8?B?c2Z3eHY2M0RLSGVnVC9lRnU5YjNHRkFzZk9IYnpZL2Z1aEYySkloV1o3L00v?=
 =?utf-8?B?NXMyNm9yaG1SYmxkRG5LLy9wSllMLzJaR0k3Uyt4d3hQTURSbzZzTUNmWkNR?=
 =?utf-8?B?NmxqRjVUYWN0K3ZMYVJKZkZyeTFMbDF5TDNxSGl5emVHQUlyekpMTVA1a3BO?=
 =?utf-8?B?Y1M0R2piRTk4RGFVWGpQQjc5NHhhVjhhL2RXNnVNZHFRM2REbzVFRE1kdmVW?=
 =?utf-8?B?T0tVWjFZcVptd1BYalA2czNFK2d1RW1pY3NqOGtrb2J5cktlVzBLbUl0RWxx?=
 =?utf-8?B?enpLdjNkV2x3ODF5SitkNkRhUTZHZktBTTUxOVBodmVEVk9rT294QjQxL0NY?=
 =?utf-8?B?QXNvSFVuOGR6My90emJoU0FFZjE5VFFaV1o4MHlZRTdtcHpNL2ZVSEllTDVw?=
 =?utf-8?Q?SmAgnj33+CjazVV0ke/+gpdd4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88f8d0d3-b102-4065-267a-08db2157cc84
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 11:08:37.9828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zk5nOluNd3fY325iUSjnbGjxQmu3h/qn2SHusHMoZo4TsMOdFiWKB/SYRFzf/BXHFrOVDC9mOlcecgDzrrPmxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Preserve crtc_state->inherited
 during state clearing
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyMywgMjAyMyA4OjUxIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTU6IFByZXNlcnZl
IGNydGNfc3RhdGUtPmluaGVyaXRlZCBkdXJpbmcgc3RhdGUNCj4gY2xlYXJpbmcNCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBpbnRlbF9jcnRjX3ByZXBhcmVfY2xlYXJlZF9zdGF0ZSgpIGlzIHVuaW50ZW50aW9uYWxseSBs
b3NpbmcgdGhlICJpbmhlcml0ZWQiIGZsYWcuIFRoaXMNCj4gd2lsbCBoYXBwZW4gaWYgaW50ZWxf
aW5pdGlhbF9jb21taXQoKSBpcyBmb3JjZWQgdG8gZ28gdGhyb3VnaCB0aGUgZnVsbCBtb2Rlc2V0
DQo+IGNhbGN1bGF0aW9ucyBmb3Igd2hhdGV2ZXIgcmVhc29uLg0KPiANCj4gQWZ0ZXJ3YXJkcyB0
aGUgZmlyc3QgcmVhbCBjb21taXQgZnJvbSB1c2Vyc3BhY2Ugd2lsbCBub3QgZ2V0IGZvcmNlZCB0
byB0aGUgZnVsbA0KPiBtb2Rlc2V0IHBhdGgsIGFuZCB0aHVzIGVnLiBhdWRpbyBzdGF0ZSBtYXkg
bm90IGdldCByZWNvbXB1dGVkIHByb3Blcmx5LiBTbyBpZiB0aGUNCj4gbW9uaXRvciB3YXMgYWxy
ZWFkeSBlbmFibGVkIGR1cmluZyBib290IGF1ZGlvIHdpbGwgbm90IHdvcmsgdW50aWwgdXNlcnNw
YWNlIGl0c2VsZg0KPiBkb2VzIGFuIGV4cGxpY2l0IGZ1bGwgbW9kZXNldC4NCg0KTG9va3MgR29v
ZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFRlc3RlZC1ieTogTGVlIFNoYXdu
IEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgKw0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBhMWZiZGYzMmJkMjEuLmVkOTVjMGFjZmFhZSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gQEAgLTUwNzgsNiArNTA3OCw3IEBAIGludGVsX2NydGNfcHJlcGFyZV9jbGVhcmVkX3N0YXRl
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCSAqIG9ubHkgZmllbGRz
IHRoYXQgYXJlIGtub3cgdG8gbm90IGNhdXNlIHByb2JsZW1zIGFyZSBwcmVzZXJ2ZWQuICovDQo+
IA0KPiAgCXNhdmVkX3N0YXRlLT51YXBpID0gY3J0Y19zdGF0ZS0+dWFwaTsNCj4gKwlzYXZlZF9z
dGF0ZS0+aW5oZXJpdGVkID0gY3J0Y19zdGF0ZS0+aW5oZXJpdGVkOw0KPiAgCXNhdmVkX3N0YXRl
LT5zY2FsZXJfc3RhdGUgPSBjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGU7DQo+ICAJc2F2ZWRfc3Rh
dGUtPnNoYXJlZF9kcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGw7DQo+ICAJc2F2ZWRfc3Rh
dGUtPmRwbGxfaHdfc3RhdGUgPSBjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlOw0KPiAtLQ0KPiAy
LjM5LjINCg0K
