Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8B655BB35
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 18:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F287710E424;
	Mon, 27 Jun 2022 16:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD7F10E590
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 16:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656349039; x=1687885039;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=GwISaJcQ9sFGlJO2XBl9t/yDXRJyY/lxsYJ7vR+4BuI=;
 b=NPYhrg9gRCJXdrnOozE9VS64uh84oh+IeN1DQLIGXFzc4z/exLa8Vff6
 zMKN7s2PvaE8xM2/jvpm26iLr4S2kS1OpwBMq6Mf8Io+u/NOpDvSeT6nx
 moEhjMcDemEWuAMXvU1t+Oz+p6DJOC6V9ddZUHhL9UZUHQIsuA3/q1nHQ
 DdbipQeRciMH+kKlSv0Vff1OrjF2nin2M/gYiPufPIBRjChE2MHqjmfhQ
 A1fTsSoJ/sDBQaNI7nOje+0h3CFk0wVf2hP2jdFrChCw3N5Qeh/rwOKpn
 uOqO0sKYVdzXqYQ6IDAJ2yMger30BiEMEjaI+nPHK7+zyDgSW7f4hFOiL Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="281541924"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; 
 d="scan'208,217";a="281541924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:56:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; 
 d="scan'208,217";a="616855444"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2022 09:56:52 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 27 Jun 2022 09:56:51 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 27 Jun 2022 09:56:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 27 Jun 2022 09:56:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 27 Jun 2022 09:56:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBR3mF5CkWI4VP407xPlw5dsppuUkcdboPbnb9cMCMY2A7Kvj68EuHTRkQgZIjJePSZGP+qrCn4B171XoO4jDHJ4Gcyp9WOVb5teyMsTZyx5iEWXDZRnIFACfIl/qUItBxK9Obn7ey10BapPnCnfIJ7ZApgHqnFx91t1TXKoOm2E+yCSM8SHzrMNUXxWsdeoh+LvNMZKITqS2dILV8lfIZ9mUW2Fbr02ihLg2klUx9XyW/Qd6m20NvmwoZY0EZxHsGRYaWoJJZKBD5mH0akaEOG95nMnRioPoqBoQx/UazSGzo/zwy0c7+rwdjma0rh0ayMmcwKINgO1cmsym3/cMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GwISaJcQ9sFGlJO2XBl9t/yDXRJyY/lxsYJ7vR+4BuI=;
 b=H1cQZI3lBKbzf3hWt+sD0H1eIrv9eTP73jE08wIcPIK47md0mOcmbaQ97GZgrhTPoZ3XBYKfdSSwzP6FXXTfXmwKIrHiKTCEN92RGuTRSgzD0Kibz/HgwpJeeFkYY7jd6v2NL6F9f4ay4fqu12tdWws14xKemKZQkQfUR62yr2DjYhveTEkXACerXv5O93aaWb30aq5pmY1PDg/nSiJG4CEy1avYYKaKoch1ycyNyOpl5Hk6J617QmolI467yki0ZYg8N8bZwWPTfZCDO7KRrBDVztaIs3E+1ZXEKz5sJgCVPNMqYEzIuzZ+MGaXMe3hLaa+OTvaXD1cZabZ/gPHcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BL0PR11MB3090.namprd11.prod.outlook.com (2603:10b6:208:74::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.17; Mon, 27 Jun 2022 16:56:47 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%6]) with mapi id 15.20.5373.018; Mon, 27 Jun 2022
 16:56:47 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvZ3VjOiBEb24ndCB1cGRhdGUgZW5naW5lIGJ1c3luZXNzIHN0YXRzIHRv?=
 =?utf-8?Q?o_frequently?=
Thread-Index: AQHYiiQhINZd620ek0irSATlTZDbu61jea2A
Date: Mon, 27 Jun 2022 16:56:47 +0000
Message-ID: <ca37244529a506b6178bcc759f25a4593e3b2f52.camel@intel.com>
References: <20220623023157.211650-1-alan.previn.teres.alexis@intel.com>
 <165633405957.11794.7627156763849171332@emeril.freedesktop.org>
