Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C915854FF75
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 23:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 421D310E3BA;
	Fri, 17 Jun 2022 21:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D46010E3BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 21:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655502236; x=1687038236;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VnIGuf/iHLiMCZ6QZ0C1f4EP/WtvHlvEgLFqFcPOHQY=;
 b=hjlg51I7knHf5oBxicYkqtMtlfOR3a0dLl24R0WCs9HDLzLuXrQpBMkC
 5ibfakTfTq3F/6P+fmf53NXIAM8WlSj+2jOzDAr0cTiBHvpUzcJ0ow3op
 Nr6cUoG/5tzWXXGTVom0hKTS2yI8BGMBmdvlfOHvUN8e/naNCBqEq9NW3
 yTGD2tEQyGOXSF9PuUlXq2LhrJLSkT6XePm01CS5G1FWm7KDWsfRN6MIR
 +En2FHz6EiSEmjCWj3MXFS0JwR575WPl/4MCSCzAX5/G4zwVpPdulllCN
 oNByvcLS0DsXtS98rhIOEmFOQPg1c7xE2T8aA8xx55vJ0zKVenSFPkP97 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279625573"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279625573"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 14:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="653784017"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jun 2022 14:43:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 14:43:54 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 14:43:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 14:43:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 14:43:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B46NGSNJzhjlk5XenO/VbPSUEdQ/B8K9SNTCE+HXet1AwSBSQcLnslNBSMohkbdS+TPVnPV3VW7cDQJCtE4fcGIEsIsUnomzYw3rQvXi4g8zIlHLL2695mLK3z4KxZyiSiqJdTW4JTifzJ8H7zzBFvQwJaYXEhrj6OjpcTwBkdiqIAl7vBxrt4gl+VwESAE0keMG2YxoZyEp1u2f0ZXXHPoD4nBBVYDKkEoPgCg1w73cLLCbXM/8IU8Ukqns9LkqQphnkcNXRsKUy13JxmG0L+TdEAkbHWo3+J9ItShVpb9LNYySdx6P9T+tdbfBFhtvGSKHJsbC34sxhWbDJTo+2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VnIGuf/iHLiMCZ6QZ0C1f4EP/WtvHlvEgLFqFcPOHQY=;
 b=MWzJ8gx5qolHz+JTeJkRmqLfhoU1EQi5Y695UtHxviHrBZWpVxSvhtMc+4bbfGWh8WtqmoeWaQh9rjeyU/gWWYmUoUCsu8g3DOu8mqvIvikpNYxGh3jFScXgCKPkiODb5apV4t/K0yS6Tvj/YvNYWoiGPROXHdnpvejF9+QkSzalh0af9bqDh2mrH6FRw9jgzw23V3jujO6i/7vUM2HoA5SwG8P+o+YNhIQlRfXgmookdO0UVfOL/9rAZN1s0wUeP2x7CSFj9qyMCVUB2U9FYCVigJfurfSbbhAzPeu0F68uQZmkIBZd6U69AxlkuO0q+PMp1PQJqBGPlDKDhSseyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB4808.namprd11.prod.outlook.com (2603:10b6:510:39::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.15; Fri, 17 Jun 2022 21:43:52 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%5]) with mapi id 15.20.5353.015; Fri, 17 Jun 2022
 21:43:52 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
Thread-Index: AQHYfbh72EbRT9IYxEa3+KUnTS4Wy61OG5sAgABjpwCAAll+gIABa8cAgAHm24A=
Date: Fri, 17 Jun 2022 21:43:52 +0000
Message-ID: <f1c2cd183ba15ca11607e7e4c21c6f436b4315be.camel@intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
 <20220614011024.GE48807@orsosgc001.jf.intel.com>
 <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
 <20220615185953.bsbyr27jcchccvge@ldmartin-desk2>
 <1a19781d-5d78-aa15-9578-44106433cbf9@linux.intel.com>
