Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 703ED6C7E7E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 14:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F7F10EBEA;
	Fri, 24 Mar 2023 13:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC15310EBEA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 13:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679663447; x=1711199447;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ojZFLnySfFiaZ8gMgGCQHxzV2Gl5I0D5F7O8/GrU6TQ=;
 b=X4+bmjiAjib8yBQ46T3fUc5ILQB0B/3+4Kl08KGcs/LWh3/ZdEZ/fgWp
 KZPebszW3cy6E1gLTEhvhIEKM9LfJ0VtN07Bs+yA6y2URd7MVdsqemeQy
 VGhv35JGjuJG14CEkxymGnGLn0EViNtai//2NBbIwTiegELo5aaSl3fZ8
 cPm8Mh79m52pv4Gxr4bi67Jz7CvdGO5dLLDS5AKRR4CSx9FXkFO2M5qKt
 E3biBNzMr8HmY9sI/9o4Y6AnDDjW1nz8oDztI1CLrt9DisyeLsPnz2Wr0
 VvxpEGb6YZM9SsM/Ol/qMNWO8Airfi5dSOND7JEUcuHUmDR/feo1Aa4eA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="337276208"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="337276208"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 06:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="715221240"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="715221240"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 24 Mar 2023 06:10:46 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 06:10:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 06:10:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 06:10:46 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 06:10:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fLo5lc82V/qR4K0bKAPJSj8AHUigL/gWwjqk/s0O5MV586jpZbs7AfnH8LlWRzJuIPXJ/trDHE0JGeh7zonijL+1mZfZ2Ub4srkz8kEUBsiQwdQ2nq3p5UQtXuRi6OcprUZ4g5/l55Hw8u7fRdLwcV71v3USfr6Lp8GZAttJulUUjpd4cw8UoojdAkpB4+9lZZpwEfJvF0m6GqBxnwzseO11cbmC/EvoJlWh2mVCrB0AZYHvytSdCdnFCfCc3M8MCdjYv8xnLLTZKTalXwicd9AkeHXKJmNJ3CykYDG8N72AQ63sexBMd6Q6GJ/8+9bguoxQoYmSpI89k60c5oMEdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojZFLnySfFiaZ8gMgGCQHxzV2Gl5I0D5F7O8/GrU6TQ=;
 b=XEMcLmPjuIUQ+EGQyQIgAMQZJ4EyoE3WDVqz2QOgmhmeBF6acMtkQnC/BiqpIqObgr/JcYE6YJb10BALYBCst6FeQg0RD5efZnOs5ZQGdeuyda8/JOQ2oHBUSpcxPnNOvpanYj4t6O2n7teD4y5pv1v+BVkHkUVjGAPJZcMppdZDAahafPOGRN9bm7I5WYhUtc2tvrnxQhQ9ty6AfIaezTZk/yJUpyBPW/ObjX07RHdciKhcw/CnYgLW8sqQns97OPZS/erKT+D0vKoP0pEkbbjLTU1ikwh+Mc8kG68OOrk90YBic/MVPbCFeORWmBL3k0C6c2q1gdBefj8Gerh5MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 13:10:43 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 13:10:42 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/29] drm/i915/tc: Add TC PHY hook to get
 the PHY HPD live status