In-Reply-To: <165633405957.11794.7627156763849171332@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5779093-096e-4c41-9142-08da585e05b8
x-ms-traffictypediagnostic: BL0PR11MB3090:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VUOydUxiyWTWr/7vdvNeo8R0v5u4af9CpS32qEcCInzPkGuFfvdr8dZaKhSdFZHEcIakW7mP8gJn4hiHGVgjGLbwfzTu10a1tkDl152wg3KdzuOgxjsz58J0l+0S077Hn2cWD43EGYdRHEWA4xiWG/1Ll+OoIRgb9IpmOciAbd6pJz0dcoMSw9cKnS4c8bjyZL337OqUkHH3dWEd3VOcDPbQEmqe8jE6ywhO0K831TSV17/YRuViQtrgwO3fbs8qfNeTdpidYOxjQpGtx+QNQFsNET0e7uuUo+6DnzAP9Q+ddoW6X7k1XyYeSqm+GTO19MQHKkwFqJc+9e+kgKgLv5ujpoc99O4kOywvaMo2LMQcHdjpSmUED/3pBMGyOfXH/BrarJbc9Xp/KnUQ7cFjReMF9GyM8Z+f+xmvTsBs3TqHn+WvrKkiYhH4jw6y3czqsiytPVoPGOuRud+PcJibjWYs4J2Ow12QR4eeAy1fDpGfNecCRiNkMH8O60YESc5kKEw493uZldWJp19jnP1ZgMtqvQIJkydEsWr2v//daMUqCmLzekNrwI2048Khezij/1A2YUUALBbWFQ1AXyOaVxw3+nf6gr23TeRYzQXMZTlRO8T0Oykr9ku5rRtWeMmbaA6NT8PD+Fg7qS/Ia/0cEd2v+/hU2RQxPKnlpT76+GZzQKtTYvWNJ3e5iGeUU/AKYBZmcGbF9goWK9CuGaIXX65EWT+Z1jcosSBaCgcklgKXn2eeRI8/pO8TmmKCNPlSvyjIXWpOBFr96nenE2BEuHx7GPsNUpU6D36wUCCt8bKnIeHRzkPlAVyhnWYuDXgjPiy8B9XyFGS15bYXScHJ1MXy0zx3ZqbpCMmizKST5e4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(376002)(136003)(39860400002)(66556008)(66946007)(66476007)(5660300002)(86362001)(2616005)(76116006)(66446008)(186003)(91956017)(38100700002)(8936002)(83380400001)(64756008)(122000001)(4744005)(41300700001)(6506007)(36756003)(40265005)(6512007)(21615005)(38070700005)(6486002)(6916009)(15650500001)(966005)(82960400001)(478600001)(166002)(26005)(2906002)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2JtOUloZnVUbHE5TzEzRnE4UWNSSlBXQXVHWFNtRVIvSmNGUWIyTXIxbS9y?=
 =?utf-8?B?V3IvaGZOaDhYakF6ZFRNbFB0a3dEckhkZEgrWFhsRE1vZW5FYVhzL0kwTkRL?=
 =?utf-8?B?VDNPaEY4QjlIMjNCNVpPT1BGdFJ2aHpkS0F2OS8ySjFBaXlmYmJDT2lmL2dR?=
 =?utf-8?B?TThDVmRuYlNTbk1VcEN4KytMa0VJcmhCb1NxUlJVU0tQYTJ4TU9zRTVleDVD?=
 =?utf-8?B?NjVaYnArSXBEOGlNWml5UnZRdjJpSFRHRVNJTHN1WDVKRmdudVJRT1gvQzdl?=
 =?utf-8?B?RXRYVUlUWDJJa25mOVFqMTN5N1JPaGljeWtJWHo5Uy94ZVNHSlhweEY0KzdV?=
 =?utf-8?B?WWdVQXJIejJXTElhWXovYlozLzdyK1FCWlBETzJ0QkorVjNlNzZRQUxIS25C?=
 =?utf-8?B?TVlYNjdueTZJTHQ1MVRqLzNBRjJlWTZpaHJEVWRLMngrMUp1c3RYVGp2bklj?=
 =?utf-8?B?VFJUTzhWK3hXc2QyVW02eXU2RXpBVU8yUUgyQ3RtejJhRkZZb0dVSkhvRFo0?=
 =?utf-8?B?dDZhWStzRHhEKzdTVkE3N2cvRXE0bDZMU3ExRGpzUlZWSTNiWWRYTkdjeFNY?=
 =?utf-8?B?WGxyRDNmRUZibFZhL2t6TGF4WkFRMHFVUkkwZTZDRE9pbnB3UG5IaWxQbXNF?=
 =?utf-8?B?UDdsQmNhdE5lcWgvNGZmUkQ5ellSK3hQTFNvMU1GZitxK2szdFpzd0UveU1N?=
 =?utf-8?B?dEJqeE9ZK1JnbWs2bGN0aS9QSEdPRTh4K2RqbTlVUmQrOEdXYlVWeFMzaWts?=
 =?utf-8?B?ZUt4QkdmTEpvTnJUZlVneEw1Nkg0aHZ5cmRPbm5pSktZWWhaL0N1Y0Vha2RP?=
 =?utf-8?B?aTdVQVVaNmEwRnFaWnV1Y2R6TTJSRjVCc1RiS2VuU2k4bUN5SUlIZC82cU52?=
 =?utf-8?B?TjZCNnF3Si8zTXZ6bzdVSjJySTA1ZWhiVldQMEhIanc2bU4rWURjMHpZellr?=
 =?utf-8?B?VU9zMDhPajlKTkRTbUpqNVFIbUNidlBiZjN0N21XSkFJdzlyamFaOURPSXZX?=
 =?utf-8?B?VjF1NHY3Q1d6bGVvNDI5OS94YWVtYTIwcnJ5bERhVXJ5WEYwOUZOZGJadGlS?=
 =?utf-8?B?V3NDTWM4eVBCWjFlTEpYc01oU0E3YTlNVnBDU0thRnBNTXdoMjlrVzRpSXV0?=
 =?utf-8?B?dnQ2RzNZWDdiQ3lXV3NxRVVNYXNBYnVLY0o0eEZlNmxwNVBsNmNWQnRvb3RS?=
 =?utf-8?B?Mmg5L0ljQjdOTHF1aTh4L25aYmFHUEowOVlseHdNWlpMNmlWL2QzbUNHSWVj?=
 =?utf-8?B?czdmenNPVlFyTVc0SS9VOGtaR0tTM2paUHpyY3VrVkRIRzg1VzdUeEdJZy9t?=
 =?utf-8?B?L3JYc1YreThtajZiRStVcEhVbm8vSHZHbzd6OTNPUmc3V1o1ajltM1kyVk1i?=
 =?utf-8?B?V0RuQ1d0aFRhQTloVysrQU9tVTRocExVcVZSbHIraElhNnRzQmRzamxxd2E5?=
 =?utf-8?B?NWpLUmQ1VEhMTElubWY0ckRaVUpPVnpTc2RCd1ZtdlJkUkJPNlkxL2poWHBW?=
 =?utf-8?B?THIrK3FFSnEvVGdTNUNONnVUMzBrTUNmeW96NDA5OEZyalNQQlpFNkdaK3I0?=
 =?utf-8?B?a09IVjFsY0RNa3lqZTJWTHBMMFRvUWFSeEJ1dkJjRW1Fb2Zac1IvWEdxTk9k?=
 =?utf-8?B?WFpQRFFETldjNFlKamd3Zk43dWdGSGk3NUl3cElwMnZOZHBVbG93RmpCM0d2?=
 =?utf-8?B?TmhvUG1Ka2lVVUNiQ0wxWEg1cGx6dlZKMVA1ZmVaWFI3SlFXUkhKellZdDli?=
 =?utf-8?B?aml1QzJ1N3BDM3pWU0xWS3lYTitJMVQ0aHNYRXkvRmUrTDdOUWVsRmhkUkE2?=
 =?utf-8?B?aWpPZWt4R1RDUWxNQjhzeEJJTEdoSHVaWFMxTmVvMlR3Yy94UGw3bkJEUk10?=
 =?utf-8?B?Um9WM2hYbG5DejA3WlBDaEF6dGd1UHBhdDVNQmRWRWY0eUpxL05rZmlSbnZr?=
 =?utf-8?B?a2lxVVB4azhiRWQrdkxKTU0xOXZDaklYb09vWm9sU3RVV2tKMDF4Wk1qUFFX?=
 =?utf-8?B?OXFsOW1PY05FaDNBRE1TVThva0s4VFBsMkdYbDJhckRXalJvQkNDNWUwM1po?=
 =?utf-8?B?RU1PQUNqRm9meDd2UnBnRnp0VmhZREFOblA4amhiTG95Rnc2UzI5OWdpNlZt?=
 =?utf-8?B?M3NXb2cwdVRWZUR6L0dWTmZlRWdzbUszbisyR2NiZ25uRWxUNGtuUmFKVDZt?=
 =?utf-8?Q?XAwkpDdk8QGKl/GNC1S2nng=3D?=