In-Reply-To: <1a19781d-5d78-aa15-9578-44106433cbf9@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d91cd4dd-aec7-4af2-be01-08da50aa78be
x-ms-traffictypediagnostic: PH0PR11MB4808:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <PH0PR11MB48084B9CC405FDCE3134FF328AAF9@PH0PR11MB4808.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bMXHLncBOgvKPc+UwKUl/WuHbu1/mZxhD03+yddmSRnXTJaanQcN2BVrPWj1yDOJp/GuLNzhCVQ681PTCHEsdAJubq0qgR8YAXru6yjeXDAnDudYVMwn3EeUY++l8THN5ucJlP0MJAMLoHG/hQ9LuW+eNufZHv8kIrdmSasDchZDYJG9FZ1UoGp5nc4olNlZvOEdSS74kjUyYDkZO5KAE9mT1W9FU4ogV7JJN5XujbRvclY69IORHWndB91hcBO4eiqKlg/ywSHyMxzdkDugMDp9gOhM0U+ah9+2p9Wr9BvvsaBHASgxw9AEMAyfaboruTTFIoduRe6lXJKzaxe7KpGbQD2zT9uc6PECI8d83iFIKhmRHLfzBY8/sJwfuGx0PPubHjvMZyaKBVHWE3dfawC2xnJloRGG0npgj9TbOUrhI47koD6IEZtY3jvgFBkNQYpCizF9Sqs+4dKmhw6rjwwW58O2yOAzJRzWyyVA5mo5ts8e2864vTLxsC9Z2f8x/SIL56LLDqXlbjnSPF0JUgY5BSC/yKZvaH3GxWJl2u18L1jZxtgXquRU6CuGIK1G1lexqf74wuWawix4Z5TLz490vmbpDFoTo5Jp1Wg0QvNQfMqbOTGNwy/S4J4QFbuMDF7EHUxIu7ur5r0N7YMpbzautHwlpfpLLBWatDDlfYs1/sokl4YMIakPpsR+KXVmhN1UnSS2MwFlNeLwsAzEZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(4326008)(4744005)(91956017)(6636002)(15650500001)(66556008)(66946007)(6512007)(6486002)(26005)(498600001)(76116006)(6506007)(2906002)(54906003)(82960400001)(110136005)(71200400001)(36756003)(316002)(186003)(8676002)(8936002)(83380400001)(86362001)(122000001)(5660300002)(66446008)(64756008)(66476007)(2616005)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXlrcEMxeUhjVFd4MUwvOWFwazQwT1lOTXE2SmYxZ2JHMFlHcmpGcmtjdnk5?=
 =?utf-8?B?UDdpQjNTK2g4S2p1UFdlTGVVcHh3dHlrSWNUUnpjZDJMZ1JISnFqVnY5Rldk?=
 =?utf-8?B?SUdEOUVVWHp2L1k4YURCWUh3bTNuYVAwL1o2dzJJSzBBeEhYMFVVUjZiWFVW?=
 =?utf-8?B?ZTVEb2pjeTFubkZ1M1RrWkU2WWM2b3plN2UweE5sK1l3bm4wekh0c2FsWFJq?=
 =?utf-8?B?TGFYSnpqdkpINmIzb0VtODg3YkxNMUJSbENOc01QRjdFZFNKeE51Q2dESmRT?=
 =?utf-8?B?U0ZwTy8rWGRjSDhNU24xdHNlUXpiQXNqSTRDSEEvZEQ0Q05adnZOd2l3NmFH?=
 =?utf-8?B?RDVUY3htTUhZc0YzQXRpNDVWcDJSelNURlJEMXkzK1A0VlVuMGttWG9IejJw?=
 =?utf-8?B?M2pmWnRTYXo4Z0ZDYkk3ZFlMQ1lYZjUrdlV0UURPV0xja3BHNXZMYXJnRndh?=
 =?utf-8?B?Q1FDN1NRd2p3QWQyeXFQZFlXeVpOSmNIbitiZmJRMEtZRHVwQ2R5WURjSk9W?=
 =?utf-8?B?TTcydU9lcXppV09QMjVhNTgrM0lGZXFvWUNsYUkwZFJ0SXRDZks0cHExTFph?=
 =?utf-8?B?WUZFQ0ZBYjUrZzJKNUM0N2YzelRIUW5CaWRWaDl1VUsxZ3RIaEVtSHkvNFF3?=
 =?utf-8?B?TWhVVTRMTlF0dFB5YnZEbmZBVU9Gb1NzM3pVZkNxNnU0WTNoS3grNmw2YkJ3?=
 =?utf-8?B?RzN2bmt2Q1JsZFhlV25zUGRjUnpmUE9CUzZEQ1E1dm91ODBsZmRCRWJFTE11?=
 =?utf-8?B?ZWlZUU95ZjIvMEg2N1dkaUpjNnFmNERTVFFWN3NVZlkvczYyd2hXR25yQ1NM?=
 =?utf-8?B?WW1jb1dCbHhma205ZDBPcnNqQWtGclYxQTRqSU42aUhBUEhEVTZBWGxtT3p5?=
 =?utf-8?B?OVJBT0sxOWxlY2pzQW5mbnNxWStjTnNUcXpsek5tOVR2UjloRndTdkV2TlNN?=
 =?utf-8?B?WGFqNngyR1ZseWxiV0p2R1U1UFFISzZSdnlreEY1TWhjb0M4ZWovYUxoSThN?=
 =?utf-8?B?N2l1ZUMxMWl0WEx3ZTlnT3hBK3hJbGxZWWd1aXMzZ0t1b21wcjE5MWpBL3VN?=
 =?utf-8?B?QnFyV0xyRG1FMHdqL1plSU9CdEMrNXQ4K1JYaVdHU28zb0t6WnQ0UTdTTXZy?=
 =?utf-8?B?ZERySjlKRVBaL2FvQkJWQjZmWXZ4Sjg2R0VtcXNxVm1OWG9RMnE2VWp0cXAz?=
 =?utf-8?B?RDJsNmdhS2dKWUhXcS9TYkJTSUlHMXp6SDU0Ri9XeDArdmlKYUxUZ2w5cm4r?=
 =?utf-8?B?cnluTG9OblVvSm45UFp1L1JyQ0ZJa1VNcHFPM05oQS8yNkhWL09VZmhFeU1M?=
 =?utf-8?B?Wm5zR2JNOThNWUx1RXp4aFZTeTFzNTNVUHpJb3Y2Q01hdUg3WlIxSHAwK2tJ?=
 =?utf-8?B?eEc5cERFU1JDM1pZVkRxNCtnSHViNVFodzVjUFhEd1Z3TEpvbkdLZTRnSkRN?=
 =?utf-8?B?SHRoWHEzaThQYmVDemI5WlYyNW8wUmNqTFBFNHRNRWNyZ3BRYTJNaUNDUVE3?=
 =?utf-8?B?TEJ3MWRILytOaGZlOTgwQU94cUoyQlgrUG5KbXFadUNDYmJtbGlJWlhpMUJN?=
 =?utf-8?B?RVk0a0F4TkF1ZDNuSVdRSkpZdm1hS3JvV3NZNjMzQUo4RjkxQzY4a3lmNk9X?=
 =?utf-8?B?d2F0aFRCd2FuYnVzNE1udWNiYmJQRWoxK1VQci9nT0pSQi9MK3dSWk44Y0tk?=
 =?utf-8?B?WHcvdzRtZWJtb0ZvTEwvcGFoa1JzYm9UTVFuNmZZRzlpZjlEbnpDQ2JpM3VN?=
 =?utf-8?B?ODhqSW45Z3cySWpFUVZYbmJzeEVsWDlHQmhzalhKa2I2eVN1alZaajdGL1Z3?=
 =?utf-8?B?Z1dZSnZWZEpreHNhS2xDSlFjMW1OOGs4WFo1alFPam5Bem5iSDNPMEIzMmRu?=
 =?utf-8?B?dVlWSHBhdUM1azhBWkRRSFZCb1ltVVVoVjNvWUFtVDlWN1dPRzQrbVJxYzFJ?=
 =?utf-8?B?cCt6czROZnNxc1RtUTMwTlQ4NkRCdUszdTJUdm5pVml3VVhVbmFlZkxBTDl2?=
 =?utf-8?B?YXBleEFQYXNiaGRuNnpnT0JTaU5rYXZFSkJuZExUbjdnQ0ZEc3N4aVhUczBN?=
 =?utf-8?B?V3pBdkRUTzg5TTVPREIxNHhuVTBuYURqbGNsNHNlV2VyR1lrREllS2lURjJB?=
 =?utf-8?B?NCtSeHhoZzQ0WC9PK243akREL1ZwQUl6MUQxUXRSdytWNFBFS0w3aDFjSzV2?=
 =?utf-8?B?b0Q2cnZTa2ZGSm9KUDVjdzN2aHMzbnJ0aHVmSWx4L1FBdlh6N21NR3E4QnNh?=
 =?utf-8?B?cHVBT2dmS0dSSU8xaVdJSm80OFRNNzJuaHAwTUFvNXZrME83NHdtZ3AvSGNJ?=
 =?utf-8?B?MDZpYVlEd3VKUlFNWEM2dVN5MWFpMTFnK0h3elJwV3NvLzlYL0x2QU5UTGgw?=
 =?utf-8?Q?e3TQOKxOkrH6fQbEZOqbelpS6as8/tFr30tg3CaqSr1LI?=
