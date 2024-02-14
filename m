Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2FF854477
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 09:59:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B27F10E216;
	Wed, 14 Feb 2024 08:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgNF/P4H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D57410E216
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 08:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707901150; x=1739437150;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DRtwLWv/qd+NZ1cy1vshFuWfmB5MBy3YmhMrfANPmck=;
 b=fgNF/P4Hw46p0fSjDC382o+TGaUXIN64F9Nc7gJXSleHA0knamhaTK6k
 uamhadNwLZsHsy8WUIkeKsiZvYG4JwOth/meraIDqhrA9Q5OMd+XZEmRB
 fsgk05UCKbOgB2MQ+PN0QUvkADaX34yT5auuGoEh7xHCRrqh4d1MKKKKW
 /vqY7kjqQMoIS+lM/E8ZInVtiehsKHAY3j10azBW2q62rp33xRGgXaZeG
 8JA1xHHo1vFXjNuD6JOYCynI4Z8dBXKnmg5tY0mhM9Xu7SvWuR4L/PkJn
 WLGE4TBwN8BplrCFFmHuNmedhPasZdQ6AhSMNECZ8/Omgu7nnPnKI3dwF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19447759"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="19447759"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="7877436"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 00:59:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 00:59:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 00:59:07 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 00:59:07 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 00:59:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOMJtsHlggoxQ7mN7RYQCOy6uFmu+KctFSNAljM3/4DGlQeTHWCMs+GbBPT5b/a87JiYCtPcKXVo2ZsZZK3UWhFW72ENIbk8sp5138PJLoEka0AAcMOHgB20SB07waAztUBwwtbf9ryUoT9O5FXT7pXf+ZI5Ay9ettflnZGwObszWtc6RaoHDO/uASPjFc3EgiEFNWDjLgLhBEYnD+Fkhqfl7rpxr3fPASMI0f/N6/q0Di2JES+6otqX+N8TGj3k7e12BI0DD6Zy3FAynArWjf8QP6/LIAuatDboCy+oQ5QHtv8KzHdwvM8mFK9qzpH0thLt8LGud6dn+mhigX29NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRtwLWv/qd+NZ1cy1vshFuWfmB5MBy3YmhMrfANPmck=;
 b=Z7OrGH/Fp1OzpqU7MB46PAFhc+H9tmwH4Aq6aDKS6MbDknSVFwoD97/q+Q6Cq7SctWexufYSwBIWucuKldff4XBBVGdBIk+9W8RRlB4aBiC5u+WqwNmQHd88fJMIXn8j/egB94pnuUHtRvoaylIRbQ6SqrNKdYoqlAtPIPWWbwX2Ku7a5gzTf3BgiTpEhs+u/xnCr45V0LEerMO69qNSXVzTcippJasAuN/tUpdN+lRy9NpwYkgabKQxJG/AOeXpeuHHFfB5Ec3wTIZVfBw5YjWI3TH9ZCEhoA3Fi3EnBxcbui4FT9QAp5m1doMi2XbBbP3Cf6hHqD8hwyieJu+5Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6954.namprd11.prod.outlook.com (2603:10b6:510:205::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 08:58:59 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7292.027; Wed, 14 Feb 2024
 08:58:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 5/5] drm/i915: Enable fastboot across the board