Content-Type: multipart/alternative;
 boundary="_000_ca37244529a506b6178bcc759f25a4593e3b2f52camelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5779093-096e-4c41-9142-08da585e05b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2022 16:56:47.2186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FjX76GXsgl5EQj3JZ+VjDnQoakFjrrDzMKrj9cWWDo/Hba5pRkKH96XJLcb7EcQHtP5NLLEdaIc7gIK4HiX7s6pvQ0PJ4yFrXHmHaaYtOTn46ozQpfaauxXeL6mEnSX4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Don=27t_update_engine_busyness_stats_too_frequentl?=
 =?utf-8?q?y?=
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

--_000_ca37244529a506b6178bcc759f25a4593e3b2f52camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V1JUIHBvc3NpYmxlIG5ldyBpc3N1ZXMgYmVsb3csIHRoZSBwYXRjaGVzIGkgbWFkZSBkb2VzIG5v
dCBpbXBhY3QgYW55IGRpc3BsYXkgb3IgZXZlbiBleGVjdXRpb24gb3BlcmF0aW9uLg0KVW5mb3J0
dW5hdGVseSwgaSBjYW50IHNlZW0gdG8gYWNjZXNzIHRoZSAicG9zc2libGUgcmVncmVzc2lvbiIg
ZmFpbHVyZSBiZWxvdy4gQWRkaXRpb25hbGx5LCBHdUMgaXMgbm90IHN1cHBvcnRlZCBvbiBTS0wu
DQp0aHVzIHdlIGNhbiBzYWZlbHkgaWdub3JlIHRoZXNlLg0KDQoNCk9uIE1vbiwgMjAyMi0wNi0y
NyBhdCAxMjo0NyArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KUGF0Y2ggRGV0YWlscw0KU2VyaWVz
OiBkcm0vaTkxNS9ndWM6IERvbid0IHVwZGF0ZSBlbmdpbmUgYnVzeW5lc3Mgc3RhdHMgdG9vIGZy
ZXF1ZW50bHkNClVSTDogICAgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy8xMDU1MjUvDQpTdGF0ZTogIGZhaWx1cmUNCkRldGFpbHM6DQoNCi4uLg0KLi4uDQpQb3NzaWJs
ZSBuZXcgaXNzdWVzDQoNCkhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2
ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEwNTUyNXYxX2Z1bGw6DQoNCklHVCBjaGFu
Z2VzDQpQb3NzaWJsZSByZWdyZXNzaW9ucw0KDQogICogICBpZ3RAa21zX2N1cnNvcl9sZWdhY3lA
ZmxpcC12cy1jdXJzb3JAdmFyeWluZy1zaXplOg0KICAgICAqICAgc2hhcmQtc2tsOiBOT1RSVU4g
LT4gRkFJTDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMDU1MjV2MS9zaGFyZC1za2w3L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlwLXZzLWN1cnNv
ckB2YXJ5aW5nLXNpemUuaHRtbD4gKzMgc2ltaWxhciBpc3N1ZXMNCg0KU3VwcHJlc3NlZA0KDQpU
aGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMs
IG9yIHN0YXR1c2VzLg0KVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4NCg0K
ICAqICAge2lndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3Itb2Zmc2NyZWVuQHBpcGUtZC1oZG1pLWEt
MS0zMngxMH06DQogICAgICogICB7c2hhcmQtZGcxfTogTk9UUlVOIC0+IFNLSVA8aHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA1NTI1djEvc2hhcmQt
ZGcxLTE1L2lndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3Itb2Zmc2NyZWVuQHBpcGUtZC1oZG1pLWEt
MS0zMngxMC5odG1sPiArMTUgc2ltaWxhciBpc3N1ZXMNCg0K