Thread-Index: AQHZXZK/MF6UbC/3bk29MdVrWZS+/68J6NVQ
Date: Fri, 24 Mar 2023 13:10:42 +0000
Message-ID: <MW4PR11MB7054BC68DF1BC22B2BD67CF3EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-9-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SN7PR11MB7466:EE_
x-ms-office365-filtering-correlation-id: a51eb0c6-9cd7-4d74-8b86-08db2c692c02
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U91q14fy6hpeb6yiu3AHg1HB1t2Mf8wfpnytwloT8KJHum32LcZS3+lVogbBodAFrex6SR9bKmTC1IvmWHqIp13yU+OUBnIWHx+VLoDnp+gWbr6muVzZccrPFXseNSHFsQupsKOJO68YTdybmJt+8EqQouIAH2fpysnQ1eweE0PnE5UQF6tVac4VzvhttdBjXzsbU4CXYARm3fjJpVpIUoSc+FGkyoB/fB4LNc9RRJVP4XI93hNf4zdLOf8bjtf41Md2Fef5tKDXQ/Gv6rfU4Bk/BHLyCpH3zJMn4rMLPVQa4ad+iHafRhFPdjAjunULOxUyUogJ1LEoE5M3GniZOW6madqSz2HL+nA+NjlR13uzwCVkoTYqszFQy3PVM8Vsgoruh9ZmqqZcsNmL3P1fVZoxAennk+l9NH2/aVQ2BmUjuX960hmcUDYES+ssHTMUvTzpf+o04omSWR6MaKkQiDmNmOwwBTxxsj1JDEkpev+wLuuVZLPdBXFr0B0hlRFab86l2RMBwLzJ+rdAHezIo63JvLhXWEs1PcEf/FOEwA8lTaOWRUCowTHydDgQvBX8wdTbUIbC7y4c7egA3dKK7xHl5S9SyC9E8b+tXiXmIv3v2COlsRQuUvfGJSYGn6q48GXO++aePgu4O+IwiuasFYy9AG8kHo4KXTAc6PAx/Yk/DJOOsNMjyzgTxe2iTVQx9+ytTi1SaVBlWOfgPy3HKQdjRUYdeWecnEVuGta3AyM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199018)(66446008)(8676002)(76116006)(66556008)(66476007)(52536014)(66946007)(110136005)(64756008)(82960400001)(5660300002)(316002)(41300700001)(9686003)(26005)(122000001)(8936002)(53546011)(6506007)(478600001)(186003)(7696005)(83380400001)(71200400001)(86362001)(33656002)(2906002)(38100700002)(55016003)(38070700005)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3NLS2dnZG1CY1MxdVo4OVJkUHRaZ0l1YS9iRTNXKzZST2J3cVQ4ZEpmaDNQ?=
 =?utf-8?B?UkNoODBUczZSVkU1eUpHMll6clRGK01QdEIzQTdHTTBJMjJMRHJ1ZUNuRm0z?=
 =?utf-8?B?Sjk2S2QxY0hiT0RmZDQ2MkZ1a0ZId1RJd0pPN3JsWURsSEwxOW8xaExYazM5?=
 =?utf-8?B?MUNHSUF5SlNzOTh5L0dlb09tZjFZRFU1cnEwdkV0WlFRVzFvYVRPcUZVNlVy?=
 =?utf-8?B?cm05KzRBckd6OU5BRVkzK1hYdjNJU2FBN3RHY3dVam13WC91UUdIOTRJRVp0?=
 =?utf-8?B?b3dtT2ZWa0ZvT2M2ZUl3U0J3cHpkUXBWTmY2L3RLU29kYUI5SjlBQ2lwR3dp?=
 =?utf-8?B?MEJiQndXS3NGUGUra2Y2aWoyRXYwcDhPQjB0czBTWmJDUnByZWZXVHVWZ05V?=
 =?utf-8?B?UWZSVnN5MWRiZVEvclh6cUV2UVhsZFdhWlh6THhOQnZxODByenZ5WUs1OHlP?=
 =?utf-8?B?TGo1dnBsNzlVS0sreUdGNS9tTHEycDhESEk1dHFESkFXT29IaTBjK203azd4?=
 =?utf-8?B?T2F2TlFteVBEcnhseVdXSEtvbUZjTENJSTI3ZEoyU2hyTk1MdndwS05oa2Z5?=
 =?utf-8?B?ZmhtdTZuTWR6azhjeUg3Q3JCR0R1MXNFdzhXemFRa3JXYjlWcktONkRLdHdN?=
 =?utf-8?B?QjhRTWY3cU1CdFVNWWlvZVlyeVJ3bGtzdmtzT0kzWVZycWlJSVFZam5lNDdT?=
 =?utf-8?B?QlZYTmNUblBWVzM0SG1lOStuQ0JERFZOTkNkV1U5ck5SdGQ2WHA2RGs1UWhi?=
 =?utf-8?B?d2tJR3B3Z1dxRmhwMmk1VVNYeXVzN3lwQk1keUVPUmpETkdINU0zeEkrVHdi?=
 =?utf-8?B?ZWlTM01iYlZ2c1Y2a0MrQktMVWVtbnErUWMvaFo5MmVaNWNPU0xPUlorMjBB?=
 =?utf-8?B?TW94TWN4NFdwKzlkQ2U1WlpSb0dhRUxVTVBWUW9VWVdJL05FbGIyVm1pS1Rs?=
 =?utf-8?B?Mi9Zbkc3VkVJQ0FvbEp2ZDRodFV4WC80dFg5bTdkRnhaMlJoaG04TE5nOTF3?=
 =?utf-8?B?VC9aNnJZUjNJZjNSOElVYk9aZ2szMkd4d284bHNlK0VHelRRdXlralk3ajYy?=
 =?utf-8?B?OGhWSC8yUE9NSUdMRit5bVVraVIyTVdxeXdkWVZITDl3OC9pT2l1ZGR5Wk5J?=
 =?utf-8?B?UzBVcTc3MFZMS1Y4dHhFWnZOekpFaVQ1b2lWS1pyaFloWjVKTHRaM3RoSUxR?=
 =?utf-8?B?L1dSeklnUVB1UURORDlmOVJPbmNCYkl6U3JEdXhLa2ROYW9xSkNOdFUwa0t1?=
 =?utf-8?B?VFRKYXF0NkJoWXo0OWJjc25iMmVBNzRENDJUZ0NzR1RyTHpRV01jblp2bzB1?=
 =?utf-8?B?alFINWd2djFSWm1xWWRDV2R5U1M0SHVNYkZkQXNiSEx6Tmw5UDBhbnJ4RW5Z?=
 =?utf-8?B?VG8rcjZTWjNLUllKYUxqY1EveFRubEVxOEY2QjduZUZkN2IrZDJ3WmIyTG8v?=
 =?utf-8?B?MEp0aGdlaGVaeWlZQVNtTFN3NzZHYVVtNGs3SXYxYVB1OXBIY0ovalFZcXI4?=
 =?utf-8?B?RUpaS2xxc2twWTl0OG94L0xPS05pZ3RZcFhkTzBKZjRzaGNtTTh4VTBON1Nk?=
 =?utf-8?B?SGhmVHhLdTNPa3NMYndLdXJ4eW85Q0k2ZHdYQjN2OVZucDdrbVMvMS9BdGFn?=
 =?utf-8?B?NW9uOWN2UHJvanJDckVYMGt4MnRmbXUwZmFIWUVrdGZIT1NGenBRQTFpZWY2?=
 =?utf-8?B?cW9zY0dXbUFCQVFyNmFicXRuT2dZQ29HR3Z5UEF5eTl0dDZpdFRmSWRLSDRJ?=
 =?utf-8?B?QWIydUdUT2tJdDZPYi9lbFJzeE9LeFdKWDgyaWl6d2djUHZSSGdnb0txclg4?=
 =?utf-8?B?OXlGenlRUmZsWXY0cEhSYUxoWW55OEc3eW05N0dSTWZCZXdua0laSWNqU1Rl?=
 =?utf-8?B?UHFLK013bVM0aitReTV5Q1RGUW14blB2aE1mSFY3YkkwNXk5SExMUWlNZ0Jv?=
 =?utf-8?B?N2VScjZHT28vb2xCc1lzTHlFSmJ4bjFIWUhNYzlvMXY4U0JJRm1zc2xsUHlU?=
 =?utf-8?B?MWZIZ2F4NnNwZ3puZWNIR1k5ODQvZ2RLTUREN0ZONXdjWndnbDg2QTNhRmpI?=
 =?utf-8?B?RzRHTmlsTksrN0NzSUZSY0djWFk3SWY5bTJoNGNkRzNDNE9lSk9mdGRGVk00?=
 =?utf-8?Q?Fj6LW1PEANpDfEkf1/6oMZ2mY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a51eb0c6-9cd7-4d74-8b86-08db2c692c02
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 13:10:42.4140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RsHU6Lu8q/Hhldl4cLjFybY97zOCrJNF4KbsVdITaN8iDMxtJRXhQfV5c6etmvEQjuxuOkYGBeyOoNVYAwz53Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/29] drm/i915/tc: Add TC PHY hook to get
 the PHY HPD live status
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
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDgvMjldIGRybS9pOTE1L3RjOiBBZGQgVEMgUEhZIGhvb2sgdG8gZ2V0IHRoZSBQSFkNCj4gSFBE
IGxpdmUgc3RhdHVzDQo+IA0KPiBBZGQgYSB0YWJsZSBvZiBUQyBQSFkgaG9va3Mgd2hpY2ggY2Fu
IGJlIHVzZWQgdG8gY2FsbCBwbGF0Zm9ybSBzcGVjaWZpYyBUQyBQSFkNCj4gaGFuZGxlcnMsIHJl
cGxhY2luZyB0aGUgY29ycmVzcG9uZGluZyBpZiBsYWRkZXJzLg0KPiANCj4gQWRkIHRoZSBob29r
IHRvIHJldHJpZXZlIHRoZSBQSFkncyBIUEQgbGl2ZSBzdGF0dXMuIE1vdmUgdGhlIGNvbW1vbiBw
YXJ0IGZpeGluZw0KPiB1cCB0aGUgVkJUIGxlZ2FjeSBwb3J0IGZsYWcgdG8gdGhlIGdlbmVyaWMg
aGVscGVyLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDQw
ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRp
b25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gaW5kZXggMmEwNGM1ZWE0NGFkZS4uYTA1MDhlMjE3MzAwNyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMjIsOCAr
MjIsMTcgQEAgZW51bSB0Y19wb3J0X21vZGUgew0KPiAgCVRDX1BPUlRfTEVHQUNZLA0KPiAgfTsN
Cj4gDQo+ICtzdHJ1Y3QgaW50ZWxfdGNfcG9ydDsNCj4gKw0KPiArc3RydWN0IGludGVsX3RjX3Bo
eV9vcHMgew0KPiArCXUzMiAoKmhwZF9saXZlX3N0YXR1cykoc3RydWN0IGludGVsX3RjX3BvcnQg
KnRjKTsgfTsNCj4gKw0KPiAgc3RydWN0IGludGVsX3RjX3BvcnQgew0KPiAgCXN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0Ow0KPiArDQo+ICsJY29uc3Qgc3RydWN0IGludGVsX3Rj
X3BoeV9vcHMgKnBoeV9vcHM7DQo+ICsNCj4gIAlzdHJ1Y3QgbXV0ZXggbG9jazsJLyogcHJvdGVj
dHMgdGhlIFR5cGVDIHBvcnQgbW9kZSAqLw0KPiAgCWludGVsX3dha2VyZWZfdCBsb2NrX3dha2Vy
ZWY7DQo+ICAJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBsb2NrX3Bvd2VyX2RvbWFp
bjsgQEAgLTMyOSwxMA0KPiArMzM4LDYgQEAgc3RhdGljIHUzMiBpY2xfdGNfcGh5X2hwZF9saXZl
X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAJaWYgKGludGVsX2RlX3JlYWQo
aTkxNSwgU0RFSVNSKSAmIGlzcl9iaXQpDQo+ICAJCW1hc2sgfD0gQklUKFRDX1BPUlRfTEVHQUNZ
KTsNCj4gDQo+IC0JLyogVGhlIHNpbmsgY2FuIGJlIGNvbm5lY3RlZCBvbmx5IGluIGEgc2luZ2xl
IG1vZGUuICovDQo+IC0JaWYgKCFkcm1fV0FSTl9PTl9PTkNFKCZpOTE1LT5kcm0sIGh3ZWlnaHQz
MihtYXNrKSA+IDEpKQ0KPiAtCQl0Y19wb3J0X2ZpeHVwX2xlZ2FjeV9mbGFnKHRjLCBtYXNrKTsN
Cj4gLQ0KPiAgCXJldHVybiBtYXNrOw0KPiAgfQ0KPiANCj4gQEAgLTQ5NSw2ICs1MDAsMTAgQEAg
c3RhdGljIHZvaWQgaWNsX3RjX3BoeV9kaXNjb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+
ICp0YykNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF90Y19w
aHlfb3BzIGljbF90Y19waHlfb3BzID0gew0KPiArCS5ocGRfbGl2ZV9zdGF0dXMgPSBpY2xfdGNf
cGh5X2hwZF9saXZlX3N0YXR1cywgfTsNCj4gKw0KPiAgLyoqDQo+ICAgKiBBRExQIFRDIFBIWSBo
YW5kbGVycw0KPiAgICogLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gQEAgLTUyMSwxMCArNTMwLDYg
QEAgc3RhdGljIHUzMiBhZGxwX3RjX3BoeV9ocGRfbGl2ZV9zdGF0dXMoc3RydWN0DQo+IGludGVs
X3RjX3BvcnQgKnRjKQ0KPiAgCWlmIChpbnRlbF9kZV9yZWFkKGk5MTUsIFNERUlTUikgJiBpc3Jf
Yml0KQ0KPiAgCQltYXNrIHw9IEJJVChUQ19QT1JUX0xFR0FDWSk7DQo+IA0KPiAtCS8qIFRoZSBz
aW5rIGNhbiBiZSBjb25uZWN0ZWQgb25seSBpbiBhIHNpbmdsZSBtb2RlLiAqLw0KPiAtCWlmICgh
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgaHdlaWdodDMyKG1hc2spID4gMSkpDQo+IC0JCXRjX3Bv
cnRfZml4dXBfbGVnYWN5X2ZsYWcodGMsIG1hc2spOw0KPiAtDQo+ICAJcmV0dXJuIG1hc2s7DQo+
ICB9DQo+IA0KPiBAQCAtNTc0LDYgKzU3OSwxMCBAQCBzdGF0aWMgYm9vbCBhZGxwX3RjX3BoeV9p
c19vd25lZChzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiAqdGMpDQo+ICAJcmV0dXJuIHZhbCAmIERE
SV9CVUZfQ1RMX1RDX1BIWV9PV05FUlNISVA7ICB9DQo+IA0KPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF90Y19waHlfb3BzIGFkbHBfdGNfcGh5X29wcyA9IHsNCj4gKwkuaHBkX2xpdmVfc3Rh
dHVzID0gYWRscF90Y19waHlfaHBkX2xpdmVfc3RhdHVzLCB9Ow0KPiArDQo+ICAvKioNCj4gICAq
IEdlbmVyaWMgVEMgUEhZIGhhbmRsZXJzDQo+ICAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiBAQCAtNTgxLDExICs1OTAsMTUgQEAgc3RhdGljIGJvb2wgYWRscF90Y19waHlfaXNfb3duZWQo
c3RydWN0DQo+IGludGVsX3RjX3BvcnQgKnRjKSAgc3RhdGljIHUzMiB0Y19waHlfaHBkX2xpdmVf
c3RhdHVzKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiArCXUzMiBtYXNrOw0KPiANCj4gLQlp
ZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpDQo+IC0JCXJldHVybiBhZGxwX3RjX3BoeV9ocGRfbGl2
ZV9zdGF0dXModGMpOw0KPiArCW1hc2sgPSB0Yy0+cGh5X29wcy0+aHBkX2xpdmVfc3RhdHVzKHRj
KTsNCj4gKw0KPiArCS8qIFRoZSBzaW5rIGNhbiBiZSBjb25uZWN0ZWQgb25seSBpbiBhIHNpbmds
ZSBtb2RlLiAqLw0KPiArCWlmICghZHJtX1dBUk5fT05fT05DRSgmaTkxNS0+ZHJtLCBod2VpZ2h0
MzIobWFzaykgPiAxKSkNCj4gKwkJdGNfcG9ydF9maXh1cF9sZWdhY3lfZmxhZyh0YywgbWFzayk7
DQo+IA0KPiAtCXJldHVybiBpY2xfdGNfcGh5X2hwZF9saXZlX3N0YXR1cyh0Yyk7DQo+ICsJcmV0
dXJuIG1hc2s7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wgdGNfcGh5X2lzX3JlYWR5KHN0cnVj
dCBpbnRlbF90Y19wb3J0ICp0YykgQEAgLTExOTcsNiArMTIxMCwxMSBAQA0KPiBpbnQgaW50ZWxf
dGNfcG9ydF9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LCBib29sIGlz
X2xlZ2FjeSkNCj4gIAlkaWdfcG9ydC0+dGMgPSB0YzsNCj4gIAl0Yy0+ZGlnX3BvcnQgPSBkaWdf
cG9ydDsNCj4gDQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEzKQ0KPiArCQl0Yy0+cGh5
X29wcyA9ICZhZGxwX3RjX3BoeV9vcHM7DQo+ICsJZWxzZQ0KPiArCQl0Yy0+cGh5X29wcyA9ICZp
Y2xfdGNfcGh5X29wczsNCj4gKw0KPiAgCXNucHJpbnRmKHRjLT5wb3J0X25hbWUsIHNpemVvZih0
Yy0+cG9ydF9uYW1lKSwNCj4gIAkJICIlYy9UQyMlZCIsIHBvcnRfbmFtZShwb3J0KSwgdGNfcG9y
dCArIDEpOw0KPiANCj4gLS0NCj4gMi4zNy4xDQoNCg==