Thread-Topic: [PATCH 5/5] drm/i915: Enable fastboot across the board
Thread-Index: AQHaW4c2FxWq4syXVki5agE0glyBVbEJkNfw
Date: Wed, 14 Feb 2024 08:58:59 +0000
Message-ID: <MW4PR11MB70546583E358C426675CBF81EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20240209183809.16887-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6954:EE_
x-ms-office365-filtering-correlation-id: 9088129e-6c6b-419c-cff3-08dc2d3b2f45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Knn3txKU4GkCUq/S8iyPXgKZ5E1X5kLQ8z3aM+bUFF8OzHOMke2JOXKbVppxbQgqKqSaXKVFAFR4Y8n1/hW14JtxDlSMER/eaGG4rJ+WrxK/phPVM+MrzTOCiEL+vuua6xreVZq4V8XS4Mvazqmnfg+FkhQcK5yTPno3T/WuOqwPHuMZbMbt+1le7C9L58S9W4h/x6L20/9DMwy3BIFVLTLX+PxVqk8vbTUgNI+cxHwzCbG5Q3G7HFpwAyMsqB9N/EALMYQugegZJRA8PS6qI8ITbwKQF26WRrFZmqqsVS1M8A3FAD5u5xG2A9jm5mnQMCgpEsS8ZkdWZuz0+uyRY09vVKWaWQmQInBwa4C7ONxxG/49eIt+MqMyCVwpiJVIfGwp87afS13WZOrmd9Z6y4LT3Adi2O2Mjs6N5M6oRcm8xgBwOXm9BoadCJ3LFgTFp6hoPLs3dWlhxh1Gx862ffv/Gvz2H9DpRuqIfJJqrpmMMC+Phwn7XI0An5c/0E6tI47oCqkuCVrTH1G8swyLiII/OX2509/+UatseqmyrEGbx97IGW7hHX89l4C5GBRbp4Y+XIKQ5K1uxlOxBh5aajlXhiqdSqoVG55RQQjEIf4/soP5JVq4tdo1IFm2C3BE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(366004)(396003)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(33656002)(7696005)(38070700009)(41300700001)(478600001)(83380400001)(26005)(66574015)(53546011)(76116006)(9686003)(5660300002)(8936002)(52536014)(66556008)(66476007)(64756008)(66946007)(66446008)(8676002)(110136005)(316002)(71200400001)(86362001)(82960400001)(38100700002)(122000001)(6506007)(55016003)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUFybU5wdnJYWFhmTlhHUUR1aVUvQWl4Y0FXVi9SRUplUjh5eHVnM3pjUUxz?=
 =?utf-8?B?d3RFYWtrZm5ZWVNGdnJrcGY4ZEZCOUdDQ0lUNnFMaTI5OWMzNCtuTFdSMmU2?=
 =?utf-8?B?dW9yQ1NwR0oxZW5HcjhoR29DQjFZM2tuOHlSS0wxQk5UN3lFR0sydnNEWVN0?=
 =?utf-8?B?V2dCNWZZSHN3dUxnMU53cnFzakhFNG5wRDR0VmN4ZVJ4bkhORzZlZjB5MHU1?=
 =?utf-8?B?OExMZTl3d2g4UUhuMlJGdWJ3aXlQQW5yS21kbHZ5cTNvV0NOaW1aWkNqRWpa?=
 =?utf-8?B?TVVYU2pCSFVHTTlaVnpxNXVDdWg5c29LbldxeHI1L1AxVlhwcld4STlCTks5?=
 =?utf-8?B?Q0w4bzI5K3lFRGIyVC9NNCtOY1crQit4Mm5telVLQzRZLzh0b09OUVVEdmN6?=
 =?utf-8?B?TmNMQ2J0NEN1Vzg3OWxWRURhL0M4TnJKaWVIa1JrZnVpY1h6SVE5cHd3RWFC?=
 =?utf-8?B?YUVGYThSN0tLeGo5UnhKQWFaVnpxREt1K3pTYUQyUVhLK09zcHBiZStTYWpX?=
 =?utf-8?B?MTdxaXFEUDRiTVRnNS9PUHVtclV3UHBjRUVGQlpWL2phd3Z5em5iUEJHdGlX?=
 =?utf-8?B?TkpwYlZjcFRHV3ZrQlRrcjFuWlBBWG5CbUh3ZzMxRENVd2lYMHhKdmZUT21t?=
 =?utf-8?B?Y1UyVWw0NXRid2t0emJFME5tMFYzK0NVQ0JCZHpUVWV5b3ptckpQSkhORWl4?=
 =?utf-8?B?NW1YdmxqUllFVTE3VUorT0ZSTDZ1S0prMXhrMGR6YkdmbThLdVR2bGlVVEps?=
 =?utf-8?B?Mkw0TWgwQWtOODEvK3RDOHRKc0I5c08xOEk2eFNITXpKdEtFay9CNXhEOW96?=
 =?utf-8?B?dzNjeGNWSFNRODJWTDZqeDhkbzNFSUZJaXRYK0VWU2FjSFcvMU1pditOUjZ2?=
 =?utf-8?B?ckR3MCtEdXhjU2VlQncxb1ZRMjFhbUwvbXEzdzFNb2RuV0FXWll0R0VMbkt1?=
 =?utf-8?B?Y3dtcnRpV3B3OWo5aWJMODdiU2pqbVlQK0E0amRxMk9lUmdIekJ3dUk4bk55?=
 =?utf-8?B?MHdmT3NZM0ExQzJOMy9WcmNEZStSMUluT0xOZ0l4NGwySFU0b3Nad3FOblZQ?=
 =?utf-8?B?bTU2c2liSm5qUEFUZ1ZrQXBhalNZdDVoVzBEVnVieU1ETEhRV0UrRDF3cENv?=
 =?utf-8?B?QkJ6V0JIMGU1SUdOTURiRm8rcGJsZVlwYWZlYklhNXRUdHN3VjUrM0h2VERO?=
 =?utf-8?B?RmVCUlJqVzBScFdjeFVzSVhOK0lHL09JWWFKcEtlQXE1VUorKzZxSEh3MVhM?=
 =?utf-8?B?M3lDZGVad2FNTjBqbmNVUklMYzFKdjZHZUs3NmVFSndYMVlLYXBiZ3pqVzBE?=
 =?utf-8?B?WTZjcklMVmFsQjg5YjJrSDEvblFnbHFFbW10QWRsTGdUME9uMmtlNTBsVUtI?=
 =?utf-8?B?eDh3QTZBUmR0MnBvRWpXcWU4UHRBWTBNUUJyajExUytZUU1La3FEQTJ1RXRs?=
 =?utf-8?B?Nm85d1NpdEMzMms4ZWFkaDFLeTRpejBVb3p2Y2wvQUkrQ2dlYTQwTTNBMHI5?=
 =?utf-8?B?OFA0NVFPRmVadkNpSEI3VXg0NWhuOE1TeUJGUFNMU3RackJ1Rnh4OUtoNURr?=
 =?utf-8?B?UHVaYW05K3AwaXIzZklkWXFZV1p3dzRXa3FLYTMvQnpKWHFwblp6UXFGWWdH?=
 =?utf-8?B?RWlHU0wyaDFOUFRQV3JybnpqZXJRSWVFVzFNaGphZ0RsK242VWhJdFdFRDJm?=
 =?utf-8?B?eXB4TVA1M3FKMEI1Vll1MjNqTXV6M0l0MDZDWG5VMGdyWWIrbHlEVGtIcWZ0?=
 =?utf-8?B?b3R0U3ROd21Ta1ZuT2dBVEdxa3l6TVk3YVlITlJ1Ukd0ay9mZ29rNEVkMHZv?=
 =?utf-8?B?NGVoLzVHSHpUMjRCdFFIeklqaDJFUkxUcWZRYlh5bDRGYVg2QjdoaTBHQm1R?=
 =?utf-8?B?VG11OHdPa09jWEx3amdFaUFhVXI3Z25ESklZc09QbjJhTURRUUhQTVBBQTNv?=
 =?utf-8?B?dmxheXl2QVJZQTlaenV0R2ZIY05Pb0VaMy8yaHRzL1duTHQzTUJSZWVLdXd0?=
 =?utf-8?B?ZG9GemMxSDN6QVA0QzNmWUN0VXFnZkREOTVXaVptZnBmVzFrN0VMQW1PeVZH?=
 =?utf-8?B?UU9xbVl2a1Rvc0l0d0daQ2ExVW1DcVhMUTc2Qm85NW4zNitKV3pOTFJyWXdy?=
 =?utf-8?Q?1nR55lFKlFGrrUEtbm8L1TcEf?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9088129e-6c6b-419c-cff3-08dc2d3b2f45
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 08:58:59.8684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cXzgkV1vP5jMUACy+IYbOZmlYglYyAwr2rAwjFEzAfayln1q4DbAN8ThjPek3NAJFy5PCF+8I19mD9DpVxA98w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6954
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogRnJpZGF5LCBGZWJydWFyeSA5LCAyMDI0IDg6MzggUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDUvNV0gZHJtL2k5
MTU6IEVuYWJsZSBmYXN0Ym9vdCBhY3Jvc3MgdGhlIGJvYXJkDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlcmUncyBu
b3RoaW5nIG1hZ2ljYWwgYWJvdXQgdmx2KyBwbGF0Zm9ybXMgdnMuIGZhc3Rib290Lg0KPiBJZiBp
dCB3b3JrcyBzb21ld2hlcmUgaXQgc2hvdWxkIHdvcmsgZXZlcnl3aGVyZSwgYXNzdW1pbmcgd2Un
dmUgbm90IG1pc3NlZCBhbnkgY3J1Y2lhbCBzdGF0ZSBjaGVja3MuIFRoYXQgc2VlbXMgdW5saWtl
bHkgb24NCj4gb2xkZXIgcGxhdGZvcm1zIHdpdGggbGVzcyBzdGF0ZSB0byBjaGVjayBhbnl3YXku
DQo+IA0KPiBKdXN0IGVuYWJsZSBmYXN0Ym9vdCBhY3Jvc3MgdGhlIGJvYXJkLCBhbmQgdGhlIHJl
bW92ZSB0aGUgcmVtbmFudHMgb2YgdGhlIG9wdGlvbmFsIHN0dWZmICh3ZSBhbHJlYWR5IHJlbW92
ZWQgdGhlIG1vZHBhcmFtIGZvcg0KPiBmYXN0Ym9vdCBhbnl3YXkpLg0KPg0KDQpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIyIC0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBp
bmRleCA2NmVlNjc0OWZkYWUuLjAwYWM2NWExNDAyOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTQ5MzcsMjAgKzQ5MzcsNiBA
QCBwaXBlX2NvbmZpZ19wbGxfbWlzbWF0Y2goYm9vbCBmYXN0c2V0LA0KPiAgCX0NCj4gIH0NCj4g
DQo+IC1zdGF0aWMgYm9vbCBmYXN0Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikgLXsNCj4gLQkvKiBFbmFibGUgZmFzdGJvb3QgYnkgZGVmYXVsdCBvbiBTa3ls
YWtlIGFuZCBuZXdlciAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkNCj4g
LQkJcmV0dXJuIHRydWU7DQo+IC0NCj4gLQkvKiBFbmFibGUgZmFzdGJvb3QgYnkgZGVmYXVsdCBv
biBWTFYgYW5kIENIViAqLw0KPiAtCWlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19D
SEVSUllWSUVXKGRldl9wcml2KSkNCj4gLQkJcmV0dXJuIHRydWU7DQo+IC0NCj4gLQkvKiBEaXNh
YmxlZCBieSBkZWZhdWx0IG9uIGFsbCBvdGhlcnMgKi8NCj4gLQlyZXR1cm4gZmFsc2U7DQo+IC19
DQo+IC0NCj4gIGJvb2wNCj4gIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLA0KPiAgCQkJICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsIEBAIC00OTU5LDE0ICs0OTQ1LDYgQEAgaW50
ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3VycmVudF9jb25maWcsDQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjdXJyZW50X2NvbmZpZy0+dWFwaS5jcnRjLT5kZXYpOw0KPiAgCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhwaXBlX2NvbmZpZy0+dWFwaS5jcnRjKTsNCj4g
IAlib29sIHJldCA9IHRydWU7DQo+IC0JYm9vbCBmaXh1cF9pbmhlcml0ZWQgPSBmYXN0c2V0ICYm
DQo+IC0JCWN1cnJlbnRfY29uZmlnLT5pbmhlcml0ZWQgJiYgIXBpcGVfY29uZmlnLT5pbmhlcml0
ZWQ7DQo+IC0NCj4gLQlpZiAoZml4dXBfaW5oZXJpdGVkICYmICFmYXN0Ym9vdF9lbmFibGVkKGRl
dl9wcml2KSkgew0KPiAtCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gLQkJCSAgICAi
aW5pdGlhbCBtb2Rlc2V0IGFuZCBmYXN0Ym9vdCBub3Qgc2V0XG4iKTsNCj4gLQkJcmV0ID0gZmFs
c2U7DQo+IC0JfQ0KPiANCj4gICNkZWZpbmUgUElQRV9DT05GX0NIRUNLX1gobmFtZSkgZG8geyBc
DQo+ICAJaWYgKGN1cnJlbnRfY29uZmlnLT5uYW1lICE9IHBpcGVfY29uZmlnLT5uYW1lKSB7IFwN
Cj4gLS0NCj4gMi40My4wDQoNCg==