--_000_ca37244529a506b6178bcc759f25a4593e3b2f52camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <B142F764E21A9D41B7017753E5D7A150@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiIGRpcj0ibHRyIj4NCjxo
ZWFkPg0KPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7
IGNoYXJzZXQ9dXRmLTgiPg0KPHRpdGxlPlByb2plY3QgTGlzdCAtIFBhdGNod29yazwvdGl0bGU+
DQo8c3R5bGUgaWQ9ImNzcy10YWJsZS1zZWxlY3QiIHR5cGU9InRleHQvY3NzIj4NCiAgIHRkIHsg
cGFkZGluZzogMnB0OyB9DQogIDwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBzdHlsZT0idGV4dC1h
bGlnbjpsZWZ0OyBkaXJlY3Rpb246bHRyOyI+DQo8ZGl2PldSVCBwb3NzaWJsZSBuZXcgaXNzdWVz
IGJlbG93LCB0aGUgcGF0Y2hlcyBpIG1hZGUgZG9lcyBub3QgaW1wYWN0IGFueSBkaXNwbGF5IG9y
IGV2ZW4gZXhlY3V0aW9uIG9wZXJhdGlvbi48L2Rpdj4NCjxkaXY+VW5mb3J0dW5hdGVseSwgaSBj
YW50IHNlZW0gdG8gYWNjZXNzIHRoZSAmcXVvdDtwb3NzaWJsZSByZWdyZXNzaW9uJnF1b3Q7IGZh
aWx1cmUgYmVsb3cuIEFkZGl0aW9uYWxseSwgR3VDIGlzIG5vdCBzdXBwb3J0ZWQgb24gU0tMLjwv
ZGl2Pg0KPGRpdj50aHVzIHdlIGNhbiBzYWZlbHkgaWdub3JlIHRoZXNlLjwvZGl2Pg0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PjwvZGl2Pg0KPGRpdj5PbiBNb24s
IDIwMjItMDYtMjcgYXQgMTI6NDcgKzAwMDAsIFBhdGNod29yayB3cm90ZTo8L2Rpdj4NCjxibG9j
a3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDsgYm9yZGVyLWxlZnQ6
MnB4ICM3MjlmY2Ygc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+DQo8Yj5QYXRjaCBEZXRhaWxzPC9i
Pg0KPHRhYmxlPg0KPHRib2R5Pg0KPHRyPg0KPHRkPjxiPlNlcmllczo8L2I+PC90ZD4NCjx0ZD5k
cm0vaTkxNS9ndWM6IERvbid0IHVwZGF0ZSBlbmdpbmUgYnVzeW5lc3Mgc3RhdHMgdG9vIGZyZXF1
ZW50bHk8L3RkPg0KPC90cj4NCjx0cj4NCjx0ZD48Yj5VUkw6PC9iPjwvdGQ+DQo8dGQ+PGEgaHJl
Zj0iaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDU1MjUvIj5odHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEwNTUyNS88L2E+PC90ZD4NCjwv
dHI+DQo8dHI+DQo8dGQ+PGI+U3RhdGU6PC9iPjwvdGQ+DQo8dGQ+ZmFpbHVyZTwvdGQ+DQo8L3Ry
Pg0KPHRyPg0KPHRkPjxiPkRldGFpbHM6PGJyPg0KPGJyPg0KPC9iPjwvdGQ+DQo8dGQ+PC90ZD4N
CjwvdHI+DQo8L3Rib2R5Pg0KPC90YWJsZT4NCjwvYmxvY2txdW90ZT4NCjxkaXY+Li4uPC9kaXY+
DQo8ZGl2Pi4uLjxicj4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5bGU9Im1h
cmdpbjowIDAgMCAuOGV4OyBib3JkZXItbGVmdDoycHggIzcyOWZjZiBzb2xpZDtwYWRkaW5nLWxl
ZnQ6MWV4Ij4NCjxoMT5Qb3NzaWJsZSBuZXcgaXNzdWVzPGJyPg0KPC9oMT4NCjxwPkhlcmUgYXJl
IHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEwNTUyNXYxX2Z1bGw6PC9wPg0KPGgzPklHVCBjaGFuZ2VzPC9oMz4NCjxoND5Qb3Nz
aWJsZSByZWdyZXNzaW9uczwvaDQ+DQo8dWw+DQo8bGk+aWd0QGttc19jdXJzb3JfbGVnYWN5QGZs
aXAtdnMtY3Vyc29yQHZhcnlpbmctc2l6ZToNCjx1bD4NCjxsaT5zaGFyZC1za2w6IE5PVFJVTiAt
Jmd0OyA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMDU1MjV2MS9zaGFyZC1za2w3L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlwLXZz
LWN1cnNvckB2YXJ5aW5nLXNpemUuaHRtbCI+DQpGQUlMPC9hPiArMyBzaW1pbGFyIGlzc3Vlczwv
bGk+PC91bD4NCjwvbGk+PC91bD4NCjxoND5TdXBwcmVzc2VkPC9oND4NCjxwPlRoZSBmb2xsb3dp
bmcgcmVzdWx0cyBjb21lIGZyb20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVz
ZXMuPGJyPg0KVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC48L3A+DQo8dWw+
DQo8bGk+e2lndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3Itb2Zmc2NyZWVuQHBpcGUtZC1oZG1pLWEt
MS0zMngxMH06DQo8dWw+DQo8bGk+e3NoYXJkLWRnMX06IE5PVFJVTiAtJmd0OyA8YSBocmVmPSJo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDU1MjV2
MS9zaGFyZC1kZzEtMTUvaWd0QGttc19jdXJzb3JfY3JjQGN1cnNvci1vZmZzY3JlZW5AcGlwZS1k
LWhkbWktYS0xLTMyeDEwLmh0bWwiPg0KU0tJUDwvYT4gKzE1IHNpbWlsYXIgaXNzdWVzPC9saT48
L3VsPg0KPC9saT48L3VsPg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_ca37244529a506b6178bcc759f25a4593e3b2f52camelintelcom_--