x-ms-exchange-antispam-messagedata-1: MvGqhu6pUnkBVw==
Content-Type: text/plain; charset="utf-8"
Content-ID: <9A8A234AA8B8B54287EF275D7FB52E34@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d91cd4dd-aec7-4af2-be01-08da50aa78be
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 21:43:52.6619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BCf/UM1gBWUmFbiVNvM6yBZBE31gr0dZL3gIu2fkTCkDt2HzlGU9gagNPs4QLBT5KRxSdL9Bn2HW7cz6i7i95G7OIOUxkofjbdzddWY7iTQPLqNbO/e8QNq3Fp8XP70b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4808
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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

DQo+ID4gPiBOb3QgdXBkYXRpbmcgdGhlIGRyaXZlciBzdGF0ZSBpbiBwYXJrIHdpbGwgbm90IG5l
Z2F0aXZlbHkgaW1wYWN0IA0KPiA+ID4gYWNjdXJhY3kgaW4gc29tZSBzY2VuYXJpb3M/IFRoYXQg
bmVlZHMgdG8gYmFsYW5jZWQgYWdhaW5zdCB0aGUgDQo+ID4gPiBxdWVzdGlvbnMgd2hldGhlciBv
ciBub3QgdGhlcmUgYXJlIHJlYWwgd29ybGQgc2NlbmFyaW9zIGltcGFjdGVkIGJ5IA0KPiA+ID4g
dGhlIHVwZGF0ZSBjb3N0IG9yIGl0IGlzIGp1c3QgZm9yIElHVC4NCj4gPiANCklmIGkgdW5kZXJz
dGFuZCBpdCBjb3JyZWN0bHkgKGhvdyBpdHMgY2FsY3VsYXRlZCksIG5vLiBub3QgY2FwdHVyaW5n
IG9uIGV2ZXJ5IHBhcmsvdW5wYXJrDQpkb2VzIG5vdCBtZWFuIGxlc3MgYWNjdXJhY3kuIFVtZXNo
IG1lbnRpb25lZCB0byB2ZXJpZnkgdGhhdCB3aXRoIGlndEBwZXJmLXBtdUBhY2N1cmFjeQ0KdGVz
dHMNCg0K
